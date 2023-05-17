LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY display_controller IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC
    );
END display_controller;

ARCHITECTURE display_controller_arch OF display_controller IS
    SIGNAL red_buffer : STD_LOGIC_VECTOR(4096 DOWNTO 0);
    SIGNAL green_buffer : STD_LOGIC_VECTOR(4096 DOWNTO 0);
    SIGNAL blue_buffer : STD_LOGIC_VECTOR(4096 DOWNTO 0);
BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF (reset = '1') THEN
            red_buffer <= (OTHERS => '0');
            green_buffer <= (OTHERS => '0');
            blue_buffer <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            red_buffer <= red_buffer_in;
            green_buffer <= green_buffer_in;
            blue_buffer <= blue_buffer_in;
        END IF;
    END PROCESS;

    red_buffer_out <= red_buffer;
    green_buffer_out <= green_buffer;
    blue_buffer_out <= blue_buffer;
END display_controller_arch;