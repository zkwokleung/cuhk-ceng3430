LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY rotation_controller IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Inputs
        ROTATION_X_IN, ROTATION_Y_IN, ROTATION_Z_IN : IN STD_LOGIC;
    );
END rotation_controller;

ARCHITECTURE Behavioral OF rotation_controller IS

BEGIN

END Behavioral;