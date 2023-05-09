LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY vertex_generator IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        x : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE vertex_generator_arch OF vertex_generator IS
BEGIN

END vertex_generator_arch;