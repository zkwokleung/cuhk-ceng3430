LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.generic_type_pkg.ALL;

ENTITY renderer3D IS
    PORT (
        CLK : IN STD_LOGIC;

        -- Board inputs
        SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        BTNC, BTNU, BTND, BTNL, BTNR : IN STD_LOGIC;

        -- Board outputs
        LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- VGA outputs
        VGA_BLUE, VGA_GREEN, VGA_RED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC
    );
END renderer3D;

ARCHITECTURE renderer3D_arch OF renderer3D IS
    CONSTANT FRAME_THICKNESS : INTEGER := 1;

    COMPONENT vga_controller IS
        PORT (
            CLK : IN STD_LOGIC;
            VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
            RED_IN, GREEN_IN, BLUE_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            COOR_H, COOR_V : OUT INTEGER;
            NEXT_COOR_H, NEXT_COOR_V : OUT INTEGER
        );
    END COMPONENT;

    COMPONENT point_on_segment IS
        PORT (
            CLK : IN STD_LOGIC;
            point : IN vec2;
            v1, v2 : IN vec2;

            on_segment : OUT STD_LOGIC
        );
    END COMPONENT;

    -- The signals for the VGA controller
    SIGNAL buffer_red_out, buffer_green_out, buffer_blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL coor_h, coor_v, next_coor_h, next_coor_v : INTEGER;

    SIGNAL cube_screen_vertices : cube_screen_vertices_t := (OTHERS => (0, 0));

    -- The signals determining whether the current pixel should be drawn.
    -- Bits 19..12 are the signals for lines drawning
    -- Bits 11..0 are the signals for vertices drawning
    SIGNAL draw_signal : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
BEGIN
    LED <= SW;

    -- VGA controller
    vga_controller_inst : vga_controller PORT MAP(
        CLK => CLK,
        VGA_HSYNC => VGA_HSYNC,
        VGA_VSYNC => VGA_VSYNC,
        RED_IN => buffer_red_out,
        GREEN_IN => buffer_green_out,
        BLUE_IN => buffer_blue_out,
        VGA_RED => VGA_RED,
        VGA_GREEN => VGA_GREEN,
        VGA_BLUE => VGA_BLUE,
        COOR_H => coor_h,
        COOR_V => coor_v,
        NEXT_COOR_H => next_coor_h,
        NEXT_COOR_V => next_coor_v
    );

    TEST : PROCESS (CLK, BTNC)
    BEGIN
        IF (BTNC = '1') THEN
            cube_screen_vertices <= (OTHERS => (0, 0));
        ELSIF rising_edge(CLK) THEN
            testing_print : FOR i IN 0 TO 7 LOOP
                cube_screen_vertices(i)(0) <= i * 120 + 100;
                cube_screen_vertices(i)(1) <= i * 70 + 100;
            END LOOP; -- testing_print
        END IF;
    END PROCESS;

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
            buffer_red_out <= "1111";
            buffer_green_out <= "1111";
            buffer_blue_out <= "1111";
        ELSE
            buffer_red_out <= (OTHERS => '0');
            buffer_green_out <= (OTHERS => '0');
            buffer_blue_out <= (OTHERS => '0');
        END IF;
    END PROCESS;

END renderer3D_arch; -- renderer3D_arch