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
    type state_type is (CountDown, Stopped, CountUp);

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
    signal sig_state : state_type := Stopped;
    signal counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
    CD_1Hz: clock_divider_1hz port map(CLK, clk_1hz);

    CD_2Hz: clock_divider_2hz port map(CLK, clk_2hz);

    CD_4Hz: clock_divider_4hz port map(CLK, clk_4hz);

    -- The behaviour in different state
    process(sig_state, clk_1hz, clk_2hz, clk_4hz, DIN)
    begin
        case sig_state is
            when CountDown =>
                -- Stop the counter at "0000"
                if rising_edge(clk_2hz) and counter /= "0000" then
                    counter <= std_logic_vector(unsigned(counter)-1);
                end if;
            when CountUp =>
                -- Stop the counter at "1111"
                if rising_edge(clk_1hz) and counter /= "1111" then
                    counter <= std_logic_vector(unsigned(counter)+1);
                end if;
            when Stopped =>
                if rising_edge(clk_4hz) then
                    counter <= DIN;
                end if;
        end case;
    end process;


    -- Control the state with buttons
    process(sig_state, BTNC, BTNU, BTND)
    begin
        if rising_edge(clk_4hz) then
            case sig_state is
                when CountDown =>
                    if BTNC = '1' then
                        sig_state <= Stopped;
                    end if;

                when Stopped =>
                    if BTNU = '1' then
                        sig_state <= CountUp;
                    end if;

                    if BTND = '1' then
                        sig_state <= CountDown;
                    end if;

                when CountUp =>
                    if BTNC = '1' then
                        sig_state <= Stopped;
                    end if;
            end case;
        end if;
    end process; 

    -- Change the state LED based on the state
    process(clk_4hz, sig_state)
    begin
        if rising_edge(clk_4hz) then
            case sig_state is
                when CountDown =>
                    State <= "001";
                when Stopped =>
                    State <= "010";
                when CountUp =>
                    State <= "100";
            end case;
        end if;
    end process;

    OUTPUT <= counter;
end Behavioral;