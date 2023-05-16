LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.my_float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY rotation_input_controller_tb IS
END rotation_input_controller_tb;

ARCHITECTURE rotation_input_controller_tb_arch OF rotation_input_controller_tb IS
    COMPONENT rotation_input_controller IS
        PORT (
            CLK : IN STD_LOGIC;
            RESET : IN STD_LOGIC;
            POSITIVE_X_IN, POSITIVE_Y_IN, NEGATIVE_X_IN, NEGATIVE_Y_IN : IN STD_LOGIC;
            ROTATION_VEC3 : OUT vec3_int
        );
    END COMPONENT;

    SIGNAL RESET, CLK : STD_LOGIC;
    SIGNAL BTNR, BTND, BTNL, BTNU : STD_LOGIC;
    SIGNAL ROTATION_VEC3 : vec3_int;
BEGIN
    DUT : rotation_input_controller
    PORT MAP(
        CLK => CLK,
        RESET => RESET,
        POSITIVE_X_IN => BTNR,
        POSITIVE_Y_IN => BTND,
        NEGATIVE_X_IN => BTNL,
        NEGATIVE_Y_IN => BTNU,
        ROTATION_VEC3 => ROTATION_VEC3
    );

    PROCESS BEGIN
        RESET <= '1';
        WAIT FOR 10 ns;
        RESET <= '0';
        WAIT FOR 10 ns;

        BTNR <= '1';
        BTND <= '0';
        BTNL <= '0';
        BTNU <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;

        BTNR <= '0';
        BTND <= '1';
        BTNL <= '0';
        BTNU <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;

        BTNR <= '0';
        BTND <= '0';
        BTNL <= '1';
        BTNU <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;

        BTNR <= '0';
        BTND <= '0';
        BTNL <= '0';
        BTNU <= '1';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
        CLK <= '0';
        WAIT FOR 10 ns;
        WAIT;
    END PROCESS;
END rotation_input_controller_tb_arch; -- rotation_input_controller_tb_arch