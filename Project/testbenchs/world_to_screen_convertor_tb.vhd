LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.fixed_float_types.ALL;
USE work.fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY world_to_screen_convertor_tb IS
END world_to_screen_convertor_tb;

ARCHITECTURE world_to_screen_convertor_tb_arch OF world_to_screen_convertor_tb IS
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

    SIGNAL RESET : STD_LOGIC := '0';
    SIGNAL CLK : STD_LOGIC := '0';
    SIGNAL PROJECTION_MATRIX : mat4_fixed;
    SIGNAL VIEW_MATRIX : mat4_fixed;
    SIGNAL POINT_3D_INT : vec3_int;
    SIGNAL POINT_3D : vec3_fixed;
    SIGNAL SCREEN_POS_OUT : vec2_fixed;
BEGIN
    world_to_screen_convertor_inst : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => 1024,
        SCREEN_HEIGHT => 600
    )
    PORT MAP(
        RESET => RESET,
        CLK => CLK,
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => POINT_3D,
        SCREEN_POS_OUT => SCREEN_POS_OUT
    );

    PROCESS BEGIN
        RESET <= '1';
        WAIT FOR 10 ns;
        RESET <= '0';
        WAIT FOR 10 ns;

        PROJECTION_MATRIX <= default_ortho_mat4_fixed;
        VIEW_MATRIX <= look_forward_mat4_fixed;

        POINT_3D_INT <= (20, 50, 100);
        WAIT FOR 10 ns;
        POINT_3D <= to_vec3_fixed(POINT_3D_INT);
        WAIT FOR 10 ns;

        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;

        POINT_3D_INT <= (1000, 600, 0);
        WAIT FOR 10 ns;
        POINT_3D <= to_vec3_fixed(POINT_3D_INT);
        WAIT FOR 10 ns;

        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;

        POINT_3D_INT <= (500, 300, 100);
        WAIT FOR 10 ns;
        POINT_3D <= to_vec3_fixed(POINT_3D_INT);
        WAIT FOR 10 ns;

        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;
        WAIT;

    END PROCESS;

END world_to_screen_convertor_tb_arch; -- world_to_screen_convertor_tb_arch