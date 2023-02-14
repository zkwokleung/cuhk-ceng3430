library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.ALL;

entity clock_divider_4hz
    is Port (
    CLK_IN : IN STD_LOGIC;
    CLK_OUT : OUT STD_LOGIC
    );
end clock_divider_4hz;

architecture Behavioral of clock_divider_4hz is
    signal counter : integer := 0;
    signal sig : STD_LOGIC := '0';
begin
    CLK_OUT <= sig;

    process(CLK_IN)
    begin
        if (rising_edge(CLK_IN)) then
            if(counter = 12500000 - 1) then
                sig <= NOT sig;
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
end Behavioral;