LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE ieee.fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY cube_generator_tb_2 IS
END cube_generator_tb_2;

ARCHITECTURE Behavioral OF cube_generator_tb_2 IS

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

    SIGNAL clk, reset : STD_LOGIC := '0';
    SIGNAL display_coor_h, display_coor_v : INTEGER := 0;
    SIGNAL projection_matrix, view_matrix : mat4_fixed := (OTHERS => (OTHERS => fixed_zero));
    SIGNAL pos_in, rot_in, scale_in : vec3_int := (OTHERS => 0);
    SIGNAL red_out, green_out, blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
BEGIN
    cube_generator_inst : cube_generator
    GENERIC MAP(
        SCREEN_WIDTH => 1024,
        SCREEN_HEIGHT => 600,
        BIT_DEPTH => 4
    )
    PORT MAP(
        CLK => clk,
        RESET => reset,
        DISPLAY_COOR_H => display_coor_h,
        DISPLAY_COOR_V => display_coor_v,
        PROJECTION_MATRIX => projection_matrix,
        VIEW_MATRIX => view_matrix,
        POS_IN => pos_in,
        ROT_IN => rot_in,
        SCALE_IN => scale_in,
        RED_OUT => red_out,
        GREEN_OUT => green_out,
        BLUE_OUT => blue_out
    );

    test_process : PROCESS BEGIN
        projection_matrix <= default_ortho_mat4_fixed;
        view_matrix <= look_forward_mat4_fixed;

        pos_in <= (500, 500, 0);
        rot_in <= (0, 0, 0);
        scale_in <= (5, 5, 5);
        FOR i IN 475 TO 525 LOOP
            FOR j IN 475 TO 525 LOOP
                clk <= '0';
                WAIT FOR 1 ns;

                display_coor_h <= i;
                display_coor_v <= j;
                WAIT FOR 1 ns;

                clk <= '1';
                WAIT FOR 1 ns;
            END LOOP;
        END LOOP;

        WAIT;
    END PROCESS;

END Behavioral;