LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY screen_buffer IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;

        red_buffer_in, green_buffer_in, blue_buffer_in : IN STD_LOGIC_VECTOR(2457600 DOWNTO 0);
        red_out, green_out, blue_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END screen_buffer;

ARCHITECTURE screen_buffer_arch OF screen_buffer IS
    SIGNAL red_buffer : STD_LOGIC_VECTOR(2457600 DOWNTO 0);
    SIGNAL green_buffer : STD_LOGIC_VECTOR(2457600 DOWNTO 0);
    SIGNAL blue_buffer : STD_LOGIC_VECTOR(2457600 DOWNTO 0);
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

    red_out <= red_buffer(3 DOWNTO 0);
    green_out <= green_buffer(3 DOWNTO 0);
    blue_out <= blue_buffer(3 DOWNTO 0);
END screen_buffer_arch;