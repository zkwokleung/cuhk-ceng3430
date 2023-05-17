-- --------------------------------------------------------------------
-- "float_pkg" package contains functions for floating point math.
-- Please see the documentation for the floating point package.
-- This package should be compiled into "ieee_proposed" and used as follows:
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;
-- use ieee_proposed.fixed_float_types.all;
-- use ieee_proposed.fixed_pkg.all;
-- use ieee_proposed.float_pkg.all;
--
--  This verison is designed to work with the VHDL-93 compilers.  Please
--  note the "%%%" comments.  These are where we diverge from the
--  VHDL-200X LRM.
--
-- --------------------------------------------------------------------
-- Version    : $Revision: 1.1 $
-- Date       : $Date: 2012/03/09 20:36:50 $
-- --------------------------------------------------------------------

USE STD.TEXTIO.ALL;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ieee_proposed;
USE work.fixed_float_types.ALL;
USE ieee.fixed_pkg.ALL;

PACKAGE float_pkg IS
  -- generic (
  -- Defaults for sizing routines, when you do a "to_float" this will be
  -- the default size.  Example float32 would be 8 and 23 (8 downto -23)
  CONSTANT float_exponent_width : NATURAL := 8;
  CONSTANT float_fraction_width : NATURAL := 23;
  -- Rounding algorithm, "round_nearest" is default, other valid values
  -- are "round_zero" (truncation), "round_inf" (round up), and
  -- "round_neginf" (round down)
  CONSTANT float_round_style : round_type := round_nearest;
  -- Denormal numbers (very small numbers near zero) true or false
  CONSTANT float_denormalize : BOOLEAN := true;
  -- Turns on NAN processing (invalid numbers and overflow) true of false
  CONSTANT float_check_error : BOOLEAN := true;
  -- Guard bits are added to the bottom of every operation for rounding.
  -- any natural number (including 0) are valid.
  CONSTANT float_guard_bits : NATURAL := 3;
  -- If TRUE, then turn off warnings on "X" propagation
  CONSTANT no_warning : BOOLEAN := (false
  );

  -- Author David Bishop (dbishop@vhdl.org)

  -- Note that the size of the vector is not defined here, but in
  -- the package which calls this one.
  TYPE UNRESOLVED_float IS ARRAY (INTEGER RANGE <>) OF STD_ULOGIC; -- main type
  SUBTYPE U_float IS UNRESOLVED_float;

  SUBTYPE float IS UNRESOLVED_float;
  -----------------------------------------------------------------------------
  -- Use the float type to define your own floating point numbers.
  -- There must be a negative index or the packages will error out.
  -- Minimum supported is "subtype float7 is float (3 downto -3);"
  -- "subtype float16 is float (6 downto -9);" is probably the smallest
  -- practical one to use.
  -----------------------------------------------------------------------------

  -- IEEE 754 single precision
  SUBTYPE UNRESOLVED_float32 IS UNRESOLVED_float (8 DOWNTO -23);
  ALIAS U_float32 IS UNRESOLVED_float32;
  SUBTYPE float32 IS float (8 DOWNTO -23);
  -----------------------------------------------------------------------------
  -- IEEE-754 single precision floating point.  This is a "float"
  -- in C, and a FLOAT in Fortran.  The exponent is 8 bits wide, and
  -- the fraction is 23 bits wide.  This format can hold roughly 7 decimal
  -- digits.  Infinity is 2**127 = 1.7E38 in this number system.
  -- The bit representation is as follows:
  -- 1 09876543 21098765432109876543210
  -- 8 76543210 12345678901234567890123
  -- 0 00000000 00000000000000000000000
  -- 8 7      0 -1                  -23
  -- +/-   exp.  fraction
  -----------------------------------------------------------------------------

  -- IEEE 754 double precision
  SUBTYPE UNRESOLVED_float64 IS UNRESOLVED_float (11 DOWNTO -52);
  ALIAS U_float64 IS UNRESOLVED_float64;
  SUBTYPE float64 IS float (11 DOWNTO -52);
  -----------------------------------------------------------------------------
  -- IEEE-754 double precision floating point.  This is a "double float"
  -- in C, and a FLOAT*8 in Fortran.  The exponent is 11 bits wide, and
  -- the fraction is 52 bits wide.  This format can hold roughly 15 decimal
  -- digits.  Infinity is 2**2047 in this number system.
  -- The bit representation is as follows:
  --  3 21098765432 1098765432109876543210987654321098765432109876543210
  --  1 09876543210 1234567890123456789012345678901234567890123456789012
  --  S EEEEEEEEEEE FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
  -- 11 10        0 -1                                               -52
  -- +/-  exponent    fraction
  -----------------------------------------------------------------------------

  -- IEEE 854 & C extended precision
  SUBTYPE UNRESOLVED_float128 IS UNRESOLVED_float (15 DOWNTO -112);
  ALIAS U_float128 IS UNRESOLVED_float128;
  SUBTYPE float128 IS float (15 DOWNTO -112);
  -----------------------------------------------------------------------------
  -- The 128 bit floating point number is "long double" in C (on
  -- some systems this is a 70 bit floating point number) and FLOAT*32
  -- in Fortran.  The exponent is 15 bits wide and the fraction is 112
  -- bits wide. This number can handle approximately 33 decimal digits.
  -- Infinity is 2**32,767 in this number system.
  -----------------------------------------------------------------------------

  -- purpose: Checks for a valid floating point number
  TYPE valid_fpstate IS (nan, -- Signaling NaN (C FP_NAN)
    quiet_nan, -- Quiet NaN (C FP_NAN)
    neg_inf, -- Negative infinity (C FP_INFINITE)
    neg_normal, -- negative normalized nonzero
    neg_denormal, -- negative denormalized (FP_SUBNORMAL)
    neg_zero, -- -0 (C FP_ZERO)
    pos_zero, -- +0 (C FP_ZERO)
    pos_denormal, -- Positive denormalized (FP_SUBNORMAL)
    pos_normal, -- positive normalized nonzero
    pos_inf, -- positive infinity
    isx); -- at least one input is unknown

  -- This deferred constant will tell you if the package body is synthesizable
  -- or implemented as real numbers.
  CONSTANT fphdlsynth_or_real : BOOLEAN; -- deferred constant

  -- Returns the class which X falls into
  FUNCTION Classfp (
    x : UNRESOLVED_float; -- floating point input
    check_error : BOOLEAN := float_check_error) -- check for errors
    RETURN valid_fpstate;

  -- Arithmetic functions, these operators do not require parameters.
  FUNCTION "abs" (arg : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "-" (arg : UNRESOLVED_float) RETURN UNRESOLVED_float;

  -- These allows the base math functions to use the default values
  -- of their parameters.  Thus they do full IEEE floating point.

  FUNCTION "+" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "-" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "*" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "/" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "rem" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "mod" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;

  -- Basic parameter list
  -- round_style - Selects the rounding algorithm to use
  -- guard - extra bits added to the end if the operation to add precision
  -- check_error - When "false" turns off NAN and overflow checks
  -- denormalize - When "false" turns off denormal number processing

  FUNCTION add (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION subtract (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION multiply (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION divide (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION remainder (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION modulo (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- reciprocal
  FUNCTION reciprocal (
    arg : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION dividebyp2 (
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- Multiply accumulate  result = l*r + c
  FUNCTION mac (
    l, r, c : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- Square root (all 754 based implementations need this)
  FUNCTION sqrt (
    arg : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style;
    CONSTANT guard : NATURAL := float_guard_bits;
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN UNRESOLVED_float;

  FUNCTION Is_Negative (arg : UNRESOLVED_float) RETURN BOOLEAN;

  -----------------------------------------------------------------------------
  -- compare functions
  -- =, /=, >=, <=, <, >, maximum, minimum

  FUNCTION eq (-- equal =
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN BOOLEAN;

  FUNCTION ne (-- not equal /=
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN BOOLEAN;

  FUNCTION lt (-- less than <
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN BOOLEAN;

  FUNCTION gt (-- greater than >
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN BOOLEAN;

  FUNCTION le (-- less than or equal to <=
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN BOOLEAN;

  FUNCTION ge (-- greater than or equal to >=
    l, r : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN BOOLEAN;

  -- Need to overload the default versions of these
  FUNCTION "=" (l, r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "/=" (l, r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION ">=" (l, r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "<=" (l, r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION ">" (l, r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "<" (l, r : UNRESOLVED_float) RETURN BOOLEAN;

  FUNCTION \?=\ (l, r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?/=\ (l, r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?>\ (l, r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?>=\ (l, r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?<\ (l, r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?<=\ (l, r : UNRESOLVED_float) RETURN STD_ULOGIC;

  FUNCTION std_match (l, r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION find_rightmost (arg : UNRESOLVED_float; y : STD_ULOGIC
  ) RETURN INTEGER;
  FUNCTION find_leftmost (arg : UNRESOLVED_float; y : STD_ULOGIC
  ) RETURN INTEGER;
  FUNCTION maximum (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION minimum (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;

  -- conversion functions
  -- Converts one floating point number into another.

  FUNCTION resize (
    arg : UNRESOLVED_float; -- Floating point input
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION resize (
    arg : UNRESOLVED_float; -- Floating point input
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  FUNCTION to_float32 (
    arg : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float32;

  FUNCTION to_float64 (
    arg : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float64;

  FUNCTION to_float128 (
    arg : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error;
    CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float128;

  -- Converts an fp into an SLV (needed for synthesis)
  FUNCTION to_slv (arg : UNRESOLVED_float) RETURN STD_LOGIC_VECTOR;
  ALIAS to_StdLogicVector IS to_slv [UNRESOLVED_float RETURN STD_LOGIC_VECTOR];
  ALIAS to_Std_Logic_Vector IS to_slv [UNRESOLVED_float RETURN STD_LOGIC_VECTOR];

  -- Converts an fp into an std_ulogic_vector (sulv)
  FUNCTION to_sulv (arg : UNRESOLVED_float) RETURN STD_ULOGIC_VECTOR;
  ALIAS to_StdULogicVector IS to_sulv [UNRESOLVED_float RETURN STD_ULOGIC_VECTOR];
  ALIAS to_Std_ULogic_Vector IS to_sulv [UNRESOLVED_float RETURN STD_ULOGIC_VECTOR];

  -- std_ulogic_vector to float
  FUNCTION to_float (
    arg : STD_ULOGIC_VECTOR;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- length of FP output fraction
    RETURN UNRESOLVED_float;

  -- Integer to float
  FUNCTION to_float (
    arg : INTEGER;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
    CONSTANT round_style : round_type := float_round_style) -- rounding option
    RETURN UNRESOLVED_float;

  -- real to float
  FUNCTION to_float (
    arg : REAL;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- unsigned to float
  FUNCTION to_float (
    arg : UNSIGNED;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
    CONSTANT round_style : round_type := float_round_style) -- rounding option
    RETURN UNRESOLVED_float;

  -- signed to float
  FUNCTION to_float (
    arg : SIGNED;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
    CONSTANT round_style : round_type := float_round_style) -- rounding option
    RETURN UNRESOLVED_float;

  -- unsigned fixed point to float
  FUNCTION to_float (
    arg : UNRESOLVED_ufixed; -- unsigned fixed point input
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- width of exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- width of fraction
    CONSTANT round_style : round_type := float_round_style; -- rounding
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- use ieee extensions
    RETURN UNRESOLVED_float;

  -- signed fixed point to float
  FUNCTION to_float (
    arg : UNRESOLVED_sfixed;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
    CONSTANT round_style : round_type := float_round_style; -- rounding
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- rounding option
    RETURN UNRESOLVED_float;

  -- size_res functions
  -- Integer to float
  FUNCTION to_float (
    arg : INTEGER;
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style) -- rounding option
    RETURN UNRESOLVED_float;

  -- real to float
  FUNCTION to_float (
    arg : REAL;
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- unsigned to float
  FUNCTION to_float (
    arg : UNSIGNED;
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style) -- rounding option
    RETURN UNRESOLVED_float;

  -- signed to float
  FUNCTION to_float (
    arg : SIGNED;
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style) -- rounding option
    RETURN UNRESOLVED_float;

  -- sulv to float
  FUNCTION to_float (
    arg : STD_ULOGIC_VECTOR;
    size_res : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;

  -- unsigned fixed point to float
  FUNCTION to_float (
    arg : UNRESOLVED_ufixed; -- unsigned fixed point input
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- use ieee extensions
    RETURN UNRESOLVED_float;

  -- signed fixed point to float
  FUNCTION to_float (
    arg : UNRESOLVED_sfixed;
    size_res : UNRESOLVED_float;
    CONSTANT round_style : round_type := float_round_style; -- rounding
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- rounding option
    RETURN UNRESOLVED_float;

  -- float to unsigned
  FUNCTION to_unsigned (
    arg : UNRESOLVED_float; -- floating point input
    CONSTANT size : NATURAL; -- length of output
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
    RETURN UNSIGNED;

  -- float to signed
  FUNCTION to_signed (
    arg : UNRESOLVED_float; -- floating point input
    CONSTANT size : NATURAL; -- length of output
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
    RETURN SIGNED;

  -- purpose: Converts a float to unsigned fixed point
  FUNCTION to_ufixed (
    arg : UNRESOLVED_float; -- fp input
    CONSTANT left_index : INTEGER; -- integer part
    CONSTANT right_index : INTEGER; -- fraction part
    CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
    CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN UNRESOLVED_ufixed;

  -- float to signed fixed point
  FUNCTION to_sfixed (
    arg : UNRESOLVED_float; -- fp input
    CONSTANT left_index : INTEGER; -- integer part
    CONSTANT right_index : INTEGER; -- fraction part
    CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
    CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN UNRESOLVED_sfixed;

  -- size_res versions
  -- float to unsigned
  FUNCTION to_unsigned (
    arg : UNRESOLVED_float; -- floating point input
    size_res : UNSIGNED;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
    RETURN UNSIGNED;

  -- float to signed
  FUNCTION to_signed (
    arg : UNRESOLVED_float; -- floating point input
    size_res : SIGNED;
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
    RETURN SIGNED;

  -- purpose: Converts a float to unsigned fixed point
  FUNCTION to_ufixed (
    arg : UNRESOLVED_float; -- fp input
    size_res : UNRESOLVED_ufixed;
    CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
    CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN UNRESOLVED_ufixed;

  -- float to signed fixed point
  FUNCTION to_sfixed (
    arg : UNRESOLVED_float; -- fp input
    size_res : UNRESOLVED_sfixed;
    CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
    CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN UNRESOLVED_sfixed;

  -- float to real
  FUNCTION to_real (
    arg : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN REAL;

  -- float to integer
  FUNCTION to_integer (
    arg : UNRESOLVED_float; -- floating point input
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
    RETURN INTEGER;

  -- For Verilog compatability
  FUNCTION realtobits (arg : REAL) RETURN STD_ULOGIC_VECTOR;
  FUNCTION bitstoreal (arg : STD_ULOGIC_VECTOR) RETURN REAL;

  -- Maps metalogical values
  FUNCTION to_01 (
    arg : UNRESOLVED_float; -- floating point input
    XMAP : STD_LOGIC := '0'
  ) RETURN UNRESOLVED_float;

  FUNCTION Is_X (arg : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION to_X01 (arg : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION to_X01Z (arg : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION to_UX01 (arg : UNRESOLVED_float) RETURN UNRESOLVED_float;

  -- These two procedures were copied out of the body because they proved
  -- very useful for vendor specific algorithm development
  -- Break_number converts a floating point number into it's parts
  -- Exponent is biased by -1

  PROCEDURE break_number (
    arg : IN UNRESOLVED_float;
    denormalize : IN BOOLEAN := float_denormalize;
    check_error : IN BOOLEAN := float_check_error;
    fract : OUT UNSIGNED;
    expon : OUT SIGNED; -- NOTE:  Add 1 to get the real exponent!
    sign : OUT STD_ULOGIC);

  PROCEDURE break_number (
    arg : IN UNRESOLVED_float;
    denormalize : IN BOOLEAN := float_denormalize;
    check_error : IN BOOLEAN := float_check_error;
    fract : OUT ufixed; -- a number between 1.0 and 2.0
    expon : OUT SIGNED; -- NOTE:  Add 1 to get the real exponent!
    sign : OUT STD_ULOGIC);

  -- Normalize takes a fraction and and exponent and converts them into
  -- a floating point number.  Does the shifting and the rounding.
  -- Exponent is assumed to be biased by -1

  FUNCTION normalize (
    fract : UNSIGNED; -- fraction, unnormalized
    expon : SIGNED; -- exponent - 1, normalized
    sign : STD_ULOGIC; -- sign bit
    sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- size of output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- size of output fraction
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
    RETURN UNRESOLVED_float;

  -- Exponent is assumed to be biased by -1
  FUNCTION normalize (
    fract : ufixed; -- unsigned fixed point
    expon : SIGNED; -- exponent - 1, normalized
    sign : STD_ULOGIC; -- sign bit
    sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- size of output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width; -- size of output fraction
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
    RETURN UNRESOLVED_float;

  FUNCTION normalize (
    fract : UNSIGNED; -- unsigned
    expon : SIGNED; -- exponent - 1, normalized
    sign : STD_ULOGIC; -- sign bit
    sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
    size_res : UNRESOLVED_float; -- used for sizing only
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
    RETURN UNRESOLVED_float;

  -- Exponent is assumed to be biased by -1
  FUNCTION normalize (
    fract : ufixed; -- unsigned fixed point
    expon : SIGNED; -- exponent - 1, normalized
    sign : STD_ULOGIC; -- sign bit
    sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
    size_res : UNRESOLVED_float; -- used for sizing only
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
    CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
    RETURN UNRESOLVED_float;

  -- overloaded versions
  FUNCTION "+" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION "+" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "+" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION "+" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "-" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION "-" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "-" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION "-" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "*" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION "*" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "*" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION "*" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "/" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION "/" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "/" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION "/" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "rem" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION "rem" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "rem" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION "rem" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "mod" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION "mod" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "mod" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION "mod" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;

  -- overloaded compare functions
  FUNCTION "=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN;
  FUNCTION "/=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN;
  FUNCTION ">=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN;
  FUNCTION "<=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN;
  FUNCTION ">" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN;
  FUNCTION "<" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN;
  FUNCTION "=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "/=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION ">=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "<=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION ">" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "<" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN;
  FUNCTION "/=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN;
  FUNCTION ">=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN;
  FUNCTION "<=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN;
  FUNCTION ">" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN;
  FUNCTION "<" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN;
  FUNCTION "=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "/=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION ">=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "<=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION ">" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION "<" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION \?=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC;
  FUNCTION \?/=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC;
  FUNCTION \?>\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC;
  FUNCTION \?>=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC;
  FUNCTION \?<\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC;
  FUNCTION \?<=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC;
  FUNCTION \?=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?/=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?>\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?>=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?<\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?<=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC;
  FUNCTION \?/=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC;
  FUNCTION \?>\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC;
  FUNCTION \?>=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC;
  FUNCTION \?<\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC;
  FUNCTION \?<=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC;
  FUNCTION \?=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?/=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?>\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?>=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?<\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION \?<=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC;
  -- minimum and maximum overloads
  FUNCTION maximum (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION minimum (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float;
  FUNCTION maximum (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION minimum (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION maximum (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION minimum (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float;
  FUNCTION maximum (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION minimum (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  ----------------------------------------------------------------------------
  -- logical functions
  ----------------------------------------------------------------------------

  FUNCTION "not" (l : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "and" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "or" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "nand" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "nor" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "xor" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  FUNCTION "xnor" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float;
  -- Vector and std_ulogic functions, same as functions in numeric_std
  FUNCTION "and" (l : STD_ULOGIC; r : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;
  FUNCTION "and" (l : UNRESOLVED_float; r : STD_ULOGIC
  ) RETURN UNRESOLVED_float;
  FUNCTION "or" (l : STD_ULOGIC; r : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;
  FUNCTION "or" (l : UNRESOLVED_float; r : STD_ULOGIC
  ) RETURN UNRESOLVED_float;
  FUNCTION "nand" (l : STD_ULOGIC; r : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;
  FUNCTION "nand" (l : UNRESOLVED_float; r : STD_ULOGIC
  ) RETURN UNRESOLVED_float;
  FUNCTION "nor" (l : STD_ULOGIC; r : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;
  FUNCTION "nor" (l : UNRESOLVED_float; r : STD_ULOGIC
  ) RETURN UNRESOLVED_float;
  FUNCTION "xor" (l : STD_ULOGIC; r : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;
  FUNCTION "xor" (l : UNRESOLVED_float; r : STD_ULOGIC
  ) RETURN UNRESOLVED_float;
  FUNCTION "xnor" (l : STD_ULOGIC; r : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;
  FUNCTION "xnor" (l : UNRESOLVED_float; r : STD_ULOGIC
  ) RETURN UNRESOLVED_float;
  -- Reduction operators, same as numeric_std functions
  FUNCTION and_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION nand_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION or_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION nor_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION xor_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC;
  FUNCTION xnor_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC;

  -- Note: "sla", "sra", "sll", "slr", "rol" and "ror" not implemented.

  -----------------------------------------------------------------------------
  -- Recommended Functions from the IEEE 754 Appendix
  -----------------------------------------------------------------------------

  -- returns x with the sign of y.
  FUNCTION Copysign (x, y : UNRESOLVED_float) RETURN UNRESOLVED_float;

  -- Returns y * 2**n for integral values of N without computing 2**n
  FUNCTION Scalb (
    y : UNRESOLVED_float; -- floating point input
    N : INTEGER; -- exponent to add    
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- Returns y * 2**n for integral values of N without computing 2**n
  FUNCTION Scalb (
    y : UNRESOLVED_float; -- floating point input
    N : SIGNED; -- exponent to add    
    CONSTANT round_style : round_type := float_round_style; -- rounding option
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
    RETURN UNRESOLVED_float;

  -- returns the unbiased exponent of x
  FUNCTION Logb (x : UNRESOLVED_float) RETURN INTEGER;
  FUNCTION Logb (x : UNRESOLVED_float) RETURN SIGNED;

  -- returns the next representable neighbor of x in the direction toward y
  FUNCTION Nextafter (
    x, y : UNRESOLVED_float; -- floating point input
    CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
    CONSTANT denormalize : BOOLEAN := float_denormalize
  ) RETURN UNRESOLVED_float;

  -- Returns TRUE if X is unordered with Y.
  FUNCTION Unordered (x, y : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION Finite (x : UNRESOLVED_float) RETURN BOOLEAN;
  FUNCTION Isnan (x : UNRESOLVED_float) RETURN BOOLEAN;

  -- Function to return constants.
  FUNCTION zerofp (
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
    RETURN UNRESOLVED_float;
  FUNCTION nanfp (
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
    RETURN UNRESOLVED_float;
  FUNCTION qnanfp (
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
    RETURN UNRESOLVED_float;
  FUNCTION pos_inffp (
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
    RETURN UNRESOLVED_float;
  FUNCTION neg_inffp (
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
    RETURN UNRESOLVED_float;
  FUNCTION neg_zerofp (
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
    RETURN UNRESOLVED_float;
  -- size_res versions
  FUNCTION zerofp (
    size_res : UNRESOLVED_float) -- variable is only use for sizing
    RETURN UNRESOLVED_float;
  FUNCTION nanfp (
    size_res : UNRESOLVED_float) -- variable is only use for sizing
    RETURN UNRESOLVED_float;
  FUNCTION qnanfp (
    size_res : UNRESOLVED_float) -- variable is only use for sizing
    RETURN UNRESOLVED_float;
  FUNCTION pos_inffp (
    size_res : UNRESOLVED_float) -- variable is only use for sizing
    RETURN UNRESOLVED_float;
  FUNCTION neg_inffp (
    size_res : UNRESOLVED_float) -- variable is only use for sizing
    RETURN UNRESOLVED_float;
  FUNCTION neg_zerofp (
    size_res : UNRESOLVED_float) -- variable is only use for sizing
    RETURN UNRESOLVED_float;

  -- ===========================================================================
  -- string and textio Functions
  -- ===========================================================================
  -- rtl_synthesis off
  -- pragma synthesis_off
  -- writes S:EEEE:FFFFFFFF
  PROCEDURE WRITE (
    L : INOUT LINE; -- access type (pointer)
    VALUE : IN UNRESOLVED_float; -- value to write
    JUSTIFIED : IN SIDE := right; -- which side to justify text
    FIELD : IN WIDTH := 0); -- width of field

  -- Reads SEEEEFFFFFFFF, "." and ":" are ignored
  PROCEDURE READ (L : INOUT LINE; VALUE : OUT UNRESOLVED_float);
  PROCEDURE READ (L : INOUT LINE; VALUE : OUT UNRESOLVED_float;
  GOOD : OUT BOOLEAN);

  ALIAS BREAD IS READ [LINE, UNRESOLVED_float, BOOLEAN];
  ALIAS BREAD IS READ [LINE, UNRESOLVED_float];
  ALIAS BWRITE IS WRITE [LINE, UNRESOLVED_float, SIDE, WIDTH];
  ALIAS BINARY_READ IS READ [LINE, UNRESOLVED_FLOAT, BOOLEAN];
  ALIAS BINARY_READ IS READ [LINE, UNRESOLVED_FLOAT];
  ALIAS BINARY_WRITE IS WRITE [LINE, UNRESOLVED_float, SIDE, WIDTH];

  PROCEDURE OWRITE (
    L : INOUT LINE; -- access type (pointer)
    VALUE : IN UNRESOLVED_float; -- value to write
    JUSTIFIED : IN SIDE := right; -- which side to justify text
    FIELD : IN WIDTH := 0); -- width of field

  -- Octal read with padding, no separators used
  PROCEDURE OREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float);
  PROCEDURE OREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float;
  GOOD : OUT BOOLEAN);
  ALIAS OCTAL_READ IS OREAD [LINE, UNRESOLVED_FLOAT, BOOLEAN];
  ALIAS OCTAL_READ IS OREAD [LINE, UNRESOLVED_FLOAT];
  ALIAS OCTAL_WRITE IS OWRITE [LINE, UNRESOLVED_FLOAT, SIDE, WIDTH];

  -- Hex write with padding, no separators
  PROCEDURE HWRITE (
    L : INOUT LINE; -- access type (pointer)
    VALUE : IN UNRESOLVED_float; -- value to write
    JUSTIFIED : IN SIDE := right; -- which side to justify text
    FIELD : IN WIDTH := 0); -- width of field

  -- Hex read with padding, no separators used
  PROCEDURE HREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float);
  PROCEDURE HREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float;
  GOOD : OUT BOOLEAN);
  ALIAS HEX_READ IS HREAD [LINE, UNRESOLVED_FLOAT, BOOLEAN];
  ALIAS HEX_READ IS HREAD [LINE, UNRESOLVED_FLOAT];
  ALIAS HEX_WRITE IS HWRITE [LINE, UNRESOLVED_FLOAT, SIDE, WIDTH];

  -- returns "S:EEEE:FFFFFFFF"
  FUNCTION to_string (value : UNRESOLVED_float) RETURN STRING;
  ALIAS TO_BSTRING IS TO_STRING [UNRESOLVED_FLOAT RETURN STRING];
  ALIAS TO_BINARY_STRING IS TO_STRING [UNRESOLVED_FLOAT RETURN STRING];

  -- Returns a HEX string, with padding
  FUNCTION to_hstring (value : UNRESOLVED_float) RETURN STRING;
  ALIAS TO_HEX_STRING IS TO_HSTRING [UNRESOLVED_FLOAT RETURN STRING];

  -- Returns and octal string, with padding
  FUNCTION to_ostring (value : UNRESOLVED_float) RETURN STRING;
  ALIAS TO_OCTAL_STRING IS TO_OSTRING [UNRESOLVED_FLOAT RETURN STRING];

  FUNCTION from_string (
    bstring : STRING; -- binary string
    CONSTANT exponent_width : NATURAL := float_exponent_width;
    CONSTANT fraction_width : NATURAL := float_fraction_width
  ) RETURN UNRESOLVED_float;
  ALIAS from_bstring IS from_string [STRING, NATURAL, NATURAL
  RETURN UNRESOLVED_float];
  ALIAS from_binary_string IS from_string [STRING, NATURAL, NATURAL
  RETURN UNRESOLVED_float];
  FUNCTION from_ostring (
    ostring : STRING; -- Octal string
    CONSTANT exponent_width : NATURAL := float_exponent_width;
    CONSTANT fraction_width : NATURAL := float_fraction_width
  ) RETURN UNRESOLVED_float;
  ALIAS from_octal_string IS from_ostring [STRING, NATURAL, NATURAL
  RETURN UNRESOLVED_float];

  FUNCTION from_hstring (
    hstring : STRING; -- hex string
    CONSTANT exponent_width : NATURAL := float_exponent_width;
    CONSTANT fraction_width : NATURAL := float_fraction_width
  ) RETURN UNRESOLVED_float;
  ALIAS from_hex_string IS from_hstring [STRING, NATURAL, NATURAL
  RETURN UNRESOLVED_float];

  FUNCTION from_string (
    bstring : STRING; -- binary string
    size_res : UNRESOLVED_float) -- used for sizing only 
    RETURN UNRESOLVED_float;
  ALIAS from_bstring IS from_string [STRING, UNRESOLVED_float
  RETURN UNRESOLVED_float];
  ALIAS from_binary_string IS from_string [STRING, UNRESOLVED_float
  RETURN UNRESOLVED_float];

  FUNCTION from_ostring (
    ostring : STRING; -- Octal string
    size_res : UNRESOLVED_float) -- used for sizing only 
    RETURN UNRESOLVED_float;
  ALIAS from_octal_string IS from_ostring [STRING, UNRESOLVED_float
  RETURN UNRESOLVED_float];

  FUNCTION from_hstring (
    hstring : STRING; -- hex string
    size_res : UNRESOLVED_float) -- used for sizing only 
    RETURN UNRESOLVED_float;
  ALIAS from_hex_string IS from_hstring [STRING, UNRESOLVED_float
  RETURN UNRESOLVED_float];
  -- rtl_synthesis on
  -- pragma synthesis_on
  -- IN VHDL-2006 std_logic_vector is a subtype of std_ulogic_vector, so these
  -- extra functions are needed for compatability.
  FUNCTION to_float (
    arg : STD_LOGIC_VECTOR;
    CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
    CONSTANT fraction_width : NATURAL := float_fraction_width) -- length of FP output fraction
    RETURN UNRESOLVED_float;

  FUNCTION to_float (
    arg : STD_LOGIC_VECTOR;
    size_res : UNRESOLVED_float
  ) RETURN UNRESOLVED_float;

  -- For Verilog compatability
  FUNCTION realtobits (arg : REAL) RETURN STD_LOGIC_VECTOR;
  FUNCTION bitstoreal (arg : STD_LOGIC_VECTOR) RETURN REAL;

END PACKAGE float_pkg;
-------------------------------------------------------------------------------
-- Proposed package body for the VHDL-200x-FT float_pkg package
-- This version is optimized for Synthesis, and not for simulation.
-- Note that there are functional differences between the synthesis and
-- simulation packages bodies.  The Synthesis version is preferred.
-- This package body supplies a recommended implementation of these functions
-- Version    : $Revision: 1.1 $
-- Date       : $Date: 2012/03/09 20:36:50 $
--
--  Created for VHDL-200X par, David Bishop (dbishop@vhdl.org)
-------------------------------------------------------------------------------

PACKAGE BODY float_pkg IS

  -- Author David Bishop (dbishop@vhdl.org)
  -----------------------------------------------------------------------------
  -- type declarations
  -----------------------------------------------------------------------------

  -- This deferred constant will tell you if the package body is synthesizable
  -- or implemented as real numbers, set to "true" if synthesizable.
  CONSTANT fphdlsynth_or_real : BOOLEAN := true; -- deferred constant

  -- types of boundary conditions
  TYPE boundary_type IS (normal, infinity, zero, denormal);

  -- null range array constant
  CONSTANT NAFP : UNRESOLVED_float (0 DOWNTO 1) := (OTHERS => '0');
  CONSTANT NSLV : STD_ULOGIC_VECTOR (0 DOWNTO 1) := (OTHERS => '0');

  -- %%% Replicated functions
  -- These functions are replicated so that we don't need to reference the new
  -- 2006 package std.standard, std_logic_1164 and numeric_std.
  FUNCTION maximum (
    l, r : INTEGER) -- inputs
    RETURN INTEGER IS
  BEGIN -- function max
    IF l > r THEN
      RETURN l;
    ELSE
      RETURN r;
    END IF;
  END FUNCTION maximum;

  FUNCTION minimum (
    l, r : INTEGER) -- inputs
    RETURN INTEGER IS
  BEGIN -- function min
    IF l > r THEN
      RETURN r;
    ELSE
      RETURN l;
    END IF;
  END FUNCTION minimum;

  FUNCTION or_reduce (arg : STD_ULOGIC_VECTOR)
    RETURN STD_LOGIC IS
    VARIABLE Upper, Lower : STD_ULOGIC;
    VARIABLE Half : INTEGER;
    VARIABLE BUS_int : STD_ULOGIC_VECTOR (arg'length - 1 DOWNTO 0);
    VARIABLE Result : STD_ULOGIC;
  BEGIN
    IF (arg'length < 1) THEN -- In the case of a NULL range
      Result := '0';
    ELSE
      BUS_int := to_ux01 (arg);
      IF (BUS_int'length = 1) THEN
        Result := BUS_int (BUS_int'left);
      ELSIF (BUS_int'length = 2) THEN
        Result := BUS_int (BUS_int'right) OR BUS_int (BUS_int'left);
      ELSE
        Half := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper := or_reduce (BUS_int (BUS_int'left DOWNTO Half));
        Lower := or_reduce (BUS_int (Half - 1 DOWNTO BUS_int'right));
        Result := Upper OR Lower;
      END IF;
    END IF;
    RETURN Result;
  END FUNCTION or_reduce;

  FUNCTION or_reduce (arg : UNSIGNED)
    RETURN STD_ULOGIC IS
  BEGIN
    RETURN or_reduce (STD_ULOGIC_VECTOR (arg));
  END FUNCTION or_reduce;

  FUNCTION or_reduce (arg : SIGNED)
    RETURN STD_ULOGIC IS
  BEGIN
    RETURN or_reduce (STD_ULOGIC_VECTOR (arg));
  END FUNCTION or_reduce;

  FUNCTION or_reduce (arg : STD_LOGIC_VECTOR)
    RETURN STD_ULOGIC IS
  BEGIN
    RETURN or_reduce (STD_ULOGIC_VECTOR (arg));
  END FUNCTION or_reduce;

  -- purpose: AND all of the bits in a vector together
  -- This is a copy of the proposed "and_reduce" from 1076.3
  FUNCTION and_reduce (arg : STD_ULOGIC_VECTOR)
    RETURN STD_LOGIC IS
    VARIABLE Upper, Lower : STD_ULOGIC;
    VARIABLE Half : INTEGER;
    VARIABLE BUS_int : STD_ULOGIC_VECTOR (arg'length - 1 DOWNTO 0);
    VARIABLE Result : STD_ULOGIC;
  BEGIN
    IF (arg'length < 1) THEN -- In the case of a NULL range
      Result := '1';
    ELSE
      BUS_int := to_ux01 (arg);
      IF (BUS_int'length = 1) THEN
        Result := BUS_int (BUS_int'left);
      ELSIF (BUS_int'length = 2) THEN
        Result := BUS_int (BUS_int'right) AND BUS_int (BUS_int'left);
      ELSE
        Half := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper := and_reduce (BUS_int (BUS_int'left DOWNTO Half));
        Lower := and_reduce (BUS_int (Half - 1 DOWNTO BUS_int'right));
        Result := Upper AND Lower;
      END IF;
    END IF;
    RETURN Result;
  END FUNCTION and_reduce;

  FUNCTION and_reduce (arg : UNSIGNED)
    RETURN STD_ULOGIC IS
  BEGIN
    RETURN and_reduce (STD_ULOGIC_VECTOR (arg));
  END FUNCTION and_reduce;

  FUNCTION and_reduce (arg : SIGNED)
    RETURN STD_ULOGIC IS
  BEGIN
    RETURN and_reduce (STD_ULOGIC_VECTOR (arg));
  END FUNCTION and_reduce;

  FUNCTION xor_reduce (arg : STD_ULOGIC_VECTOR) RETURN STD_ULOGIC IS
    VARIABLE Upper, Lower : STD_ULOGIC;
    VARIABLE Half : INTEGER;
    VARIABLE BUS_int : STD_ULOGIC_VECTOR (arg'length - 1 DOWNTO 0);
    VARIABLE Result : STD_ULOGIC := '0'; -- In the case of a NULL range
  BEGIN
    IF (arg'length >= 1) THEN
      BUS_int := to_ux01 (arg);
      IF (BUS_int'length = 1) THEN
        Result := BUS_int (BUS_int'left);
      ELSIF (BUS_int'length = 2) THEN
        Result := BUS_int(BUS_int'right) XOR BUS_int(BUS_int'left);
      ELSE
        Half := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper := xor_reduce (BUS_int (BUS_int'left DOWNTO Half));
        Lower := xor_reduce (BUS_int (Half - 1 DOWNTO BUS_int'right));
        Result := Upper XOR Lower;
      END IF;
    END IF;
    RETURN Result;
  END FUNCTION xor_reduce;

  FUNCTION nand_reduce(arg : STD_ULOGIC_VECTOR) RETURN STD_ULOGIC IS
  BEGIN
    RETURN NOT and_reduce (arg);
  END FUNCTION nand_reduce;

  FUNCTION nor_reduce(arg : STD_ULOGIC_VECTOR) RETURN STD_ULOGIC IS
  BEGIN
    RETURN NOT or_reduce (arg);
  END FUNCTION nor_reduce;

  FUNCTION xnor_reduce(arg : STD_ULOGIC_VECTOR) RETURN STD_ULOGIC IS
  BEGIN
    RETURN NOT xor_reduce (arg);
  END FUNCTION xnor_reduce;

  FUNCTION find_leftmost (ARG : UNSIGNED; Y : STD_ULOGIC)
    RETURN INTEGER IS
  BEGIN
    FOR INDEX IN ARG'RANGE LOOP
      IF ARG(INDEX) = Y THEN
        RETURN INDEX;
      END IF;
    END LOOP;
    RETURN -1;
  END FUNCTION find_leftmost;

  -- Match table, copied form new std_logic_1164
  TYPE stdlogic_table IS ARRAY(STD_ULOGIC, STD_ULOGIC) OF STD_ULOGIC;
  CONSTANT match_logic_table : stdlogic_table := (
    -----------------------------------------------------
    -- U    X    0    1    Z    W    L    H    -         |   |  
    -----------------------------------------------------
    ('U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', '1'), -- | U |
    ('U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '1'), -- | X |
    ('U', 'X', '1', '0', 'X', 'X', '1', '0', '1'), -- | 0 |
    ('U', 'X', '0', '1', 'X', 'X', '0', '1', '1'), -- | 1 |
    ('U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '1'), -- | Z |
    ('U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '1'), -- | W |
    ('U', 'X', '1', '0', 'X', 'X', '1', '0', '1'), -- | L |
    ('U', 'X', '0', '1', 'X', 'X', '0', '1', '1'), -- | H |
    ('1', '1', '1', '1', '1', '1', '1', '1', '1') -- | - |
  );
  -------------------------------------------------------------------
  -- ?= functions, Similar to "std_match", but returns "std_ulogic".
  -------------------------------------------------------------------
  -- %%% FUNCTION "?=" ( l, r : std_ulogic ) RETURN std_ulogic IS
  FUNCTION \?=\ (l, r : STD_ULOGIC) RETURN STD_ULOGIC IS
  BEGIN
    RETURN match_logic_table (l, r);
  END FUNCTION \?=\;
  -- %%% END FUNCTION "?=";

  -- %%% FUNCTION "?/=" ( l, r : std_ulogic ) RETURN std_ulogic is
  FUNCTION \?/=\ (l, r : STD_ULOGIC) RETURN STD_ULOGIC IS
  BEGIN
    RETURN NOT match_logic_table (l, r);
  END FUNCTION \?/=\;
  -- %%% END FUNCTION "?/=";

  FUNCTION \?=\ (l, r : STD_ULOGIC_VECTOR) RETURN STD_ULOGIC IS
    ALIAS lv : STD_ULOGIC_VECTOR(1 TO l'length) IS l;
    ALIAS rv : STD_ULOGIC_VECTOR(1 TO r'length) IS r;
    VARIABLE result, result1 : STD_ULOGIC;
  BEGIN
    -- Logically identical to an "=" operator.
    IF ((l'length < 1) AND (r'length < 1)) THEN
      -- VHDL-2008 LRM 9.2.3 Two NULL arrays of the same type are equal
      RETURN '1';
    ELSIF lv'length /= rv'length THEN
      -- Two arrays of different lengths are false
      RETURN '0';
    ELSE
      result := '1';
      FOR i IN lv'low TO lv'high LOOP
        result1 := match_logic_table(lv(i), rv(i));
        result := result AND result1;
      END LOOP;
      RETURN result;
    END IF;
  END FUNCTION \?=\;

  FUNCTION Is_X (s : UNSIGNED) RETURN BOOLEAN IS
  BEGIN
    RETURN Is_X (STD_LOGIC_VECTOR (s));
  END FUNCTION Is_X;

  FUNCTION Is_X (s : SIGNED) RETURN BOOLEAN IS
  BEGIN
    RETURN Is_X (STD_LOGIC_VECTOR (s));
  END FUNCTION Is_X;
  -- %%% END replicated functions

  -- Special version of "minimum" to do some boundary checking
  FUNCTION mine (L, R : INTEGER)
    RETURN INTEGER IS
  BEGIN -- function minimum
    IF (L = INTEGER'low OR R = INTEGER'low) THEN
      REPORT float_pkg'instance_name
        & " Unbounded number passed, was a literal used?"
        SEVERITY error;
      RETURN 0;
    END IF;
    RETURN minimum (L, R);
  END FUNCTION mine;

  -- Generates the base number for the exponent normalization offset.
  FUNCTION gen_expon_base (
    CONSTANT exponent_width : NATURAL)
    RETURN SIGNED IS
    VARIABLE result : SIGNED (exponent_width - 1 DOWNTO 0);
  BEGIN
    result := (OTHERS => '1');
    result (exponent_width - 1) := '0';
    RETURN result;
  END FUNCTION gen_expon_base;

  -- Integer version of the "log2" command (contributed by Peter Ashenden)
  FUNCTION log2 (A : INTEGER) RETURN INTEGER IS
    VARIABLE quotient : INTEGER;
    VARIABLE result : INTEGER := 0;
  BEGIN
    quotient := A / 2;
    WHILE quotient > 0 LOOP
      quotient := quotient / 2;
      result := result + 1;
    END LOOP;
    RETURN result;
  END FUNCTION log2;

  -- Function similar to the ILOGB function in MATH_REAL
  FUNCTION log2 (A : REAL) RETURN INTEGER IS
    VARIABLE Y : REAL;
    VARIABLE N : INTEGER := 0;
  BEGIN
    IF (A = 1.0 OR A = 0.0) THEN
      RETURN 0;
    END IF;
    Y := A;
    IF (A > 1.0) THEN
      WHILE Y >= 2.0 LOOP
        Y := Y / 2.0;
        N := N + 1;
      END LOOP;
      RETURN N;
    END IF;
    -- O < Y < 1
    WHILE Y < 1.0 LOOP
      Y := Y * 2.0;
      N := N - 1;
    END LOOP;
    RETURN N;
  END FUNCTION log2;

  -- purpose: Test the boundary conditions of a Real number
  PROCEDURE test_boundary (
    arg : IN REAL; -- Input, converted to real
    CONSTANT fraction_width : IN NATURAL; -- length of FP output fraction
    CONSTANT exponent_width : IN NATURAL; -- length of FP exponent
    CONSTANT denormalize : IN BOOLEAN := true; -- Use IEEE extended FP
    VARIABLE btype : OUT boundary_type;
    VARIABLE log2i : OUT INTEGER
  ) IS
    CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
    gen_expon_base(exponent_width); -- exponent offset
    CONSTANT exp_min : SIGNED (12 DOWNTO 0) :=
    - (resize(expon_base, 13)) + 1; -- Minimum normal exponent
    CONSTANT exp_ext_min : SIGNED (12 DOWNTO 0) :=
    exp_min - fraction_width; -- Minimum for denormal exponent
    VARIABLE log2arg : INTEGER; -- log2 of argument
  BEGIN -- function test_boundary
    -- Check to see if the exponent is big enough
    -- Note that the argument is always an absolute value at this point.
    log2arg := log2(arg);
    IF arg = 0.0 THEN
      btype := zero;
    ELSIF exponent_width > 11 THEN -- Exponent for Real is 11 (64 bit)
      btype := normal;
    ELSE
      IF log2arg < to_integer(exp_min) THEN
        IF denormalize THEN
          IF log2arg < to_integer(exp_ext_min) THEN
            btype := zero;
          ELSE
            btype := denormal;
          END IF;
        ELSE
          IF log2arg < to_integer(exp_min) - 1 THEN
            btype := zero;
          ELSE
            btype := normal; -- Can still represent this number
          END IF;
        END IF;
      ELSIF exponent_width < 11 THEN
        IF log2arg > to_integer(expon_base) + 1 THEN
          btype := infinity;
        ELSE
          btype := normal;
        END IF;
      ELSE
        btype := normal;
      END IF;
    END IF;
    log2i := log2arg;
  END PROCEDURE test_boundary;

  -- purpose: Rounds depending on the state of the "round_style"
  -- Logic taken from
  -- "What Every Computer Scientist Should Know About Floating Point Arithmetic"
  -- by David Goldberg (1991)
  FUNCTION check_round (
    fract_in : STD_ULOGIC; -- input fraction
    sign : STD_ULOGIC; -- sign bit
    remainder : UNSIGNED; -- remainder to round from
    sticky : STD_ULOGIC := '0'; -- Sticky bit
    CONSTANT round_style : round_type) -- rounding type
    RETURN BOOLEAN IS
    VARIABLE result : BOOLEAN;
    VARIABLE or_reduced : STD_ULOGIC;
  BEGIN -- function check_round
    result := false;
    IF (remainder'length > 0) THEN -- if remainder in a null array
      or_reduced := or_reduce (remainder & sticky);
      rounding_case : CASE round_style IS
        WHEN round_nearest => -- Round Nearest, default mode
          IF remainder(remainder'high) = '1' THEN -- round
            IF (remainder'length > 1) THEN
              IF ((or_reduce (remainder(remainder'high - 1
                DOWNTO remainder'low)) = '1'
                OR sticky = '1')
                OR fract_in = '1') THEN
                -- Make the bottom bit zero if possible if we are at 1/2
                result := true;
              END IF;
            ELSE
              result := (fract_in = '1' OR sticky = '1');
            END IF;
          END IF;
        WHEN round_inf => -- round up if positive, else truncate.
          IF or_reduced = '1' AND sign = '0' THEN
            result := true;
          END IF;
        WHEN round_neginf => -- round down if negative, else truncate.
          IF or_reduced = '1' AND sign = '1' THEN
            result := true;
          END IF;
        WHEN round_zero => -- round toward 0   Truncate
          NULL;
      END CASE rounding_case;
    END IF;
    RETURN result;
  END FUNCTION check_round;

  -- purpose: Rounds depending on the state of the "round_style"
  -- unsigned version
  PROCEDURE fp_round (
    fract_in : IN UNSIGNED; -- input fraction
    expon_in : IN SIGNED; -- input exponent
    fract_out : OUT UNSIGNED; -- output fraction
    expon_out : OUT SIGNED) IS -- output exponent
  BEGIN -- procedure fp_round
    IF and_reduce (fract_in) = '1' THEN -- Fraction is all "1"
      expon_out := expon_in + 1;
      fract_out := to_unsigned(0, fract_out'high + 1);
    ELSE
      expon_out := expon_in;
      fract_out := fract_in + 1;
    END IF;
  END PROCEDURE fp_round;

  -- This version of break_number doesn't call "classfp"
  PROCEDURE break_number (-- internal version
  arg : IN UNRESOLVED_float;
  fptyp : IN valid_fpstate;
  denormalize : IN BOOLEAN := true;
  fract : OUT UNSIGNED;
  expon : OUT SIGNED) IS
  CONSTANT fraction_width : NATURAL := - arg'low; -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := arg'high; -- length of FP output exponent
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
  gen_expon_base(exponent_width); -- exponent offset
  VARIABLE exp : SIGNED (expon'RANGE);
BEGIN
  fract (fraction_width - 1 DOWNTO 0) :=
  UNSIGNED (to_slv(arg(-1 DOWNTO -fraction_width)));
  breakcase : CASE fptyp IS
    WHEN pos_zero | neg_zero =>
      fract (fraction_width) := '0';
      exp := - expon_base;
    WHEN pos_denormal | neg_denormal =>
      IF denormalize THEN
        exp := - expon_base;
        fract (fraction_width) := '0';
      ELSE
        exp := - expon_base - 1;
        fract (fraction_width) := '1';
      END IF;
    WHEN pos_normal | neg_normal | pos_inf | neg_inf =>
      fract (fraction_width) := '1';
      exp := SIGNED(arg(exponent_width - 1 DOWNTO 0));
      exp (exponent_width - 1) := NOT exp(exponent_width - 1);
    WHEN OTHERS =>
      ASSERT NO_WARNING
      REPORT float_pkg'instance_name
        & "BREAK_NUMBER: " &
        "Meta state detected in fp_break_number process"
        SEVERITY warning;
      -- complete the case, if a NAN goes in, a NAN comes out.
      exp := (OTHERS => '1');
      fract (fraction_width) := '1';
  END CASE breakcase;
  expon := exp;
END PROCEDURE break_number;

-- purpose: floating point to UNSIGNED
-- Used by to_integer, to_unsigned, and to_signed functions
PROCEDURE float_to_unsigned (
  arg : IN UNRESOLVED_float; -- floating point input
  VARIABLE sign : OUT STD_ULOGIC; -- sign of output
  VARIABLE frac : OUT UNSIGNED; -- unsigned biased output
  CONSTANT denormalize : IN BOOLEAN; -- turn on denormalization
  CONSTANT bias : IN NATURAL; -- bias for fixed point
  CONSTANT round_style : IN round_type) IS -- rounding method
  CONSTANT fraction_width : INTEGER := - mine(arg'low, arg'low); -- length of FP output fraction
  CONSTANT exponent_width : INTEGER := arg'high; -- length of FP output exponent
  VARIABLE fract : UNSIGNED (frac'RANGE); -- internal version of frac
  VARIABLE isign : STD_ULOGIC; -- internal version of sign
  VARIABLE exp : INTEGER; -- Exponent
  VARIABLE expon : SIGNED (exponent_width - 1 DOWNTO 0); -- Vectorized exp
  -- Base to divide fraction by
  VARIABLE frac_shift : UNSIGNED (frac'high + 3 DOWNTO 0); -- Fraction shifted
  VARIABLE shift : INTEGER;
  VARIABLE remainder : UNSIGNED (2 DOWNTO 0);
  VARIABLE round : STD_ULOGIC; -- round BIT
BEGIN
  isign := to_x01(arg(arg'high));
  -- exponent /= '0', normal floating point
  expon := to_01(SIGNED(arg (exponent_width - 1 DOWNTO 0)), 'X');
  expon(exponent_width - 1) := NOT expon(exponent_width - 1);
  exp := to_integer (expon);
  -- Figure out the fraction
  fract := (OTHERS => '0'); -- fill with zero
  fract (fract'high) := '1'; -- Add the "1.0".
  shift := (fract'high - 1) - exp;
  IF fraction_width > fract'high THEN -- Can only use size-2 bits
    fract (fract'high - 1 DOWNTO 0) := UNSIGNED (to_slv (arg(-1 DOWNTO
    - fract'high)));
  ELSE -- can use all bits
    fract (fract'high - 1 DOWNTO fract'high - fraction_width) :=
    UNSIGNED (to_slv (arg(-1 DOWNTO -fraction_width)));
  END IF;
  frac_shift := fract & "000";
  IF shift < 0 THEN -- Overflow
    fract := (OTHERS => '1');
  ELSE
    frac_shift := shift_right (frac_shift, shift);
    fract := frac_shift (frac_shift'high DOWNTO 3);
    remainder := frac_shift (2 DOWNTO 0);
    -- round (round_zero will bypass this and truncate)
    CASE round_style IS
      WHEN round_nearest =>
        round := remainder(2) AND
          (fract (0) OR (or_reduce (remainder (1 DOWNTO 0))));
      WHEN round_inf =>
        round := remainder(2) AND NOT isign;
      WHEN round_neginf =>
        round := remainder(2) AND isign;
      WHEN OTHERS =>
        round := '0';
    END CASE;
    IF round = '1' THEN
      fract := fract + 1;
    END IF;
  END IF;
  frac := fract;
  sign := isign;
END PROCEDURE float_to_unsigned;

-- purpose: returns a part of a vector, this function is here because
-- or (fractr (to_integer(shiftx) downto 0));
-- can't be synthesized in some synthesis tools.
FUNCTION smallfract (
  arg : UNSIGNED;
  shift : NATURAL)
  RETURN STD_ULOGIC IS
  VARIABLE orx : STD_ULOGIC;
BEGIN
  orx := arg(shift);
  FOR i IN arg'RANGE LOOP
    IF i < shift THEN
      orx := arg(i) OR orx;
    END IF;
  END LOOP;
  RETURN orx;
END FUNCTION smallfract;
---------------------------------------------------------------------------
-- Visible functions
---------------------------------------------------------------------------

-- purpose: converts the negative index to a positive one
-- negative indices are illegal in 1164 and 1076.3
FUNCTION to_sulv (
  arg : UNRESOLVED_float) -- fp vector
  RETURN STD_ULOGIC_VECTOR IS
  VARIABLE result : STD_ULOGIC_VECTOR (arg'length - 1 DOWNTO 0);
BEGIN -- function to_std_ulogic_vector
  IF arg'length < 1 THEN
    RETURN NSLV;
  END IF;
  result := STD_ULOGIC_VECTOR (arg);
  RETURN result;
END FUNCTION to_sulv;

-- Converts an fp into an SLV
FUNCTION to_slv (arg : UNRESOLVED_float) RETURN STD_LOGIC_VECTOR IS
BEGIN
  RETURN to_stdlogicvector (to_sulv (arg));
END FUNCTION to_slv;

-- purpose: normalizes a floating point number
-- This version assumes an "unsigned" input with
FUNCTION normalize (
  fract : UNSIGNED; -- fraction, unnormalized
  expon : SIGNED; -- exponent, normalized by -1
  sign : STD_ULOGIC; -- sign BIT
  sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- size of output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- size of output fraction
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
  RETURN UNRESOLVED_float IS
  VARIABLE sfract : UNSIGNED (fract'high DOWNTO 0); -- shifted fraction
  VARIABLE rfract : UNSIGNED (fraction_width - 1 DOWNTO 0); -- fraction
  VARIABLE exp : SIGNED (exponent_width + 1 DOWNTO 0); -- exponent
  VARIABLE rexp : SIGNED (exponent_width + 1 DOWNTO 0); -- result exponent
  VARIABLE rexpon : UNSIGNED (exponent_width - 1 DOWNTO 0); -- exponent
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width); -- result
  VARIABLE shiftr : INTEGER; -- shift amount
  VARIABLE stickyx : STD_ULOGIC; -- version of sticky
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
  gen_expon_base(exponent_width); -- exponent offset
  VARIABLE round, zerores, infres : BOOLEAN;
BEGIN -- function normalize
  zerores := false;
  infres := false;
  round := false;
  shiftr := find_leftmost (to_01(fract), '1') -- Find the first "1"
    - fraction_width - nguard; -- subtract the length we want
  exp := resize (expon, exp'length) + shiftr;
  IF (or_reduce (fract) = '0') THEN -- Zero
    zerores := true;
  ELSIF ((exp <= - resize(expon_base, exp'length) - 1) AND denormalize)
    OR ((exp <- resize(expon_base, exp'length) - 1) AND NOT denormalize) THEN
    IF (exp >= - resize(expon_base, exp'length) - fraction_width - 1)
      AND denormalize THEN
      exp := - resize(expon_base, exp'length) - 1;
      shiftr := - to_integer (expon + expon_base); -- new shift
    ELSE -- return zero
      zerores := true;
    END IF;
  ELSIF (exp > expon_base - 1) THEN -- infinity
    infres := true;
  END IF;
  IF zerores THEN
    result := zerofp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF infres THEN
    result := pos_inffp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSE
    sfract := fract SRL shiftr; -- shift
    IF shiftr > 0 THEN
      --        stickyx := sticky or (or_reduce(fract (shiftr-1 downto 0)));
      stickyx := sticky OR smallfract (fract, shiftr - 1);
    ELSE
      stickyx := sticky;
    END IF;
    IF nguard > 0 THEN
      round := check_round (
        fract_in => sfract (nguard),
        sign => sign,
        remainder => sfract(nguard - 1 DOWNTO 0),
        sticky => stickyx,
        round_style => round_style);
    END IF;
    IF round THEN
      fp_round(fract_in => sfract (fraction_width - 1 + nguard DOWNTO nguard),
      expon_in => exp(rexp'RANGE),
      fract_out => rfract,
      expon_out => rexp);
    ELSE
      rfract := sfract (fraction_width - 1 + nguard DOWNTO nguard);
      rexp := exp(rexp'RANGE);
    END IF;
    -- result
    rexpon := UNSIGNED (rexp(exponent_width - 1 DOWNTO 0));
    rexpon (exponent_width - 1) := NOT rexpon(exponent_width - 1);
    result (rexpon'RANGE) := UNRESOLVED_float(rexpon);
    result (-1 DOWNTO -fraction_width) := UNRESOLVED_float(rfract);
  END IF;
  result (exponent_width) := sign; -- sign BIT
  RETURN result;
END FUNCTION normalize;

-- purpose: normalizes a floating point number
-- This version assumes a "ufixed" input
FUNCTION normalize (
  fract : ufixed; -- unsigned fixed point
  expon : SIGNED; -- exponent, normalized by -1
  sign : STD_ULOGIC; -- sign bit
  sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- size of output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- size of output fraction
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE arguns : UNSIGNED (fract'high + fraction_width + nguard
  DOWNTO 0) := (OTHERS => '0');
BEGIN -- function normalize
  arguns (arguns'high DOWNTO maximum (arguns'high - fract'length + 1, 0)) :=
  UNSIGNED (to_slv (fract));
  result := normalize (fract => arguns,
    expon => expon,
    sign => sign,
    sticky => sticky,
    fraction_width => fraction_width,
    exponent_width => exponent_width,
    round_style => round_style,
    denormalize => denormalize,
    nguard => nguard);
  RETURN result;
END FUNCTION normalize;

-- purpose: normalizes a floating point number
-- This version assumes a "ufixed" input with a "size_res" input
FUNCTION normalize (
  fract : ufixed; -- unsigned fixed point
  expon : SIGNED; -- exponent, normalized by -1
  sign : STD_ULOGIC; -- sign bit
  sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
  size_res : UNRESOLVED_float; -- used for sizing only
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - size_res'low;
  CONSTANT exponent_width : NATURAL := size_res'high;
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE arguns : UNSIGNED (fract'high + fraction_width + nguard
  DOWNTO 0) := (OTHERS => '0');
BEGIN -- function normalize
  arguns (arguns'high DOWNTO maximum (arguns'high - fract'length + 1, 0)) :=
  UNSIGNED (to_slv (fract));
  result := normalize (fract => arguns,
    expon => expon,
    sign => sign,
    sticky => sticky,
    fraction_width => fraction_width,
    exponent_width => exponent_width,
    round_style => round_style,
    denormalize => denormalize,
    nguard => nguard);
  RETURN result;
END FUNCTION normalize;

-- Regular "normalize" function with a "size_res" input.
FUNCTION normalize (
  fract : UNSIGNED; -- unsigned
  expon : SIGNED; -- exponent - 1, normalized
  sign : STD_ULOGIC; -- sign bit
  sticky : STD_ULOGIC := '0'; -- Sticky bit (rounding)
  size_res : UNRESOLVED_float; -- used for sizing only
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT denormalize : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT nguard : NATURAL := float_guard_bits) -- guard bits
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN normalize (fract => fract,
  expon => expon,
  sign => sign,
  sticky => sticky,
  fraction_width => - size_res'low,
  exponent_width => size_res'high,
  round_style => round_style,
  denormalize => denormalize,
  nguard => nguard);
END FUNCTION normalize;

-- Returns the class which X falls into
FUNCTION Classfp (
  x : UNRESOLVED_float; -- floating point input
  check_error : BOOLEAN := float_check_error) -- check for errors
  RETURN valid_fpstate IS
  CONSTANT fraction_width : INTEGER := - mine(x'low, x'low); -- length of FP output fraction
  CONSTANT exponent_width : INTEGER := x'high; -- length of FP output exponent
  VARIABLE arg : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- classfp
  IF (arg'length < 1 OR fraction_width < 3 OR exponent_width < 3
    OR x'left < x'right) THEN
    REPORT float_pkg'instance_name
      & "CLASSFP: " &
      "Floating point number detected with a bad range"
      SEVERITY error;
    RETURN isx;
  END IF;
  -- Check for "X".
  arg := to_01 (x, 'X');
  IF (arg(0) = 'X') THEN
    RETURN isx; -- If there is an X in the number
    -- Special cases, check for illegal number
  ELSIF check_error AND
    (and_reduce (STD_ULOGIC_VECTOR (arg (exponent_width - 1 DOWNTO 0)))
    = '1') THEN -- Exponent is all "1".
    IF or_reduce (to_slv (arg (-1 DOWNTO -fraction_width)))
      /= '0' THEN -- Fraction must be all "0" or this is not a number.
      IF (arg(-1) = '1') THEN -- From "W. Khan - IEEE standard
        RETURN nan; -- 754 binary FP Signaling nan (Not a number)
      ELSE
        RETURN quiet_nan;
      END IF;
      -- Check for infinity
    ELSIF arg(exponent_width) = '0' THEN
      RETURN pos_inf; -- Positive infinity
    ELSE
      RETURN neg_inf; -- Negative infinity
    END IF;
    -- check for "0"
  ELSIF or_reduce (STD_LOGIC_VECTOR (arg (exponent_width - 1 DOWNTO 0)))
    = '0' THEN -- Exponent is all "0"
    IF or_reduce (to_slv (arg (-1 DOWNTO -fraction_width)))
      = '0' THEN -- Fraction is all "0"
      IF arg(exponent_width) = '0' THEN
        RETURN pos_zero; -- Zero
      ELSE
        RETURN neg_zero;
      END IF;
    ELSE
      IF arg(exponent_width) = '0' THEN
        RETURN pos_denormal; -- Denormal number (ieee extended fp)
      ELSE
        RETURN neg_denormal;
      END IF;
    END IF;
  ELSE
    IF arg(exponent_width) = '0' THEN
      RETURN pos_normal; -- Normal FP number
    ELSE
      RETURN neg_normal;
    END IF;
  END IF;
END FUNCTION Classfp;

PROCEDURE break_number (
  arg : IN UNRESOLVED_float;
  denormalize : IN BOOLEAN := float_denormalize;
  check_error : IN BOOLEAN := float_check_error;
  fract : OUT UNSIGNED;
  expon : OUT SIGNED;
  sign : OUT STD_ULOGIC) IS
  CONSTANT fraction_width : NATURAL := - mine(arg'low, arg'low); -- length of FP output fraction
  VARIABLE fptyp : valid_fpstate;
BEGIN
  fptyp := Classfp (arg, check_error);
  sign := to_x01(arg(arg'high));
  break_number (
  arg => arg,
  fptyp => fptyp,
  denormalize => denormalize,
  fract => fract,
  expon => expon);
END PROCEDURE break_number;

PROCEDURE break_number (
  arg : IN UNRESOLVED_float;
  denormalize : IN BOOLEAN := float_denormalize;
  check_error : IN BOOLEAN := float_check_error;
  fract : OUT ufixed; -- 1 downto -fraction_width
  expon : OUT SIGNED; -- exponent_width-1 downto 0
  sign : OUT STD_ULOGIC) IS
  CONSTANT fraction_width : NATURAL := - mine(arg'low, arg'low); -- length of FP output fraction
  VARIABLE fptyp : valid_fpstate;
  VARIABLE ufract : UNSIGNED (fraction_width DOWNTO 0); -- unsigned fraction
BEGIN
  fptyp := Classfp (arg, check_error);
  sign := to_x01(arg(arg'high));
  break_number (
  arg => arg,
  fptyp => fptyp,
  denormalize => denormalize,
  fract => ufract,
  expon => expon);
  fract (0 DOWNTO -fraction_width) := ufixed (ufract);
END PROCEDURE break_number;

-- Arithmetic functions
FUNCTION "abs" (
  arg : UNRESOLVED_float) -- floating point input
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (arg'RANGE); -- result
BEGIN
  IF (arg'length > 0) THEN
    result := to_01 (arg, 'X');
    result (arg'high) := '0'; -- set the sign bit to positive     
    RETURN result;
  ELSE
    RETURN NAFP;
  END IF;
END FUNCTION "abs";

-- IEEE 754 "negative" function
FUNCTION "-" (
  arg : UNRESOLVED_float) -- floating point input
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (arg'RANGE); -- result
BEGIN
  IF (arg'length > 0) THEN
    result := to_01 (arg, 'X');
    result (arg'high) := NOT result (arg'high); -- invert sign bit
    RETURN result;
  ELSE
    RETURN NAFP;
  END IF;
END FUNCTION "-";

-- Addition, adds two floating point numbers
FUNCTION add (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  CONSTANT addguard : NATURAL := guard; -- add one guard bit
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE fractl, fractr : UNSIGNED (fraction_width + 1 + addguard DOWNTO 0); -- fractions
  VARIABLE fractc, fracts : UNSIGNED (fractl'RANGE); -- constant and shifted variables
  VARIABLE urfract, ulfract : UNSIGNED (fraction_width DOWNTO 0);
  VARIABLE ufract : UNSIGNED (fraction_width + 1 + addguard DOWNTO 0);
  VARIABLE exponl, exponr : SIGNED (exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE rexpon : SIGNED (exponent_width DOWNTO 0); -- result exponent
  VARIABLE shiftx : SIGNED (exponent_width DOWNTO 0); -- shift fractions
  VARIABLE sign : STD_ULOGIC; -- sign of the output
  VARIABLE leftright : BOOLEAN; -- left or right used
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE sticky : STD_ULOGIC; -- Holds precision for rounding
BEGIN -- addition
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  IF (lfptype = isx OR rfptype = isx) THEN
    fpresult := (OTHERS => 'X');
  ELSIF (lfptype = nan OR lfptype = quiet_nan OR
    rfptype = nan OR rfptype = quiet_nan)
    -- Return quiet NAN, IEEE754-1985-7.1,1
    OR (lfptype = pos_inf AND rfptype = neg_inf)
    OR (lfptype = neg_inf AND rfptype = pos_inf) THEN
    -- Return quiet NAN, IEEE754-1985-7.1,2
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (lfptype = pos_inf OR rfptype = pos_inf) THEN -- x + inf = inf
    fpresult := pos_inffp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (lfptype = neg_inf OR rfptype = neg_inf) THEN -- x - inf = -inf
    fpresult := neg_inffp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (lfptype = neg_zero AND rfptype = neg_zero) THEN -- -0 + -0 = -0
    fpresult := neg_zerofp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSE
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    lfptype := classfp (lresize, false); -- errors already checked
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rfptype := classfp (rresize, false); -- errors already checked
    break_number (
    arg => lresize,
    fptyp => lfptype,
    denormalize => denormalize,
    fract => ulfract,
    expon => exponl);
    fractl := (OTHERS => '0');
    fractl (fraction_width + addguard DOWNTO addguard) := ulfract;
    break_number (
    arg => rresize,
    fptyp => rfptype,
    denormalize => denormalize,
    fract => urfract,
    expon => exponr);
    fractr := (OTHERS => '0');
    fractr (fraction_width + addguard DOWNTO addguard) := urfract;
    shiftx := (exponl(exponent_width - 1) & exponl) - exponr;
    IF shiftx <- fractl'high THEN
      rexpon := exponr(exponent_width - 1) & exponr;
      fractc := fractr;
      fracts := (OTHERS => '0'); -- add zero
      leftright := false;
      sticky := or_reduce (fractl);
    ELSIF shiftx < 0 THEN
      shiftx := - shiftx;
      fracts := shift_right (fractl, to_integer(shiftx));
      fractc := fractr;
      rexpon := exponr(exponent_width - 1) & exponr;
      leftright := false;
      --        sticky    := or_reduce (fractl (to_integer(shiftx) downto 0));
      sticky := smallfract (fractl, to_integer(shiftx));
    ELSIF shiftx = 0 THEN
      rexpon := exponl(exponent_width - 1) & exponl;
      sticky := '0';
      IF fractr > fractl THEN
        fractc := fractr;
        fracts := fractl;
        leftright := false;
      ELSE
        fractc := fractl;
        fracts := fractr;
        leftright := true;
      END IF;
    ELSIF shiftx > fractr'high THEN
      rexpon := exponl(exponent_width - 1) & exponl;
      fracts := (OTHERS => '0'); -- add zero
      fractc := fractl;
      leftright := true;
      sticky := or_reduce (fractr);
    ELSIF shiftx > 0 THEN
      fracts := shift_right (fractr, to_integer(shiftx));
      fractc := fractl;
      rexpon := exponl(exponent_width - 1) & exponl;
      leftright := true;
      --        sticky    := or_reduce (fractr (to_integer(shiftx) downto 0));
      sticky := smallfract (fractr, to_integer(shiftx));
    END IF;
    -- add
    fracts (0) := fracts (0) OR sticky; -- Or the sticky bit into the LSB
    IF l(l'high) = r(r'high) THEN
      ufract := fractc + fracts;
      sign := l(l'high);
    ELSE -- signs are different
      ufract := fractc - fracts; -- always positive result
      IF leftright THEN -- Figure out which sign to use
        sign := l(l'high);
      ELSE
        sign := r(r'high);
      END IF;
    END IF;
    IF or_reduce (ufract) = '0' THEN
      sign := '0'; -- IEEE 854, 6.3, paragraph 2.
    END IF;
    -- normalize
    fpresult := normalize (fract => ufract,
      expon => rexpon,
      sign => sign,
      sticky => sticky,
      fraction_width => fraction_width,
      exponent_width => exponent_width,
      round_style => round_style,
      denormalize => denormalize,
      nguard => addguard);
  END IF;
  RETURN fpresult;
END FUNCTION add;

-- Subtraction, Calls "add".
FUNCTION subtract (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  VARIABLE negr : UNRESOLVED_float (r'RANGE); -- negative version of r
BEGIN
  negr := - r;
  RETURN add (l => l,
  r => negr,
  round_style => round_style,
  guard => guard,
  check_error => check_error,
  denormalize => denormalize);
END FUNCTION subtract;

-- Floating point multiply
FUNCTION multiply (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  CONSTANT multguard : NATURAL := guard; -- guard bits
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE fractl, fractr : UNSIGNED (fraction_width DOWNTO 0); -- fractions
  VARIABLE rfract : UNSIGNED ((2 * (fraction_width)) + 1 DOWNTO 0); -- result fraction
  VARIABLE sfract : UNSIGNED (fraction_width + 1 + multguard DOWNTO 0); -- result fraction
  VARIABLE shifty : INTEGER; -- denormal shift
  VARIABLE exponl, exponr : SIGNED (exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE rexpon : SIGNED (exponent_width + 1 DOWNTO 0); -- result exponent
  VARIABLE fp_sign : STD_ULOGIC; -- sign of result
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE sticky : STD_ULOGIC; -- Holds precision for rounding
BEGIN -- multiply
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  IF (lfptype = isx OR rfptype = isx) THEN
    fpresult := (OTHERS => 'X');
  ELSIF ((lfptype = nan OR lfptype = quiet_nan OR
    rfptype = nan OR rfptype = quiet_nan)) THEN
    -- Return quiet NAN, IEEE754-1985-7.1,1
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (((lfptype = pos_inf OR lfptype = neg_inf) AND
    (rfptype = pos_zero OR rfptype = neg_zero)) OR
    ((rfptype = pos_inf OR rfptype = neg_inf) AND
    (lfptype = pos_zero OR lfptype = neg_zero))) THEN -- 0 * inf
    -- Return quiet NAN, IEEE754-1985-7.1,3
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (lfptype = pos_inf OR rfptype = pos_inf
    OR lfptype = neg_inf OR rfptype = neg_inf) THEN -- x * inf = inf
    fpresult := pos_inffp (fraction_width => fraction_width,
      exponent_width => exponent_width);
    -- figure out the sign
    fp_sign := l(l'high) XOR r(r'high); -- figure out the sign
    fpresult (exponent_width) := fp_sign;
  ELSE
    fp_sign := l(l'high) XOR r(r'high); -- figure out the sign
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    lfptype := classfp (lresize, false); -- errors already checked
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rfptype := classfp (rresize, false); -- errors already checked
    break_number (
    arg => lresize,
    fptyp => lfptype,
    denormalize => denormalize,
    fract => fractl,
    expon => exponl);
    break_number (
    arg => rresize,
    fptyp => rfptype,
    denormalize => denormalize,
    fract => fractr,
    expon => exponr);
    IF (rfptype = pos_denormal OR rfptype = neg_denormal) THEN
      shifty := fraction_width - find_leftmost(fractr, '1');
      fractr := shift_left (fractr, shifty);
    ELSIF (lfptype = pos_denormal OR lfptype = neg_denormal) THEN
      shifty := fraction_width - find_leftmost(fractl, '1');
      fractl := shift_left (fractl, shifty);
    ELSE
      shifty := 0;
      -- Note that a denormal number * a denormal number is always zero.
    END IF;
    -- multiply
    -- add the exponents
    rexpon := resize (exponl, rexpon'length) + exponr - shifty + 1;
    rfract := fractl * fractr; -- Multiply the fraction
    sfract := rfract (rfract'high DOWNTO
      rfract'high - (fraction_width + 1 + multguard));
    sticky := or_reduce (rfract (rfract'high - (fraction_width + 1 + multguard)
      DOWNTO 0));
    -- normalize
    fpresult := normalize (fract => sfract,
      expon => rexpon,
      sign => fp_sign,
      sticky => sticky,
      fraction_width => fraction_width,
      exponent_width => exponent_width,
      round_style => round_style,
      denormalize => denormalize,
      nguard => multguard);
  END IF;
  RETURN fpresult;
END FUNCTION multiply;

FUNCTION short_divide (
  lx, rx : UNSIGNED)
  RETURN UNSIGNED IS
  -- This is a special divider for the floating point routines.
  -- For a true unsigned divider, "stages" needs to = lx'high
  CONSTANT stages : INTEGER := lx'high - rx'high; -- number of stages
  VARIABLE partial : UNSIGNED (lx'RANGE);
  VARIABLE q : UNSIGNED (stages DOWNTO 0);
  VARIABLE partial_argl : SIGNED (rx'high + 2 DOWNTO 0);
  VARIABLE partial_arg : SIGNED (rx'high + 2 DOWNTO 0);
BEGIN
  partial := lx;
  FOR i IN stages DOWNTO 0 LOOP
    partial_argl := resize ("0" & SIGNED (partial(lx'high DOWNTO i)),
      partial_argl'length);
    partial_arg := partial_argl - SIGNED ("0" & rx);
    IF (partial_arg (partial_arg'high) = '1') THEN -- negative
      q(i) := '0';
    ELSE
      q(i) := '1';
      partial (lx'high + i - stages DOWNTO lx'high + i - stages - rx'high) :=
      UNSIGNED (partial_arg(rx'RANGE));
    END IF;
  END LOOP;
  -- to make the output look like that of the unsigned IEEE divide.
  RETURN resize (q, lx'length);
END FUNCTION short_divide;

-- 1/X function.  Needed for algorithm development.
FUNCTION reciprocal (
  arg : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(arg'low, arg'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := arg'high; -- length of FP output exponent
  CONSTANT divguard : NATURAL := guard; -- guard bits
  FUNCTION onedivy (
    arg : UNSIGNED)
    RETURN UNSIGNED IS
    VARIABLE q : UNSIGNED((2 * arg'high) + 1 DOWNTO 0);
    VARIABLE one : UNSIGNED (q'RANGE);
  BEGIN
    one := (OTHERS => '0');
    one(one'high) := '1';
    q := short_divide (one, arg); -- Unsigned divide
    RETURN resize (q, arg'length + 1);
  END FUNCTION onedivy;
  VARIABLE fptype : valid_fpstate;
  VARIABLE expon : SIGNED (exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE denorm_offset : NATURAL RANGE 0 TO 2;
  VARIABLE fract : UNSIGNED (fraction_width DOWNTO 0);
  VARIABLE fractg : UNSIGNED (fraction_width + divguard DOWNTO 0);
  VARIABLE sfract : UNSIGNED (fraction_width + 1 + divguard DOWNTO 0); -- result fraction
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- reciprocal
  fptype := classfp(arg, check_error);
  classcase : CASE fptype IS
    WHEN isx =>
      fpresult := (OTHERS => 'X');
    WHEN nan | quiet_nan =>
      -- Return quiet NAN, IEEE754-1985-7.1,1
      fpresult := qnanfp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    WHEN pos_inf | neg_inf => -- 1/inf, return 0
      fpresult := zerofp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    WHEN neg_zero | pos_zero => -- 1/0
      REPORT float_pkg'instance_name
        & "RECIPROCAL: Floating Point divide by zero"
        SEVERITY error;
      fpresult := pos_inffp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    WHEN OTHERS =>
      IF (fptype = pos_denormal OR fptype = neg_denormal)
        AND ((arg (-1) OR arg(-2)) /= '1') THEN
        -- 1/denormal = infinity, with the exception of 2**-expon_base
        fpresult := pos_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        fpresult (exponent_width) := to_x01 (arg (exponent_width));
      ELSE
        break_number (
        arg => arg,
        fptyp => fptype,
        denormalize => denormalize,
        fract => fract,
        expon => expon);
        fractg := (OTHERS => '0');
        IF (fptype = pos_denormal OR fptype = neg_denormal) THEN
          -- The reciprocal of a denormal number is typically zero,
          -- except for two special cases which are trapped here.
          IF (to_x01(arg (-1)) = '1') THEN
            fractg (fractg'high DOWNTO divguard + 1) :=
            fract (fract'high - 1 DOWNTO 0); -- Shift to not denormal
            denorm_offset := 1; -- add 1 to exponent compensate
          ELSE -- arg(-2) = '1'
            fractg (fractg'high DOWNTO divguard + 2) :=
            fract (fract'high - 2 DOWNTO 0); -- Shift to not denormal
            denorm_offset := 2; -- add 2 to exponent compensate
          END IF;
        ELSE
          fractg (fractg'high DOWNTO divguard) := fract;
          denorm_offset := 0;
        END IF;
        expon := - expon - 3 + denorm_offset;
        sfract := onedivy (fractg);
        -- normalize
        fpresult := normalize (fract => sfract,
          expon => expon,
          sign => arg(exponent_width),
          sticky => '1',
          fraction_width => fraction_width,
          exponent_width => exponent_width,
          round_style => round_style,
          denormalize => denormalize,
          nguard => divguard);
      END IF;
  END CASE classcase;
  RETURN fpresult;
END FUNCTION reciprocal;

-- floating point division
FUNCTION divide (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  CONSTANT divguard : NATURAL := guard; -- division guard bits
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE ulfract, urfract : UNSIGNED (fraction_width DOWNTO 0);
  VARIABLE fractl : UNSIGNED ((2 * (fraction_width + divguard) + 1) DOWNTO 0); -- left
  VARIABLE fractr : UNSIGNED (fraction_width + divguard DOWNTO 0); -- right
  VARIABLE rfract : UNSIGNED (fractl'RANGE); -- result fraction
  VARIABLE sfract : UNSIGNED (fraction_width + 1 + divguard DOWNTO 0); -- result fraction
  VARIABLE exponl, exponr : SIGNED (exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE rexpon : SIGNED (exponent_width + 1 DOWNTO 0); -- result exponent
  VARIABLE fp_sign, sticky : STD_ULOGIC; -- sign of result
  VARIABLE shifty, shiftx : INTEGER; -- denormal number shift
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- divide
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  classcase : CASE rfptype IS
    WHEN isx =>
      fpresult := (OTHERS => 'X');
    WHEN nan | quiet_nan =>
      -- Return quiet NAN, IEEE754-1985-7.1,1
      fpresult := qnanfp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    WHEN pos_inf | neg_inf =>
      IF lfptype = pos_inf OR lfptype = neg_inf -- inf / inf
        OR lfptype = quiet_nan OR lfptype = nan THEN
        -- Return quiet NAN, IEEE754-1985-7.1,4
        fpresult := qnanfp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      ELSE -- x / inf = 0
        fpresult := zerofp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        fp_sign := l(l'high) XOR r(r'high); -- sign
        fpresult (fpresult'high) := fp_sign; -- sign
      END IF;
    WHEN pos_zero | neg_zero =>
      IF lfptype = pos_zero OR lfptype = neg_zero -- 0 / 0
        OR lfptype = quiet_nan OR lfptype = nan THEN
        -- Return quiet NAN, IEEE754-1985-7.1,4
        fpresult := qnanfp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      ELSE
        REPORT float_pkg'instance_name
          & "DIVIDE: Floating Point divide by zero"
          SEVERITY error;
        -- Infinity, define in 754-1985-7.2
        fpresult := pos_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        fp_sign := l(l'high) XOR r(r'high); -- sign
        fpresult (fpresult'high) := fp_sign; -- sign
      END IF;
    WHEN OTHERS =>
      classcase2 : CASE lfptype IS
        WHEN isx =>
          fpresult := (OTHERS => 'X');
        WHEN nan | quiet_nan =>
          -- Return quiet NAN, IEEE754-1985-7.1,1
          fpresult := qnanfp (fraction_width => fraction_width,
            exponent_width => exponent_width);
        WHEN pos_inf | neg_inf => -- inf / x = inf
          fpresult := pos_inffp (fraction_width => fraction_width,
            exponent_width => exponent_width);
          fp_sign := l(l'high) XOR r(r'high); -- sign
          fpresult(exponent_width) := fp_sign;
        WHEN pos_zero | neg_zero => -- 0 / X = 0
          fpresult := zerofp (fraction_width => fraction_width,
            exponent_width => exponent_width);
          fp_sign := l(l'high) XOR r(r'high); -- sign
          fpresult(exponent_width) := fp_sign;
        WHEN OTHERS =>
          fp_sign := l(l'high) XOR r(r'high); -- sign
          lresize := resize (arg => to_x01(l),
            exponent_width => exponent_width,
            fraction_width => fraction_width,
            denormalize_in => denormalize,
            denormalize => denormalize);
          lfptype := classfp (lresize, false); -- errors already checked
          rresize := resize (arg => to_x01(r),
            exponent_width => exponent_width,
            fraction_width => fraction_width,
            denormalize_in => denormalize,
            denormalize => denormalize);
          rfptype := classfp (rresize, false); -- errors already checked
          break_number (
          arg => lresize,
          fptyp => lfptype,
          denormalize => denormalize,
          fract => ulfract,
          expon => exponl);
          -- right side
          break_number (
          arg => rresize,
          fptyp => rfptype,
          denormalize => denormalize,
          fract => urfract,
          expon => exponr);
          -- Compute the exponent
          rexpon := resize (exponl, rexpon'length) - exponr - 2;
          IF (rfptype = pos_denormal OR rfptype = neg_denormal) THEN
            -- Do the shifting here not after.  That way we have a smaller
            -- shifter, and need a smaller divider, because the top
            -- bit in the divisor will always be a "1".
            shifty := fraction_width - find_leftmost(urfract, '1');
            urfract := shift_left (urfract, shifty);
            rexpon := rexpon + shifty;
          END IF;
          fractr := (OTHERS => '0');
          fractr (fraction_width + divguard DOWNTO divguard) := urfract;
          IF (lfptype = pos_denormal OR lfptype = neg_denormal) THEN
            shiftx := fraction_width - find_leftmost(ulfract, '1');
            ulfract := shift_left (ulfract, shiftx);
            rexpon := rexpon - shiftx;
          END IF;
          fractl := (OTHERS => '0');
          fractl (fractl'high DOWNTO fractl'high - fraction_width) := ulfract;
          -- divide
          rfract := short_divide (fractl, fractr); -- unsigned divide
          sfract := rfract (sfract'RANGE); -- lower bits
          sticky := '1';
          -- normalize
          fpresult := normalize (fract => sfract,
            expon => rexpon,
            sign => fp_sign,
            sticky => sticky,
            fraction_width => fraction_width,
            exponent_width => exponent_width,
            round_style => round_style,
            denormalize => denormalize,
            nguard => divguard);
      END CASE classcase2;
  END CASE classcase;
  RETURN fpresult;
END FUNCTION divide;

-- division by a power of 2
FUNCTION dividebyp2 (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE ulfract, urfract : UNSIGNED (fraction_width DOWNTO 0);
  VARIABLE exponl, exponr : SIGNED(exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE rexpon : SIGNED(exponent_width DOWNTO 0); -- result exponent
  VARIABLE fp_sign : STD_ULOGIC; -- sign of result
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- divisionbyp2
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  classcase : CASE rfptype IS
    WHEN isx =>
      fpresult := (OTHERS => 'X');
    WHEN nan | quiet_nan =>
      -- Return quiet NAN, IEEE754-1985-7.1,1
      fpresult := qnanfp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    WHEN pos_inf | neg_inf =>
      IF lfptype = pos_inf OR lfptype = neg_inf THEN -- inf / inf
        -- Return quiet NAN, IEEE754-1985-7.1,4
        fpresult := qnanfp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      ELSE -- x / inf = 0
        fpresult := zerofp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        fp_sign := l(l'high) XOR r(r'high); -- sign
        fpresult (fpresult'high) := fp_sign; -- sign
      END IF;
    WHEN pos_zero | neg_zero =>
      IF lfptype = pos_zero OR lfptype = neg_zero THEN -- 0 / 0
        -- Return quiet NAN, IEEE754-1985-7.1,4
        fpresult := qnanfp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      ELSE
        REPORT float_pkg'instance_name
          & "DIVIDEBYP2: Floating Point divide by zero"
          SEVERITY error;
        -- Infinity, define in 754-1985-7.2
        fpresult := pos_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        fp_sign := l(l'high) XOR r(r'high); -- sign
        fpresult (fpresult'high) := fp_sign; -- sign
      END IF;
    WHEN OTHERS =>
      classcase2 : CASE lfptype IS
        WHEN isx =>
          fpresult := (OTHERS => 'X');
        WHEN nan | quiet_nan =>
          -- Return quiet NAN, IEEE754-1985-7.1,1
          fpresult := qnanfp (fraction_width => fraction_width,
            exponent_width => exponent_width);
        WHEN pos_inf | neg_inf => -- inf / x = inf
          fpresult := pos_inffp (fraction_width => fraction_width,
            exponent_width => exponent_width);
          fp_sign := l(l'high) XOR r(r'high); -- sign
          fpresult (exponent_width) := fp_sign; -- sign
        WHEN pos_zero | neg_zero => -- 0 / X = 0
          fpresult := zerofp (fraction_width => fraction_width,
            exponent_width => exponent_width);
          fp_sign := l(l'high) XOR r(r'high); -- sign
          fpresult (exponent_width) := fp_sign; -- sign
        WHEN OTHERS =>
          fp_sign := l(l'high) XOR r(r'high); -- sign
          lresize := resize (arg => to_x01(l),
            exponent_width => exponent_width,
            fraction_width => fraction_width,
            denormalize_in => denormalize,
            denormalize => denormalize);
          lfptype := classfp (lresize, false); -- errors already checked
          rresize := resize (arg => to_x01(r),
            exponent_width => exponent_width,
            fraction_width => fraction_width,
            denormalize_in => denormalize,
            denormalize => denormalize);
          rfptype := classfp (rresize, false); -- errors already checked
          break_number (
          arg => lresize,
          fptyp => lfptype,
          denormalize => denormalize,
          fract => ulfract,
          expon => exponl);
          -- right side
          break_number (
          arg => rresize,
          fptyp => rfptype,
          denormalize => denormalize,
          fract => urfract,
          expon => exponr);
          ASSERT (or_reduce (urfract (fraction_width - 1 DOWNTO 0)) = '0')
          REPORT float_pkg'instance_name
            & "DIVIDEBYP2: "
            & "Dividebyp2 called with a non power of two divisor"
            SEVERITY error;
          rexpon := (exponl(exponl'high) & exponl)
            - (exponr(exponr'high) & exponr) - 1;
          -- normalize
          fpresult := normalize (fract => ulfract,
            expon => rexpon,
            sign => fp_sign,
            sticky => '1',
            fraction_width => fraction_width,
            exponent_width => exponent_width,
            round_style => round_style,
            denormalize => denormalize,
            nguard => 0);
      END CASE classcase2;
  END CASE classcase;
  RETURN fpresult;
END FUNCTION dividebyp2;

-- Multiply accumulate  result = l*r + c
FUNCTION mac (
  l, r, c : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL :=
  - mine (mine(l'low, r'low), c'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL :=
  maximum (maximum(l'high, r'high), c'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype, cfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE fractl, fractr : UNSIGNED (fraction_width DOWNTO 0); -- fractions
  VARIABLE fractx : UNSIGNED (fraction_width + guard DOWNTO 0);
  VARIABLE fractc, fracts : UNSIGNED (fraction_width + 1 + guard DOWNTO 0);
  VARIABLE rfract : UNSIGNED ((2 * (fraction_width)) + 1 DOWNTO 0); -- result fraction
  VARIABLE sfract, ufract : UNSIGNED (fraction_width + 1 + guard DOWNTO 0); -- result fraction
  VARIABLE exponl, exponr, exponc : SIGNED (exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE rexpon, rexpon2 : SIGNED (exponent_width + 1 DOWNTO 0); -- result exponent
  VARIABLE shifty : INTEGER; -- denormal shift
  VARIABLE shiftx : SIGNED (rexpon'RANGE); -- shift fractions
  VARIABLE fp_sign : STD_ULOGIC; -- sign of result
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE cresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width - guard);
  VARIABLE leftright : BOOLEAN; -- left or right used
  VARIABLE sticky : STD_ULOGIC; -- Holds precision for rounding
BEGIN -- multiply
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7 OR c'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
    cfptype := classfp (c, check_error);
  END IF;
  IF (lfptype = isx OR rfptype = isx OR cfptype = isx) THEN
    fpresult := (OTHERS => 'X');
  ELSIF (lfptype = nan OR lfptype = quiet_nan OR
    rfptype = nan OR rfptype = quiet_nan OR
    cfptype = nan OR cfptype = quiet_nan) THEN
    -- Return quiet NAN, IEEE754-1985-7.1,1
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (((lfptype = pos_inf OR lfptype = neg_inf) AND
    (rfptype = pos_zero OR rfptype = neg_zero)) OR
    ((rfptype = pos_inf OR rfptype = neg_inf) AND
    (lfptype = pos_zero OR lfptype = neg_zero))) THEN -- 0 * inf
    -- Return quiet NAN, IEEE754-1985-7.1,3
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (lfptype = pos_inf OR rfptype = pos_inf
    OR lfptype = neg_inf OR rfptype = neg_inf -- x * inf = inf
    OR cfptype = neg_inf OR cfptype = pos_inf) THEN -- x + inf = inf
    fpresult := pos_inffp (fraction_width => fraction_width,
      exponent_width => exponent_width);
    -- figure out the sign
    fpresult (exponent_width) := l(l'high) XOR r(r'high);
  ELSE
    fp_sign := l(l'high) XOR r(r'high); -- figure out the sign
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    lfptype := classfp (lresize, false); -- errors already checked
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rfptype := classfp (rresize, false); -- errors already checked
    cresize := resize (arg => to_x01(c),
      exponent_width => exponent_width,
      fraction_width => - cresize'low,
      denormalize_in => denormalize,
      denormalize => denormalize);
    cfptype := classfp (cresize, false); -- errors already checked
    break_number (
    arg => lresize,
    fptyp => lfptype,
    denormalize => denormalize,
    fract => fractl,
    expon => exponl);
    break_number (
    arg => rresize,
    fptyp => rfptype,
    denormalize => denormalize,
    fract => fractr,
    expon => exponr);
    break_number (
    arg => cresize,
    fptyp => cfptype,
    denormalize => denormalize,
    fract => fractx,
    expon => exponc);
    IF (rfptype = pos_denormal OR rfptype = neg_denormal) THEN
      shifty := fraction_width - find_leftmost(fractr, '1');
      fractr := shift_left (fractr, shifty);
    ELSIF (lfptype = pos_denormal OR lfptype = neg_denormal) THEN
      shifty := fraction_width - find_leftmost(fractl, '1');
      fractl := shift_left (fractl, shifty);
    ELSE
      shifty := 0;
      -- Note that a denormal number * a denormal number is always zero.
    END IF;
    -- multiply
    rfract := fractl * fractr; -- Multiply the fraction
    -- add the exponents
    rexpon := resize (exponl, rexpon'length) + exponr - shifty + 1;
    shiftx := rexpon - exponc;
    IF shiftx <- fractl'high THEN
      rexpon2 := resize (exponc, rexpon2'length);
      fractc := "0" & fractx;
      fracts := (OTHERS => '0');
      sticky := or_reduce (rfract);
    ELSIF shiftx < 0 THEN
      shiftx := - shiftx;
      fracts := shift_right (rfract (rfract'high DOWNTO rfract'high
        - fracts'length + 1),
        to_integer(shiftx));
      fractc := "0" & fractx;
      rexpon2 := resize (exponc, rexpon2'length);
      leftright := false;
      sticky := or_reduce (rfract (to_integer(shiftx) + rfract'high
        - fracts'length DOWNTO 0));
    ELSIF shiftx = 0 THEN
      rexpon2 := resize (exponc, rexpon2'length);
      sticky := or_reduce (rfract (rfract'high - fractc'length DOWNTO 0));
      IF rfract (rfract'high DOWNTO rfract'high - fractc'length + 1) > fractx
        THEN
        fractc := "0" & fractx;
        fracts := rfract (rfract'high DOWNTO rfract'high
          - fracts'length + 1);
        leftright := false;
      ELSE
        fractc := rfract (rfract'high DOWNTO rfract'high
          - fractc'length + 1);
        fracts := "0" & fractx;
        leftright := true;
      END IF;
    ELSIF shiftx > fractx'high THEN
      rexpon2 := rexpon;
      fracts := (OTHERS => '0');
      fractc := rfract (rfract'high DOWNTO rfract'high - fractc'length + 1);
      leftright := true;
      sticky := or_reduce (fractx & rfract (rfract'high - fractc'length
        DOWNTO 0));
    ELSE -- fractx'high > shiftx > 0
      rexpon2 := rexpon;
      fracts := "0" & shift_right (fractx, to_integer (shiftx));
      fractc := rfract (rfract'high DOWNTO rfract'high - fractc'length + 1);
      leftright := true;
      sticky := or_reduce (fractx (to_integer (shiftx) DOWNTO 0)
        & rfract (rfract'high - fractc'length DOWNTO 0));
    END IF;
    fracts (0) := fracts (0) OR sticky; -- Or the sticky bit into the LSB
    IF fp_sign = to_X01(c(c'high)) THEN
      ufract := fractc + fracts;
      fp_sign := fp_sign;
    ELSE -- signs are different
      ufract := fractc - fracts; -- always positive result
      IF leftright THEN -- Figure out which sign to use
        fp_sign := fp_sign;
      ELSE
        fp_sign := c(c'high);
      END IF;
    END IF;
    -- normalize
    fpresult := normalize (fract => ufract,
      expon => rexpon2,
      sign => fp_sign,
      sticky => sticky,
      fraction_width => fraction_width,
      exponent_width => exponent_width,
      round_style => round_style,
      denormalize => denormalize,
      nguard => guard);
  END IF;
  RETURN fpresult;
END FUNCTION mac;

-- "rem" function
FUNCTION remainder (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  CONSTANT divguard : NATURAL := guard; -- division guard bits
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE ulfract, urfract : UNSIGNED (fraction_width DOWNTO 0);
  VARIABLE fractr, fractl : UNSIGNED (fraction_width + divguard DOWNTO 0); -- right
  VARIABLE rfract : UNSIGNED (fractr'RANGE); -- result fraction
  VARIABLE sfract : UNSIGNED (fraction_width + divguard DOWNTO 0); -- result fraction
  VARIABLE exponl, exponr : SIGNED (exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE rexpon : SIGNED (exponent_width DOWNTO 0); -- result exponent
  VARIABLE fp_sign : STD_ULOGIC; -- sign of result
  VARIABLE shifty : INTEGER; -- denormal number shift
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- remainder
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  IF (lfptype = isx OR rfptype = isx) THEN
    fpresult := (OTHERS => 'X');
  ELSIF (lfptype = nan OR lfptype = quiet_nan)
    OR (rfptype = nan OR rfptype = quiet_nan)
    -- Return quiet NAN, IEEE754-1985-7.1,1
    OR (lfptype = pos_inf OR lfptype = neg_inf) -- inf rem x
    -- Return quiet NAN, IEEE754-1985-7.1,5
    OR (rfptype = pos_zero OR rfptype = neg_zero) THEN -- x rem 0
    -- Return quiet NAN, IEEE754-1985-7.1,5
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (rfptype = pos_inf OR rfptype = neg_inf) THEN -- x rem inf = 0
    fpresult := zerofp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (ABS(l) < ABS(r)) THEN
    fpresult := l;
  ELSE
    fp_sign := to_X01(l(l'high)); -- sign
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    lfptype := classfp (lresize, false); -- errors already checked
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rfptype := classfp (rresize, false); -- errors already checked
    fractl := (OTHERS => '0');
    break_number (
    arg => lresize,
    fptyp => lfptype,
    denormalize => denormalize,
    fract => ulfract,
    expon => exponl);
    fractl (fraction_width + divguard DOWNTO divguard) := ulfract;
    -- right side
    fractr := (OTHERS => '0');
    break_number (
    arg => rresize,
    fptyp => rfptype,
    denormalize => denormalize,
    fract => urfract,
    expon => exponr);
    fractr (fraction_width + divguard DOWNTO divguard) := urfract;
    rexpon := (exponr(exponr'high) & exponr);
    shifty := to_integer(exponl - rexpon);
    IF (shifty > 0) THEN
      fractr := shift_right (fractr, shifty);
      rexpon := rexpon + shifty;
    END IF;
    IF (fractr /= 0) THEN
      -- rem
      rfract := fractl REM fractr; -- unsigned rem
      sfract := rfract (sfract'RANGE); -- lower bits
      -- normalize
      fpresult := normalize (fract => sfract,
        expon => rexpon,
        sign => fp_sign,
        fraction_width => fraction_width,
        exponent_width => exponent_width,
        round_style => round_style,
        denormalize => denormalize,
        nguard => divguard);
    ELSE
      -- If we shift "fractr" so far that it becomes zero, return zero.
      fpresult := zerofp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    END IF;
  END IF;
  RETURN fpresult;
END FUNCTION remainder;

-- "mod" function
FUNCTION modulo (
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT guard : NATURAL := float_guard_bits; -- number of guard bits
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE fpresult : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE remres : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- remainder
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    lfptype := isx;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  IF (lfptype = isx OR rfptype = isx) THEN
    fpresult := (OTHERS => 'X');
  ELSIF (lfptype = nan OR lfptype = quiet_nan)
    OR (rfptype = nan OR rfptype = quiet_nan)
    -- Return quiet NAN, IEEE754-1985-7.1,1
    OR (lfptype = pos_inf OR lfptype = neg_inf) -- inf rem x
    -- Return quiet NAN, IEEE754-1985-7.1,5
    OR (rfptype = pos_zero OR rfptype = neg_zero) THEN -- x rem 0
    -- Return quiet NAN, IEEE754-1985-7.1,5
    fpresult := qnanfp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSIF (rfptype = pos_inf OR rfptype = neg_inf) THEN -- x rem inf = 0
    fpresult := zerofp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSE
    remres := remainder (l => ABS(l),
      r => ABS(r),
      round_style => round_style,
      guard => guard,
      check_error => false,
      denormalize => denormalize);
    -- MOD is the same as REM, but you do something different with
    -- negative values
    IF (is_negative (l)) THEN
      remres := - remres;
    END IF;
    IF (is_negative (l) = is_negative (r) OR remres = 0) THEN
      fpresult := remres;
    ELSE
      fpresult := add (l => remres,
        r => r,
        round_style => round_style,
        guard => guard,
        check_error => false,
        denormalize => denormalize);
    END IF;
  END IF;
  RETURN fpresult;
END FUNCTION modulo;

-- Square root of a floating point number.  Done using Newton's Iteration.
FUNCTION sqrt (
  arg : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style;
  CONSTANT guard : NATURAL := float_guard_bits;
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := guard - arg'low; -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := arg'high; -- length of FP output exponent
  VARIABLE sign : STD_ULOGIC;
  VARIABLE fpresult : float (arg'RANGE);
  VARIABLE fptype : valid_fpstate;
  VARIABLE iexpon : SIGNED(exponent_width - 1 DOWNTO 0); -- exponents
  VARIABLE expon : SIGNED(exponent_width DOWNTO 0); -- exponents
  VARIABLE ufact : ufixed (0 DOWNTO arg'low);
  VARIABLE fact : ufixed (2 DOWNTO -fraction_width); -- fraction
  VARIABLE resb : ufixed (fact'high + 1 DOWNTO fact'low);
BEGIN -- square root
  fptype := Classfp (arg, check_error);
  classcase : CASE fptype IS
    WHEN isx =>
      fpresult := (OTHERS => 'X');
    WHEN nan | quiet_nan |
      -- Return quiet NAN, IEEE754-1985-7.1,1
      neg_normal | neg_denormal | neg_inf => -- sqrt (neg)
      -- Return quiet NAN, IEEE754-1985-7.1.6
      fpresult := qnanfp (fraction_width => fraction_width - guard,
        exponent_width => exponent_width);
    WHEN pos_inf => -- Sqrt (inf), return infinity
      fpresult := pos_inffp (fraction_width => fraction_width - guard,
        exponent_width => exponent_width);
    WHEN pos_zero => -- return 0
      fpresult := zerofp (fraction_width => fraction_width - guard,
        exponent_width => exponent_width);
    WHEN neg_zero => -- IEEE754-1985-6.3 return -0
      fpresult := neg_zerofp (fraction_width => fraction_width - guard,
        exponent_width => exponent_width);
    WHEN OTHERS =>
      break_number (arg => arg,
      denormalize => denormalize,
      check_error => false,
      fract => ufact,
      expon => iexpon,
      sign => sign);
      expon := resize (iexpon + 1, expon'length); -- get exponent
      fact := resize (ufact, fact'high, fact'low);
      IF (expon(0) = '1') THEN
        fact := fact SLA 1; -- * 2.0
      END IF;
      expon := shift_right (expon, 1); -- exponent/2
      -- Newton's iteration - root := (1 + arg) / 2
      resb := (fact + 1) SRA 1;
      FOR j IN 0 TO fraction_width/4 LOOP
        --   root := (root + (arg/root))/2
        resb := resize (arg => (resb + (fact/resb)) SRA 1,
          left_index => resb'high,
          right_index => resb'low,
          round_style => fixed_truncate,
          overflow_style => fixed_wrap);
      END LOOP;
      fpresult := normalize (fract => resb,
        expon => expon - 1,
        sign => '0',
        exponent_width => arg'high,
        fraction_width => - arg'low,
        round_style => round_style,
        denormalize => denormalize,
        nguard => guard);
  END CASE classcase;
  RETURN fpresult;
END FUNCTION sqrt;

FUNCTION Is_Negative (arg : UNRESOLVED_float) RETURN BOOLEAN IS
  -- Technically -0 should return "false", but I'm leaving that case out.
BEGIN
  RETURN (to_x01(arg(arg'high)) = '1');
END FUNCTION Is_Negative;

-- compare functions
-- =, /=, >=, <=, <, >

FUNCTION eq (-- equal =
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN BOOLEAN IS
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE is_equal, is_unordered : BOOLEAN;
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- equal
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN false;
  ELSE
    lfptype := classfp (l, check_error);
    rfptype := classfp (r, check_error);
  END IF;
  IF (lfptype = neg_zero OR lfptype = pos_zero) AND
    (rfptype = neg_zero OR rfptype = pos_zero) THEN
    is_equal := true;
  ELSE
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    is_equal := (to_slv(lresize) = to_slv(rresize));
  END IF;
  IF (check_error) THEN
    is_unordered := Unordered (x => l,
      y => r);
  ELSE
    is_unordered := false;
  END IF;
  RETURN is_equal AND NOT is_unordered;
END FUNCTION eq;

FUNCTION lt (-- less than <
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN BOOLEAN IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE expl, expr : UNSIGNED (exponent_width - 1 DOWNTO 0);
  VARIABLE fractl, fractr : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE is_less_than, is_unordered : BOOLEAN;
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    is_less_than := false;
  ELSE
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    IF to_x01(l(l'high)) = to_x01(r(r'high)) THEN -- sign bits
      expl := UNSIGNED(lresize(exponent_width - 1 DOWNTO 0));
      expr := UNSIGNED(rresize(exponent_width - 1 DOWNTO 0));
      IF expl = expr THEN
        fractl := UNSIGNED (to_slv(lresize(-1 DOWNTO -fraction_width)));
        fractr := UNSIGNED (to_slv(rresize(-1 DOWNTO -fraction_width)));
        IF to_x01(l(l'high)) = '0' THEN -- positive number
          is_less_than := (fractl < fractr);
        ELSE
          is_less_than := (fractl > fractr); -- negative
        END IF;
      ELSE
        IF to_x01(l(l'high)) = '0' THEN -- positive number
          is_less_than := (expl < expr);
        ELSE
          is_less_than := (expl > expr); -- negative
        END IF;
      END IF;
    ELSE
      lfptype := classfp (l, check_error);
      rfptype := classfp (r, check_error);
      IF (lfptype = neg_zero AND rfptype = pos_zero) THEN
        is_less_than := false; -- -0 < 0 returns false.
      ELSE
        is_less_than := (to_x01(l(l'high)) > to_x01(r(r'high)));
      END IF;
    END IF;
  END IF;
  IF check_error THEN
    is_unordered := Unordered (x => l,
      y => r);
  ELSE
    is_unordered := false;
  END IF;
  RETURN is_less_than AND NOT is_unordered;
END FUNCTION lt;

FUNCTION gt (-- greater than >
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN BOOLEAN IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE expl, expr : UNSIGNED (exponent_width - 1 DOWNTO 0);
  VARIABLE fractl, fractr : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE is_greater_than : BOOLEAN;
  VARIABLE is_unordered : BOOLEAN;
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- greater_than
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    is_greater_than := false;
  ELSE
    lresize := resize (arg => to_x01(l),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    rresize := resize (arg => to_x01(r),
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => denormalize,
      denormalize => denormalize);
    IF to_x01(l(l'high)) = to_x01(r(r'high)) THEN -- sign bits
      expl := UNSIGNED(lresize(exponent_width - 1 DOWNTO 0));
      expr := UNSIGNED(rresize(exponent_width - 1 DOWNTO 0));
      IF expl = expr THEN
        fractl := UNSIGNED (to_slv(lresize(-1 DOWNTO -fraction_width)));
        fractr := UNSIGNED (to_slv(rresize(-1 DOWNTO -fraction_width)));
        IF to_x01(l(l'high)) = '0' THEN -- positive number
          is_greater_than := fractl > fractr;
        ELSE
          is_greater_than := fractl < fractr; -- negative
        END IF;
      ELSE
        IF to_x01(l(l'high)) = '0' THEN -- positive number
          is_greater_than := expl > expr;
        ELSE
          is_greater_than := expl < expr; -- negative
        END IF;
      END IF;
    ELSE
      lfptype := classfp (l, check_error);
      rfptype := classfp (r, check_error);
      IF (lfptype = pos_zero AND rfptype = neg_zero) THEN
        is_greater_than := false; -- 0 > -0 returns false.
      ELSE
        is_greater_than := to_x01(l(l'high)) < to_x01(r(r'high));
      END IF;
    END IF;
  END IF;
  IF check_error THEN
    is_unordered := Unordered (x => l,
      y => r);
  ELSE
    is_unordered := false;
  END IF;
  RETURN is_greater_than AND NOT is_unordered;
END FUNCTION gt;

-- purpose: /= function
FUNCTION ne (-- not equal /=
  l, r : UNRESOLVED_float;
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN BOOLEAN IS
  VARIABLE is_equal, is_unordered : BOOLEAN;
BEGIN
  is_equal := eq (l => l,
    r => r,
    check_error => false,
    denormalize => denormalize);
  IF check_error THEN
    is_unordered := Unordered (x => l,
      y => r);
  ELSE
    is_unordered := false;
  END IF;
  RETURN NOT (is_equal AND NOT is_unordered);
END FUNCTION ne;

FUNCTION le (-- less than or equal to <=
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN BOOLEAN IS
  VARIABLE is_greater_than, is_unordered : BOOLEAN;
BEGIN
  is_greater_than := gt (l => l,
    r => r,
    check_error => false,
    denormalize => denormalize);
  IF check_error THEN
    is_unordered := Unordered (x => l,
      y => r);
  ELSE
    is_unordered := false;
  END IF;
  RETURN NOT is_greater_than AND NOT is_unordered;
END FUNCTION le;

FUNCTION ge (-- greater than or equal to >=
  l, r : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN BOOLEAN IS
  VARIABLE is_less_than, is_unordered : BOOLEAN;
BEGIN
  is_less_than := lt (l => l,
    r => r,
    check_error => false,
    denormalize => denormalize);
  IF check_error THEN
    is_unordered := Unordered (x => l,
      y => r);
  ELSE
    is_unordered := false;
  END IF;
  RETURN NOT is_less_than AND NOT is_unordered;
END FUNCTION ge;

FUNCTION \?=\ (L, R : UNRESOLVED_float) RETURN STD_ULOGIC IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE is_equal, is_unordered : STD_ULOGIC;
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- ?=
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN 'X';
  ELSE
    lfptype := classfp (l, float_check_error);
    rfptype := classfp (r, float_check_error);
  END IF;
  IF (lfptype = neg_zero OR lfptype = pos_zero) AND
    (rfptype = neg_zero OR rfptype = pos_zero) THEN
    is_equal := '1';
  ELSE
    lresize := resize (arg => l,
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => float_denormalize,
      denormalize => float_denormalize);
    rresize := resize (arg => r,
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => float_denormalize,
      denormalize => float_denormalize);
    is_equal := \?=\ (to_sulv(lresize), to_sulv(rresize));
  END IF;
  IF (float_check_error) THEN
    IF (lfptype = nan OR lfptype = quiet_nan OR
      rfptype = nan OR rfptype = quiet_nan) THEN
      is_unordered := '1';
    ELSE
      is_unordered := '0';
    END IF;
  ELSE
    is_unordered := '0';
  END IF;
  RETURN is_equal AND NOT is_unordered;
END FUNCTION \?=\;

FUNCTION \?/=\ (L, R : UNRESOLVED_float) RETURN STD_ULOGIC IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lfptype, rfptype : valid_fpstate;
  VARIABLE is_equal, is_unordered : STD_ULOGIC;
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- ?/=
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN 'X';
  ELSE
    lfptype := classfp (l, float_check_error);
    rfptype := classfp (r, float_check_error);
  END IF;
  IF (lfptype = neg_zero OR lfptype = pos_zero) AND
    (rfptype = neg_zero OR rfptype = pos_zero) THEN
    is_equal := '1';
  ELSE
    lresize := resize (arg => l,
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => float_denormalize,
      denormalize => float_denormalize);
    rresize := resize (arg => r,
      exponent_width => exponent_width,
      fraction_width => fraction_width,
      denormalize_in => float_denormalize,
      denormalize => float_denormalize);
    is_equal := \?=\ (to_sulv(lresize), to_sulv(rresize));
  END IF;
  IF (float_check_error) THEN
    IF (lfptype = nan OR lfptype = quiet_nan OR
      rfptype = nan OR rfptype = quiet_nan) THEN
      is_unordered := '1';
    ELSE
      is_unordered := '0';
    END IF;
  ELSE
    is_unordered := '0';
  END IF;
  RETURN NOT (is_equal AND NOT is_unordered);
END FUNCTION \?/=\;

FUNCTION \?>\ (L, R : UNRESOLVED_float) RETURN STD_ULOGIC IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low);
  VARIABLE founddash : BOOLEAN := false;
BEGIN
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN 'X';
  ELSE
    FOR i IN L'RANGE LOOP
      IF L(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    FOR i IN R'RANGE LOOP
      IF R(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    IF founddash THEN
      REPORT float_pkg'instance_name
        & " ""?>"": '-' found in compare string"
        SEVERITY error;
      RETURN 'X';
    ELSIF is_x(l) OR is_x(r) THEN
      RETURN 'X';
    ELSIF l > r THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END IF;
END FUNCTION \?>\;

FUNCTION \?>=\ (L, R : UNRESOLVED_float) RETURN STD_ULOGIC IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low);
  VARIABLE founddash : BOOLEAN := false;
BEGIN
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN 'X';
  ELSE
    FOR i IN L'RANGE LOOP
      IF L(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    FOR i IN R'RANGE LOOP
      IF R(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    IF founddash THEN
      REPORT float_pkg'instance_name
        & " ""?>="": '-' found in compare string"
        SEVERITY error;
      RETURN 'X';
    ELSIF is_x(l) OR is_x(r) THEN
      RETURN 'X';
    ELSIF l >= r THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END IF;
END FUNCTION \?>=\;

FUNCTION \?<\ (L, R : UNRESOLVED_float) RETURN STD_ULOGIC IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low);
  VARIABLE founddash : BOOLEAN := false;
BEGIN
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN 'X';
  ELSE
    FOR i IN L'RANGE LOOP
      IF L(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    FOR i IN R'RANGE LOOP
      IF R(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    IF founddash THEN
      REPORT float_pkg'instance_name
        & " ""?<"": '-' found in compare string"
        SEVERITY error;
      RETURN 'X';
    ELSIF is_x(l) OR is_x(r) THEN
      RETURN 'X';
    ELSIF l < r THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END IF;
END FUNCTION \?<\;

FUNCTION \?<=\ (L, R : UNRESOLVED_float) RETURN STD_ULOGIC IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low);
  VARIABLE founddash : BOOLEAN := false;
BEGIN
  IF (fraction_width = 0 OR l'length < 7 OR r'length < 7) THEN
    RETURN 'X';
  ELSE
    FOR i IN L'RANGE LOOP
      IF L(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    FOR i IN R'RANGE LOOP
      IF R(i) = '-' THEN
        founddash := true;
      END IF;
    END LOOP;
    IF founddash THEN
      REPORT float_pkg'instance_name
        & " ""?<="": '-' found in compare string"
        SEVERITY error;
      RETURN 'X';
    ELSIF is_x(l) OR is_x(r) THEN
      RETURN 'X';
    ELSIF l <= r THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END IF;
END FUNCTION \?<=\;

FUNCTION std_match (L, R : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RETURN std_match(to_sulv(L), to_sulv(R));
  ELSE
    REPORT float_pkg'instance_name
      & "STD_MATCH: L'RANGE /= R'RANGE, returning FALSE"
      SEVERITY warning;
    RETURN false;
  END IF;
END FUNCTION std_match;

FUNCTION find_rightmost (arg : UNRESOLVED_float; y : STD_ULOGIC) RETURN INTEGER IS
BEGIN
  for_loop : FOR i IN arg'reverse_range LOOP
    IF \?=\ (arg(i), y) = '1' THEN
      RETURN i;
    END IF;
  END LOOP;
  RETURN arg'high + 1; -- return out of bounds 'high
END FUNCTION find_rightmost;

FUNCTION find_leftmost (arg : UNRESOLVED_float; y : STD_ULOGIC) RETURN INTEGER IS
BEGIN
  for_loop : FOR i IN arg'RANGE LOOP
    IF \?=\ (arg(i), y) = '1' THEN
      RETURN i;
    END IF;
  END LOOP;
  RETURN arg'low - 1; -- return out of bounds 'low
END FUNCTION find_leftmost;

-- These override the defaults for the compare operators.
FUNCTION "=" (l, r : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  RETURN eq(l, r);
END FUNCTION "=";

FUNCTION "/=" (l, r : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  RETURN ne(l, r);
END FUNCTION "/=";

FUNCTION ">=" (l, r : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  RETURN ge(l, r);
END FUNCTION ">=";

FUNCTION "<=" (l, r : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  RETURN le(l, r);
END FUNCTION "<=";

FUNCTION ">" (l, r : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  RETURN gt(l, r);
END FUNCTION ">";

FUNCTION "<" (l, r : UNRESOLVED_float) RETURN BOOLEAN IS
BEGIN
  RETURN lt(l, r);
END FUNCTION "<";

-- purpose: maximum of two numbers (overrides default)
FUNCTION maximum (
  L, R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN
  IF ((L'length < 1) OR (R'length < 1)) THEN
    RETURN NAFP;
  END IF;
  lresize := resize (l, exponent_width, fraction_width);
  rresize := resize (r, exponent_width, fraction_width);
  IF lresize > rresize THEN
    RETURN lresize;
  ELSE
    RETURN rresize;
  END IF;
END FUNCTION maximum;

FUNCTION minimum (
  L, R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(l'low, r'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := maximum(l'high, r'high); -- length of FP output exponent
  VARIABLE lresize, rresize : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN
  IF ((L'length < 1) OR (R'length < 1)) THEN
    RETURN NAFP;
  END IF;
  lresize := resize (l, exponent_width, fraction_width);
  rresize := resize (r, exponent_width, fraction_width);
  IF lresize > rresize THEN
    RETURN rresize;
  ELSE
    RETURN lresize;
  END IF;
END FUNCTION minimum;

-----------------------------------------------------------------------------
-- conversion functions
-----------------------------------------------------------------------------

-- Converts a floating point number of one format into another format
FUNCTION resize (
  arg : UNRESOLVED_float; -- Floating point input
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT in_fraction_width : NATURAL := - arg'low; -- length of FP output fraction
  CONSTANT in_exponent_width : NATURAL := arg'high; -- length of FP output exponent
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  -- result value
  VARIABLE fptype : valid_fpstate;
  VARIABLE expon_in : SIGNED (in_exponent_width - 1 DOWNTO 0);
  VARIABLE fract_in : UNSIGNED (in_fraction_width DOWNTO 0);
  VARIABLE round : BOOLEAN;
  VARIABLE expon_out : SIGNED (exponent_width - 1 DOWNTO 0); -- output fract
  VARIABLE fract_out : UNSIGNED (fraction_width DOWNTO 0); -- output fract
  VARIABLE passguard : NATURAL;
BEGIN
  fptype := classfp(arg, check_error);
  IF ((fptype = pos_denormal OR fptype = neg_denormal) AND denormalize_in
    AND (in_exponent_width < exponent_width
    OR in_fraction_width < fraction_width))
    OR in_exponent_width > exponent_width
    OR in_fraction_width > fraction_width THEN
    -- size reduction
    classcase : CASE fptype IS
      WHEN isx =>
        result := (OTHERS => 'X');
      WHEN nan | quiet_nan =>
        result := qnanfp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      WHEN pos_inf =>
        result := pos_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      WHEN neg_inf =>
        result := neg_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      WHEN pos_zero | neg_zero =>
        result := zerofp (fraction_width => fraction_width, -- hate -0
          exponent_width => exponent_width);
      WHEN OTHERS =>
        break_number (
        arg => arg,
        fptyp => fptype,
        denormalize => denormalize_in,
        fract => fract_in,
        expon => expon_in);
        IF fraction_width > in_fraction_width AND denormalize_in THEN
          -- You only get here if you have a denormal input
          fract_out := (OTHERS => '0'); -- pad with zeros
          fract_out (fraction_width DOWNTO
          fraction_width - in_fraction_width) := fract_in;
          result := normalize (
            fract => fract_out,
            expon => expon_in,
            sign => arg(arg'high),
            fraction_width => fraction_width,
            exponent_width => exponent_width,
            round_style => round_style,
            denormalize => denormalize,
            nguard => 0);
        ELSE
          result := normalize (
            fract => fract_in,
            expon => expon_in,
            sign => arg(arg'high),
            fraction_width => fraction_width,
            exponent_width => exponent_width,
            round_style => round_style,
            denormalize => denormalize,
            nguard => in_fraction_width - fraction_width);
        END IF;
    END CASE classcase;
  ELSE -- size increase or the same size
    IF exponent_width > in_exponent_width THEN
      expon_in := SIGNED(arg (in_exponent_width - 1 DOWNTO 0));
      IF fptype = pos_zero OR fptype = neg_zero THEN
        result (exponent_width - 1 DOWNTO 0) := (OTHERS => '0');
      ELSIF expon_in =- 1 THEN -- inf or nan (shorts out check_error)
        result (exponent_width - 1 DOWNTO 0) := (OTHERS => '1');
      ELSE
        -- invert top BIT
        expon_in(expon_in'high) := NOT expon_in(expon_in'high);
        expon_out := resize (expon_in, expon_out'length); -- signed expand
        -- Flip it back.
        expon_out(expon_out'high) := NOT expon_out(expon_out'high);
        result (exponent_width - 1 DOWNTO 0) := UNRESOLVED_float(expon_out);
      END IF;
      result (exponent_width) := arg (in_exponent_width); -- sign
    ELSE -- exponent_width = in_exponent_width
      result (exponent_width DOWNTO 0) := arg (in_exponent_width DOWNTO 0);
    END IF;
    IF fraction_width > in_fraction_width THEN
      result (-1 DOWNTO -fraction_width) := (OTHERS => '0'); -- zeros
      result (-1 DOWNTO -in_fraction_width) :=
      arg (-1 DOWNTO -in_fraction_width);
    ELSE -- fraction_width = in_fraciton_width
      result (-1 DOWNTO -fraction_width) :=
      arg (-1 DOWNTO -in_fraction_width);
    END IF;
  END IF;
  RETURN result;
END FUNCTION resize;

FUNCTION resize (
  arg : UNRESOLVED_float; -- floating point input
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := resize (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style,
      check_error => check_error,
      denormalize_in => denormalize_in,
      denormalize => denormalize);
    RETURN result;
  END IF;
END FUNCTION resize;

FUNCTION to_float32 (
  arg : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float32 IS
BEGIN
  RETURN resize (arg => arg,
  exponent_width => float32'high,
  fraction_width => - float32'low,
  round_style => round_style,
  check_error => check_error,
  denormalize_in => denormalize_in,
  denormalize => denormalize);
END FUNCTION to_float32;

FUNCTION to_float64 (
  arg : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float64 IS
BEGIN
  RETURN resize (arg => arg,
  exponent_width => float64'high,
  fraction_width => - float64'low,
  round_style => round_style,
  check_error => check_error,
  denormalize_in => denormalize_in,
  denormalize => denormalize);
END FUNCTION to_float64;

FUNCTION to_float128 (
  arg : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error;
  CONSTANT denormalize_in : BOOLEAN := float_denormalize; -- Use IEEE extended FP
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float128 IS
BEGIN
  RETURN resize (arg => arg,
  exponent_width => float128'high,
  fraction_width => - float128'low,
  round_style => round_style,
  check_error => check_error,
  denormalize_in => denormalize_in,
  denormalize => denormalize);
END FUNCTION to_float128;

-- to_float (Real)
-- typically not Synthesizable unless the input is a constant.
FUNCTION to_float (
  arg : REAL;
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE arg_real : REAL; -- Real version of argument
  VARIABLE validfp : boundary_type; -- Check for valid results
  VARIABLE exp : INTEGER; -- Integer version of exponent
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0);
  -- Unsigned version of exp.
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
  gen_expon_base(exponent_width); -- exponent offset
  VARIABLE fract : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE frac : REAL; -- Real version of fraction
  CONSTANT roundfrac : REAL := 2.0 ** (-2 - fract'high); -- used for rounding
  VARIABLE round : BOOLEAN; -- to round or not to round
BEGIN
  result := (OTHERS => '0');
  arg_real := arg;
  IF arg_real < 0.0 THEN
    result (exponent_width) := '1';
    arg_real := - arg_real; -- Make it positive.
  ELSE
    result (exponent_width) := '0';
  END IF;
  test_boundary (arg => arg_real,
  fraction_width => fraction_width,
  exponent_width => exponent_width,
  denormalize => denormalize,
  btype => validfp,
  log2i => exp);
  IF validfp = zero THEN
    RETURN result; -- Result initialized to "0".
  ELSIF validfp = infinity THEN
    result (exponent_width - 1 DOWNTO 0) := (OTHERS => '1'); -- Exponent all "1"
    -- return infinity.
    RETURN result;
  ELSE
    IF validfp = denormal THEN -- Exponent will default to "0".
      expon := (OTHERS => '0');
      frac := arg_real * (2.0 ** (to_integer(expon_base) - 1));
    ELSE -- Number less than 1. "normal" number
      expon := UNSIGNED (to_signed (exp - 1, exponent_width));
      expon(exponent_width - 1) := NOT expon(exponent_width - 1);
      frac := (arg_real / 2.0 ** exp) - 1.0; -- Number less than 1.
    END IF;
    FOR i IN 0 TO fract'high LOOP
      IF frac >= 2.0 ** (-1 - i) THEN
        fract (fract'high - i) := '1';
        frac := frac - 2.0 ** (-1 - i);
      ELSE
        fract (fract'high - i) := '0';
      END IF;
    END LOOP;
    round := false;
    CASE round_style IS
      WHEN round_nearest =>
        IF frac > roundfrac OR ((frac = roundfrac) AND fract(0) = '1') THEN
          round := true;
        END IF;
      WHEN round_inf =>
        IF frac /= 0.0 AND result(exponent_width) = '0' THEN
          round := true;
        END IF;
      WHEN round_neginf =>
        IF frac /= 0.0 AND result(exponent_width) = '1' THEN
          round := true;
        END IF;
      WHEN OTHERS =>
        NULL; -- don't round
    END CASE;
    IF (round) THEN
      IF and_reduce (fract) = '1' THEN -- fraction is all "1"
        expon := expon + 1;
        fract := (OTHERS => '0');
      ELSE
        fract := fract + 1;
      END IF;
    END IF;
    result (exponent_width - 1 DOWNTO 0) := UNRESOLVED_float(expon);
    result (-1 DOWNTO -fraction_width) := UNRESOLVED_float(fract);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- to_float (Integer)
FUNCTION to_float (
  arg : INTEGER;
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
  CONSTANT round_style : round_type := float_round_style) -- rounding option
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE arg_int : NATURAL; -- Natural version of argument
  VARIABLE expon : SIGNED (exponent_width - 1 DOWNTO 0);
  VARIABLE exptmp : SIGNED (exponent_width - 1 DOWNTO 0);
  -- Unsigned version of exp.
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
  gen_expon_base(exponent_width); -- exponent offset
  VARIABLE fract : UNSIGNED (fraction_width - 1 DOWNTO 0) := (OTHERS => '0');
  VARIABLE fracttmp : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE round : BOOLEAN;
  VARIABLE shift : NATURAL;
  VARIABLE shiftr : NATURAL;
  VARIABLE roundfrac : NATURAL; -- used in rounding
BEGIN
  IF arg < 0 THEN
    result (exponent_width) := '1';
    arg_int := - arg; -- Make it positive.
  ELSE
    result (exponent_width) := '0';
    arg_int := arg;
  END IF;
  IF arg_int = 0 THEN
    result := zerofp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSE
    -- If the number is larger than we can represent in this number system
    -- we need to return infinity.
    shift := log2(arg_int);
    IF shift > to_integer(expon_base) THEN
      -- worry about infinity
      IF result (exponent_width) = '0' THEN
        result := pos_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      ELSE
        -- return negative infinity.
        result := neg_inffp (fraction_width => fraction_width,
          exponent_width => exponent_width);
      END IF;
    ELSE -- Normal number (can't be denormal)
      -- Compute Exponent
      expon := to_signed (shift - 1, expon'length); -- positive fraction.
      -- Compute Fraction
      arg_int := arg_int - 2 ** shift; -- Subtract off the 1.0
      shiftr := shift;
      FOR I IN fract'high DOWNTO maximum (fract'high - shift + 1, 0) LOOP
        shiftr := shiftr - 1;
        IF (arg_int >= 2 ** shiftr) THEN
          arg_int := arg_int - 2 ** shiftr;
          fract(I) := '1';
        ELSE
          fract(I) := '0';
        END IF;
      END LOOP;
      -- Rounding routine
      round := false;
      IF arg_int > 0 THEN
        roundfrac := 2 ** (shiftr - 1);
        CASE round_style IS
          WHEN round_nearest =>
            IF arg_int > roundfrac OR
              ((arg_int = roundfrac) AND fract(0) = '1') THEN
              round := true;
            END IF;
          WHEN round_inf =>
            IF arg_int /= 0 AND result (exponent_width) = '0' THEN
              round := true;
            END IF;
          WHEN round_neginf =>
            IF arg_int /= 0 AND result (exponent_width) = '1' THEN
              round := true;
            END IF;
          WHEN OTHERS =>
            NULL;
        END CASE;
      END IF;
      IF round THEN
        fp_round(fract_in => fract,
        expon_in => expon,
        fract_out => fracttmp,
        expon_out => exptmp);
        fract := fracttmp;
        expon := exptmp;
      END IF;
      -- Put the number together and return
      expon(exponent_width - 1) := NOT expon(exponent_width - 1);
      result (exponent_width - 1 DOWNTO 0) := UNRESOLVED_float(expon);
      result (-1 DOWNTO -fraction_width) := UNRESOLVED_float(fract);
    END IF;
  END IF;
  RETURN result;
END FUNCTION to_float;

-- to_float (unsigned)
FUNCTION to_float (
  arg : UNSIGNED;
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
  CONSTANT round_style : round_type := float_round_style) -- rounding option
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  CONSTANT ARG_LEFT : INTEGER := ARG'length - 1;
  ALIAS XARG : UNSIGNED(ARG_LEFT DOWNTO 0) IS ARG;
  VARIABLE sarg : SIGNED (ARG_LEFT + 1 DOWNTO 0); -- signed version of arg
BEGIN
  IF arg'length < 1 THEN
    RETURN NAFP;
  END IF;
  sarg (XARG'RANGE) := SIGNED (XARG);
  sarg (sarg'high) := '0';
  result := to_float (arg => sarg,
    exponent_width => exponent_width,
    fraction_width => fraction_width,
    round_style => round_style);
  RETURN result;
END FUNCTION to_float;

-- to_float (signed)
FUNCTION to_float (
  arg : SIGNED;
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
  CONSTANT round_style : round_type := float_round_style) -- rounding option
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  CONSTANT ARG_LEFT : INTEGER := ARG'length - 1;
  ALIAS XARG : SIGNED(ARG_LEFT DOWNTO 0) IS ARG;
  VARIABLE arg_int : UNSIGNED(xarg'RANGE); -- Real version of argument
  VARIABLE argb2 : UNSIGNED(xarg'high/2 DOWNTO 0); -- log2 of input
  VARIABLE rexp : SIGNED (exponent_width - 1 DOWNTO 0);
  VARIABLE exp : SIGNED (exponent_width - 1 DOWNTO 0);
  -- signed version of exp.
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0);
  -- Unsigned version of exp.
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
  gen_expon_base(exponent_width); -- exponent offset
  VARIABLE round : BOOLEAN;
  VARIABLE fract : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE rfract : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE sign : STD_ULOGIC; -- sign bit
BEGIN
  IF arg'length < 1 THEN
    RETURN NAFP;
  END IF;
  IF Is_X (xarg) THEN
    result := (OTHERS => 'X');
  ELSIF (xarg = 0) THEN
    result := zerofp (fraction_width => fraction_width,
      exponent_width => exponent_width);
  ELSE -- Normal number (can't be denormal)
    sign := to_X01(xarg (xarg'high));
    arg_int := UNSIGNED(ABS (to_01(xarg)));
    -- Compute Exponent
    argb2 := to_unsigned(find_leftmost(arg_int, '1'), argb2'length); -- Log2
    IF argb2 > UNSIGNED(expon_base) THEN
      result := pos_inffp (fraction_width => fraction_width,
        exponent_width => exponent_width);
      result (exponent_width) := sign;
    ELSE
      exp := SIGNED(resize(argb2, exp'length));
      arg_int := shift_left (arg_int, arg_int'high - to_integer(exp));
      IF (arg_int'high > fraction_width) THEN
        fract := arg_int (arg_int'high - 1 DOWNTO (arg_int'high - fraction_width));
        round := check_round (
          fract_in => fract (0),
          sign => sign,
          remainder => arg_int((arg_int'high - fraction_width - 1)
          DOWNTO 0),
          round_style => round_style);
        IF round THEN
          fp_round(fract_in => fract,
          expon_in => exp,
          fract_out => rfract,
          expon_out => rexp);
        ELSE
          rfract := fract;
          rexp := exp;
        END IF;
      ELSE
        rexp := exp;
        rfract := (OTHERS => '0');
        rfract (fraction_width - 1 DOWNTO fraction_width - 1 - (arg_int'high - 1)) :=
        arg_int (arg_int'high - 1 DOWNTO 0);
      END IF;
      result (exponent_width) := sign;
      expon := UNSIGNED (rexp - 1);
      expon(exponent_width - 1) := NOT expon(exponent_width - 1);
      result (exponent_width - 1 DOWNTO 0) := UNRESOLVED_float(expon);
      result (-1 DOWNTO -fraction_width) := UNRESOLVED_float(rfract);
    END IF;
  END IF;
  RETURN result;
END FUNCTION to_float;

-- std_logic_vector to float
FUNCTION to_float (
  arg : STD_ULOGIC_VECTOR;
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- length of FP output fraction
  RETURN UNRESOLVED_float IS
  VARIABLE fpvar : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN
  IF arg'length < 1 THEN
    RETURN NAFP;
  END IF;
  fpvar := UNRESOLVED_float(arg);
  RETURN fpvar;
END FUNCTION to_float;

-- purpose: converts a ufixed to a floating point
FUNCTION to_float (
  arg : UNRESOLVED_ufixed; -- unsigned fixed point input
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- width of exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- width of fraction
  CONSTANT round_style : round_type := float_round_style; -- rounding
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- use ieee extensions
  RETURN UNRESOLVED_float IS
  VARIABLE sarg : sfixed (arg'high + 1 DOWNTO arg'low); -- Signed version of arg
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
BEGIN -- function to_float
  IF (arg'length < 1) THEN
    RETURN NAFP;
  END IF;
  sarg (arg'RANGE) := sfixed (arg);
  sarg (sarg'high) := '0';
  result := to_float (arg => sarg,
    exponent_width => exponent_width,
    fraction_width => fraction_width,
    round_style => round_style,
    denormalize => denormalize);
  RETURN result;
END FUNCTION to_float;

FUNCTION to_float (
  arg : UNRESOLVED_sfixed; -- signed fixed point
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width; -- length of FP output fraction
  CONSTANT round_style : round_type := float_round_style; -- rounding
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- rounding option
  RETURN UNRESOLVED_float IS
  CONSTANT integer_width : INTEGER := arg'high;
  CONSTANT in_fraction_width : INTEGER := arg'low;
  VARIABLE xresult : sfixed (integer_width DOWNTO in_fraction_width);
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE arg_int : UNSIGNED(integer_width - in_fraction_width
  DOWNTO 0); -- unsigned version of argument
  VARIABLE argx : SIGNED (integer_width - in_fraction_width DOWNTO 0);
  VARIABLE exp, exptmp : SIGNED (exponent_width + 1 DOWNTO 0);
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0);
  -- Unsigned version of exp.
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0) :=
  gen_expon_base(exponent_width); -- exponent offset
  VARIABLE fract, fracttmp : UNSIGNED (fraction_width - 1 DOWNTO 0) :=
  (OTHERS => '0');
  VARIABLE round : BOOLEAN := false;
BEGIN
  IF (arg'length < 1) THEN
    RETURN NAFP;
  END IF;
  xresult := to_01(arg, 'X');
  argx := SIGNED(to_slv(xresult));
  IF (Is_X (arg)) THEN
    result := (OTHERS => 'X');
  ELSIF (argx = 0) THEN
    result := (OTHERS => '0');
  ELSE
    result := (OTHERS => '0'); -- zero out the result
    IF argx(argx'left) = '1' THEN -- toss the sign bit
      result (exponent_width) := '1'; -- Negative number
      arg_int := UNSIGNED(to_x01(NOT STD_LOGIC_VECTOR (argx))) + 1; -- Make it positive with two's complement
    ELSE
      result (exponent_width) := '0';
      arg_int := UNSIGNED(to_x01(STD_LOGIC_VECTOR (argx))); -- new line: direct conversion to unsigned
    END IF;
    -- Compute Exponent
    exp := to_signed(find_leftmost(arg_int, '1'), exp'length); -- Log2
    IF exp + in_fraction_width > expon_base THEN -- return infinity
      result (-1 DOWNTO -fraction_width) := (OTHERS => '0');
      result (exponent_width - 1 DOWNTO 0) := (OTHERS => '1');
      RETURN result;
    ELSIF (denormalize AND
      (exp + in_fraction_width <= - resize(expon_base, exp'length))) THEN
      exp := - resize(expon_base, exp'length);
      -- shift by a constant
      arg_int := shift_left (arg_int,
        (arg_int'high + to_integer(expon_base)
        + in_fraction_width - 1));
      IF (arg_int'high > fraction_width) THEN
        fract := arg_int (arg_int'high - 1 DOWNTO (arg_int'high - fraction_width));
        round := check_round (
          fract_in => arg_int(arg_int'high - fraction_width),
          sign => result(result'high),
          remainder => arg_int((arg_int'high - fraction_width - 1)
          DOWNTO 0),
          round_style => round_style);
        IF (round) THEN
          fp_round (fract_in => arg_int (arg_int'high - 1 DOWNTO
          (arg_int'high - fraction_width)),
          expon_in => exp,
          fract_out => fract,
          expon_out => exptmp);
          exp := exptmp;
        END IF;
      ELSE
        fract (fraction_width - 1 DOWNTO fraction_width - 1 - (arg_int'high - 1)) :=
        arg_int (arg_int'high - 1 DOWNTO 0);
      END IF;
    ELSE
      arg_int := shift_left (arg_int, arg_int'high - to_integer(exp));
      exp := exp + in_fraction_width;
      IF (arg_int'high > fraction_width) THEN
        fract := arg_int (arg_int'high - 1 DOWNTO (arg_int'high - fraction_width));
        round := check_round (
          fract_in => fract(0),
          sign => result(result'high),
          remainder => arg_int((arg_int'high - fraction_width - 1)
          DOWNTO 0),
          round_style => round_style);
        IF (round) THEN
          fp_round (fract_in => fract,
          expon_in => exp,
          fract_out => fracttmp,
          expon_out => exptmp);
          fract := fracttmp;
          exp := exptmp;
        END IF;
      ELSE
        fract (fraction_width - 1 DOWNTO fraction_width - 1 - (arg_int'high - 1)) :=
        arg_int (arg_int'high - 1 DOWNTO 0);
      END IF;
    END IF;
    expon := UNSIGNED (resize(exp - 1, exponent_width));
    expon(exponent_width - 1) := NOT expon(exponent_width - 1);
    result (exponent_width - 1 DOWNTO 0) := UNRESOLVED_float(expon);
    result (-1 DOWNTO -fraction_width) := UNRESOLVED_float(fract);
  END IF;
  RETURN result;
END FUNCTION to_float;

-- size_res functions
-- Integer to float
FUNCTION to_float (
  arg : INTEGER;
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style) -- rounding option
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- real to float
FUNCTION to_float (
  arg : REAL;
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style,
      denormalize => denormalize);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- unsigned to float
FUNCTION to_float (
  arg : UNSIGNED;
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style) -- rounding option
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- signed to float
FUNCTION to_float (
  arg : SIGNED;
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style) -- rounding
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- std_ulogic_vector to float
FUNCTION to_float (
  arg : STD_ULOGIC_VECTOR;
  size_res : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- unsigned fixed point to float
FUNCTION to_float (
  arg : UNRESOLVED_ufixed; -- unsigned fixed point input
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- use ieee extensions
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style,
      denormalize => denormalize);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- signed fixed point to float
FUNCTION to_float (
  arg : UNRESOLVED_sfixed;
  size_res : UNRESOLVED_float;
  CONSTANT round_style : round_type := float_round_style; -- rounding
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- rounding option
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_float (arg => arg,
      exponent_width => size_res'high,
      fraction_width => - size_res'low,
      round_style => round_style,
      denormalize => denormalize);
    RETURN result;
  END IF;
END FUNCTION to_float;

-- to_integer (float)
FUNCTION to_integer (
  arg : UNRESOLVED_float; -- floating point input
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
  RETURN INTEGER IS
  VARIABLE validfp : valid_fpstate; -- Valid FP state
  VARIABLE frac : UNSIGNED (-arg'low DOWNTO 0); -- Fraction
  VARIABLE fract : UNSIGNED (1 - arg'low DOWNTO 0); -- Fraction
  VARIABLE expon : SIGNED (arg'high - 1 DOWNTO 0);
  VARIABLE isign : STD_ULOGIC; -- internal version of sign
  VARIABLE round : STD_ULOGIC; -- is rounding needed?
  VARIABLE result : INTEGER;
  VARIABLE base : INTEGER; -- Integer exponent
BEGIN
  validfp := classfp (arg, check_error);
  classcase : CASE validfp IS
    WHEN isx | nan | quiet_nan | pos_zero | neg_zero | pos_denormal | neg_denormal =>
      result := 0; -- return 0
    WHEN pos_inf =>
      result := INTEGER'high;
    WHEN neg_inf =>
      result := INTEGER'low;
    WHEN OTHERS =>
      break_number (
      arg => arg,
      fptyp => validfp,
      denormalize => false,
      fract => frac,
      expon => expon);
      fract (fract'high) := '0'; -- Add extra bit for 0.6 case
      fract (fract'high - 1 DOWNTO 0) := frac;
      isign := to_x01 (arg (arg'high));
      base := to_integer (expon) + 1;
      IF base <- 1 THEN
        result := 0;
      ELSIF base >= frac'high THEN
        result := to_integer (fract) * 2 ** (base - frac'high);
      ELSE -- We need to round
        IF base =- 1 THEN -- trap for 0.6 case.
          result := 0;
        ELSE
          result := to_integer (fract (frac'high DOWNTO frac'high - base));
        END IF;
        -- rounding routine
        CASE round_style IS
          WHEN round_nearest =>
            IF frac'high - base > 1 THEN
              round := fract (frac'high - base - 1) AND
                (fract (frac'high - base)
                OR (or_reduce (fract (frac'high - base - 2 DOWNTO 0))));
            ELSE
              round := fract (frac'high - base - 1) AND
                fract (frac'high - base);
            END IF;
          WHEN round_inf =>
            round := fract(frac'high - base - 1) AND NOT isign;
          WHEN round_neginf =>
            round := fract(frac'high - base - 1) AND isign;
          WHEN OTHERS =>
            round := '0';
        END CASE;
        IF round = '1' THEN
          result := result + 1;
        END IF;
      END IF;
      IF isign = '1' THEN
        result := - result;
      END IF;
  END CASE classcase;
  RETURN result;
END FUNCTION to_integer;

-- to_unsigned (float)
FUNCTION to_unsigned (
  arg : UNRESOLVED_float; -- floating point input
  CONSTANT size : NATURAL; -- length of output
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
  RETURN UNSIGNED IS
  VARIABLE validfp : valid_fpstate; -- Valid FP state
  VARIABLE frac : UNSIGNED (size - 1 DOWNTO 0); -- Fraction
  VARIABLE sign : STD_ULOGIC; -- not used
BEGIN
  validfp := classfp (arg, check_error);
  classcase : CASE validfp IS
    WHEN isx | nan | quiet_nan =>
      frac := (OTHERS => 'X');
    WHEN pos_zero | neg_inf | neg_zero | neg_normal | pos_denormal | neg_denormal =>
      frac := (OTHERS => '0'); -- return 0
    WHEN pos_inf =>
      frac := (OTHERS => '1');
    WHEN OTHERS =>
      float_to_unsigned (
      arg => arg,
      frac => frac,
      sign => sign,
      denormalize => false,
      bias => 0,
      round_style => round_style);
  END CASE classcase;
  RETURN (frac);
END FUNCTION to_unsigned;

-- to_signed (float)
FUNCTION to_signed (
  arg : UNRESOLVED_float; -- floating point input
  CONSTANT size : NATURAL; -- length of output
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
  RETURN SIGNED IS
  VARIABLE sign : STD_ULOGIC; -- true if negative
  VARIABLE validfp : valid_fpstate; -- Valid FP state
  VARIABLE frac : UNSIGNED (size - 1 DOWNTO 0); -- Fraction
  VARIABLE result : SIGNED (size - 1 DOWNTO 0);
BEGIN
  validfp := classfp (arg, check_error);
  classcase : CASE validfp IS
    WHEN isx | nan | quiet_nan =>
      result := (OTHERS => 'X');
    WHEN pos_zero | neg_zero | pos_denormal | neg_denormal =>
      result := (OTHERS => '0'); -- return 0
    WHEN pos_inf =>
      result := (OTHERS => '1');
      result (result'high) := '0';
    WHEN neg_inf =>
      result := (OTHERS => '0');
      result (result'high) := '1';
    WHEN OTHERS =>
      float_to_unsigned (
      arg => arg,
      sign => sign,
      frac => frac,
      denormalize => false,
      bias => 0,
      round_style => round_style);
      result (size - 1) := '0';
      result (size - 2 DOWNTO 0) := SIGNED(frac (size - 2 DOWNTO 0));
      IF sign = '1' THEN
        -- Because the most negative signed number is 1 less than the most
        -- positive signed number, we need this code.
        IF frac(frac'high) = '1' THEN -- return most negative number
          result := (OTHERS => '0');
          result (result'high) := '1';
        ELSE
          result := - result;
        END IF;
      ELSE
        IF frac(frac'high) = '1' THEN -- return most positive number
          result := (OTHERS => '1');
          result (result'high) := '0';
        END IF;
      END IF;
  END CASE classcase;
  RETURN result;
END FUNCTION to_signed;

-- purpose: Converts a float to ufixed
FUNCTION to_ufixed (
  arg : UNRESOLVED_float; -- fp input
  CONSTANT left_index : INTEGER; -- integer part
  CONSTANT right_index : INTEGER; -- fraction part
  CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
  CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN UNRESOLVED_ufixed IS
  CONSTANT fraction_width : INTEGER := - mine(arg'low, arg'low); -- length of FP output fraction
  CONSTANT exponent_width : INTEGER := arg'high; -- length of FP output exponent
  CONSTANT size : INTEGER := left_index - right_index + 4; -- unsigned size
  VARIABLE expon_base : INTEGER; -- exponent offset
  VARIABLE validfp : valid_fpstate; -- Valid FP state
  VARIABLE exp : INTEGER; -- Exponent
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0); -- Vectorized exponent
  -- Base to divide fraction by
  VARIABLE frac : UNSIGNED (size - 1 DOWNTO 0) := (OTHERS => '0'); -- Fraction
  VARIABLE frac_shift : UNSIGNED (size - 1 DOWNTO 0); -- Fraction shifted
  VARIABLE shift : INTEGER;
  VARIABLE result_big : UNRESOLVED_ufixed (left_index DOWNTO right_index - 3);
  VARIABLE result : UNRESOLVED_ufixed (left_index DOWNTO right_index); -- result
BEGIN -- function to_ufixed
  validfp := classfp (arg, check_error);
  classcase : CASE validfp IS
    WHEN isx | nan | quiet_nan =>
      frac := (OTHERS => 'X');
    WHEN pos_zero | neg_inf | neg_zero | neg_normal | neg_denormal =>
      frac := (OTHERS => '0'); -- return 0
    WHEN pos_inf =>
      frac := (OTHERS => '1'); -- always saturate
    WHEN OTHERS =>
      expon_base := 2 ** (exponent_width - 1) - 1; -- exponent offset
      -- Figure out the fraction
      IF (validfp = pos_denormal) AND denormalize THEN
        exp := - expon_base + 1;
        frac (frac'high) := '0'; -- Remove the "1.0".
      ELSE
        -- exponent /= '0', normal floating point
        expon := UNSIGNED(arg (exponent_width - 1 DOWNTO 0));
        expon(exponent_width - 1) := NOT expon(exponent_width - 1);
        exp := to_integer (SIGNED(expon)) + 1;
        frac (frac'high) := '1'; -- Add the "1.0".
      END IF;
      shift := (frac'high - 3 + right_index) - exp;
      IF fraction_width > frac'high THEN -- Can only use size-2 bits
        frac (frac'high - 1 DOWNTO 0) := UNSIGNED (to_slv (arg(-1 DOWNTO
        - frac'high)));
      ELSE -- can use all bits
        frac (frac'high - 1 DOWNTO frac'high - fraction_width) :=
        UNSIGNED (to_slv (arg(-1 DOWNTO -fraction_width)));
      END IF;
      frac_shift := frac SRL shift;
      IF shift < 0 THEN -- Overflow
        frac := (OTHERS => '1');
      ELSE
        frac := frac_shift;
      END IF;
  END CASE classcase;
  result_big := to_ufixed (
    arg => STD_ULOGIC_VECTOR(frac),
    left_index => left_index,
    right_index => (right_index - 3));
  result := resize (arg => result_big,
    left_index => left_index,
    right_index => right_index,
    round_style => round_style,
    overflow_style => overflow_style);
  RETURN result;
END FUNCTION to_ufixed;

-- purpose: Converts a float to sfixed
FUNCTION to_sfixed (
  arg : UNRESOLVED_float; -- fp input
  CONSTANT left_index : INTEGER; -- integer part
  CONSTANT right_index : INTEGER; -- fraction part
  CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
  CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN UNRESOLVED_sfixed IS
  CONSTANT fraction_width : INTEGER := - mine(arg'low, arg'low); -- length of FP output fraction
  CONSTANT exponent_width : INTEGER := arg'high; -- length of FP output exponent
  CONSTANT size : INTEGER := left_index - right_index + 4; -- unsigned size
  VARIABLE expon_base : INTEGER; -- exponent offset
  VARIABLE validfp : valid_fpstate; -- Valid FP state
  VARIABLE exp : INTEGER; -- Exponent
  VARIABLE sign : BOOLEAN; -- true if negative
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0); -- Vectorized exponent
  -- Base to divide fraction by
  VARIABLE frac : UNSIGNED (size - 2 DOWNTO 0) := (OTHERS => '0'); -- Fraction
  VARIABLE frac_shift : UNSIGNED (size - 2 DOWNTO 0); -- Fraction shifted
  VARIABLE shift : INTEGER;
  VARIABLE rsigned : SIGNED (size - 1 DOWNTO 0); -- signed version of result
  VARIABLE result_big : UNRESOLVED_sfixed (left_index DOWNTO right_index - 3);
  VARIABLE result : UNRESOLVED_sfixed (left_index DOWNTO right_index)
  := (OTHERS => '0'); -- result
BEGIN -- function to_sfixed
  validfp := classfp (arg, check_error);
  classcase : CASE validfp IS
    WHEN isx | nan | quiet_nan =>
      result := (OTHERS => 'X');
    WHEN pos_zero | neg_zero =>
      result := (OTHERS => '0'); -- return 0
    WHEN neg_inf =>
      result (left_index) := '1'; -- return smallest negative number
    WHEN pos_inf =>
      result := (OTHERS => '1'); -- return largest number
      result (left_index) := '0';
    WHEN OTHERS =>
      expon_base := 2 ** (exponent_width - 1) - 1; -- exponent offset
      IF arg(exponent_width) = '0' THEN
        sign := false;
      ELSE
        sign := true;
      END IF;
      -- Figure out the fraction
      IF (validfp = pos_denormal OR validfp = neg_denormal)
        AND denormalize THEN
        exp := - expon_base + 1;
        frac (frac'high) := '0'; -- Add the "1.0".
      ELSE
        -- exponent /= '0', normal floating point
        expon := UNSIGNED(arg (exponent_width - 1 DOWNTO 0));
        expon(exponent_width - 1) := NOT expon(exponent_width - 1);
        exp := to_integer (SIGNED(expon)) + 1;
        frac (frac'high) := '1'; -- Add the "1.0".
      END IF;
      shift := (frac'high - 3 + right_index) - exp;
      IF fraction_width > frac'high THEN -- Can only use size-2 bits
        frac (frac'high - 1 DOWNTO 0) := UNSIGNED (to_slv (arg(-1 DOWNTO
        - frac'high)));
      ELSE -- can use all bits
        frac (frac'high - 1 DOWNTO frac'high - fraction_width) :=
        UNSIGNED (to_slv (arg(-1 DOWNTO -fraction_width)));
      END IF;
      frac_shift := frac SRL shift;
      IF shift < 0 THEN -- Overflow
        frac := (OTHERS => '1');
      ELSE
        frac := frac_shift;
      END IF;
      IF NOT sign THEN
        rsigned := SIGNED("0" & frac);
      ELSE
        rsigned := - (SIGNED("0" & frac));
      END IF;
      result_big := to_sfixed (
        arg => STD_LOGIC_VECTOR(rsigned),
        left_index => left_index,
        right_index => (right_index - 3));
      result := resize (arg => result_big,
        left_index => left_index,
        right_index => right_index,
        round_style => round_style,
        overflow_style => overflow_style);
  END CASE classcase;
  RETURN result;
END FUNCTION to_sfixed;

-- size_res versions
-- float to unsigned
FUNCTION to_unsigned (
  arg : UNRESOLVED_float; -- floating point input
  size_res : UNSIGNED;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
  RETURN UNSIGNED IS
  VARIABLE result : UNSIGNED (size_res'RANGE);
BEGIN
  IF (SIZE_RES'length = 0) THEN
    RETURN result;
  ELSE
    result := to_unsigned (
      arg => arg,
      size => size_res'length,
      round_style => round_style,
      check_error => check_error);
    RETURN result;
  END IF;
END FUNCTION to_unsigned;

-- float to signed
FUNCTION to_signed (
  arg : UNRESOLVED_float; -- floating point input
  size_res : SIGNED;
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error) -- check for errors
  RETURN SIGNED IS
  VARIABLE result : SIGNED (size_res'RANGE);
BEGIN
  IF (SIZE_RES'length = 0) THEN
    RETURN result;
  ELSE
    result := to_signed (
      arg => arg,
      size => size_res'length,
      round_style => round_style,
      check_error => check_error);
    RETURN result;
  END IF;
END FUNCTION to_signed;

-- purpose: Converts a float to unsigned fixed point
FUNCTION to_ufixed (
  arg : UNRESOLVED_float; -- fp input
  size_res : UNRESOLVED_ufixed;
  CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
  CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN UNRESOLVED_ufixed IS
  VARIABLE result : UNRESOLVED_ufixed (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_ufixed (
      arg => arg,
      left_index => size_res'high,
      right_index => size_res'low,
      overflow_style => overflow_style,
      round_style => round_style,
      check_error => check_error,
      denormalize => denormalize);
    RETURN result;
  END IF;
END FUNCTION to_ufixed;

-- float to signed fixed point
FUNCTION to_sfixed (
  arg : UNRESOLVED_float; -- fp input
  size_res : UNRESOLVED_sfixed;
  CONSTANT overflow_style : fixed_overflow_style_type := fixed_overflow_style; -- saturate
  CONSTANT round_style : fixed_round_style_type := fixed_round_style; -- rounding
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN UNRESOLVED_sfixed IS
  VARIABLE result : UNRESOLVED_sfixed (size_res'left DOWNTO size_res'right);
BEGIN
  IF (result'length < 1) THEN
    RETURN result;
  ELSE
    result := to_sfixed (
      arg => arg,
      left_index => size_res'high,
      right_index => size_res'low,
      overflow_style => overflow_style,
      round_style => round_style,
      check_error => check_error,
      denormalize => denormalize);
    RETURN result;
  END IF;
END FUNCTION to_sfixed;

-- to_real (float)
-- typically not Synthesizable unless the input is a constant.
FUNCTION to_real (
  arg : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN REAL IS
  CONSTANT fraction_width : INTEGER := - mine(arg'low, arg'low); -- length of FP output fraction
  CONSTANT exponent_width : INTEGER := arg'high; -- length of FP output exponent
  VARIABLE sign : REAL; -- Sign, + or - 1
  VARIABLE exp : INTEGER; -- Exponent
  VARIABLE expon_base : INTEGER; -- exponent offset
  VARIABLE frac : REAL := 0.0; -- Fraction
  VARIABLE validfp : valid_fpstate; -- Valid FP state
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0)
  := (OTHERS => '1'); -- Vectorized exponent
BEGIN
  validfp := classfp (arg, check_error);
  classcase : CASE validfp IS
    WHEN isx | pos_zero | neg_zero | nan | quiet_nan =>
      RETURN 0.0;
    WHEN neg_inf =>
      RETURN REAL'low; -- Negative infinity.
    WHEN pos_inf =>
      RETURN REAL'high; -- Positive infinity
    WHEN OTHERS =>
      expon_base := 2 ** (exponent_width - 1) - 1;
      IF to_X01(arg(exponent_width)) = '0' THEN
        sign := 1.0;
      ELSE
        sign := - 1.0;
      END IF;
      -- Figure out the fraction
      FOR i IN 0 TO fraction_width - 1 LOOP
        IF to_X01(arg (-1 - i)) = '1' THEN
          frac := frac + (2.0 ** (-1 - i));
        END IF;
      END LOOP; -- i
      IF validfp = pos_normal OR validfp = neg_normal OR NOT denormalize THEN
        -- exponent /= '0', normal floating point
        expon := UNSIGNED(arg (exponent_width - 1 DOWNTO 0));
        expon(exponent_width - 1) := NOT expon(exponent_width - 1);
        exp := to_integer (SIGNED(expon)) + 1;
        sign := sign * (2.0 ** exp) * (1.0 + frac);
      ELSE -- exponent = '0', IEEE extended floating point
        exp := 1 - expon_base;
        sign := sign * (2.0 ** exp) * frac;
      END IF;
      RETURN sign;
  END CASE classcase;
END FUNCTION to_real;

-- For Verilog compatability
FUNCTION realtobits (arg : REAL) RETURN STD_ULOGIC_VECTOR IS
  VARIABLE result : float64; -- 64 bit floating point
BEGIN
  result := to_float (arg => arg,
    exponent_width => float64'high,
    fraction_width => - float64'low);
  RETURN to_sulv (result);
END FUNCTION realtobits;

FUNCTION bitstoreal (arg : STD_ULOGIC_VECTOR) RETURN REAL IS
  VARIABLE arg64 : float64; -- arg converted to float
BEGIN
  arg64 := to_float (arg => arg,
    exponent_width => float64'high,
    fraction_width => - float64'low);
  RETURN to_real (arg64);
END FUNCTION bitstoreal;

-- purpose: Removes meta-logical values from FP string
FUNCTION to_01 (
  arg : UNRESOLVED_float; -- floating point input
  XMAP : STD_LOGIC := '0')
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (arg'RANGE);
BEGIN -- function to_01
  IF (arg'length < 1) THEN
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & "TO_01: null detected, returning NULL"
      SEVERITY warning;
    RETURN NAFP;
  END IF;
  result := UNRESOLVED_float (STD_LOGIC_VECTOR(to_01(UNSIGNED(to_slv(arg)), XMAP)));
  RETURN result;
END FUNCTION to_01;

FUNCTION Is_X
  (arg : UNRESOLVED_float)
  RETURN BOOLEAN IS
BEGIN
  RETURN Is_X (to_slv(arg));
END FUNCTION Is_X;

FUNCTION to_X01 (arg : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (arg'RANGE);
BEGIN
  IF (arg'length < 1) THEN
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & "TO_X01: null detected, returning NULL"
      SEVERITY warning;
    RETURN NAFP;
  ELSE
    result := UNRESOLVED_float (to_X01(to_slv(arg)));
    RETURN result;
  END IF;
END FUNCTION to_X01;

FUNCTION to_X01Z (arg : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (arg'RANGE);
BEGIN
  IF (arg'length < 1) THEN
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & "TO_X01Z: null detected, returning NULL"
      SEVERITY warning;
    RETURN NAFP;
  ELSE
    result := UNRESOLVED_float (to_X01Z(to_slv(arg)));
    RETURN result;
  END IF;
END FUNCTION to_X01Z;

FUNCTION to_UX01 (arg : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (arg'RANGE);
BEGIN
  IF (arg'length < 1) THEN
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & "TO_UX01: null detected, returning NULL"
      SEVERITY warning;
    RETURN NAFP;
  ELSE
    result := UNRESOLVED_float (to_UX01(to_slv(arg)));
    RETURN result;
  END IF;
END FUNCTION to_UX01;

-- These allows the base math functions to use the default values
-- of their parameters.  Thus they do full IEEE floating point.
FUNCTION "+" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
BEGIN
  RETURN add (l, r);
END FUNCTION "+";

FUNCTION "-" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
BEGIN
  RETURN subtract (l, r);
END FUNCTION "-";

FUNCTION "*" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
BEGIN
  RETURN multiply (l, r);
END FUNCTION "*";

FUNCTION "/" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
BEGIN
  RETURN divide (l, r);
END FUNCTION "/";

FUNCTION "rem" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
BEGIN
  RETURN remainder (l, r);
END FUNCTION "rem";

FUNCTION "mod" (l, r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
BEGIN
  RETURN modulo (l, r);
END FUNCTION "mod";

-- overloaded versions
FUNCTION "+" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN add (l, r_float);
END FUNCTION "+";

FUNCTION "+" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN add (l_float, r);
END FUNCTION "+";

FUNCTION "+" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN add (l, r_float);
END FUNCTION "+";

FUNCTION "+" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN add (l_float, r);
END FUNCTION "+";

FUNCTION "-" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN subtract (l, r_float);
END FUNCTION "-";

FUNCTION "-" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN subtract (l_float, r);
END FUNCTION "-";

FUNCTION "-" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN subtract (l, r_float);
END FUNCTION "-";

FUNCTION "-" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN subtract (l_float, r);
END FUNCTION "-";

FUNCTION "*" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN multiply (l, r_float);
END FUNCTION "*";

FUNCTION "*" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN multiply (l_float, r);
END FUNCTION "*";

FUNCTION "*" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN multiply (l, r_float);
END FUNCTION "*";

FUNCTION "*" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN multiply (l_float, r);
END FUNCTION "*";

FUNCTION "/" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN divide (l, r_float);
END FUNCTION "/";

FUNCTION "/" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN divide (l_float, r);
END FUNCTION "/";

FUNCTION "/" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN divide (l, r_float);
END FUNCTION "/";

FUNCTION "/" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN divide (l_float, r);
END FUNCTION "/";

FUNCTION "rem" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN remainder (l, r_float);
END FUNCTION "rem";

FUNCTION "rem" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN remainder (l_float, r);
END FUNCTION "rem";

FUNCTION "rem" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN remainder (l, r_float);
END FUNCTION "rem";

FUNCTION "rem" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN remainder (l_float, r);
END FUNCTION "rem";

FUNCTION "mod" (l : UNRESOLVED_float; r : REAL) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN modulo (l, r_float);
END FUNCTION "mod";

FUNCTION "mod" (l : REAL; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN modulo (l_float, r);
END FUNCTION "mod";

FUNCTION "mod" (l : UNRESOLVED_float; r : INTEGER) RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN modulo (l, r_float);
END FUNCTION "mod";

FUNCTION "mod" (l : INTEGER; r : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN modulo (l_float, r);
END FUNCTION "mod";

FUNCTION "=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN eq (l, r_float);
END FUNCTION "=";

FUNCTION "/=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN ne (l, r_float);
END FUNCTION "/=";

FUNCTION ">=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN ge (l, r_float);
END FUNCTION ">=";

FUNCTION "<=" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN le (l, r_float);
END FUNCTION "<=";

FUNCTION ">" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN gt (l, r_float);
END FUNCTION ">";

FUNCTION "<" (l : UNRESOLVED_float; r : REAL) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN lt (l, r_float);
END FUNCTION "<";

FUNCTION "=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN eq (l_float, r);
END FUNCTION "=";

FUNCTION "/=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN ne (l_float, r);
END FUNCTION "/=";

FUNCTION ">=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN ge (l_float, r);
END FUNCTION ">=";

FUNCTION "<=" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN le (l_float, r);
END FUNCTION "<=";

FUNCTION ">" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN gt (l_float, r);
END FUNCTION ">";

FUNCTION "<" (l : REAL; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN lt (l_float, r);
END FUNCTION "<";

FUNCTION "=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN eq (l, r_float);
END FUNCTION "=";

FUNCTION "/=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN ne (l, r_float);
END FUNCTION "/=";

FUNCTION ">=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN ge (l, r_float);
END FUNCTION ">=";

FUNCTION "<=" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN le (l, r_float);
END FUNCTION "<=";

FUNCTION ">" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN gt (l, r_float);
END FUNCTION ">";

FUNCTION "<" (l : UNRESOLVED_float; r : INTEGER) RETURN BOOLEAN IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN lt (l, r_float);
END FUNCTION "<";

FUNCTION "=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN eq (l_float, r);
END FUNCTION "=";

FUNCTION "/=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN ne (l_float, r);
END FUNCTION "/=";

FUNCTION ">=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN ge (l_float, r);
END FUNCTION ">=";

FUNCTION "<=" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN le (l_float, r);
END FUNCTION "<=";

FUNCTION ">" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN gt (l_float, r);
END FUNCTION ">";

FUNCTION "<" (l : INTEGER; r : UNRESOLVED_float) RETURN BOOLEAN IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float(l, r'high, -r'low);
  RETURN lt (l_float, r);
END FUNCTION "<";

-- ?= overloads
FUNCTION \?=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?=\ (l, r_float);
END FUNCTION \?=\;

FUNCTION \?/=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?/=\ (l, r_float);
END FUNCTION \?/=\;

FUNCTION \?>\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?>\ (l, r_float);
END FUNCTION \?>\;

FUNCTION \?>=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?>=\ (l, r_float);
END FUNCTION \?>=\;

FUNCTION \?<\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?<\ (l, r_float);
END FUNCTION \?<\;

FUNCTION \?<=\ (l : UNRESOLVED_float; r : REAL) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?<=\ (l, r_float);
END FUNCTION \?<=\;

-- real and float
FUNCTION \?=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?=\ (l_float, r);
END FUNCTION \?=\;

FUNCTION \?/=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?/=\ (l_float, r);
END FUNCTION \?/=\;

FUNCTION \?>\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?>\ (l_float, r);
END FUNCTION \?>\;

FUNCTION \?>=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?>=\ (l_float, r);
END FUNCTION \?>=\;

FUNCTION \?<\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?<\ (l_float, r);
END FUNCTION \?<\;

FUNCTION \?<=\ (l : REAL; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?<=\ (l_float, r);
END FUNCTION \?<=\;

-- ?= overloads
FUNCTION \?=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?=\ (l, r_float);
END FUNCTION \?=\;

FUNCTION \?/=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?/=\ (l, r_float);
END FUNCTION \?/=\;

FUNCTION \?>\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?>\ (l, r_float);
END FUNCTION \?>\;

FUNCTION \?>=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?>=\ (l, r_float);
END FUNCTION \?>=\;

FUNCTION \?<\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?<\ (l, r_float);
END FUNCTION \?<\;

FUNCTION \?<=\ (l : UNRESOLVED_float; r : INTEGER) RETURN STD_ULOGIC IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN \?<=\ (l, r_float);
END FUNCTION \?<=\;

-- integer and float
FUNCTION \?=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?=\ (l_float, r);
END FUNCTION \?=\;

FUNCTION \?/=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?/=\ (l_float, r);
END FUNCTION \?/=\;

FUNCTION \?>\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?>\ (l_float, r);
END FUNCTION \?>\;

FUNCTION \?>=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?>=\ (l_float, r);
END FUNCTION \?>=\;

FUNCTION \?<\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?<\ (l_float, r);
END FUNCTION \?<\;

FUNCTION \?<=\ (l : INTEGER; r : UNRESOLVED_float) RETURN STD_ULOGIC IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN \?<=\ (l_float, r);
END FUNCTION \?<=\;

-- minimum and maximum overloads
FUNCTION minimum (l : UNRESOLVED_float; r : REAL)
  RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN minimum (l, r_float);
END FUNCTION minimum;

FUNCTION maximum (l : UNRESOLVED_float; r : REAL)
  RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN maximum (l, r_float);
END FUNCTION maximum;

FUNCTION minimum (l : REAL; r : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN minimum (l_float, r);
END FUNCTION minimum;

FUNCTION maximum (l : REAL; r : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN maximum (l_float, r);
END FUNCTION maximum;

FUNCTION minimum (l : UNRESOLVED_float; r : INTEGER)
  RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN minimum (l, r_float);
END FUNCTION minimum;

FUNCTION maximum (l : UNRESOLVED_float; r : INTEGER)
  RETURN UNRESOLVED_float IS
  VARIABLE r_float : UNRESOLVED_float (l'RANGE);
BEGIN
  r_float := to_float (r, l'high, -l'low);
  RETURN maximum (l, r_float);
END FUNCTION maximum;

FUNCTION minimum (l : INTEGER; r : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN minimum (l_float, r);
END FUNCTION minimum;

FUNCTION maximum (l : INTEGER; r : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE l_float : UNRESOLVED_float (r'RANGE);
BEGIN
  l_float := to_float (l, r'high, -r'low);
  RETURN maximum (l_float, r);
END FUNCTION maximum;

----------------------------------------------------------------------------
-- logical functions
----------------------------------------------------------------------------
FUNCTION "not" (L : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  RESULT := NOT to_sulv(L);
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "not";

FUNCTION "and" (L, R : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RESULT := to_sulv(L) AND to_sulv(R);
  ELSE
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & """and"": Range error L'RANGE /= R'RANGE"
      SEVERITY warning;
    RESULT := (OTHERS => 'X');
  END IF;
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "and";

FUNCTION "or" (L, R : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RESULT := to_sulv(L) OR to_sulv(R);
  ELSE
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & """or"": Range error L'RANGE /= R'RANGE"
      SEVERITY warning;
    RESULT := (OTHERS => 'X');
  END IF;
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "or";

FUNCTION "nand" (L, R : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RESULT := to_sulv(L) NAND to_sulv(R);
  ELSE
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & """nand"": Range error L'RANGE /= R'RANGE"
      SEVERITY warning;
    RESULT := (OTHERS => 'X');
  END IF;
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "nand";

FUNCTION "nor" (L, R : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RESULT := to_sulv(L) NOR to_sulv(R);
  ELSE
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & """nor"": Range error L'RANGE /= R'RANGE"
      SEVERITY warning;
    RESULT := (OTHERS => 'X');
  END IF;
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "nor";

FUNCTION "xor" (L, R : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RESULT := to_sulv(L) XOR to_sulv(R);
  ELSE
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & """xor"": Range error L'RANGE /= R'RANGE"
      SEVERITY warning;
    RESULT := (OTHERS => 'X');
  END IF;
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "xor";

FUNCTION "xnor" (L, R : UNRESOLVED_float) RETURN UNRESOLVED_float IS
  VARIABLE RESULT : STD_ULOGIC_VECTOR(L'length - 1 DOWNTO 0); -- force downto
BEGIN
  IF (L'high = R'high AND L'low = R'low) THEN
    RESULT := to_sulv(L) XNOR to_sulv(R);
  ELSE
    ASSERT NO_WARNING
    REPORT float_pkg'instance_name
      & """xnor"": Range error L'RANGE /= R'RANGE"
      SEVERITY warning;
    RESULT := (OTHERS => 'X');
  END IF;
  RETURN to_float (RESULT, L'high, -L'low);
END FUNCTION "xnor";

-- Vector and std_ulogic functions, same as functions in numeric_std
FUNCTION "and" (L : STD_ULOGIC; R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (R'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L AND R(i);
  END LOOP;
  RETURN result;
END FUNCTION "and";

FUNCTION "and" (L : UNRESOLVED_float; R : STD_ULOGIC)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (L'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L(i) AND R;
  END LOOP;
  RETURN result;
END FUNCTION "and";

FUNCTION "or" (L : STD_ULOGIC; R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (R'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L OR R(i);
  END LOOP;
  RETURN result;
END FUNCTION "or";

FUNCTION "or" (L : UNRESOLVED_float; R : STD_ULOGIC)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (L'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L(i) OR R;
  END LOOP;
  RETURN result;
END FUNCTION "or";

FUNCTION "nand" (L : STD_ULOGIC; R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (R'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L NAND R(i);
  END LOOP;
  RETURN result;
END FUNCTION "nand";

FUNCTION "nand" (L : UNRESOLVED_float; R : STD_ULOGIC)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (L'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L(i) NAND R;
  END LOOP;
  RETURN result;
END FUNCTION "nand";

FUNCTION "nor" (L : STD_ULOGIC; R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (R'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L NOR R(i);
  END LOOP;
  RETURN result;
END FUNCTION "nor";

FUNCTION "nor" (L : UNRESOLVED_float; R : STD_ULOGIC)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (L'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L(i) NOR R;
  END LOOP;
  RETURN result;
END FUNCTION "nor";

FUNCTION "xor" (L : STD_ULOGIC; R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (R'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L XOR R(i);
  END LOOP;
  RETURN result;
END FUNCTION "xor";

FUNCTION "xor" (L : UNRESOLVED_float; R : STD_ULOGIC)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (L'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L(i) XOR R;
  END LOOP;
  RETURN result;
END FUNCTION "xor";

FUNCTION "xnor" (L : STD_ULOGIC; R : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (R'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L XNOR R(i);
  END LOOP;
  RETURN result;
END FUNCTION "xnor";

FUNCTION "xnor" (L : UNRESOLVED_float; R : STD_ULOGIC)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (L'RANGE);
BEGIN
  FOR i IN result'RANGE LOOP
    result(i) := L(i) XNOR R;
  END LOOP;
  RETURN result;
END FUNCTION "xnor";

-- Reduction operator_reduces, same as numeric_std functions

FUNCTION and_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC IS
BEGIN
  RETURN and_reduce (to_sulv(l));
END FUNCTION and_reduce;

FUNCTION nand_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC IS
BEGIN
  RETURN nand_reduce (to_sulv(l));
END FUNCTION nand_reduce;

FUNCTION or_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC IS
BEGIN
  RETURN or_reduce (to_sulv(l));
END FUNCTION or_reduce;

FUNCTION nor_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC IS
BEGIN
  RETURN nor_reduce (to_sulv(l));
END FUNCTION nor_reduce;

FUNCTION xor_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC IS
BEGIN
  RETURN xor_reduce (to_sulv(l));
END FUNCTION xor_reduce;

FUNCTION xnor_reduce (l : UNRESOLVED_float) RETURN STD_ULOGIC IS
BEGIN
  RETURN xnor_reduce (to_sulv(l));
END FUNCTION xnor_reduce;

-----------------------------------------------------------------------------
-- Recommended Functions from the IEEE 754 Appendix
-----------------------------------------------------------------------------
-- returns x with the sign of y.
FUNCTION Copysign (
  x, y : UNRESOLVED_float) -- floating point input
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN y(y'high) & x (x'high - 1 DOWNTO x'low);
END FUNCTION Copysign;

-- Returns y * 2**n for integral values of N without computing 2**n
FUNCTION Scalb (
  y : UNRESOLVED_float; -- floating point input
  N : INTEGER; -- exponent to add    
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(y'low, y'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := y'high; -- length of FP output exponent
  VARIABLE arg, result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width); -- internal argument
  VARIABLE expon : SIGNED (exponent_width - 1 DOWNTO 0); -- Vectorized exp
  VARIABLE exp : SIGNED (exponent_width DOWNTO 0);
  VARIABLE ufract : UNSIGNED (fraction_width DOWNTO 0);
  CONSTANT expon_base : SIGNED (exponent_width - 1 DOWNTO 0)
  := gen_expon_base(exponent_width); -- exponent offset
  VARIABLE fptype : valid_fpstate;
BEGIN
  -- This can be done by simply adding N to the exponent.
  arg := to_01 (y, 'X');
  fptype := classfp(arg, check_error);
  classcase : CASE fptype IS
    WHEN isx =>
      result := (OTHERS => 'X');
    WHEN nan | quiet_nan =>
      -- Return quiet NAN, IEEE754-1985-7.1,1
      result := qnanfp (fraction_width => fraction_width,
        exponent_width => exponent_width);
    WHEN OTHERS =>
      break_number (
      arg => arg,
      fptyp => fptype,
      denormalize => denormalize,
      fract => ufract,
      expon => expon);
      exp := resize (expon, exp'length) + N;
      result := normalize (
        fract => ufract,
        expon => exp,
        sign => to_x01 (arg (arg'high)),
        fraction_width => fraction_width,
        exponent_width => exponent_width,
        round_style => round_style,
        denormalize => denormalize,
        nguard => 0);
  END CASE classcase;
  RETURN result;
END FUNCTION Scalb;

-- Returns y * 2**n for integral values of N without computing 2**n
FUNCTION Scalb (
  y : UNRESOLVED_float; -- floating point input
  N : SIGNED; -- exponent to add    
  CONSTANT round_style : round_type := float_round_style; -- rounding option
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize) -- Use IEEE extended FP
  RETURN UNRESOLVED_float IS
  VARIABLE n_int : INTEGER;
BEGIN
  n_int := to_integer(N);
  RETURN Scalb (y => y,
  N => n_int,
  round_style => round_style,
  check_error => check_error,
  denormalize => denormalize);
END FUNCTION Scalb;

-- returns the unbiased exponent of x
FUNCTION Logb (
  x : UNRESOLVED_float) -- floating point input
  RETURN INTEGER IS
  CONSTANT fraction_width : NATURAL := - mine (x'low, x'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := x'high; -- length of FP output exponent
  VARIABLE result : INTEGER; -- result
  VARIABLE arg : UNRESOLVED_float (exponent_width DOWNTO -fraction_width); -- internal argument
  VARIABLE expon : SIGNED (exponent_width - 1 DOWNTO 0);
  VARIABLE fract : UNSIGNED (fraction_width DOWNTO 0);
  CONSTANT expon_base : INTEGER := 2 ** (exponent_width - 1) - 1; -- exponent
  -- offset +1
  VARIABLE fptype : valid_fpstate;
BEGIN
  -- Just return the exponent.
  arg := to_01 (x, 'X');
  fptype := classfp(arg);
  classcase : CASE fptype IS
    WHEN isx | nan | quiet_nan =>
      -- Return quiet NAN, IEEE754-1985-7.1,1
      result := 0;
    WHEN pos_denormal | neg_denormal =>
      fract (fraction_width) := '0';
      fract (fraction_width - 1 DOWNTO 0) :=
      UNSIGNED (to_slv(arg(-1 DOWNTO -fraction_width)));
      result := find_leftmost (fract, '1') -- Find the first "1"
        - fraction_width; -- subtract the length we want
      result := - expon_base + 1 + result;
    WHEN OTHERS =>
      expon := SIGNED(arg (exponent_width - 1 DOWNTO 0));
      expon(exponent_width - 1) := NOT expon(exponent_width - 1);
      expon := expon + 1;
      result := to_integer (expon);
  END CASE classcase;
  RETURN result;
END FUNCTION Logb;

-- returns the unbiased exponent of x
FUNCTION Logb (
  x : UNRESOLVED_float) -- floating point input
  RETURN SIGNED IS
  CONSTANT exponent_width : NATURAL := x'high; -- length of FP output exponent
  VARIABLE result : SIGNED (exponent_width - 1 DOWNTO 0); -- result
BEGIN
  -- Just return the exponent.
  result := to_signed (Logb (x), exponent_width);
  RETURN result;
END FUNCTION Logb;

-- returns the next representable neighbor of x in the direction toward y
FUNCTION Nextafter (
  x, y : UNRESOLVED_float; -- floating point input
  CONSTANT check_error : BOOLEAN := float_check_error; -- check for errors
  CONSTANT denormalize : BOOLEAN := float_denormalize)
  RETURN UNRESOLVED_float IS
  CONSTANT fraction_width : NATURAL := - mine(x'low, x'low); -- length of FP output fraction
  CONSTANT exponent_width : NATURAL := x'high; -- length of FP output exponent
  FUNCTION "=" (
    l, r : UNRESOLVED_float) -- inputs
    RETURN BOOLEAN IS
  BEGIN -- function "="
    RETURN eq (l => l,
    r => r,
    check_error => false);
  END FUNCTION "=";
  FUNCTION ">" (
    l, r : UNRESOLVED_float) -- inputs
    RETURN BOOLEAN IS
  BEGIN -- function ">"
    RETURN gt (l => l,
    r => r,
    check_error => false);
  END FUNCTION ">";
  VARIABLE fract : UNSIGNED (fraction_width - 1 DOWNTO 0);
  VARIABLE expon : UNSIGNED (exponent_width - 1 DOWNTO 0);
  VARIABLE sign : STD_ULOGIC;
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE validfpx, validfpy : valid_fpstate; -- Valid FP state
BEGIN -- fp_Nextafter
  -- If Y > X, add one to the fraction, otherwise subtract.
  validfpx := classfp (x, check_error);
  validfpy := classfp (y, check_error);
  IF validfpx = isx OR validfpy = isx THEN
    result := (OTHERS => 'X');
    RETURN result;
  ELSIF (validfpx = nan OR validfpy = nan) THEN
    RETURN nanfp (fraction_width => fraction_width,
    exponent_width => exponent_width);
  ELSIF (validfpx = quiet_nan OR validfpy = quiet_nan) THEN
    RETURN qnanfp (fraction_width => fraction_width,
    exponent_width => exponent_width);
  ELSIF x = y THEN -- Return X
    RETURN x;
  ELSE
    fract := UNSIGNED (to_slv (x (-1 DOWNTO -fraction_width))); -- Fraction
    expon := UNSIGNED (x (exponent_width - 1 DOWNTO 0)); -- exponent
    sign := x(exponent_width); -- sign bit
    IF (y > x) THEN
      -- Increase the number given
      IF validfpx = neg_inf THEN
        -- return most negative number
        expon := (OTHERS => '1');
        expon (0) := '0';
        fract := (OTHERS => '1');
      ELSIF validfpx = pos_zero OR validfpx = neg_zero THEN
        -- return smallest denormal number
        sign := '0';
        expon := (OTHERS => '0');
        fract := (OTHERS => '0');
        fract(0) := '1';
      ELSIF validfpx = pos_normal THEN
        IF and_reduce (fract) = '1' THEN -- fraction is all "1".
          IF and_reduce (expon (exponent_width - 1 DOWNTO 1)) = '1'
            AND expon (0) = '0' THEN
            -- Exponent is one away from infinity.
            ASSERT NO_WARNING
            REPORT float_pkg'instance_name
              & "FP_NEXTAFTER: NextAfter overflow"
              SEVERITY warning;
            RETURN pos_inffp (fraction_width => fraction_width,
            exponent_width => exponent_width);
          ELSE
            expon := expon + 1;
            fract := (OTHERS => '0');
          END IF;
        ELSE
          fract := fract + 1;
        END IF;
      ELSIF validfpx = pos_denormal THEN
        IF and_reduce (fract) = '1' THEN -- fraction is all "1".
          -- return smallest possible normal number
          expon := (OTHERS => '0');
          expon(0) := '1';
          fract := (OTHERS => '0');
        ELSE
          fract := fract + 1;
        END IF;
      ELSIF validfpx = neg_normal THEN
        IF or_reduce (fract) = '0' THEN -- fraction is all "0".
          IF or_reduce (expon (exponent_width - 1 DOWNTO 1)) = '0' AND
            expon (0) = '1' THEN -- Smallest exponent
            -- return the largest negative denormal number
            expon := (OTHERS => '0');
            fract := (OTHERS => '1');
          ELSE
            expon := expon - 1;
            fract := (OTHERS => '1');
          END IF;
        ELSE
          fract := fract - 1;
        END IF;
      ELSIF validfpx = neg_denormal THEN
        IF or_reduce (fract(fract'high DOWNTO 1)) = '0'
          AND fract (0) = '1' THEN -- Smallest possible fraction
          RETURN zerofp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        ELSE
          fract := fract - 1;
        END IF;
      END IF;
    ELSE
      -- Decrease the number
      IF validfpx = pos_inf THEN
        -- return most positive number
        expon := (OTHERS => '1');
        expon (0) := '0';
        fract := (OTHERS => '1');
      ELSIF validfpx = pos_zero
        OR classfp (x) = neg_zero THEN
        -- return smallest negative denormal number
        sign := '1';
        expon := (OTHERS => '0');
        fract := (OTHERS => '0');
        fract(0) := '1';
      ELSIF validfpx = neg_normal THEN
        IF and_reduce (fract) = '1' THEN -- fraction is all "1".
          IF and_reduce (expon (exponent_width - 1 DOWNTO 1)) = '1'
            AND expon (0) = '0' THEN
            -- Exponent is one away from infinity.
            ASSERT NO_WARNING
            REPORT float_pkg'instance_name
              & "FP_NEXTAFTER: NextAfter overflow"
              SEVERITY warning;
            RETURN neg_inffp (fraction_width => fraction_width,
            exponent_width => exponent_width);
          ELSE
            expon := expon + 1; -- Fraction overflow
            fract := (OTHERS => '0');
          END IF;
        ELSE
          fract := fract + 1;
        END IF;
      ELSIF validfpx = neg_denormal THEN
        IF and_reduce (fract) = '1' THEN -- fraction is all "1".
          -- return smallest possible normal number
          expon := (OTHERS => '0');
          expon(0) := '1';
          fract := (OTHERS => '0');
        ELSE
          fract := fract + 1;
        END IF;
      ELSIF validfpx = pos_normal THEN
        IF or_reduce (fract) = '0' THEN -- fraction is all "0".
          IF or_reduce (expon (exponent_width - 1 DOWNTO 1)) = '0' AND
            expon (0) = '1' THEN -- Smallest exponent
            -- return the largest positive denormal number
            expon := (OTHERS => '0');
            fract := (OTHERS => '1');
          ELSE
            expon := expon - 1;
            fract := (OTHERS => '1');
          END IF;
        ELSE
          fract := fract - 1;
        END IF;
      ELSIF validfpx = pos_denormal THEN
        IF or_reduce (fract(fract'high DOWNTO 1)) = '0'
          AND fract (0) = '1' THEN -- Smallest possible fraction
          RETURN zerofp (fraction_width => fraction_width,
          exponent_width => exponent_width);
        ELSE
          fract := fract - 1;
        END IF;
      END IF;
    END IF;
    result (-1 DOWNTO -fraction_width) := UNRESOLVED_float(fract);
    result (exponent_width - 1 DOWNTO 0) := UNRESOLVED_float(expon);
    result (exponent_width) := sign;
    RETURN result;
  END IF;
END FUNCTION Nextafter;

-- Returns True if X is unordered with Y.
FUNCTION Unordered (
  x, y : UNRESOLVED_float) -- floating point input
  RETURN BOOLEAN IS
  VARIABLE lfptype, rfptype : valid_fpstate;
BEGIN
  lfptype := classfp (x);
  rfptype := classfp (y);
  IF (lfptype = nan OR lfptype = quiet_nan OR
    rfptype = nan OR rfptype = quiet_nan OR
    lfptype = isx OR rfptype = isx) THEN
    RETURN true;
  ELSE
    RETURN false;
  END IF;
END FUNCTION Unordered;

FUNCTION Finite (
  x : UNRESOLVED_float)
  RETURN BOOLEAN IS
  VARIABLE fp_state : valid_fpstate; -- fp state
BEGIN
  fp_state := Classfp (x);
  IF (fp_state = pos_inf) OR (fp_state = neg_inf) THEN
    RETURN true;
  ELSE
    RETURN false;
  END IF;
END FUNCTION Finite;

FUNCTION Isnan (
  x : UNRESOLVED_float)
  RETURN BOOLEAN IS
  VARIABLE fp_state : valid_fpstate; -- fp state
BEGIN
  fp_state := Classfp (x);
  IF (fp_state = nan) OR (fp_state = quiet_nan) THEN
    RETURN true;
  ELSE
    RETURN false;
  END IF;
END FUNCTION Isnan;

-- Function to return constants.
FUNCTION zerofp (
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
  RETURN UNRESOLVED_float IS
  CONSTANT result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width) :=
  (OTHERS => '0'); -- zero
BEGIN
  RETURN result;
END FUNCTION zerofp;

FUNCTION nanfp (
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width) :=
  (OTHERS => '0'); -- zero
BEGIN
  result (exponent_width - 1 DOWNTO 0) := (OTHERS => '1');
  -- Exponent all "1"
  result (-1) := '1'; -- MSB of Fraction "1"
  -- Note: From W. Khan "IEEE Standard 754 for Binary Floating Point"
  -- The difference between a signaling NAN and a quiet NAN is that
  -- the MSB of the Fraction is a "1" in a Signaling NAN, and is a
  -- "0" in a quiet NAN.
  RETURN result;
END FUNCTION nanfp;

FUNCTION qnanfp (
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width) :=
  (OTHERS => '0'); -- zero
BEGIN
  result (exponent_width - 1 DOWNTO 0) := (OTHERS => '1');
  -- Exponent all "1"
  result (-fraction_width) := '1'; -- LSB of Fraction "1"
  -- (Could have been any bit)
  RETURN result;
END FUNCTION qnanfp;

FUNCTION pos_inffp (
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width) :=
  (OTHERS => '0'); -- zero
BEGIN
  result (exponent_width - 1 DOWNTO 0) := (OTHERS => '1'); -- Exponent all "1"
  RETURN result;
END FUNCTION pos_inffp;

FUNCTION neg_inffp (
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width) :=
  (OTHERS => '0'); -- zero
BEGIN
  result (exponent_width DOWNTO 0) := (OTHERS => '1'); -- top bits all "1"
  RETURN result;
END FUNCTION neg_inffp;

FUNCTION neg_zerofp (
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- fraction
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width) :=
  (OTHERS => '0'); -- zero
BEGIN
  result (exponent_width) := '1';
  RETURN result;
END FUNCTION neg_zerofp;

-- size_res versions
FUNCTION zerofp (
  size_res : UNRESOLVED_float) -- variable is only use for sizing
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN zerofp (
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION zerofp;

FUNCTION nanfp (
  size_res : UNRESOLVED_float) -- variable is only use for sizing
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN nanfp (
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION nanfp;

FUNCTION qnanfp (
  size_res : UNRESOLVED_float) -- variable is only use for sizing
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN qnanfp (
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION qnanfp;

FUNCTION pos_inffp (
  size_res : UNRESOLVED_float) -- variable is only use for sizing
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN pos_inffp (
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION pos_inffp;

FUNCTION neg_inffp (
  size_res : UNRESOLVED_float) -- variable is only use for sizing
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN neg_inffp (
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION neg_inffp;

FUNCTION neg_zerofp (
  size_res : UNRESOLVED_float) -- variable is only use for sizing
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN neg_zerofp (
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION neg_zerofp;

-- rtl_synthesis off
-- pragma synthesis_off

--%%% these functions are copied from std_logic_1164 (VHDL-200X edition)
-- Textio functions
-- purpose: writes float into a line (NOTE changed basetype)
TYPE MVL9plus IS ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-', error);
TYPE char_indexed_by_MVL9 IS ARRAY (STD_ULOGIC) OF CHARACTER;
TYPE MVL9_indexed_by_char IS ARRAY (CHARACTER) OF STD_ULOGIC;
TYPE MVL9plus_indexed_by_char IS ARRAY (CHARACTER) OF MVL9plus;

CONSTANT NBSP : CHARACTER := CHARACTER'val(160); -- space character
CONSTANT MVL9_to_char : char_indexed_by_MVL9 := "UX01ZWLH-";
CONSTANT char_to_MVL9 : MVL9_indexed_by_char :=
('U' => 'U', 'X' => 'X', '0' => '0', '1' => '1', 'Z' => 'Z',
'W' => 'W', 'L' => 'L', 'H' => 'H', '-' => '-', OTHERS => 'U');
CONSTANT char_to_MVL9plus : MVL9plus_indexed_by_char :=
('U' => 'U', 'X' => 'X', '0' => '0', '1' => '1', 'Z' => 'Z',
'W' => 'W', 'L' => 'L', 'H' => 'H', '-' => '-', OTHERS => error);
CONSTANT NUS : STRING(2 TO 1) := (OTHERS => ' ');

-- purpose: Skips white space
PROCEDURE skip_whitespace (
  L : INOUT LINE) IS
  VARIABLE readOk : BOOLEAN;
  VARIABLE c : CHARACTER;
BEGIN
  WHILE L /= NULL AND L.ALL'length /= 0 LOOP
    IF (L.ALL(1) = ' ' OR L.ALL(1) = NBSP OR L.ALL(1) = HT) THEN
      read (l, c, readOk);
    ELSE
      EXIT;
    END IF;
  END LOOP;
END PROCEDURE skip_whitespace;

-- %%% Replicated textio functions
FUNCTION to_ostring (value : STD_LOGIC_VECTOR) RETURN STRING IS
  CONSTANT ne : INTEGER := (value'length + 2)/3;
  VARIABLE pad : STD_LOGIC_VECTOR(0 TO (ne * 3 - value'length) - 1);
  VARIABLE ivalue : STD_LOGIC_VECTOR(0 TO ne * 3 - 1);
  VARIABLE result : STRING(1 TO ne);
  VARIABLE tri : STD_LOGIC_VECTOR(0 TO 2);
BEGIN
  IF value'length < 1 THEN
    RETURN NUS;
  ELSE
    IF value (value'left) = 'Z' THEN
      pad := (OTHERS => 'Z');
    ELSE
      pad := (OTHERS => '0');
    END IF;
    ivalue := pad & value;
    FOR i IN 0 TO ne - 1 LOOP
      tri := To_X01Z(ivalue(3 * i TO 3 * i + 2));
      CASE tri IS
        WHEN o"0" => result(i + 1) := '0';
        WHEN o"1" => result(i + 1) := '1';
        WHEN o"2" => result(i + 1) := '2';
        WHEN o"3" => result(i + 1) := '3';
        WHEN o"4" => result(i + 1) := '4';
        WHEN o"5" => result(i + 1) := '5';
        WHEN o"6" => result(i + 1) := '6';
        WHEN o"7" => result(i + 1) := '7';
        WHEN "ZZZ" => result(i + 1) := 'Z';
        WHEN OTHERS => result(i + 1) := 'X';
      END CASE;
    END LOOP;
    RETURN result;
  END IF;
END FUNCTION to_ostring;
-------------------------------------------------------------------   
FUNCTION to_hstring (value : STD_LOGIC_VECTOR) RETURN STRING IS
  CONSTANT ne : INTEGER := (value'length + 3)/4;
  VARIABLE pad : STD_LOGIC_VECTOR(0 TO (ne * 4 - value'length) - 1);
  VARIABLE ivalue : STD_LOGIC_VECTOR(0 TO ne * 4 - 1);
  VARIABLE result : STRING(1 TO ne);
  VARIABLE quad : STD_LOGIC_VECTOR(0 TO 3);
BEGIN
  IF value'length < 1 THEN
    RETURN NUS;
  ELSE
    IF value (value'left) = 'Z' THEN
      pad := (OTHERS => 'Z');
    ELSE
      pad := (OTHERS => '0');
    END IF;
    ivalue := pad & value;
    FOR i IN 0 TO ne - 1 LOOP
      quad := To_X01Z(ivalue(4 * i TO 4 * i + 3));
      CASE quad IS
        WHEN x"0" => result(i + 1) := '0';
        WHEN x"1" => result(i + 1) := '1';
        WHEN x"2" => result(i + 1) := '2';
        WHEN x"3" => result(i + 1) := '3';
        WHEN x"4" => result(i + 1) := '4';
        WHEN x"5" => result(i + 1) := '5';
        WHEN x"6" => result(i + 1) := '6';
        WHEN x"7" => result(i + 1) := '7';
        WHEN x"8" => result(i + 1) := '8';
        WHEN x"9" => result(i + 1) := '9';
        WHEN x"A" => result(i + 1) := 'A';
        WHEN x"B" => result(i + 1) := 'B';
        WHEN x"C" => result(i + 1) := 'C';
        WHEN x"D" => result(i + 1) := 'D';
        WHEN x"E" => result(i + 1) := 'E';
        WHEN x"F" => result(i + 1) := 'F';
        WHEN "ZZZZ" => result(i + 1) := 'Z';
        WHEN OTHERS => result(i + 1) := 'X';
      END CASE;
    END LOOP;
    RETURN result;
  END IF;
END FUNCTION to_hstring;
PROCEDURE Char2TriBits (C : CHARACTER;
RESULT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
GOOD : OUT BOOLEAN;
ISSUE_ERROR : IN BOOLEAN) IS
BEGIN
CASE c IS
  WHEN '0' => result := o"0";
    good := true;
  WHEN '1' => result := o"1";
    good := true;
  WHEN '2' => result := o"2";
    good := true;
  WHEN '3' => result := o"3";
    good := true;
  WHEN '4' => result := o"4";
    good := true;
  WHEN '5' => result := o"5";
    good := true;
  WHEN '6' => result := o"6";
    good := true;
  WHEN '7' => result := o"7";
    good := true;
  WHEN 'Z' => result := "ZZZ";
    good := true;
  WHEN 'X' => result := "XXX";
    good := true;
  WHEN OTHERS =>
    ASSERT NOT ISSUE_ERROR
    REPORT float_pkg'instance_name
      & "OREAD Error: Read a '" & c &
      "', expected an Octal character (0-7)."
      SEVERITY error;
    result := "UUU";
    good := false;
END CASE;
END PROCEDURE Char2TriBits;

PROCEDURE OREAD (L : INOUT LINE; VALUE : OUT STD_LOGIC_VECTOR;
GOOD : OUT BOOLEAN) IS
VARIABLE ok : BOOLEAN;
VARIABLE c : CHARACTER;
CONSTANT ne : INTEGER := (VALUE'length + 2)/3;
CONSTANT pad : INTEGER := ne * 3 - VALUE'length;
VARIABLE sv : STD_LOGIC_VECTOR(0 TO ne * 3 - 1);
VARIABLE i : INTEGER;
VARIABLE lastu : BOOLEAN := false; -- last character was an "_"
BEGIN
VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
Skip_whitespace (L);
IF VALUE'length > 0 THEN
  read (l, c, ok);
  i := 0;
  WHILE i < ne LOOP
    -- Bail out if there was a bad read
    IF NOT ok THEN
      good := false;
      RETURN;
    ELSIF c = '_' THEN
      IF i = 0 THEN
        good := false; -- Begins with an "_"
        RETURN;
      ELSIF lastu THEN
        good := false; -- "__" detected
        RETURN;
      ELSE
        lastu := true;
      END IF;
    ELSE
      Char2TriBits(c, sv(3 * i TO 3 * i + 2), ok, false);
      IF NOT ok THEN
        good := false;
        RETURN;
      END IF;
      i := i + 1;
      lastu := false;
    END IF;
    IF i < ne THEN
      read(L, c, ok);
    END IF;
  END LOOP;
  IF or_reduce (sv (0 TO pad - 1)) = '1' THEN -- %%% replace with "or"
    good := false; -- vector was truncated.
  ELSE
    good := true;
    VALUE := sv (pad TO sv'high);
  END IF;
ELSE
  good := true; -- read into a null array
END IF;
END PROCEDURE OREAD;

-- Hex Read and Write procedures for STD_ULOGIC_VECTOR.
-- Modified from the original to be more forgiving.

PROCEDURE Char2QuadBits (C : CHARACTER;
RESULT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
GOOD : OUT BOOLEAN;
ISSUE_ERROR : IN BOOLEAN) IS
BEGIN
CASE c IS
  WHEN '0' => result := x"0";
    good := true;
  WHEN '1' => result := x"1";
    good := true;
  WHEN '2' => result := x"2";
    good := true;
  WHEN '3' => result := x"3";
    good := true;
  WHEN '4' => result := x"4";
    good := true;
  WHEN '5' => result := x"5";
    good := true;
  WHEN '6' => result := x"6";
    good := true;
  WHEN '7' => result := x"7";
    good := true;
  WHEN '8' => result := x"8";
    good := true;
  WHEN '9' => result := x"9";
    good := true;
  WHEN 'A' | 'a' => result := x"A";
    good := true;
  WHEN 'B' | 'b' => result := x"B";
    good := true;
  WHEN 'C' | 'c' => result := x"C";
    good := true;
  WHEN 'D' | 'd' => result := x"D";
    good := true;
  WHEN 'E' | 'e' => result := x"E";
    good := true;
  WHEN 'F' | 'f' => result := x"F";
    good := true;
  WHEN 'Z' => result := "ZZZZ";
    good := true;
  WHEN 'X' => result := "XXXX";
    good := true;
  WHEN OTHERS =>
    ASSERT NOT ISSUE_ERROR
    REPORT float_pkg'instance_name
      & "HREAD Error: Read a '" & c &
      "', expected a Hex character (0-F)."
      SEVERITY error;
    result := "UUUU";
    good := false;
END CASE;
END PROCEDURE Char2QuadBits;

PROCEDURE HREAD (L : INOUT LINE; VALUE : OUT STD_LOGIC_VECTOR;
GOOD : OUT BOOLEAN) IS
VARIABLE ok : BOOLEAN;
VARIABLE c : CHARACTER;
CONSTANT ne : INTEGER := (VALUE'length + 3)/4;
CONSTANT pad : INTEGER := ne * 4 - VALUE'length;
VARIABLE sv : STD_LOGIC_VECTOR(0 TO ne * 4 - 1);
VARIABLE i : INTEGER;
VARIABLE lastu : BOOLEAN := false; -- last character was an "_"
BEGIN
VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
Skip_whitespace (L);
IF VALUE'length > 0 THEN
  read (l, c, ok);
  i := 0;
  WHILE i < ne LOOP
    -- Bail out if there was a bad read
    IF NOT ok THEN
      good := false;
      RETURN;
    ELSIF c = '_' THEN
      IF i = 0 THEN
        good := false; -- Begins with an "_"
        RETURN;
      ELSIF lastu THEN
        good := false; -- "__" detected
        RETURN;
      ELSE
        lastu := true;
      END IF;
    ELSE
      Char2QuadBits(c, sv(4 * i TO 4 * i + 3), ok, false);
      IF NOT ok THEN
        good := false;
        RETURN;
      END IF;
      i := i + 1;
      lastu := false;
    END IF;
    IF i < ne THEN
      read(L, c, ok);
    END IF;
  END LOOP;
  IF or_reduce (sv (0 TO pad - 1)) = '1' THEN -- %%% replace with "or"
    good := false; -- vector was truncated.
  ELSE
    good := true;
    VALUE := sv (pad TO sv'high);
  END IF;
ELSE
  good := true; -- Null input string, skips whitespace
END IF;
END PROCEDURE HREAD;

-- %%% END replicated textio functions

-- purpose: Checks the punctuation in a line
PROCEDURE check_punctuation (
  arg : IN STRING;
  colon : OUT BOOLEAN; -- There was a colon in the line
  dot : OUT BOOLEAN; -- There was a dot in the line
  good : OUT BOOLEAN; -- True if enough characters found
  chars : IN INTEGER) IS
  -- Examples.  Legal inputs are "0000000", "0000.000", "0:000:000"
  ALIAS xarg : STRING (1 TO arg'length) IS arg; -- make it downto range
  VARIABLE icolon, idot : BOOLEAN; -- internal
  VARIABLE j : INTEGER := 0; -- charters read
BEGIN
  good := false;
  icolon := false;
  idot := false;
  FOR i IN 1 TO arg'length LOOP
    IF xarg(i) = ' ' OR xarg(i) = NBSP OR xarg(i) = HT OR j = chars THEN
      EXIT;
    ELSIF xarg(i) = ':' THEN
      icolon := true;
    ELSIF xarg(i) = '.' THEN
      idot := true;
    ELSIF xarg (i) /= '_' THEN
      j := j + 1;
    END IF;
  END LOOP;
  IF j = chars THEN
    good := true; -- There are enough charactes to read
  END IF;
  colon := icolon;
  IF idot AND icolon THEN
    dot := false;
  ELSE
    dot := idot;
  END IF;
END PROCEDURE check_punctuation;

-- purpose: Searches a line for a ":" and replaces it with a ".".
PROCEDURE fix_colon (
  arg : INOUT STRING;
  chars : IN INTEGER) IS
  ALIAS xarg : STRING (1 TO arg'length) IS arg; -- make it downto range
  VARIABLE j : INTEGER := 0; -- charters read
BEGIN
  FOR i IN 1 TO arg'length LOOP
    IF xarg(i) = ' ' OR xarg(i) = NBSP OR xarg(i) = HT OR j > chars THEN
      EXIT;
    ELSIF xarg(i) = ':' THEN
      xarg (i) := '.';
    ELSIF xarg (i) /= '_' THEN
      j := j + 1;
    END IF;
  END LOOP;
END PROCEDURE fix_colon;

PROCEDURE WRITE (
  L : INOUT LINE; -- input line
  VALUE : IN UNRESOLVED_float; -- floating point input
  JUSTIFIED : IN SIDE := right;
  FIELD : IN WIDTH := 0) IS
  VARIABLE s : STRING(1 TO value'high - value'low + 3);
  VARIABLE sindx : INTEGER;
BEGIN -- function write
  s(1) := MVL9_to_char(STD_ULOGIC(VALUE(VALUE'high)));
  s(2) := ':';
  sindx := 3;
  FOR i IN VALUE'high - 1 DOWNTO 0 LOOP
    s(sindx) := MVL9_to_char(STD_ULOGIC(VALUE(i)));
    sindx := sindx + 1;
  END LOOP;
  s(sindx) := ':';
  sindx := sindx + 1;
  FOR i IN -1 DOWNTO VALUE'low LOOP
    s(sindx) := MVL9_to_char(STD_ULOGIC(VALUE(i)));
    sindx := sindx + 1;
  END LOOP;
  WRITE (L, s, JUSTIFIED, FIELD);
END PROCEDURE WRITE;

PROCEDURE READ (L : INOUT LINE; VALUE : OUT UNRESOLVED_float) IS
  -- Possible data:  0:0000:0000000
  --                 000000000000
  VARIABLE c : CHARACTER;
  VARIABLE mv : UNRESOLVED_float (VALUE'RANGE);
  VARIABLE readOk : BOOLEAN;
  VARIABLE lastu : BOOLEAN := false; -- last character was an "_"
  VARIABLE i : INTEGER; -- index variable
BEGIN -- READ
  VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
  Skip_whitespace (L);
  READ (l, c, readOk);
  IF VALUE'length > 0 THEN
    i := value'high;
    readloop : LOOP
      IF readOk = false THEN -- Bail out if there was a bad read
        REPORT float_pkg'instance_name
          & "READ(float): "
          & "Error end of file encountered."
          SEVERITY error;
        RETURN;
      ELSIF c = ' ' OR c = CR OR c = HT THEN -- reading done.
        IF (i /= value'low) THEN
          REPORT float_pkg'instance_name
            & "READ(float): "
            & "Warning: Value truncated."
            SEVERITY warning;
          RETURN;
        END IF;
      ELSIF c = '_' THEN
        IF i = value'high THEN -- Begins with an "_"
          REPORT float_pkg'instance_name
            & "READ(float): "
            & "String begins with an ""_""" SEVERITY error;
          RETURN;
        ELSIF lastu THEN -- "__" detected
          REPORT float_pkg'instance_name
            & "READ(float): "
            & "Two underscores detected in input string ""__"""
            SEVERITY error;
          RETURN;
        ELSE
          lastu := true;
        END IF;
      ELSIF c = ':' OR c = '.' THEN -- separator, ignore
        IF NOT (i =- 1 OR i = value'high - 1) THEN
          REPORT float_pkg'instance_name
            & "READ(float):  "
            & "Warning: Separator point does not match number format: '"
            & c & "' encountered at location " & INTEGER'image(i) & "."
            SEVERITY warning;
        END IF;
        lastu := false;
      ELSIF (char_to_MVL9plus(c) = error) THEN
        REPORT float_pkg'instance_name
          & "READ(float): "
          & "Error: Character '" & c & "' read, expected STD_ULOGIC literal."
          SEVERITY error;
        RETURN;
      ELSE
        mv (i) := char_to_MVL9(c);
        i := i - 1;
        IF i < value'low THEN
          VALUE := mv;
          RETURN;
        END IF;
        lastu := false;
      END IF;
      READ (l, c, readOk);
    END LOOP readloop;
  END IF;
END PROCEDURE READ;

PROCEDURE READ (L : INOUT LINE; VALUE : OUT UNRESOLVED_float; GOOD : OUT BOOLEAN) IS
  -- Possible data:  0:0000:0000000
  --                 000000000000
  VARIABLE c : CHARACTER;
  VARIABLE mv : UNRESOLVED_float (VALUE'RANGE);
  VARIABLE lastu : BOOLEAN := false; -- last character was an "_"
  VARIABLE i : INTEGER; -- index variable
  VARIABLE readOk : BOOLEAN;
BEGIN -- READ
  VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
  Skip_whitespace (L);
  READ (l, c, readOk);
  IF VALUE'length > 0 THEN
    i := value'high;
    good := false;
    readloop : LOOP
      IF readOk = false THEN -- Bail out if there was a bad read
        RETURN;
      ELSIF c = ' ' OR c = CR OR c = HT THEN -- reading done
        RETURN;
      ELSIF c = '_' THEN
        IF i = 0 THEN -- Begins with an "_"
          RETURN;
        ELSIF lastu THEN -- "__" detected
          RETURN;
        ELSE
          lastu := true;
        END IF;
      ELSIF c = ':' OR c = '.' THEN -- separator, ignore
        -- good := (i = -1 or i = value'high-1);
        lastu := false;
      ELSIF (char_to_MVL9plus(c) = error) THEN
        RETURN;
      ELSE
        mv (i) := char_to_MVL9(c);
        i := i - 1;
        IF i < value'low THEN
          good := true;
          VALUE := mv;
          RETURN;
        END IF;
        lastu := false;
      END IF;
      READ (l, c, readOk);
    END LOOP readloop;
  ELSE
    good := true; -- read into a null array
  END IF;
END PROCEDURE READ;

PROCEDURE OWRITE (
  L : INOUT LINE; -- access type (pointer)
  VALUE : IN UNRESOLVED_float; -- value to write
  JUSTIFIED : IN SIDE := right; -- which side to justify text
  FIELD : IN WIDTH := 0) IS -- width of field
BEGIN
  WRITE (L => L,
  VALUE => to_ostring(VALUE),
  JUSTIFIED => JUSTIFIED,
  FIELD => FIELD);
END PROCEDURE OWRITE;

PROCEDURE OREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float) IS
  CONSTANT ne : INTEGER := ((value'length + 2)/3) * 3; -- pad
  VARIABLE slv : STD_LOGIC_VECTOR (ne - 1 DOWNTO 0); -- slv
  VARIABLE slvu : ufixed (VALUE'RANGE); -- Unsigned fixed point
  VARIABLE c : CHARACTER;
  VARIABLE ok : BOOLEAN;
  VARIABLE nybble : STD_LOGIC_VECTOR (2 DOWNTO 0); -- 3 bits
  VARIABLE colon, dot : BOOLEAN;
BEGIN
  VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
  Skip_whitespace (L);
  IF VALUE'length > 0 THEN
    check_punctuation (arg => L.ALL,
    colon => colon,
    dot => dot,
    good => ok,
    chars => ne/3);
    IF NOT ok THEN
      REPORT float_pkg'instance_name & "OREAD: "
        & "short string encounted: " & L.ALL
        & " needs to have " & INTEGER'image (ne/3)
        & " valid octal characters."
        SEVERITY error;
      RETURN;
    ELSIF dot THEN
      OREAD (L, slvu, ok); -- read it like a UFIXED number
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "OREAD: "
          & "error encounted reading STRING " & L.ALL
          SEVERITY error;
        RETURN;
      ELSE
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSIF colon THEN
      OREAD (L, nybble, ok); -- read the sign bit
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "OREAD: "
          & "End of string encountered"
          SEVERITY error;
        RETURN;
      ELSIF nybble (2 DOWNTO 1) /= "00" THEN
        REPORT float_pkg'instance_name & "OREAD: "
          & "Illegal sign bit STRING encounted "
          SEVERITY error;
        RETURN;
      END IF;
      read (l, c, ok); -- read the colon
      fix_colon (L.ALL, ne/3); -- replaces the colon with a ".".
      OREAD (L, slvu (slvu'high - 1 DOWNTO slvu'low), ok); -- read it like a UFIXED number
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "OREAD: "
          & "error encounted reading STRING " & L.ALL
          SEVERITY error;
        RETURN;
      ELSE
        slvu (slvu'high) := nybble (0);
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSE
      OREAD (L, slv, ok);
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "OREAD: "
          & "Error encounted during read"
          SEVERITY error;
        RETURN;
      END IF;
      IF (or_reduce (slv(ne - 1 DOWNTO VALUE'high - VALUE'low + 1)) = '1') THEN
        REPORT float_pkg'instance_name & "OREAD: "
          & "Vector truncated."
          SEVERITY error;
        RETURN;
      END IF;
      VALUE := to_float (slv(VALUE'high - VALUE'low DOWNTO 0),
        VALUE'high, -VALUE'low);
    END IF;
  END IF;
END PROCEDURE OREAD;

PROCEDURE OREAD(L : INOUT LINE; VALUE : OUT UNRESOLVED_float; GOOD : OUT BOOLEAN) IS
  CONSTANT ne : INTEGER := ((value'length + 2)/3) * 3; -- pad
  VARIABLE slv : STD_LOGIC_VECTOR (ne - 1 DOWNTO 0); -- slv
  VARIABLE slvu : ufixed (VALUE'RANGE); -- Unsigned fixed point
  VARIABLE c : CHARACTER;
  VARIABLE ok : BOOLEAN;
  VARIABLE nybble : STD_LOGIC_VECTOR (2 DOWNTO 0); -- 3 bits
  VARIABLE colon, dot : BOOLEAN;
BEGIN
  VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
  GOOD := false;
  Skip_whitespace (L);
  IF VALUE'length > 0 THEN
    check_punctuation (arg => L.ALL,
    colon => colon,
    dot => dot,
    good => ok,
    chars => ne/3);
    IF NOT ok THEN
      RETURN;
    ELSIF dot THEN
      OREAD (L, slvu, ok); -- read it like a UFIXED number
      IF NOT ok THEN
        RETURN;
      ELSE
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSIF colon THEN
      OREAD (L, nybble, ok); -- read the sign bit
      IF NOT ok THEN
        RETURN;
      ELSIF nybble (2 DOWNTO 1) /= "00" THEN
        RETURN;
      END IF;
      read (l, c, ok); -- read the colon
      fix_colon (L.ALL, ne/3); -- replaces the colon with a ".".
      OREAD (L, slvu (slvu'high - 1 DOWNTO slvu'low), ok); -- read it like a UFIXED number
      IF NOT ok THEN
        RETURN;
      ELSE
        slvu (slvu'high) := nybble (0);
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSE
      OREAD (L, slv, ok);
      IF NOT ok THEN
        RETURN;
      END IF;
      IF (or_reduce (slv(ne - 1 DOWNTO VALUE'high - VALUE'low + 1)) = '1') THEN
        RETURN;
      END IF;
      VALUE := to_float (slv(VALUE'high - VALUE'low DOWNTO 0),
        VALUE'high, -VALUE'low);
    END IF;
    GOOD := true;
  END IF;
END PROCEDURE OREAD;

PROCEDURE HWRITE (
  L : INOUT LINE; -- access type (pointer)
  VALUE : IN UNRESOLVED_float; -- value to write
  JUSTIFIED : IN SIDE := right; -- which side to justify text
  FIELD : IN WIDTH := 0) IS -- width of field
BEGIN
  WRITE (L => L,
  VALUE => to_hstring(VALUE),
  JUSTIFIED => JUSTIFIED,
  FIELD => FIELD);
END PROCEDURE HWRITE;

PROCEDURE HREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float) IS
  CONSTANT ne : INTEGER := ((value'length + 3)/4) * 4; -- pad
  VARIABLE slv : STD_LOGIC_VECTOR (ne - 1 DOWNTO 0); -- slv
  VARIABLE slvu : ufixed (VALUE'RANGE); -- Unsigned fixed point
  VARIABLE c : CHARACTER;
  VARIABLE ok : BOOLEAN;
  VARIABLE nybble : STD_LOGIC_VECTOR (3 DOWNTO 0); -- 4 bits
  VARIABLE colon, dot : BOOLEAN;
BEGIN
  VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
  Skip_whitespace (L);
  IF VALUE'length > 0 THEN
    check_punctuation (arg => L.ALL,
    colon => colon,
    dot => dot,
    good => ok,
    chars => ne/4);
    IF NOT ok THEN
      REPORT float_pkg'instance_name & "HREAD: "
        & "short string encounted: " & L.ALL
        & " needs to have " & INTEGER'image (ne/4)
        & " valid hex characters."
        SEVERITY error;
      RETURN;
    ELSIF dot THEN
      HREAD (L, slvu, ok); -- read it like a UFIXED number
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "HREAD: "
          & "error encounted reading STRING " & L.ALL
          SEVERITY error;
        RETURN;
      ELSE
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSIF colon THEN
      HREAD (L, nybble, ok); -- read the sign bit
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "HREAD: "
          & "End of string encountered"
          SEVERITY error;
        RETURN;
      ELSIF nybble (3 DOWNTO 1) /= "000" THEN
        REPORT float_pkg'instance_name & "HREAD: "
          & "Illegal sign bit STRING encounted "
          SEVERITY error;
        RETURN;
      END IF;
      read (l, c, ok); -- read the colon
      fix_colon (L.ALL, ne/4); -- replaces the colon with a ".".
      HREAD (L, slvu (slvu'high - 1 DOWNTO slvu'low), ok); -- read it like a UFIXED number
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "HREAD: "
          & "error encounted reading STRING " & L.ALL
          SEVERITY error;
        RETURN;
      ELSE
        slvu (slvu'high) := nybble (0);
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSE
      HREAD (L, slv, ok);
      IF NOT ok THEN
        REPORT float_pkg'instance_name & "HREAD: "
          & "Error encounted during read"
          SEVERITY error;
        RETURN;
      END IF;
      IF (or_reduce (slv(ne - 1 DOWNTO VALUE'high - VALUE'low + 1)) = '1') THEN
        REPORT float_pkg'instance_name & "HREAD: "
          & "Vector truncated."
          SEVERITY error;
        RETURN;
      END IF;
      VALUE := to_float (slv(VALUE'high - VALUE'low DOWNTO 0),
        VALUE'high, -VALUE'low);
    END IF;
  END IF;
END PROCEDURE HREAD;

PROCEDURE HREAD (L : INOUT LINE; VALUE : OUT UNRESOLVED_float; GOOD : OUT BOOLEAN) IS
  CONSTANT ne : INTEGER := ((value'length + 3)/4) * 4; -- pad
  VARIABLE slv : STD_LOGIC_VECTOR (ne - 1 DOWNTO 0); -- slv
  VARIABLE slvu : ufixed (VALUE'RANGE); -- Unsigned fixed point
  VARIABLE c : CHARACTER;
  VARIABLE ok : BOOLEAN;
  VARIABLE nybble : STD_LOGIC_VECTOR (3 DOWNTO 0); -- 4 bits
  VARIABLE colon, dot : BOOLEAN;
BEGIN
  VALUE := (VALUE'RANGE => 'U'); -- initialize to a "U"
  GOOD := false;
  Skip_whitespace (L);
  IF VALUE'length > 0 THEN
    check_punctuation (arg => L.ALL,
    colon => colon,
    dot => dot,
    good => ok,
    chars => ne/4);
    IF NOT ok THEN
      RETURN;
    ELSIF dot THEN
      HREAD (L, slvu, ok); -- read it like a UFIXED number
      IF NOT ok THEN
        RETURN;
      ELSE
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSIF colon THEN
      HREAD (L, nybble, ok); -- read the sign bit
      IF NOT ok THEN
        RETURN;
      ELSIF nybble (3 DOWNTO 1) /= "000" THEN
        RETURN;
      END IF;
      read (l, c, ok); -- read the colon
      fix_colon (L.ALL, ne/4); -- replaces the colon with a ".".
      HREAD (L, slvu (slvu'high - 1 DOWNTO slvu'low), ok); -- read it like a UFIXED number
      IF NOT ok THEN
        RETURN;
      ELSE
        slvu (slvu'high) := nybble (0);
        VALUE := UNRESOLVED_float (slvu);
      END IF;
    ELSE
      HREAD (L, slv, ok);
      IF NOT ok THEN
        RETURN;
      END IF;
      IF (or_reduce (slv(ne - 1 DOWNTO VALUE'high - VALUE'low + 1)) = '1') THEN
        RETURN;
      END IF;
      VALUE := to_float (slv(VALUE'high - VALUE'low DOWNTO 0),
        VALUE'high, -VALUE'low);
    END IF;
    GOOD := true;
  END IF;
END PROCEDURE HREAD;

FUNCTION to_string (value : UNRESOLVED_float) RETURN STRING IS
  VARIABLE s : STRING(1 TO value'high - value'low + 3);
  VARIABLE sindx : INTEGER;
BEGIN -- function write
  s(1) := MVL9_to_char(STD_ULOGIC(VALUE(VALUE'high)));
  s(2) := ':';
  sindx := 3;
  FOR i IN VALUE'high - 1 DOWNTO 0 LOOP
    s(sindx) := MVL9_to_char(STD_ULOGIC(VALUE(i)));
    sindx := sindx + 1;
  END LOOP;
  s(sindx) := ':';
  sindx := sindx + 1;
  FOR i IN -1 DOWNTO VALUE'low LOOP
    s(sindx) := MVL9_to_char(STD_ULOGIC(VALUE(i)));
    sindx := sindx + 1;
  END LOOP;
  RETURN s;
END FUNCTION to_string;

FUNCTION to_hstring (value : UNRESOLVED_float) RETURN STRING IS
  VARIABLE slv : STD_LOGIC_VECTOR (value'length - 1 DOWNTO 0);
BEGIN
  floop : FOR i IN slv'RANGE LOOP
    slv(i) := to_X01Z (value(i + value'low));
  END LOOP floop;
  RETURN to_hstring (slv);
END FUNCTION to_hstring;

FUNCTION to_ostring (value : UNRESOLVED_float) RETURN STRING IS
  VARIABLE slv : STD_LOGIC_VECTOR (value'length - 1 DOWNTO 0);
BEGIN
  floop : FOR i IN slv'RANGE LOOP
    slv(i) := to_X01Z (value(i + value'low));
  END LOOP floop;
  RETURN to_ostring (slv);
END FUNCTION to_ostring;

FUNCTION from_string (
  bstring : STRING; -- binary string
  CONSTANT exponent_width : NATURAL := float_exponent_width;
  CONSTANT fraction_width : NATURAL := float_fraction_width)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE L : LINE;
  VARIABLE good : BOOLEAN;
BEGIN
  L := NEW STRING'(bstring);
  READ (L, result, good);
  deallocate (L);
  ASSERT (good)
  REPORT float_pkg'instance_name
    & "from_string: Bad string " & bstring
    SEVERITY error;
  RETURN result;
END FUNCTION from_string;

FUNCTION from_ostring (
  ostring : STRING; -- Octal string
  CONSTANT exponent_width : NATURAL := float_exponent_width;
  CONSTANT fraction_width : NATURAL := float_fraction_width)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE L : LINE;
  VARIABLE good : BOOLEAN;
BEGIN
  L := NEW STRING'(ostring);
  OREAD (L, result, good);
  deallocate (L);
  ASSERT (good)
  REPORT float_pkg'instance_name
    & "from_ostring: Bad string " & ostring
    SEVERITY error;
  RETURN result;
END FUNCTION from_ostring;

FUNCTION from_hstring (
  hstring : STRING; -- hex string
  CONSTANT exponent_width : NATURAL := float_exponent_width;
  CONSTANT fraction_width : NATURAL := float_fraction_width)
  RETURN UNRESOLVED_float IS
  VARIABLE result : UNRESOLVED_float (exponent_width DOWNTO -fraction_width);
  VARIABLE L : LINE;
  VARIABLE good : BOOLEAN;
BEGIN
  L := NEW STRING'(hstring);
  HREAD (L, result, good);
  deallocate (L);
  ASSERT (good)
  REPORT float_pkg'instance_name
    & "from_hstring: Bad string " & hstring
    SEVERITY error;
  RETURN result;
END FUNCTION from_hstring;

FUNCTION from_string (
  bstring : STRING; -- binary string
  size_res : UNRESOLVED_float) -- used for sizing only 
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN from_string (bstring => bstring,
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION from_string;

FUNCTION from_ostring (
  ostring : STRING; -- Octal string
  size_res : UNRESOLVED_float) -- used for sizing only 
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN from_ostring (ostring => ostring,
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION from_ostring;

FUNCTION from_hstring (
  hstring : STRING; -- hex string
  size_res : UNRESOLVED_float) -- used for sizing only 
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN from_hstring (hstring => hstring,
  exponent_width => size_res'high,
  fraction_width => - size_res'low);
END FUNCTION from_hstring;
-- rtl_synthesis on
-- pragma synthesis_on
FUNCTION to_float (
  arg : STD_LOGIC_VECTOR;
  CONSTANT exponent_width : NATURAL := float_exponent_width; -- length of FP output exponent
  CONSTANT fraction_width : NATURAL := float_fraction_width) -- length of FP output fraction
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN to_float (
  arg => to_stdulogicvector (arg),
  exponent_width => exponent_width,
  fraction_width => fraction_width);
END FUNCTION to_float;

FUNCTION to_float (
  arg : STD_LOGIC_VECTOR;
  size_res : UNRESOLVED_float)
  RETURN UNRESOLVED_float IS
BEGIN
  RETURN to_float (
  arg => to_stdulogicvector (arg),
  size_res => size_res);
END FUNCTION to_float;

-- For Verilog compatability
FUNCTION realtobits (arg : REAL) RETURN STD_LOGIC_VECTOR IS
  VARIABLE result : float64; -- 64 bit floating point
BEGIN
  result := to_float (arg => arg,
    exponent_width => float64'high,
    fraction_width => - float64'low);
  RETURN to_slv (result);
END FUNCTION realtobits;

FUNCTION bitstoreal (arg : STD_LOGIC_VECTOR) RETURN REAL IS
  VARIABLE arg64 : float64; -- arg converted to float
BEGIN
  arg64 := to_float (arg => arg,
    exponent_width => float64'high,
    fraction_width => - float64'low);
  RETURN to_real (arg64);
END FUNCTION bitstoreal;

END PACKAGE BODY float_pkg;