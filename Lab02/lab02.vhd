library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab02 is
    Port (
        A: in std_logic_vector(2 downto 0) := "000";
        B: in std_logic_vector(2 downto 0)  := "000";
        Cin: in std_logic  := '0';
        Sum: out std_logic_vector(3 downto 0) := "0000"
    );
end lab02;

architecture Behavioral of lab02 is

    component full_adder
        Port (
            A, B, Cin : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;

    signal Cout: std_logic_vector(1 downto 0) := "00";
    
begin
    fa0: full_adder port map(
        A => A(0), B => B(0), Cin => Cin, Sum => Sum(0), Cout => Cout(0)
    );

    fa1: full_adder port map(
        A => A(1), B => B(1), Cin => Cout(0), Sum => Sum(1), Cout => Cout(1)
    );

    fa2: full_adder port map(
        A => A(2), B => B(2), Cin => Cout(1), Sum => Sum(2), Cout => Sum(3)
    );
end Behavioral;
