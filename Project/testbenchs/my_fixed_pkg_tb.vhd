LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.my_fixed_pkg.ALL;

ENTITY my_fixed_pkg_tb IS
END ENTITY my_fixed_pkg_tb;

ARCHITECTURE my_fixed_pkg_tb_arch OF my_fixed_pkg_tb IS
    SIGNAL f1, f2, f3, f4, f5, f6 : fixed;
    SIGNAL i1, i2, i3, i4, i5 : INTEGER;
BEGIN

    PROCESS
    BEGIN
        f1 <= to_fixed(1);
        f2 <= to_fixed(2);
        WAIT FOR 10 ns;

        f3 <= f1 + f2;
        f4 <= f1 - f2;
        f5 <= mult_fixed(f1, f2);
        f6 <= div_fixed(f1, f2);
        WAIT FOR 10 ns;

        i1 <= to_integer(f3);
        i2 <= to_integer(f4);
        i3 <= to_integer(f5);
        i4 <= to_integer(f6);
        WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END my_fixed_pkg_tb_arch; -- my_fixed_pkg_tb_arch