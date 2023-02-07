library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_ex is
    port (in1,in2,sel: in std_logic;
    out1: out std_logic);
end mux_ex;

architecture mux_ex_arch of mux_ex is
begin
    process (in1, in2, sel)
    begin
        if sel = '0' then
            out1 <= in1; -- select in1
        else
            out1 <= in2; -- select in2
        end if;
    end process;
end mux_ex_arch;