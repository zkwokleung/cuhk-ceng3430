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
            Din, clk, reset : in std_logic;
            Q : buffer std_logic
        );
    end component;

    signal mux : std_logic_vector(3 downto 0) := (others => '0');

begin
    process (clk, reset) begin
        if (reset = '1') then
            mux <= (others => '0');
        elsif (clk'event and clk = '1') then
            case sel is
                when '0' => mux <= Din;
                when '1' => mux(0) <= '0';
                        mux(1) <= Q(0);
                        mux(2) <= Q(1);
                        mux(3) <= Q(2);
            end case;
        end if;
    end process;

    DFF1 : D_FF Port map (mux(0), clk, reset, Q(0));
    DFF2 : D_FF Port map (mux(1), clk, reset, Q(1));
    DFF3 : D_FF Port map (mux(2), clk, reset, Q(2));
    DFF4 : D_FF Port map (mux(3), clk, reset, Q(3));
end Behavioral;
