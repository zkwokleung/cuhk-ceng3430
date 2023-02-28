LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ssd_ctrl IS
  PORT (
    -- TODO-1: Create the input/output ports
  );
END ssd_ctrl;

ARCHITECTURE Behavioral OF ssd_ctrl IS
  -- TODO-4: Create the component of clk_div

  -- Add any signal if necessary
  SIGNAL digit : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
  -- TODO-2: Fill in the blank
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

  -- TODO-5 : Port map the clk_div component (100MHz --> 100Hz)

  -- TODO-6: Time-multiplexing (Create as many process as you want, OR use both sequential and combinational statement)
  digit <= data_in(3 DOWNTO 0);

END Behavioral;