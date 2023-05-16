LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.fixed_float_types.ALL;
USE work.fixed_pkg.ALL;

ENTITY fixed_pkg_tb IS
END ENTITY fixed_pkg_tb;

ARCHITECTURE fixed_pkg_tb_arch OF fixed_pkg_tb IS
    SIGNAL a, b : sfixed(7 DOWNTO -8);
    SIGNAL c : sfixed(8 DOWNTO -8);
    SIGNAL x : sfixed(7 DOWNTO -8);
    SIGNAL y, z : INTEGER;
BEGIN

    PROCESS BEGIN
        a <= to_sfixed(100.0, 7, -8);
        b <= to_sfixed(200.0, 7, -8);

        WAIT FOR 10 ns;

        c <= a + b;
        WAIT FOR 10 ns;

        x <= c(7 DOWNTO -8);
        WAIT FOR 10 ns;

        y <= to_integer(c);

        z <= to_integer(x);

        WAIT;
    END PROCESS;

END fixed_pkg_tb_arch; -- fixed_pkg_tb_arch