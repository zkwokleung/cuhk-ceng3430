library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.ALL;

entity lab04 is
    Port (
        CLK : IN STD_LOGIC;
        DIN : IN STD_LOGIC_VECTOR(3 downto 0);
        BTNC : IN STD_LOGIC;
        STATE : OUT STD_LOGIC;
        OUTPUT : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
end lab04;

architecture Behavioral of lab04 is
    component clock_divider_1hz is
        Port (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    end component;

    component clock_divider_4hz is
        Port (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    end component;

    signal clk_1hz : STD_LOGIC;
    signal clk_4hz : STD_LOGIC;
    signal sig_state : STD_LOGIC := '0';
    signal counter : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    CD_1Hz: clock_divider_1hz
        port map(CLK, clk_1hz);

    CD_4Hz: clock_divider_4hz
        port map(CLK, clk_4hz);

    process(clk_4hz)
    begin
        if rising_edge(clk_4hz) then
            if BTNC = '1' then
                sig_state <= NOT sig_state;
            else
                sig_state <= sig_state;
            end if;
        end if;
    end process; 

    process(sig_state, clk_1hz)
    begin
        if sig_state = '0' then
            counter <= DIN;
        else
            if rising_edge(clk_1hz) then
                counter <= std_logic_vector(unsigned(counter)+1);
            end if;
        end if;
    end process;

    OUTPUT <= counter;
    STATE <= sig_state;
    
end Behavioral;