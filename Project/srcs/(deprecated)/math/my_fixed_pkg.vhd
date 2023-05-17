-- LIBRARY ieee;
-- USE ieee.std_logic_1164.ALL;
-- USE ieee.numeric_std.ALL;

-- PACKAGE my_fixed_pkg IS
-- END PACKAGE;

-- PACKAGE BODY my_fixed_pkg IS
--     --------------------------------------------------------------------
--     --  Type conversion
--     --------------------------------------------------------------------
--     FUNCTION to_fixed(value : INTEGER) RETURN fixed IS
--     BEGIN
--         RETURN to_signed(value * fixed_scale_factor, 32);
--     END to_fixed;

--     -- FUNCTION to_fixed(value : real) RETURN fixed IS
--     -- BEGIN
--     --     RETURN to_signed(value * fixed_scale_factor, 32);
--     -- END to_fixed;

--     FUNCTION to_integer(value : fixed) RETURN INTEGER IS
--     BEGIN
--         RETURN to_integer(signed(value) / fixed_scale_factor);
--     END to_integer;

--     --------------------------------------------------------------------
--     --  Arithmetic
--     --------------------------------------------------------------------
--     FUNCTION "+" (a : fixed; b : fixed) RETURN fixed IS
--     BEGIN
--         RETURN a + b;
--     END "+";

--     FUNCTION "-" (a : fixed; b : fixed) RETURN fixed IS
--     BEGIN
--         RETURN a - b;
--     END "-";

--     FUNCTION "*" (a : fixed; b : fixed) RETURN fixed IS
--     BEGIN
--         RETURN radix_multiply(a, b, word_length);
--     END "*";

--     FUNCTION "/" (a : fixed; b : fixed) RETURN fixed IS
--     BEGIN
--         RETURN divide(a, b);
--     END "/";

--     FUNCTION add(a, b : signed) RETURN signed IS
--         VARIABLE result : signed(a'length + 1 DOWNTO 0);
--     BEGIN
--         result := a + b;
--         RETURN result;
--     END add;

--     FUNCTION subtract(a, b : signed) RETURN signed IS
--         VARIABLE result : signed(a'length + 1 DOWNTO 0);
--     BEGIN
--         result := a - b;
--         RETURN result;
--     END subtract;

--     FUNCTION radix_multiply(a, b : signed; radix : NATURAL) RETURN signed IS
--         CONSTANT word_length : NATURAL := a'length + b'length;
--         VARIABLE result : signed(word_length - 1 DOWNTO 0);
--     BEGIN
--         result := a * b;
--         RETURN result(a'length + radix - 1 DOWNTO radix);
--     END radix_multiply;

--     FUNCTION divide(a, b : signed) RETURN signed IS
--         CONSTANT word_length : NATURAL := a'length;
--         VARIABLE result : signed(word_length - 1 DOWNTO 0);
--     BEGIN
--         result := (a * fixed_scale_factor) / b;
--         RETURN result;
--     END divide;
-- END PACKAGE BODY;