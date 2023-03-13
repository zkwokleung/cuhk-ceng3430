----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2017 04:05:02 PM
-- Design Name: 
-- Module Name: ssd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ssd_controller is
    generic (
        cat_period : integer := 1000
	);
    Port ( clk : in STD_LOGIC;
           value : in STD_LOGIC_VECTOR (7 downto 0);
           ssd : out STD_LOGIC_VECTOR (6 downto 0);
           ssdcat : out STD_LOGIC
    );
end ssd_controller;

architecture Behavioral of ssd_controller is
signal digit: STD_LOGIC_VECTOR(3 downto 0);
--signal count: STD_LOGIC_VECTOR(16 downto 0) := (OTHERS => '0');
signal count: INTEGER range 0 to cat_period := 0;
signal ms_pulse: STD_LOGIC;
signal sel: STD_LOGIC := '0';
begin
    process(clk, count)
    begin
        if (clk'event and clk='1') then
            if (count = cat_period-1) then
                count <= 0;
                ms_pulse <= '1';
            else
                count <= count + 1;
                ms_pulse <= '0';
            end if;
        end if;
    end process;

    process(clk, sel, ms_pulse)
    begin
        if (clk'event and clk='1') then
			if (ms_pulse = '1') then
				sel <= not sel;
			else
				sel <= sel;
			end if;
        end if;
    end process;
    ssdcat <= sel;

    digit <= value(7 downto 4) when sel = '1' else
            value(3 downto 0);
                
    process(clk, digit)
    begin
        if (clk'event and clk='1') then
            case digit is
                when x"0" => ssd <= b"1111110";
                when x"1" => ssd <= b"0110000";
                when x"2" => ssd <= b"1101101";
                when x"3" => ssd <= b"1111001";
                when x"4" => ssd <= b"0110011";
                when x"5" => ssd <= b"1011011";
                when x"6" => ssd <= b"1011111";
                when x"7" => ssd <= b"1110000";
                when x"8" => ssd <= b"1111111";
                when x"9" => ssd <= b"1110011";
                when x"a" => ssd <= b"1110111";
                when x"b" => ssd <= b"0011111";
                when x"c" => ssd <= b"1001110";
                when x"d" => ssd <= b"0111101";
                when x"e" => ssd <= b"1001111";
                when x"f" => ssd <= b"1000111";
                when others => ssd <= b"0000000";
            end case;
        end if;
    end process;
end Behavioral;
