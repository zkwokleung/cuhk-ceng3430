LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.my_fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY cube_generator_tb IS
END cube_generator_tb;

ARCHITECTURE Behavioral OF cube_generator_tb IS
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
            SCREEN_POS_OUT : OUT vec2_fixed
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
    SIGNAL vertices : cube_vertex_fixed;

    -- The coordinate of the vertex in the screen space
    SIGNAL screen_vertices_fixed : screen_vertex_fixed;
    SIGNAL screen_vertices_int : screen_vertex_int;

    -- The signals determining whether the current pixel should be drawn.
    -- Bits 11..0 are the signals for lines drawning
    -- Bits 19..12 are the signals for vertices drawning
    SIGNAL draw_signal : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');

    SIGNAL CLK : STD_LOGIC;
    SIGNAL RESET : STD_LOGIC;

    -- Displayer data
    SIGNAL DISPLAY_COOR_H, DISPLAY_COOR_V : INTEGER := 0;

    -- Rendering data
    SIGNAL PROJECTION_MATRIX : mat4_fixed := default_ortho_mat4_fixed;
    SIGNAL VIEW_MATRIX : mat4_fixed := look_forward_mat4_fixed;

    -- Cube properties
    SIGNAL POS_IN, ROT_IN, SCALE_IN : vec3_int;

    SIGNAL draw : BOOLEAN := false;
BEGIN
    -- --------------------------------------------------------------------
    --                    Port maps
    -- --------------------------------------------------------------------
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

        -- 3D world point to screen coordinate convertor
        world_to_screen_convertor_inst_i : world_to_screen_convertor
        GENERIC MAP(
            SCREEN_WIDTH => 1024,
            SCREEN_HEIGHT => 600
        )
        PORT MAP(
            RESET => RESET,
            CLK => CLK,
            PROJECTION_MATRIX => PROJECTION_MATRIX,
            VIEW_MATRIX => VIEW_MATRIX,
            POINT_3D => vertices(i),
            SCREEN_POS_OUT => screen_vertices_fixed(i)
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
            CLK => CLK,
            DISPLAY_COOR_H => DISPLAY_COOR_H,
            DISPLAY_COOR_V => DISPLAY_COOR_V,
            V1 => screen_vertices_int(i),
            V2 => screen_vertices_int((i + 1) MOD 4),
            DRAW_SIGNAL_OUT => draw_signal(i)
        );

        -- connect the bottom vertices
        line_connector_inst_j : line_connector
        GENERIC MAP(
            LINE_WIDTH => 1
        )
        PORT MAP(
            RESET => RESET,
            CLK => CLK,
            DISPLAY_COOR_H => DISPLAY_COOR_H,
            DISPLAY_COOR_V => DISPLAY_COOR_V,
            V1 => screen_vertices_int(i + 4),
            V2 => screen_vertices_int((i + 5) MOD 4),
            DRAW_SIGNAL_OUT => draw_signal(i + 4)
        );

        -- connect the top and bottom vertices
        line_connector_inst_k : line_connector
        GENERIC MAP(
            LINE_WIDTH => 1
        )
        PORT MAP(
            RESET => RESET,
            CLK => CLK,
            DISPLAY_COOR_H => DISPLAY_COOR_H,
            DISPLAY_COOR_V => DISPLAY_COOR_V,
            V1 => screen_vertices_int(i),
            V2 => screen_vertices_int(i + 4),
            DRAW_SIGNAL_OUT => DRAW_SIGNAL(i + 8)
        );
    END GENERATE;

    PROCESS
    BEGIN

        FOR i IN 0 TO 7 LOOP
            screen_vertices_int(i) <= (0, 0);
        END LOOP;

        POS_IN <= (512, 300, 100);
        ROT_IN <= (30, 60, 100);
        SCALE_IN <= (10, 10, 10);

        RESET <= '1';
        WAIT FOR 10 ns;
        RESET <= '0';
        WAIT FOR 10 ns;

        FOR i IN 0 TO 5 LOOP
            CLK <= '1';
            WAIT FOR 10 ns;
            CLK <= '0';
            WAIT FOR 10 ns;
        END LOOP;

        FOR i IN 0 TO 7 LOOP
            screen_vertices_int(i) <= to_vec2_int(screen_vertices_fixed(i));
        END LOOP;

        WAIT FOR 10 ns;

        DISPLAY_COOR_H <= 527;
        DISPLAY_COOR_V <= 311;

        WAIT FOR 10 ns;

        FOR i IN 0 TO 7 LOOP
            IF (DISPLAY_COOR_H >= screen_vertices_int(i)(0)) AND (DISPLAY_COOR_H <= (screen_vertices_int(i)(0) + 2)) AND
                (DISPLAY_COOR_V >= screen_vertices_int(i)(1)) AND (DISPLAY_COOR_V <= (screen_vertices_int(i)(1) + 2)) THEN
                draw_signal(i + 12) <= '1';
            ELSE
                draw_signal(i + 12) <= '0';
            END IF;
        END LOOP;
        WAIT FOR 10 ns;

        draw <= (draw_signal /= "00000000000000000000");
        WAIT;
    END PROCESS;
END Behavioral;