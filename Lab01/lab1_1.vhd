library ieee;
use ieee.std_logic_1164.all;

entity lab1_1 is
  Port (
    A, B: in std_logic_vector(1 downto 0);
    C: out std_logic
  );
end lab1_1;

architecture Behavioral of lab1_1 is    
begin

  C <= '1' when A = B else '0';

end Behavioral;