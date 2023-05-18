LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.generic_type_pkg.ALL;

ENTITY renderer3D IS
    GENERIC (
        FRAME_THICKNESS : INTEGER := 1
    );
    PORT (
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        COOR_H, COOR_V : IN INTEGER;
        cube_screen_vertices : IN cube_screen_vertices_t;

        BLUE_OUT, GREEN_OUT, RED_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END renderer3D;

ARCHITECTURE renderer3D_arch OF renderer3D IS
    COMPONENT point_on_segment IS
        PORT (
            CLK : IN STD_LOGIC;
            point : IN vec2;
            v1, v2 : IN vec2;

            on_segment : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL cube_screen_vertices : cube_screen_vertices_t := (OTHERS => (0, 0));

    -- The signals determining whether the current pixel should be drawn.
    -- Bits 19..12 are the signals for lines drawning
    -- Bits 11..0 are the signals for vertices drawning
    SIGNAL draw_signal : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
BEGIN
    -- Logic units for drawing the lines
    point_on_segment_i : FOR i IN 0 TO 3 GENERATE
        point_on_segment_i : point_on_segment
        PORT MAP(
            CLK => CLK,
            point => (coor_h, coor_v),
            v1 => cube_screen_vertices(i),
            v2 => cube_screen_vertices((i + 1) MOD 4),

            on_segment => draw_signal(i)
        );

        point_on_segment_j : point_on_segment
        PORT MAP(
            CLK => CLK,
            point => (coor_h, coor_v),
            v1 => cube_screen_vertices(i + 4),
            v2 => cube_screen_vertices(((i + 1) MOD 4) + 4),

            on_segment => draw_signal(i + 4)
        );

        point_on_segment_k : point_on_segment
        PORT MAP(
            CLK => CLK,
            point => (coor_h, coor_v),
            v1 => cube_screen_vertices(i),
            v2 => cube_screen_vertices(i + 4),

            on_segment => draw_signal(i + 8)
        );
    END GENERATE;

    -- Determine if the current pixel is the vertex of the cube
    PROCESS (next_coor_h, next_coor_v, cube_screen_vertices)
    BEGIN
        FOR i IN 0 TO 7 LOOP
            IF (next_coor_h >= cube_screen_vertices(i)(0)) AND (next_coor_h <= (cube_screen_vertices(i)(0) + FRAME_THICKNESS)) AND
                (next_coor_v >= cube_screen_vertices(i)(1)) AND (next_coor_v <= (cube_screen_vertices(i)(1) + FRAME_THICKNESS)) THEN
                draw_signal(i) <= '1';
            ELSE
                draw_signal(i) <= '0';
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
END renderer3D_arch; -- renderer3D_arch