LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE generic_type_pkg.ALL;

ENTITY renderer3D IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

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
            x, y : IN INTEGER;
            v1_x, v1_y, v2_x, v2_y : IN INTEGER;

            on_segment : OUT STD_LOGIC
        );
    END COMPONENT;

    -- The signals for the VGA controller
    SIGNAL buffer_red_out, buffer_green_out, buffer_blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL coor_h, coor_v, next_coor_h, next_coor_v : INTEGER;

    SIGNAL cube_vertices : cube_vertices_t := (OTHERS => (0, 0, 0));
    SIGNAL cube_screen_vertices : cube_screen_vertices_t := (OTHERS => (0, 0));

    -- The signals determining whether the current pixel should be drawn.
    -- Bits 19..12 are the signals for lines drawning
    -- Bits 11..0 are the signals for vertices drawning
    SIGNAL draw_signal : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
BEGIN
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

    -- Logic units for drawing the lines
    point_on_segment_i : FOR i IN 0 TO 7 GENERATE
        point_on_segment_i : point_on_segment
        PORT MAP(
            CLK => CLK,
            x => NEXT_COOR_H,
            y => NEXT_COOR_V,
            v1_x => cube_screen_vertices(i)(0),
            v1_y => cube_screen_vertices(i)(1),
            v2_x => cube_screen_vertices((i + 1) MOD 8)(0),
            v2_y => cube_screen_vertices((i + 1) MOD 8)(1),

            on_segment => draw_signal(i + 12)
        );
    END GENERATE;

    -- Determine if the current pixel is the vertex of the cube
    PROCESS (DISPLAY_COOR_H, DISPLAY_COOR_V, screen_vertices_int)
    BEGIN
        FOR i IN 0 TO 7 LOOP
            IF (DISPLAY_COOR_H >= cube_screen_vertices(i)(0)) AND (DISPLAY_COOR_H <= (cube_screen_vertices(i)(0) + FRAME_THICKNESS)) AND
                (DISPLAY_COOR_V >= cube_screen_vertices(i)(1)) AND (DISPLAY_COOR_V <= (cube_screen_vertices(i)(1) + FRAME_THICKNESS)) THEN
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