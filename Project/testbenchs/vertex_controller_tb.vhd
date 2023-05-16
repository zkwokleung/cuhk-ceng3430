LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.my_fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY vertex_controller_tb IS
END vertex_controller_tb;

ARCHITECTURE vertex_controller_tb_arch OF vertex_controller_tb IS
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

    SIGNAL reset, clk : STD_LOGIC := '0';
    SIGNAL vertex_in, vertex_out : vec3_fixed := (fixed_neg_one, fixed_neg_one, fixed_neg_one);
    SIGNAL vertex_out_int : vec3_int;
    SIGNAL translation_in : vec3_int := (0, 0, 0);
    SIGNAL rotation_in : vec3_int := (0, 0, 0);
    SIGNAL scale_in : vec3_int := (1, 1, 1);
BEGIN

    uut : vertex_controller
    PORT MAP(
        RESET => reset,
        CLK => clk,

        VERTEX_IN => vertex_in,
        TRANSLATION_IN => translation_in,
        ROTATION_IN => rotation_in,
        SCALE_IN => scale_in,

        VERTEX_OUT => vertex_out
    );

    PROCESS BEGIN
        reset <= '1';
        WAIT FOR 10 ns;
        reset <= '0';
        WAIT FOR 10 ns;

        scale_in <= (1, 1, 1);
        rotation_in <= (1, 1, 1);
        translation_in <= (512, 300, 0);

        FOR i IN 0 TO 10 LOOP
            clk <= '1';
            WAIT FOR 10 ns;
            clk <= '0';
            WAIT FOR 10 ns;
        END LOOP;

        vertex_out_int <= to_vec3_int(vertex_out);
        WAIT FOR 10 ns;

        WAIT;

    END PROCESS;

END vertex_controller_tb_arch; -- vertex_controller_tb_arch