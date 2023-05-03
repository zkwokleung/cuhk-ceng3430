LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.math3D_pkg.ALL;

ENTITY math3D_pkg_tb IS
END math3D_pkg_tb;

ARCHITECTURE math3D_pkg_tb_arch OF math3D_pkg_tb IS
    SIGNAL a, b, c, d, e, f : vec3_int;
    SIGNAL i, j, k, l, m, n : vec4_int;
    SIGNAL x, y, z, w : INTEGER;
BEGIN

    PROCESS
    BEGIN
        a <= (1, 2, 3);
        b <= (4, 5, 6);
        c <= a + b;
        WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END math3D_pkg_tb_arch;