LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.fixed_float_types.ALL;
USE work.fixed_pkg.ALL;

ENTITY my_fixed_pkg_tb IS
END ENTITY my_fixed_pkg_tb;

ARCHITECTURE my_fixed_pkg_tb_arch OF my_fixed_pkg_tb IS
    SIGNAL f1, f2, f3, f4, f5, f6 : sfixed(22 DOWNTO -8);
    SIGNAL i1, i2, i3, i4, i5 : INTEGER;
    SIGNAL s1, s2, s3, s4, s5 : unsigned(31 DOWNTO 0);
BEGIN

    PROCESS
    BEGIN
        f1 <= to_sfixed(1.0, 22, -8);
        f2 <= to_sfixed(2.3, 22, -8);
        WAIT FOR 10 ns;

        f3 <= resize(f1 + f2, 22, -8);
        f4 <= resize(f1 - f2, 22, -8);
        f5 <= resize(f1 * f2, 22, -8);
        f6 <= resize(f1 / f2, 22, -8);
        WAIT FOR 10 ns;

        i1 <= to_integer(f3);
        i2 <= to_integer(f4);
        i3 <= to_integer(f5);
        i4 <= to_integer(f6);
        WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END my_fixed_pkg_tb_arch; -- my_fixed_pkg_tb_arch