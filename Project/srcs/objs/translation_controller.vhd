--------------------------------------------------------------------
-- | Description : Apply translation to the vector
--------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY translation_controller IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Input
        VEC_IN : IN vec3_float;
        TRANSLATION : IN vec3_int;

        -- Output
        VEC_OUT : OUT vec3_float
    );
END ENTITY;

ARCHITECTURE translation_controller_arch OF translation_controller IS
BEGIN

END translation_controller_arch;