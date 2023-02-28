LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ssd_ctrl IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    sel : BUFFER STD_LOGIC := '0';
    ssd : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END ssd_ctrl;

ARCHITECTURE Behavioral OF ssd_ctrl IS
  COMPONENT clock_divider
    GENERIC (
      N : INTEGER
    );
    PORT (
      CLK_IN : IN STD_LOGIC;
      CLK_OUT : OUT STD_LOGIC
    );
  END COMPONENT;

  SIGNAL digit : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL clk100Hz : STD_LOGIC;

BEGIN
  PROCESS (digit) BEGIN
    CASE digit IS
      WHEN "0000" => ssd <= "1111110"; -- 0x0
      WHEN "0001" => ssd <= "0110000"; -- 0x1
      WHEN "0010" => ssd <= "1101101"; -- 0x2
      WHEN "0011" => ssd <= "1111001"; -- 0x3
      WHEN "0100" => ssd <= "0110011"; -- 0x4
      WHEN "0101" => ssd <= "1011011"; -- 0x5
      WHEN "0110" => ssd <= "1011111"; -- 0x6
      WHEN "0111" => ssd <= "1110000"; -- 0x7
      WHEN "1000" => ssd <= "1111111"; -- 0x8
      WHEN "1001" => ssd <= "1111011"; -- 0x9
      WHEN "1010" => ssd <= "1110111"; -- 0xA
      WHEN "1011" => ssd <= "0011111"; -- 0xb (lowercase)
      WHEN "1100" => ssd <= "1001110"; -- 0xC
      WHEN "1101" => ssd <= "0111101"; -- 0xd (lowercase)
      WHEN "1110" => ssd <= "1001111"; -- 0xE
      WHEN "1111" => ssd <= "1000111"; -- 0xF
      WHEN OTHERS => ssd <= "00000000";
    END CASE;
  END PROCESS;

  -- Port map the clk_div component (100MHz --> 100Hz)
  clk_div_inst : clock_divider
  GENERIC MAP(
    N => 50000
  )
  PORT MAP(
    CLK_IN => clk,
    CLK_OUT => clk100Hz
  );

  -- Toggle the selector
  PROCESS (clk100Hz) BEGIN
    IF (rising_edge(clk100Hz)) THEN
      IF (sel = '0') THEN
        sel <= '1';
      ELSIF (sel = '1') THEN
        sel <= '0';
      ELSE
        sel <= '0';
      END IF;
    END IF;
  END PROCESS;

  -- Control the digit displayed
  PROCESS (clk100Hz) BEGIN
    IF (rising_edge(clk100Hz)) THEN
      IF (sel = '0') THEN
        digit <= data_in(7 DOWNTO 4);
      ELSIF (sel = '1') THEN
        digit <= data_in(3 DOWNTO 0);
      ELSE
        digit <= digit;
      END IF;
    END IF;
  END PROCESS;

END Behavioral;