LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

-- Determine the color of the current rendering pixel
-- based on the current cube position and the size of the cube.

-- TODO: Transform the xyz coordinates into the screen space
-- TODO: Interpolate the lines between two vertexs
ENTITY cube_generator IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600;
        BIT_DEPTH : INTEGER := 4;
        FRAME_WIDTH : INTEGER := 1
    );
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Displayer data
        DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;

        -- Rendering data
        PROJECTION_MATRIX, VIEW_MATRIX : IN mat4_float;

        -- Cube properties
        POS, ROT, SCALE : IN vec3_float;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    TYPE cube_vertex_float IS ARRAY(0 TO 7) OF vec3_float;
    TYPE cube_vertex_int IS ARRAY(0 TO 7) OF vec3_int;
    TYPE screen_vertex_float IS ARRAY(0 TO 7) OF vec2_float;
    TYPE screen_vertex_int IS ARRAY(0 TO 7) OF vec2_int;

    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT world_to_screen_convertor IS
        GENERIC (
            SCREEN_WIDTH : INTEGER := 1024;
            SCREEN_HEIGHT : INTEGER := 600
        );
        PORT (
            RESET : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            PROJECTION_MATRIX,
            VIEW_MATRIX : IN mat4_float;
            POINT_3D : IN vec3_float;
            SCREEN_POS_OUT : OUT vec2_float
        );
    END COMPONENT;

    COMPONENT vertex_controller IS
        PORT (
            RESET : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            VERTEX_IN : IN vec3_float;
            ROTATION_VEC3_IN : IN vec3_float;
            VERTEX_OUT : OUT vec3_float
        );
    END COMPONENT;

    -- The base coordinates(before rotation) and the actual coordinate(after translation) of the cube
    SIGNAL base_vertices, vertices : cube_vertex_float;
    SIGNAL screen_vertices_float : screen_vertex_float;
    SIGNAL screen_vertices_int : screen_vertex_int;

    -- Clock signals
    SIGNAL clk_50hz, clk_500hz, clk_500Khz, clk_1Mhz, clk_10Mhz, clk_50Mhz : STD_LOGIC;
BEGIN
    -- Clock dividers
    clk_divider_50Mhz : clock_divider
    GENERIC MAP(N => 1)
    PORT MAP(
        CLK_IN => CLK,
        CLK_OUT => clk_50Mhz
    );

    clk_divider_10Mhz : clock_divider
    GENERIC MAP(N => 5)
    PORT MAP(
        CLK_IN => clk_50Mhz,
        CLK_OUT => clk_10Mhz
    );

    clk_divider_1Mhz : clock_divider
    GENERIC MAP(N => 10)
    PORT MAP(
        CLK_IN => clk_10Mhz,
        CLK_OUT => clk_1Mhz
    );

    clk_divider_500Khz : clock_divider
    GENERIC MAP(N => 2)
    PORT MAP(
        CLK_IN => clk_1Mhz,
        CLK_OUT => clk_500Khz
    );

    clk_divider_500hz : clock_divider
    GENERIC MAP(N => 1000)
    PORT MAP(
        CLK_IN => clk_500Khz,
        CLK_OUT => clk_500hz
    );

    clk_divider_50hz : clock_divider
    GENERIC MAP(N => 10)
    PORT MAP(
        CLK_IN => clk_500hz,
        CLK_OUT => clk_50hz
    );

    vertices_map_gen : FOR i IN 0 TO 7 GENERATE
        -- Vertex controller
        vertex_controller_inst_i : vertex_controller
        PORT MAP(
            RESET => RESET,
            CLK => clk_1Mhz,
            VERTEX_IN => base_vertices(i),
            ROTATION_VEC3_IN => ROT,
            VERTEX_OUT => vertices(i)
        );

        -- 3D world point to screen coordinate convertor
        world_to_screen_convertor_inst_i : world_to_screen_convertor
        GENERIC MAP(
            SCREEN_WIDTH => SCREEN_WIDTH,
            SCREEN_HEIGHT => SCREEN_HEIGHT
        )
        PORT MAP(
            RESET => RESET,
            CLK => clk_500Khz,
            PROJECTION_MATRIX => PROJECTION_MATRIX,
            VIEW_MATRIX => VIEW_MATRIX,
            POINT_3D => base_vertices(i),
            SCREEN_POS_OUT => screen_vertices_float(i)
        );
    END GENERATE;

    -- Data calculation process
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            base_vertices <= (OTHERS => (float32_zero, float32_zero, float32_zero));
        ELSIF rising_edge(clk_50Mhz) THEN
            -- Calculate the base coordinates of the cube
            base_vertices <= (
                (POS(0) - (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
                (POS(0) + (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
                (POS(0) + (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
                (POS(0) - (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
                (POS(0) - (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
                (POS(0) + (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
                (POS(0) + (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
                (POS(0) - (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) + (SCALE(2)/2))
                );
        END IF;
    END PROCESS;

    -- Convert the screen coordinates from float to integer
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            screen_vertices_int <= (OTHERS => (0, 0));
        ELSIF rising_edge(clk_50Mhz) THEN
            screen_vertices_int <= (
                to_vec2_int(screen_vertices_float(0)),
                to_vec2_int(screen_vertices_float(1)),
                to_vec2_int(screen_vertices_float(2)),
                to_vec2_int(screen_vertices_float(3)),
                to_vec2_int(screen_vertices_float(4)),
                to_vec2_int(screen_vertices_float(5)),
                to_vec2_int(screen_vertices_float(6)),
                to_vec2_int(screen_vertices_float(7))
                );
        END IF;
    END PROCESS;

    -- Color output process
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            RED_OUT <= (OTHERS => '0');
            GREEN_OUT <= (OTHERS => '0');
            BLUE_OUT <= (OTHERS => '0');
        ELSIF rising_edge(clk_10Mhz) THEN
            -- Calculate if the current pixel is in the cube
            IF ((DISPLAY_COOR_H >= screen_vertices_int(0)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(0)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(0)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(0)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(1)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(1)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(1)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(1)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(2)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(2)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(2)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(2)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(3)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(3)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(3)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(3)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(4)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(4)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(4)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(4)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(5)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(5)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(5)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(5)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(6)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(6)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(6)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(6)(1) + FRAME_WIDTH))) OR
                ((DISPLAY_COOR_H >= screen_vertices_int(7)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(7)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(7)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(7)(1) + FRAME_WIDTH)))
                THEN
                RED_OUT <= "1111";
                GREEN_OUT <= "1111";
                BLUE_OUT <= "1111";
            ELSE
                RED_OUT <= (OTHERS => '0');
                GREEN_OUT <= (OTHERS => '0');
                BLUE_OUT <= (OTHERS => '0');
            END IF;
        END IF;
    END PROCESS;
END Behavioral;