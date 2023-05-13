LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY vertex_controller_tb IS
END vertex_controller_tb;

ARCHITECTURE vertex_controller_tb_arch OF vertex_controller_tb IS
    COMPONENT vertex_controller IS
        PORT (
            RESET : IN STD_LOGIC;
            CLK : IN STD_LOGIC;

            VERTEX_IN : IN vec3_float;
            TRANSLATION_IN : IN vec3_int;
            ROTATION_IN : IN vec3_int;
            SCALE_IN : IN vec3_int;

            VERTEX_OUT : OUT vec3_float
        );
    END COMPONENT;

    SIGNAL reset, clk : STD_LOGIC := '0';
    SIGNAL vertex_in, vertex_out : vec3_float := (float32_neg_one, float32_neg_one, float32_neg_one);
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

        translation_in <= (300, 300, 300);
        WAIT FOR 10 ns;

        FOR i IN 0 TO 10 LOOP
            clk <= '1';
            WAIT FOR 10 ns;
            clk <= '0';
            WAIT FOR 10 ns;
        END LOOP;

        translation_in <= (0, 0, 0);
        rotation_in <= (0, 0, 90);

        FOR i IN 0 TO 10 LOOP
            clk <= '1';
            WAIT FOR 10 ns;
            clk <= '0';
            WAIT FOR 10 ns;
        END LOOP;

        scale_in <= (10, 10, 10);
        translation_in <= (512, 300, 0);

        FOR i IN 0 TO 10 LOOP
            clk <= '1';
            WAIT FOR 10 ns;
            clk <= '0';
            WAIT FOR 10 ns;
        END LOOP;

        WAIT;

    END PROCESS;

END vertex_controller_tb_arch; -- vertex_controller_tb_arch