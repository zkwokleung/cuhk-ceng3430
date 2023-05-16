LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

PACKAGE my_fixed_pkg IS
    CONSTANT fixed_scale_factor : INTEGER := 131072;

    SUBTYPE fixed IS INTEGER;

    FUNCTION to_fixed(value : INTEGER) RETURN fixed;
    FUNCTION to_integer(value : fixed) RETURN INTEGER;

    FUNCTION mult_fixed(a : fixed; b : fixed) RETURN fixed;
    FUNCTION div_fixed(a : fixed; b : fixed) RETURN fixed;

END PACKAGE;

PACKAGE BODY my_fixed_pkg IS
    FUNCTION to_fixed(value : INTEGER) RETURN fixed IS
    BEGIN
        RETURN fixed(value * fixed_scale_factor);
    END to_fixed;

    FUNCTION to_integer(value : fixed) RETURN INTEGER IS
    BEGIN
        RETURN INTEGER(value / fixed_scale_factor);
    END to_integer;

    FUNCTION mult_fixed(a : fixed; b : fixed) RETURN fixed IS
    BEGIN
        RETURN a * (b / fixed_scale_factor);
    END mult_fixed;

    FUNCTION div_fixed(a : fixed; b : fixed) RETURN fixed IS
    BEGIN
        RETURN a * fixed_scale_factor / b;
    END div_fixed;
END PACKAGE BODY;