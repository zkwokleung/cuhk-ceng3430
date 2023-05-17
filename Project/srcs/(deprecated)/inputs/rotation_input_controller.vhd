LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE ieee.fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY rotation_input_controller IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Input controls
        POSITIVE_X_IN, POSITIVE_Y_IN, NEGATIVE_X_IN, NEGATIVE_Y_IN : IN STD_LOGIC;

        -- Output controls
        ROTATION_VEC3 : OUT vec3_int
    );
END rotation_input_controller;

ARCHITECTURE rotation_input_controller_arch OF rotation_input_controller IS
    SIGNAL rot_tmp : vec3_int := (0, 0, 0);
BEGIN
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            rot_tmp <= (0, 0, 0);
        ELSIF rising_edge(CLK) THEN
            IF POSITIVE_X_IN = '1' THEN
                rot_tmp <= rot_tmp + (0, 0, 1);
            END IF;

            IF POSITIVE_Y_IN = '1' THEN
                rot_tmp <= rot_tmp + (0, 1, 0);
            END IF;

            IF NEGATIVE_X_IN = '1' THEN
                rot_tmp <= rot_tmp + (0, 0, -1);
            END IF;

            IF NEGATIVE_Y_IN = '1' THEN
                rot_tmp <= rot_tmp + (0, -1, 0);
            END IF;
        END IF;
    END PROCESS;

    ROTATION_VEC3 <= rot_tmp;

END rotation_input_controller_arch;