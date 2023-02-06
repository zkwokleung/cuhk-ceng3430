library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : buffer STD_LOGIC);
end D_FF;

architecture arch_dff of D_FF is
begin
    process (clk, reset)
    begin
        if reset = '1' then
            Q <= '0’;
        elsif rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end arch_dff;
