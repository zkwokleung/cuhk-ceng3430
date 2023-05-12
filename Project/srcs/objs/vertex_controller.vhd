--------------------------------------------------------------------
-- | Description : Control the position of a vertex in 3D space, also 
-- |               applies the rotations to it.
--------------------------------------------------------------------

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
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;

        VERTEX_IN : IN vec3_float;
        TRANSLATION_IN : IN vec3_int;
        ROTATION_IN : IN vec3_int;
        SCALE_IN : IN vec3_int;

        VERTEX_OUT : OUT vec3_float
    );
END vertex_controller;

ARCHITECTURE vertex_controller_arch OF vertex_controller IS
    -- Signals for the calculation of the vertex position
    SIGNAL translation_mat4 : mat4_float;
    SIGNAL rotation_mat4 : mat4_float;
    SIGNAL scale_mat4 : mat4_float;
BEGIN
    -- Pipeline the calculation of the vertex position
    PROCESS (RESET, CLK)
        VARIABLE scaled_vertex, rotated_vertex, translated_vertex : vec4_float;
    BEGIN
        IF RESET = '1' THEN
            translation_mat4 <= identity_mat4_float;
            rotation_mat4 <= identity_mat4_float;
            scale_mat4 <= identity_mat4_float;

            VERTEX_OUT <= VERTEX_IN;
        ELSIF rising_edge(CLK) THEN
            -- Obtain the matrices from the input signals
            translation_mat4 <= translation_mat4_float(TRANSLATION_IN);
            rotation_mat4 <= rotation_mat4_float(ROTATION_IN);
            scale_mat4 <= scaling_mat4_float(SCALE_IN);

            -- 1. Scale the vertex
            scaled_vertex := scale_mat4 * to_vec4_float(VERTEX_IN, float32_one);

            -- 2. Rotate the vertex
            rotated_vertex := rotation_mat4 * scaled_vertex;

            -- 3. Translate the vertex
            translated_vertex := translation_mat4 * rotated_vertex;

            -- 4. Convert the vertex to vec3_float
            VERTEX_OUT <= to_vec3_float(translated_vertex);
        END IF;
    END PROCESS;
END vertex_controller_arch; -- vertex_controller_arch