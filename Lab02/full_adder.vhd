library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A, B, Cin : in std_logic;
        Sum, Cout : out std_logic
    );
end full_adder;

architecture Behavioral of full_adder is
    signal S1, S2, S3: std_logic;
begin
    S1 <= A xor B;
    S2 <= S1 and Cin;
    S3 <= A and B;
    
    Sum <= S1 xor Cin;
    Cout <= S2 or S3;

end Behavioral;
