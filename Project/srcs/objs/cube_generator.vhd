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

-- TODO: Transform the Vertices
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
        POS_IN, ROT_IN, SCALE_IN : IN vec3_int;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    -- --------------------------------------------------------------------
    --                       Type Definitions
    -- --------------------------------------------------------------------
    TYPE cube_vertex_float IS ARRAY(0 TO 7) OF vec3_float;
    TYPE cube_vertex_int IS ARRAY(0 TO 7) OF vec3_int;
    TYPE screen_vertex_float IS ARRAY(0 TO 7) OF vec2_float;
    TYPE screen_vertex_int IS ARRAY(0 TO 7) OF vec2_int;

    -- --------------------------------------------------------------------
    --                       Constants
    -- --------------------------------------------------------------------
    CONSTANT CUBE_DEFAULT_VERTEX : cube_vertex_float := (
        -- Top vertices
        (float32_neg_one, float32_one, float32_one),
        (float32_one, float32_one, float32_one),
        (float32_one, float32_one, float32_neg_one),
        (float32_neg_one, float32_one, float32_neg_one),

        -- Bottom vertices
        (float32_neg_one, float32_neg_one, float32_one),
        (float32_one, float32_neg_one, float32_one),
        (float32_one, float32_neg_one, float32_neg_one),
        (float32_neg_one, float32_neg_one, float32_neg_one)
    );

    -- --------------------------------------------------------------------
    --                       Components
    -- --------------------------------------------------------------------
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
            TRANSLATION_IN : IN vec3_int;
            ROTATION_IN : IN vec3_int;
            SCALE_IN : IN vec3_int;

            VERTEX_OUT : OUT vec3_float
        );
    END COMPONENT;

    COMPONENT line_connector IS
        GENERIC (
            LINE_WIDTH : INTEGER := 1
        );
        PORT (
            RESET : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;
            V1, V2 : IN vec2_int;
            DRAW_SIGNAL_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    -- --------------------------------------------------------------------
    --                       Signals
    -- --------------------------------------------------------------------

    -- The coordinate(after transformation) of the cube
    SIGNAL vertices : cube_vertex_float;

    -- The coordinate of the vertex in the screen space
    SIGNAL screen_vertices_float : screen_vertex_float;
    SIGNAL screen_vertices_int : screen_vertex_int;

    -- The signals determining whether the current pixel should be drawn
    SIGNAL draw_signal : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');

    -- Clock signals
    SIGNAL clk_50hz, clk_500hz, clk_500Khz, clk_1Mhz, clk_10Mhz, clk_50Mhz : STD_LOGIC;
BEGIN
    -- --------------------------------------------------------------------
    --                    Clock Dividers
    -- --------------------------------------------------------------------
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
    -- --------------------------------------------------------------------
    --                    Port maps
    -- --------------------------------------------------------------------
    vertices_map_gen : FOR i IN 0 TO 7 GENERATE
        -- Vertex controller
        vertex_controller_inst_i : vertex_controller
        PORT MAP(
            RESET => RESET,
            CLK => clk_50Mhz,
            VERTEX_IN => CUBE_DEFAULT_VERTEX(i),
            TRANSLATION_IN => POS_IN,
            ROTATION_IN => ROT_IN,
            SCALE_IN => SCALE_IN,
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
            CLK => clk_50Mhz,
            PROJECTION_MATRIX => PROJECTION_MATRIX,
            VIEW_MATRIX => VIEW_MATRIX,
            POINT_3D => vertices(i),
            SCREEN_POS_OUT => screen_vertices_float(i)
        );
    END GENERATE;

    -- Line connector
    lines_map_gen : FOR i IN 0 TO 3 GENERATE
        -- connect the top vertices
        line_connector_inst_i : line_connector
        GENERIC MAP(
            LINE_WIDTH => 1
        )
        PORT MAP(
            RESET => RESET,
            CLK => clk_50Mhz,
            DISPLAY_COOR_H => DISPLAY_COOR_H,
            DISPLAY_COOR_V => DISPLAY_COOR_V,
            V1 => screen_vertices_int(i),
            V2 => screen_vertices_int((i + 1) MOD 4),
            DRAW_SIGNAL_OUT => DRAW_SIGNAL(i)
        );

        -- connect the bottom vertices
        line_connector_inst_j : line_connector
        GENERIC MAP(
            LINE_WIDTH => 1
        )
        PORT MAP(
            RESET => RESET,
            CLK => clk_50Mhz,
            DISPLAY_COOR_H => DISPLAY_COOR_H,
            DISPLAY_COOR_V => DISPLAY_COOR_V,
            V1 => screen_vertices_int(i + 4),
            V2 => screen_vertices_int((i + 5) MOD 4),
            DRAW_SIGNAL_OUT => DRAW_SIGNAL(i + 4)
        );

        -- connect the top and bottom vertices
        line_connector_inst_k : line_connector
        GENERIC MAP(
            LINE_WIDTH => 1
        )
        PORT MAP(
            RESET => RESET,
            CLK => clk_50Mhz,
            DISPLAY_COOR_H => DISPLAY_COOR_H,
            DISPLAY_COOR_V => DISPLAY_COOR_V,
            V1 => screen_vertices_int(i),
            V2 => screen_vertices_int(i + 4),
            DRAW_SIGNAL_OUT => DRAW_SIGNAL(i + 8)
        );
    END GENERATE;

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
        ELSIF rising_edge(CLK) THEN
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
                (DISPLAY_COOR_V >= screen_vertices_int(7)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(7)(1) + FRAME_WIDTH))) OR
                (DRAW_SIGNAL(0) = '1') OR (DRAW_SIGNAL(1) = '1') OR (DRAW_SIGNAL(2) = '1') OR (DRAW_SIGNAL(3) = '1') OR
                (DRAW_SIGNAL(4) = '1') OR (DRAW_SIGNAL(5) = '1') OR (DRAW_SIGNAL(6) = '1') OR (DRAW_SIGNAL(7) = '1') OR
                (DRAW_SIGNAL(8) = '1') OR (DRAW_SIGNAL(9) = '1') OR (DRAW_SIGNAL(10) = '1') OR (DRAW_SIGNAL(11) = '1')
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