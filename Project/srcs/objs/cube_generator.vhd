LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.my_fixed_pkg.ALL;
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
        PROJECTION_MATRIX, VIEW_MATRIX : IN mat4_fixed;

        -- Cube properties
        POS_IN, ROT_IN, SCALE_IN : IN vec3_int;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    -- --------------------------------------------------------------------
    --                       Type Definitions
    -- --------------------------------------------------------------------
    TYPE cube_vertex_fixed IS ARRAY(0 TO 7) OF vec3_fixed;
    TYPE cube_vertex_int IS ARRAY(0 TO 7) OF vec3_int;
    TYPE screen_vertex_fixed IS ARRAY(0 TO 7) OF vec2_fixed;
    TYPE screen_vertex_int IS ARRAY(0 TO 7) OF vec2_int;

    -- --------------------------------------------------------------------
    --                       Constants
    -- --------------------------------------------------------------------
    CONSTANT CUBE_DEFAULT_VERTEX : cube_vertex_fixed := (
        -- Top vertices
        (fixed_neg_one, fixed_one, fixed_one),
        (fixed_one, fixed_one, fixed_one),
        (fixed_one, fixed_one, fixed_neg_one),
        (fixed_neg_one, fixed_one, fixed_neg_one),

        -- Bottom vertices
        (fixed_neg_one, fixed_neg_one, fixed_one),
        (fixed_one, fixed_neg_one, fixed_one),
        (fixed_one, fixed_neg_one, fixed_neg_one),
        (fixed_neg_one, fixed_neg_one, fixed_neg_one)
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
            VIEW_MATRIX : IN mat4_fixed;
            POINT_3D : IN vec3_fixed;
            SCREEN_POS_OUT : OUT vec2_int
        );
    END COMPONENT;

    COMPONENT vertex_controller IS
        PORT (
            RESET : IN STD_LOGIC;
            CLK : IN STD_LOGIC;

            VERTEX_IN : IN vec3_fixed;
            TRANSLATION_IN : IN vec3_int;
            ROTATION_IN : IN vec3_int;
            SCALE_IN : IN vec3_int;

            VERTEX_OUT : OUT vec3_fixed
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
    SIGNAL vertices : cube_vertex_fixed := (OTHERS => (0, 0, 0));

    -- The coordinate of the vertex in the screen space
    SIGNAL screen_vertices_fixed, tmp2 : screen_vertex_fixed := (OTHERS => vec2_fixed_zero);
    SIGNAL screen_vertices_int, tmp : screen_vertex_int := (OTHERS => vec2_int_zero);

    -- The signals determining whether the current pixel should be drawn.
    -- Bits 11..0 are the signals for lines drawning
    -- Bits 19..12 are the signals for vertices drawning
    SIGNAL draw_signal : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');

    SIGNAL clk_50Mhz : STD_LOGIC;
BEGIN
    -- --------------------------------------------------------------------
    --                    Port maps
    -- --------------------------------------------------------------------
    -- Clock divider
    clk_divider_50M : clock_divider
    GENERIC MAP(N => 1)
    PORT MAP(
        CLK_IN => CLK,
        CLK_OUT => clk_50Mhz
    );

    vertices_map_gen : FOR i IN 0 TO 7 GENERATE
        -- Vertex controller
        vertex_controller_inst_i : vertex_controller
        PORT MAP(
            RESET => RESET,
            CLK => CLK,
            VERTEX_IN => CUBE_DEFAULT_VERTEX(i),
            TRANSLATION_IN => POS_IN,
            ROTATION_IN => ROT_IN,
            SCALE_IN => SCALE_IN,
            VERTEX_OUT => vertices(i)
        );

        -- 3D world point TO screen coordinate convertor
        world_to_screen_convertor_inst_i : world_to_screen_convertor
        GENERIC MAP(
            SCREEN_WIDTH => SCREEN_WIDTH,
            SCREEN_HEIGHT => SCREEN_HEIGHT
        )
        PORT MAP(
            RESET => RESET,
            CLK => CLK,
            PROJECTION_MATRIX => PROJECTION_MATRIX,
            VIEW_MATRIX => VIEW_MATRIX,
            POINT_3D => vertices(i),
            SCREEN_POS_OUT => screen_vertices_int(i)
        );
    END GENERATE;

    -- test_proc_0 : PROCESS (CLK)
    -- BEGIN
    --     IF rising_edge(CLK) THEN
    --         FOR i IN 0 TO 7 LOOP
    --             screen_vertices_int(i) <= (to_integer(to_fixed(i * 120 + 120)), to_integer(to_fixed(i * 70 + 70)));
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- test_proc_1 : PROCESS (CLK)
    -- BEGIN
    --     IF rising_edge(CLK) THEN
    --         FOR i IN 7 TO 0 LOOP
    --             screen_vertices_fixed(i) <= (to_fixed(i * 120 + 120), to_fixed(i * 70 + 70));
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- screen_vertices_int(0) <= to_vec2_int(screen_vertices_fixed(0));
    -- screen_vertices_int(1) <= to_vec2_int(screen_vertices_fixed(1));
    -- screen_vertices_int(2) <= to_vec2_int(screen_vertices_fixed(2));
    -- screen_vertices_int(3) <= to_vec2_int(screen_vertices_fixed(3));
    -- screen_vertices_int(4) <= to_vec2_int(screen_vertices_fixed(4));
    -- screen_vertices_int(5) <= to_vec2_int(screen_vertices_fixed(5));
    -- screen_vertices_int(6) <= to_vec2_int(screen_vertices_fixed(6));
    -- screen_vertices_int(7) <= to_vec2_int(screen_vertices_fixed(7));

    -- test_proc_2 : PROCESS (screen_vertices_fixed)
    --     VARIABLE temp : vec2_fixed;
    -- BEGIN
    --     FOR i IN 0 TO 7 LOOP
    --         temp := screen_vertices_fixed(i);
    --     END LOOP;
    -- END PROCESS;

    -- test_proc_3 : PROCESS (clk_50Mhz)
    -- BEGIN
    --     IF rising_edge(clk_50Mhz) THEN
    --         FOR i IN 0 TO 7 LOOP
    --             vertices(i) <= (to_fixed(i * 120 + 120), to_fixed(i * 70 + 70), fixed_zero);
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- test_proc_4 : PROCESS (clk_50Mhz)
    -- BEGIN
    --     IF (rising_edge(clk_50Mhz)) THEN
    --         FOR i IN 0 TO 7 LOOP
    --             tmp2(i) <= (to_fixed(i * 120 + 120), to_fixed(i * 70 + 70));
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- test_proc_5 : PROCESS (clk_50Mhz)
    -- BEGIN
    --     IF (rising_edge(clk_50Mhz)) THEN
    --         FOR i IN 0 TO 7 LOOP
    --             screen_vertices_int(i) <= tmp(i);
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- test_proc_6 : PROCESS (clk_50Mhz)
    -- BEGIN
    --     IF (rising_edge(clk_50Mhz)) THEN
    --         FOR i IN 0 TO 7 LOOP
    --             tmp(i) <= (i * 120 + 120, i * 70 + 70);
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- PROCESS (clk_50Mhz)
    -- BEGIN
    --     IF (rising_edge(clk_50Mhz)) THEN
    --     END IF;
    -- END PROCESS;
    -- vertices(0) <= (to_fixed(500), to_fixed(300), fixed_zero);

    -- world_to_screen_convertor_inst_i : world_to_screen_convertor
    -- GENERIC MAP(
    --     SCREEN_WIDTH => SCREEN_WIDTH,
    --     SCREEN_HEIGHT => SCREEN_HEIGHT
    -- )
    -- PORT MAP(
    --     RESET => RESET,
    --     CLK => clk_50Mhz,
    --     PROJECTION_MATRIX => PROJECTION_MATRIX,
    --     VIEW_MATRIX => VIEW_MATRIX,
    --     POINT_3D => vertices(0),
    --     SCREEN_POS_OUT => screen_vertices_int(0)
    -- );

    -- -- Line connector
    -- lines_map_gen : FOR i IN 0 TO 3 GENERATE
    --     -- connect the top vertices
    --     line_connector_inst_i : line_connector
    --     GENERIC MAP(
    --         LINE_WIDTH => 1
    --     )
    --     PORT MAP(
    --         RESET => RESET,
    --         CLK => CLK,
    --         DISPLAY_COOR_H => DISPLAY_COOR_H,
    --         DISPLAY_COOR_V => DISPLAY_COOR_V,
    --         V1 => screen_vertices_int(i),
    --         V2 => screen_vertices_int((i + 1) MOD 4),
    --         DRAW_SIGNAL_OUT => draw_signal(i)
    --     );

    --     -- connect the bottom vertices
    --     line_connector_inst_j : line_connector
    --     GENERIC MAP(
    --         LINE_WIDTH => 1
    --     )
    --     PORT MAP(
    --         RESET => RESET,
    --         CLK => CLK,
    --         DISPLAY_COOR_H => DISPLAY_COOR_H,
    --         DISPLAY_COOR_V => DISPLAY_COOR_V,
    --         V1 => screen_vertices_int(i + 4),
    --         V2 => screen_vertices_int((i + 5) MOD 4),
    --         DRAW_SIGNAL_OUT => draw_signal(i + 4)
    --     );

    --     -- connect the top and bottom vertices
    --     line_connector_inst_k : line_connector
    --     GENERIC MAP(
    --         LINE_WIDTH => 1
    --     )
    --     PORT MAP(
    --         RESET => RESET,
    --         CLK => CLK,
    --         DISPLAY_COOR_H => DISPLAY_COOR_H,
    --         DISPLAY_COOR_V => DISPLAY_COOR_V,
    --         V1 => screen_vertices_int(i),
    --         V2 => screen_vertices_int(i + 4),
    --         DRAW_SIGNAL_OUT => DRAW_SIGNAL(i + 8)
    --     );
    -- END GENERATE;

    -- -- Convert the screen coordinates from fixed TO INTEGER
    -- PROCESS (clk_50Mhz, RESET, screen_vertices_fixed)
    -- BEGIN
    --     IF rising_edge(clk_50Mhz) THEN
    --         FOR i IN 0 TO 7 LOOP
    --             screen_vertices_int(i) <= (to_integer(screen_vertices_fixed(i)(0)), to_integer(screen_vertices_fixed(i)(1)));
    --         END LOOP;
    --     END IF;
    -- END PROCESS;

    -- Determine if the current pixel should be drawn
    PROCESS (DISPLAY_COOR_H, DISPLAY_COOR_V, screen_vertices_int)
    BEGIN
        FOR i IN 0 TO 7 LOOP
            IF (DISPLAY_COOR_H >= screen_vertices_int(i)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(i)(0) + FRAME_WIDTH)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(i)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(i)(1) + FRAME_WIDTH)) THEN
                draw_signal(i + 12) <= '1';
            ELSE
                draw_signal(i + 12) <= '0';
            END IF;
        END LOOP;
    END PROCESS;

    -- Color output process
    PROCESS (draw_signal)
    BEGIN
        -- Calculate if the current pixel is in the cube
        IF (draw_signal /= "00000000000000000000") THEN
            RED_OUT <= "1111";
            GREEN_OUT <= "1111";
            BLUE_OUT <= "1111";
        ELSE
            RED_OUT <= (OTHERS => '0');
            GREEN_OUT <= (OTHERS => '0');
            BLUE_OUT <= (OTHERS => '0');
        END IF;
    END PROCESS;
END Behavioral;