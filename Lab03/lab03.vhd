library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PIPO is
    Port (
        sel, reset, clk : in std_logic;
        Din : in std_logic_vector(3 downto 0);
        Q : buffer std_logic_vector(3 downto 0)
    );
end PIPO;

architecture Behavioral of PIPO is
    component D_FF
        Port (
            D, clk, reset : in std_logic;
            Q : buffer std_logic
        );
    end component;

    component mux_ex
        port (in1,in2,sel: in std_logic;
                out1: out std_logic);
    end component;

    signal mux : std_logic_vector(3 downto 0) := (others => '0');
    signal zero : std_logic := '0';

begin
    mux1 : mux_ex Port map (Din(0), zero, sel, mux(0));
    mux2 : mux_ex Port map (Din(1), Q(0), sel, mux(1));
    mux3 : mux_ex Port map (Din(2), Q(1), sel, mux(2));
    mux4 : mux_ex Port map (Din(3), Q(2), sel, mux(3));

    DFF1 : D_FF Port map (mux(0), clk, reset, Q(0));
    DFF2 : D_FF Port map (mux(1), clk, reset, Q(1));
    DFF3 : D_FF Port map (mux(2), clk, reset, Q(2));
    DFF4 : D_FF Port map (mux(3), clk, reset, Q(3));
end Behavioral;
