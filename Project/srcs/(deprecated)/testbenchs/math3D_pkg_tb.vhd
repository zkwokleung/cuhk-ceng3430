LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE ieee.fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY math3D_pkg_tb IS
END math3D_pkg_tb;

ARCHITECTURE math3D_pkg_tb_arch OF math3D_pkg_tb IS
    SIGNAL a : vec3_int := (600, 300, 10);
    SIGNAL b : vec3_int := (0, 0, 0);
    SIGNAL c : vec3_int := (1000, 600, 0);

    SIGNAL persp_mat : mat4_fixed := default_ortho_mat4_fixed;
    SIGNAL v4f : vec4_fixed;
    SIGNAL v3f : vec3_fixed;
    SIGNAL v2f : vec2_fixed;
    SIGNAL sx : fixed;
    SIGNAL sy : fixed;
    SIGNAL view_mat : mat4_fixed := look_forward_mat4_fixed;

    SIGNAL trans, rot, scale : mat4_fixed := identity_mat4_fixed;
BEGIN

    PROCESS
    BEGIN
        trans <= translation_mat4_fixed((500, 300, 100));
        rot <= rotation_mat4_fixed((10, 10, 10));
        scale <= scaling_mat4_fixed((100, 100, 100));

        -- v4f <= to_vec4_fixed(to_vec3_fixed(a), fixed_one);
        -- WAIT FOR 10 ns;
        -- v4f <= view_mat * v4f;
        -- WAIT FOR 10 ns;
        -- v4f <= persp_mat * v4f;
        -- WAIT FOR 10 ns;
        -- v3f <= (v4f(0), v4f(1), v4f(2)) / v4f(3);
        -- WAIT FOR 10 ns;

        -- v2f <= (v3f(0), v3f(1));
        -- WAIT FOR 10 ns;
        -- v2f <= v2f + (fixed_one, fixed_one);
        -- WAIT FOR 10 ns;
        -- v2f <= v2f / to_fixed(2);
        -- WAIT FOR 10 ns;

        -- sx <= v2f(0) * 1024;
        -- sy <= v2f(1) * 600;
        -- WAIT FOR 10 ns;

        WAIT;
    END PROCESS;

END math3D_pkg_tb_arch;