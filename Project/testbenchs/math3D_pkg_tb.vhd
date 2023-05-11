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
    (100, 200, 300, 400),
        (500, 600, 700, 8),
        (900, 1000, 1100, 12),
        (1300, 1400, 1500, 16)
    );

    SIGNAL y : mat4_int := ((100, 2, 3, 4),
    (5, 6, 7, 8),
    (9, 10, 11, 12),
    (13, 14, 15, 16));

    SIGNAL z : mat4_int := (
    (110, 110, 110, 110),
        (300, 300, 300, 300),
        (300, 300, 300, 300),
        (300, 300, 300, 300));

    SIGNAL pp : mat4_float;
    SIGNAL ipt_float : mat4_float;
    SIGNAL o : mat4_float;
    SIGNAL o_int : mat4_int;
BEGIN

    PROCESS
    BEGIN
        pp <= perspective_128_75_mat4_float;
        WAIT FOR 10 ns;
        ipt_float <= to_mat4_float(x);
        WAIT FOR 10 ns;
        o <= pp * ipt_float;
        WAIT FOR 10 ns;
        o_int <= to_mat4_int(o);
        WAIT FOR 10 ns;

        ipt_float <= to_mat4_float(y);
        WAIT FOR 10 ns;
        o <= pp * ipt_float;
        WAIT FOR 10 ns;
        o_int <= to_mat4_int(o);
        WAIT FOR 10 ns;

        ipt_float <= to_mat4_float(z);
        WAIT FOR 10 ns;
        o <= pp * ipt_float;
        WAIT FOR 10 ns;
        o_int <= to_mat4_int(o);
        WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END math3D_pkg_tb_arch;