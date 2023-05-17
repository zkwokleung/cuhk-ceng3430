--------------------------------------------------------------------
-- | Description : The top module for the 3D renderer.
--------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE ieee.fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY renderer3D IS
    PORT (
        -- Board Ports
        CLK : IN STD_LOGIC;
        BTNC, BTNL, BTNR, BTNU, BTND : IN STD_LOGIC;
        SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- VGA Ports
        VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
        VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END renderer3D;

ARCHITECTURE renderer3D_arch OF renderer3D IS
    -- Constants
    CONSTANT SCREEN_WIDTH : INTEGER := 1024;
    CONSTANT SCREEN_HEIGHT : INTEGER := 600;
    CONSTANT BIT_DEPTH : INTEGER := 4;

    CONSTANT PROJECTION_MATRIX : mat4_fixed := default_ortho_mat4_fixed;
    CONSTANT VIEW_MATRIX : mat4_fixed := look_forward_mat4_fixed;

    -- The default scale of the cube
    CONSTANT INIT_CUBE_SCALE : vec3_int := (10, 10, 10);

    -- The initial position of the cube
    CONSTANT INIT_CUBE_POS : vec3_int := (512, 300, -10);

    -- The default rotation of the cube in euler angles
    CONSTANT INIT_CUBE_ROT : vec3_int := (0, 0, 0);

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
            PROJECTION_MATRIX, VIEW_MATRIX : IN mat4_fixed;
            POS_IN, ROT_IN, SCALE_IN : IN vec3_int;
            RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
        );
    END COMPONENT;

    -- COMPONENT rotation_input_controller IS
    --     PORT (
    --         CLK : IN STD_LOGIC;
    --         RESET : IN STD_LOGIC;
    --         POSITIVE_X_IN, POSITIVE_Y_IN, NEGATIVE_X_IN, NEGATIVE_Y_IN : IN STD_LOGIC;
    --         ROTATION_VEC3 : OUT vec3_int
    --     );
    -- END COMPONENT;

    COMPONENT transform_input_controller IS
        PORT (
            CLK : IN STD_LOGIC;
            RESET : IN STD_LOGIC;
            DEFAULT_POS_VEC3 : IN vec3_int;
            DEFAULT_ROT_VEC3 : IN vec3_int;
            DEFAULT_SCALE_VEC3 : IN vec3_int;
            BTNC, BTNL, BTNR, BTNU, BTND : IN STD_LOGIC;
            SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            POS_VEC3, ROT_VEC3, SCALE_VEC3 : OUT vec3_int
        );
    END COMPONENT;

    -- The output of the screen buffer
    SIGNAL buffer_red_out, buffer_green_out, buffer_blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- The coordinates of the pixel the screen is currently displaying
    SIGNAL coor_h, coor_v, next_coor_h, next_coor_v : INTEGER;

    -- Cube Properties

    -- The pixel scale of the cube
    SIGNAL cube_scale : vec3_int := INIT_CUBE_SCALE;

    -- The position of the cube
    SIGNAL cube_pos : vec3_int := INIT_CUBE_POS;

    -- The rotation of the cube in euler angles
    SIGNAL cube_rot : vec3_int := INIT_CUBE_ROT;
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
        DISPLAY_COOR_H => next_coor_h,
        DISPLAY_COOR_V => next_coor_v,
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POS_IN => cube_pos,
        ROT_IN => cube_rot,
        SCALE_IN => cube_scale,
        RED_OUT => buffer_red_out,
        GREEN_OUT => buffer_green_out,
        BLUE_OUT => buffer_blue_out
    );

    -- rot_ctrl_inst : rotation_input_controller PORT MAP(
    --     CLK => CLK,
    --     RESET => BTNC,
    --     POSITIVE_X_IN => BTNR,
    --     POSITIVE_Y_IN => BTNU,
    --     NEGATIVE_X_IN => BTNL,
    --     NEGATIVE_Y_IN => BTND,
    --     ROTATION_VEC3 => cube_rot
    -- );

    trans_ipt_ctrl_inst : transform_input_controller PORT MAP(
        CLK => CLK,
        RESET => BTNC,
        DEFAULT_POS_VEC3 => INIT_CUBE_POS,
        DEFAULT_ROT_VEC3 => INIT_CUBE_ROT,
        DEFAULT_SCALE_VEC3 => INIT_CUBE_SCALE,
        BTNC => BTNC,
        BTNL => BTNL,
        BTNR => BTNR,
        BTNU => BTNU,
        BTND => BTND,
        SW => SW,
        POS_VEC3 => cube_pos,
        ROT_VEC3 => cube_rot,
        SCALE_VEC3 => cube_scale
    );

END renderer3D_arch;