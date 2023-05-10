LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY vertex_controller IS
    PORT (
        VERTEX_IN : IN vec3_float;
        ROTATION_VEC3_IN : IN vec3_float;

        VERTEX_OUT : OUT vec3_float
    );
END vertex_controller;

ARCHITECTURE vertex_controller_arch OF vertex_controller IS

    SIGNAL rot_vec3_int : vec3_int;
    SIGNAL rot_mat4_float : mat4_float;
    SIGNAL vert_in_vec4_float : vec4_float;
    SIGNAL vert_out_vec3_float : vec3_float;

BEGIN
    rot_vec3_int <= to_vec3_int(ROTATION_VEC3_IN);
    rot_mat4_float <= rotation_mat4_float(rot_vec3_int);
    vert_in_vec4_float <= to_vec4_float(VERTEX_IN, float32_one);
    vert_out_vec3_float <= to_vec3_float(vert_in_vec4_float);
    VERTEX_OUT <= vert_out_vec3_float;
END vertex_controller_arch; -- vertex_controller_arch