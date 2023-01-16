----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/01/13 21:49:28
-- Design Name: 
-- Module Name: lab01 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab1_2 is
  Port (
    A: in std_logic_vector(1 downto 0);
    B: in std_logic_vector(1 downto 0);
    C: out std_logic_vector(3 downto 0)
  );
end lab1_2;

architecture Behavioral of lab1_2 is
    signal S: std_logic_vector(3 downto 0);
    
begin

    C(0) <= A(0) AND B(0);
    C(1) <= S(0) XOR S(1);
    C(2) <= S(2) XOR S(3);
    C(3) <= S(2) AND S(3);
    
    S(0) <= A(0) AND B(1);
    S(1) <= A(1) AND B(0);    
    S(2) <= S(0) AND S(1);
    S(3) <= A(1) AND B(1);
        
end Behavioral;