LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY math3D_pkg_tb IS
END math3D_pkg_tb;

ARCHITECTURE math3D_pkg_tb_arch OF math3D_pkg_tb IS
    SIGNAL a : vec3_int := (600, 300, 10);
    SIGNAL b : vec3_int := (0, 0, 0);
    SIGNAL c : vec3_int := (-1, -1, -1);

    SIGNAL persp_mat : mat4_float := default_ortho_mat4_float;
    SIGNAL v4f : vec4_float;
    SIGNAL v3f : vec3_float;
    SIGNAL v2f : vec2_float;
    SIGNAL sx : float32;
    SIGNAL sy : float32;
    SIGNAL view_mat : mat4_float := look_forward_mat4_float;
BEGIN

    PROCESS
    BEGIN

        v4f <= to_vec4_float(to_vec3_float(a), float32_one);
        WAIT FOR 10 ns;
        v4f <= view_mat * v4f;
        WAIT FOR 10 ns;
        v4f <= persp_mat * v4f;
        WAIT FOR 10 ns;
        v3f <= (v4f(0), v4f(1), v4f(2)) / v4f(3);
        WAIT FOR 10 ns;

        v2f <= (v3f(0), v3f(1));
        WAIT FOR 10 ns;
        v2f <= v2f + (float32_one, float32_one);
        WAIT FOR 10 ns;
        v2f <= v2f / to_float(2, 8, 23);
        WAIT FOR 10 ns;

        sx <= v2f(0) * 1024;
        sy <= v2f(1) * 600;
        WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END math3D_pkg_tb_arch;