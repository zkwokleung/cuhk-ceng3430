LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

PACKAGE my_float_pkg IS

    CONSTANT float_scale_factor : INTEGER := 100;
    SUBTYPE float IS INTEGER;

    FUNCTION mult_float (a : float; b : float) RETURN float;
    FUNCTION div_float (a : float; b : float) RETURN float;
    FUNCTION to_integer(a : float) RETURN INTEGER;
    FUNCTION to_float(a : INTEGER) RETURN float;
END PACKAGE;

PACKAGE BODY my_float_pkg IS
    FUNCTION to_integer(a : float) RETURN INTEGER IS
        VARIABLE b : INTEGER;
    BEGIN
        b := a / float_scale_factor;
        RETURN b;
    END FUNCTION;

    FUNCTION to_float(a : INTEGER) RETURN float IS
        VARIABLE b : float;
    BEGIN
        b := a * float_scale_factor;
        RETURN b;
    END FUNCTION;

    FUNCTION mult_float (a : float; b : float) RETURN float IS
        VARIABLE c : float;
    BEGIN
        c := a * b / float_scale_factor;
        RETURN c;
    END FUNCTION;

    FUNCTION div_float (a : float; b : float) RETURN float IS
        VARIABLE c : float;
    BEGIN
        c := a * float_scale_factor / b;
        RETURN c;
    END FUNCTION;

END PACKAGE BODY;