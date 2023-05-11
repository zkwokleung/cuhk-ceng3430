LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.math3D_pkg.ALL;

ENTITY math3D_pkg_tb IS
END math3D_pkg_tb;

ARCHITECTURE math3D_pkg_tb_arch OF math3D_pkg_tb IS
    SIGNAL a : vec3_int := (1, 2, 3);
    SIGNAL b : vec3_int := (2, 3, 4);
    SIGNAL c : vec3_int := (-1, -1, -1);

    SIGNAL x : mat4_int := (
    (1, 2, 3, 4),
        (5, 6, 7, 8),
        (9, 10, 11, 12),
        (13, 14, 15, 16)
    );

    SIGNAL y : mat4_int := ((1, 2, 3, 4),
    (5, 6, 7, 8),
    (9, 10, 11, 12),
    (13, 14, 15, 16));

    SIGNAL z : mat4_int := ((0, 0, 0, 0),
    (0, 0, 0, 0),
    (0, 0, 0, 0),
    (0, 0, 0, 0));

    SIGNAL pp : mat4_float;
    SIGNAL pp_int : mat4_int;
BEGIN

    PROCESS
    BEGIN
        pp <= perspective_128_75_mat4_float;
        WAIT FOR 10 ns;
        pp_int <= to_mat4_int(pp);
        WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END math3D_pkg_tb_arch;