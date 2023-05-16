LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.my_float_pkg.ALL;

ENTITY my_float_pkg_tb IS
END my_float_pkg_tb;

ARCHITECTURE my_float_pkg_tb_arch OF my_float_pkg_tb IS
    SIGNAL a, b, c : float;
    SIGNAL x, y, z : INTEGER;
BEGIN
    PROCESS
    BEGIN
        a <= 25;
        b <= 25;
        WAIT FOR 10 ns;

        c <= mult_float(a, b);
        WAIT FOR 10 ns;

        x <= to_integer(a);
        y <= to_integer(b);
        z <= to_integer(c);
        WAIT;
    END PROCESS;

END my_float_pkg_tb_arch; -- my_float_pkg_tb_arch