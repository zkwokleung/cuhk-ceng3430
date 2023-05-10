LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY rotation_input_controller IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Input controls
        POSITIVE_X_IN, POSITIVE_Y_IN, NEGATIVE_X_IN, NEGATIVE_Y_IN : IN STD_LOGIC;

        -- Output controls
        ROTATION_VEC3 : OUT vec3_float
    );
END rotation_input_controller;

ARCHITECTURE rotation_input_controller_arch OF rotation_input_controller IS
    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk_50Hz : STD_LOGIC;
    SIGNAL rot_tmp : vec3_float := (float32_zero, float32_zero, float32_zero);
BEGIN
    clk_div_50Hz : clock_divider
    GENERIC MAP(N => 100000000 / 50)
    PORT MAP(CLK_IN => CLK, CLK_OUT => clk_50Hz);

    PROCESS (clk_50Hz, RESET)
    BEGIN
        IF RESET = '1' THEN
            ROTATION_VEC3 <= (float32_zero, float32_zero, float32_zero);
        ELSIF rising_edge(clk_50Hz) THEN
            IF POSITIVE_X_IN = '1' THEN
                ROTATION_VEC3 <= rot_tmp + (float32_zero, float32_zero, float32_one);
            END IF;

            IF POSITIVE_Y_IN = '1' THEN
                ROTATION_VEC3 <= rot_tmp + (float32_zero, float32_one, float32_zero);
            END IF;

            IF NEGATIVE_X_IN = '1' THEN
                ROTATION_VEC3 <= rot_tmp + (float32_zero, float32_zero, -1 * float32_one);
            END IF;

            IF NEGATIVE_Y_IN = '1' THEN
                ROTATION_VEC3 <= rot_tmp + (float32_zero, -1 * float32_one, float32_zero);
            END IF;
        END IF;
    END PROCESS;

END rotation_input_controller_arch;