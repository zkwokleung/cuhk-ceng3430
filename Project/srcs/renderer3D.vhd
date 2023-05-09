LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY IEEE_PROPOSED;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY renderer3D IS
    PORT (
        -- Board Ports
        CLK : IN STD_LOGIC;
        BTNC : IN STD_LOGIC;

        -- VGA Ports
        VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
        VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END renderer3D;

ARCHITECTURE renderer3D_arch OF renderer3D IS
    -- Constants
    CONSTANT SCREEN_WIDTH : INTEGER := 512;
    CONSTANT SCREEN_HEIGHT : INTEGER := 300;
    CONSTANT BIT_DEPTH : INTEGER := 4;

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

    COMPONENT screen_buffer IS
        GENERIC (
            SCREEN_WIDTH : INTEGER := 1024;
            SCREEN_HEIGHT : INTEGER := 600;
            BIT_DEPTH : INTEGER := 4
        );
        PORT (
            CLK : IN STD_LOGIC;
            RESET : IN STD_LOGIC;

            COOR_X, COOR_Y : IN INTEGER;

            RED_BUFFER_IN, GREEN_BUFFER_IN, BLUE_BUFFER_IN : IN STD_LOGIC_VECTOR(SCREEN_WIDTH * SCREEN_HEIGHT * BIT_DEPTH - 1 DOWNTO 0);
            RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT cube_generator IS
        GENERIC (
            SCREEN_WIDTH : INTEGER := 1024;
            SCREEN_HEIGHT : INTEGER := 600;
            BIT_DEPTH : INTEGER := 4
        );
        PORT (
            CLK : IN STD_LOGIC;
            RESET : IN STD_LOGIC;
            DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;
            POS, ROT, SCALE : IN vec3_float;
            RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
        );
    END COMPONENT;

    -- The output of the screen buffer
    SIGNAL buffer_red_out, buffer_green_out, buffer_blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- The coordinates of the pixel the screen is currently displaying
    SIGNAL coor_h, coor_v, next_coor_h, next_coor_v : INTEGER;

    -- The pixel scale of the cube
    SIGNAL cube_scale : vec3_float := (to_float(100, 8, 23), to_float(100, 8, 23), to_float(100, 8, 23));

    -- The position of the cube
    SIGNAL cube_pos : vec3_float := (to_float(512, 8, 23), to_float(300, 8, 23), to_float(100, 8, 23));

    -- The rotation of the cube in euler angles
    SIGNAL cube_rot : vec3_float := (to_float(0, 8, 23), to_float(0, 8, 23), to_float(0, 8, 23));
BEGIN

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

    cube_generator_inst : cube_generator PORT MAP(
        CLK => CLK,
        RESET => BTNC,
        DISPLAY_COOR_H => coor_h,
        DISPLAY_COOR_V => coor_v,
        POS => cube_pos,
        ROT => cube_rot,
        SCALE => cube_scale,
        RED_OUT => buffer_red_out,
        GREEN_OUT => buffer_green_out,
        BLUE_OUT => buffer_blue_out
    );

END renderer3D_arch;