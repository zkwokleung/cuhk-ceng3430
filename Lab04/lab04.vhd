library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.ALL;

entity lab04 is
    Port (
        CLK : IN STD_LOGIC;
        DIN : IN STD_LOGIC_VECTOR(3 downto 0);
        BTNC, BTNU, BTND : IN STD_LOGIC;
        STATE : OUT STD_LOGIC_VECTOR(2 downto 0);
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

    component clock_divider_2hz is 
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
    signal clk_2hz : STD_LOGIC;
    signal clk_4hz : STD_LOGIC;
    signal sig_state : STD_LOGIC_VECTOR := "010";
    signal counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
    CD_1Hz: clock_divider_1hz port map(CLK, clk_1hz);

    CD_2Hz: clock_divider_2hz port map(CLK, clk_2hz);

    CD_4Hz: clock_divider_4hz port map(CLK, clk_4hz);

    -- The behaviour in different state
    process(sig_state, clk_1hz, clk_2hz, DIN)
    begin
        case sig_state is
            when "001" =>
                -- Stop the counter at "0000"
                if rising_edge(clk_2hz) and counter /= "0000" then
                    counter <= std_logic_vector(unsigned(counter)-1);
                else
                    counter <= counter;
                end if;
            when "100" =>
                -- Stop the counter at "1111"
                if rising_edge(clk_1hz) and counter /= "1111" then
                    counter <= std_logic_vector(unsigned(counter)+1);
                else
                    counter <= counter;
                end if;
            when "010" =>
                counter <= DIN;

            when others =>
                counter <= counter;
        end case;
    end process;


    -- Control the state with buttons
    process(sig_state, BTNC, BTNU, BTND)
    begin
        if rising_edge(clk_4hz) then
            case sig_state is
                when "001" =>
                    if BTNC = '1' then
                        sig_state <= "010";
                    else
                        sig_state <= sig_state;
                    end if;

                when "010" =>
                    if BTNU = '1' then
                        sig_state <= "100";
                    elsif BTND = '1' then
                        sig_state <= "001";
                    else
                        sig_state <= sig_state;
                    end if;

                when "100" =>
                    if BTNC = '1' then
                        sig_state <= "010";
                    else
                        sig_state <= sig_state;
                    end if;

                when others =>
                    sig_state <= sig_state;
            end case;
        end if;
    end process; 

    OUTPUT <= counter;
    STATE <= sig_state;
end Behavioral;