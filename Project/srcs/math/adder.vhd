LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY adder IS
    PORT (
        a, b : IN STD_LOGIC;
        ci : IN STD_LOGIC;
        s : OUT STD_LOGIC;
        co : OUT STD_LOGIC);
END adder;

ARCHITECTURE adder_arch OF adder IS
BEGIN
    s <= a XOR b XOR ci;
    co <= (a AND b) OR (a AND ci) OR (b AND ci);
END adder_arch;