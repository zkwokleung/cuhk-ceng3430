LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;

PACKAGE math3D_pkg IS
    TYPE vec2_int IS ARRAY (0 TO 1) OF INTEGER;
    TYPE vec3_int IS ARRAY (0 TO 2) OF INTEGER;
    TYPE vec4_int IS ARRAY (0 TO 3) OF INTEGER;

    TYPE vec2_float IS ARRAY (0 TO 1) OF float32;
    TYPE vec3_float IS ARRAY (0 TO 2) OF float32;
    TYPE vec4_float IS ARRAY (0 TO 3) OF float32;

    TYPE mat3_int IS ARRAY (0 TO 2) OF vec3_int;
    TYPE mat4_int IS ARRAY (0 TO 3) OF vec4_int;

    TYPE mat3_float IS ARRAY (0 TO 2) OF vec3_float;
    TYPE mat4_float IS ARRAY (0 TO 3) OF vec4_float;

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_int) RETURN vec2_int;
    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_int) RETURN vec2_int;
    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_int) RETURN INTEGER;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_int) RETURN vec3_int;
    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_int) RETURN vec3_int;
    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_int) RETURN INTEGER;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_int) RETURN vec4_int;
    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_int) RETURN vec4_int;
    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_int) RETURN INTEGER;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_int) RETURN mat3_int;
    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_int) RETURN mat3_int;
    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_int) RETURN mat3_int;
    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_int; b : vec3_int) RETURN vec3_int;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_int) RETURN mat4_int;
    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_int) RETURN mat4_int;
    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_int) RETURN mat4_int;
    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_int; b : vec4_int) RETURN vec4_int;

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_float) RETURN vec2_float;
    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_float) RETURN vec2_float;
    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_float) RETURN float32;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_float) RETURN vec3_float;
    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_float) RETURN vec3_float;
    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_float) RETURN float32;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_float) RETURN vec4_float;
    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_float) RETURN vec4_float;
    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_float) RETURN float32;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_float) RETURN mat3_float;
    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_float) RETURN mat3_float;
    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_float) RETURN mat3_float;
    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_float; b : vec3_float) RETURN vec3_float;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_float) RETURN mat4_float;
    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_float) RETURN mat4_float;
    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_float) RETURN mat4_float;
    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_float; b : vec4_float) RETURN vec4_float;
END PACKAGE;

PACKAGE BODY math3D_pkg IS

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_int) RETURN vec2_int IS
        VARIABLE result : vec2_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_int) RETURN vec2_int IS
        VARIABLE result : vec2_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_int) RETURN INTEGER IS
        VARIABLE result : INTEGER;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1);
        RETURN result;
    END FUNCTION;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_int) RETURN vec3_int IS
        VARIABLE result : vec3_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_int) RETURN vec3_int IS
        VARIABLE result : vec3_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_int) RETURN INTEGER IS
        VARIABLE result : INTEGER;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_int) RETURN vec4_int IS
        VARIABLE result : vec4_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_int) RETURN vec4_int IS
        VARIABLE result : vec4_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_int) RETURN INTEGER IS
        VARIABLE result : INTEGER;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2) + a(3) * b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_int) RETURN mat3_int IS
        VARIABLE result : mat3_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_int) RETURN mat3_int IS
        VARIABLE result : mat3_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_int) RETURN mat3_int IS
        VARIABLE result : mat3_int;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_int; b : vec3_int) RETURN vec3_int IS
        VARIABLE result : vec3_int;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_int) RETURN mat4_int IS
        VARIABLE result : mat4_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_int) RETURN mat4_int IS
        VARIABLE result : mat4_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_int) RETURN mat4_int IS
        VARIABLE result : mat4_int;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0) + a(0)(3) * b(3)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1) + a(0)(3) * b(3)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2) + a(0)(3) * b(3)(2);
        result(0)(3) := a(0)(0) * b(0)(3) + a(0)(1) * b(1)(3) + a(0)(2) * b(2)(3) + a(0)(3) * b(3)(3);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0) + a(1)(3) * b(3)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1) + a(1)(3) * b(3)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2) + a(1)(3) * b(3)(2);
        result(1)(3) := a(1)(0) * b(0)(3) + a(1)(1) * b(1)(3) + a(1)(2) * b(2)(3) + a(1)(3) * b(3)(3);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0) + a(2)(3) * b(3)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1) + a(2)(3) * b(3)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2) + a(2)(3) * b(3)(2);
        result(2)(3) := a(2)(0) * b(0)(3) + a(2)(1) * b(1)(3) + a(2)(2) * b(2)(3) + a(2)(3) * b(3)(3);

        result(3)(0) := a(3)(0) * b(0)(0) + a(3)(1) * b(1)(0) + a(3)(2) * b(2)(0) + a(3)(3) * b(3)(0);
        result(3)(1) := a(3)(0) * b(0)(1) + a(3)(1) * b(1)(1) + a(3)(2) * b(2)(1) + a(3)(3) * b(3)(1);
        result(3)(2) := a(3)(0) * b(0)(2) + a(3)(1) * b(1)(2) + a(3)(2) * b(2)(2) + a(3)(3) * b(3)(2);
        result(3)(3) := a(3)(0) * b(0)(3) + a(3)(1) * b(1)(3) + a(3)(2) * b(2)(3) + a(3)(3) * b(3)(3);

        RETURN result;
    END FUNCTION;

    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_int; b : vec4_int) RETURN vec4_int IS
        VARIABLE result : vec4_int;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2) + a(0)(3) * b(3);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2) + a(1)(3) * b(3);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2) + a(2)(3) * b(3);
        result(3) := a(3)(0) * b(0) + a(3)(1) * b(1) + a(3)(2) * b(2) + a(3)(3) * b(3);
        RETURN result;
    END FUNCTION;

    -------------------------------------------------------------------------------------
    -- FLOAT type data structures
    -------------------------------------------------------------------------------------

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_float) RETURN vec2_float IS
        VARIABLE result : vec2_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_float) RETURN vec2_float IS
        VARIABLE result : vec2_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_float) RETURN float IS
        VARIABLE result : float;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1);
        RETURN result;
    END FUNCTION;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_float) RETURN vec3_float IS
        VARIABLE result : vec3_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_float) RETURN vec3_float IS
        VARIABLE result : vec3_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_float) RETURN float IS
        VARIABLE result : float;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_float) RETURN vec4_float IS
        VARIABLE result : vec4_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_float) RETURN vec4_float IS
        VARIABLE result : vec4_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_float) RETURN float IS
        VARIABLE result : float;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2) + a(3) * b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_float) RETURN mat3_float IS
        VARIABLE result : mat3_float;
    BEGIN
        result(0)(0) := a(0)(0) + b(0)(0);
        result(0)(1) := a(0)(1) + b(0)(1);
        result(0)(2) := a(0)(2) + b(0)(2);

        result(1)(0) := a(1)(0) + b(1)(0);
        result(1)(1) := a(1)(1) + b(1)(1);
        result(1)(2) := a(1)(2) + b(1)(2);

        result(2)(0) := a(2)(0) + b(2)(0);
        result(2)(1) := a(2)(1) + b(2)(1);
        result(2)(2) := a(2)(2) + b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_float) RETURN mat3_float IS
        VARIABLE result : mat3_float;
    BEGIN
        result(0)(0) := a(0)(0) - b(0)(0);
        result(0)(1) := a(0)(1) - b(0)(1);
        result(0)(2) := a(0)(2) - b(0)(2);

        result(1)(0) := a(1)(0) - b(1)(0);
        result(1)(1) := a(1)(1) - b(1)(1);
        result(1)(2) := a(1)(2) - b(1)(2);

        result(2)(0) := a(2)(0) - b(2)(0);
        result(2)(1) := a(2)(1) - b(2)(1);
        result(2)(2) := a(2)(2) - b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_float) RETURN mat3_float IS
        VARIABLE result : mat3_float;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_float; b : vec3_float) RETURN vec3_float IS
        VARIABLE result : vec3_float;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_float) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_float) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_float) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0) + a(0)(3) * b(3)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1) + a(0)(3) * b(3)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2) + a(0)(3) * b(3)(2);
        result(0)(3) := a(0)(0) * b(0)(3) + a(0)(1) * b(1)(3) + a(0)(2) * b(2)(3) + a(0)(3) * b(3)(3);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0) + a(1)(3) * b(3)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1) + a(1)(3) * b(3)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2) + a(1)(3) * b(3)(2);
        result(1)(3) := a(1)(0) * b(0)(3) + a(1)(1) * b(1)(3) + a(1)(2) * b(2)(3) + a(1)(3) * b(3)(3);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0) + a(2)(3) * b(3)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1) + a(2)(3) * b(3)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2) + a(2)(3) * b(3)(2);
        result(2)(3) := a(2)(0) * b(0)(3) + a(2)(1) * b(1)(3) + a(2)(2) * b(2)(3) + a(2)(3) * b(3)(3);

        result(3)(0) := a(3)(0) * b(0)(0) + a(3)(1) * b(1)(0) + a(3)(2) * b(2)(0) + a(3)(3) * b(3)(0);
        result(3)(1) := a(3)(0) * b(0)(1) + a(3)(1) * b(1)(1) + a(3)(2) * b(2)(1) + a(3)(3) * b(3)(1);
        result(3)(2) := a(3)(0) * b(0)(2) + a(3)(1) * b(1)(2) + a(3)(2) * b(2)(2) + a(3)(3) * b(3)(2);
        result(3)(3) := a(3)(0) * b(0)(3) + a(3)(1) * b(1)(3) + a(3)(2) * b(2)(3) + a(3)(3) * b(3)(3);

        RETURN result;
    END FUNCTION;

    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_float; b : vec4_float) RETURN vec4_float IS
        VARIABLE result : vec4_float;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2) + a(0)(3) * b(3);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2) + a(1)(3) * b(3);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2) + a(2)(3) * b(3);
        result(3) := a(3)(0) * b(0) + a(3)(1) * b(1) + a(3)(2) * b(2) + a(3)(3) * b(3);
        RETURN result;
    END FUNCTION;
END PACKAGE BODY;