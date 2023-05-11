LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- A generic multiplier that can be instantiated with any number of bits

ENTITY multiplier_generic IS
    GENERIC (
        N : INTEGER := 32
    );
    PORT (
        a : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        p : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
    );
END multiplier_generic;

ARCHITECTURE multiplier_generic_arch OF multiplier_generic IS
    SIGNAL product : STD_LOGIC_VECTOR(N * 2 - 1 downto 0);
BEGIN
    product <= STD_LOGIC_VECTOR(unsigned(a) * unsigned(b));
    p <= product(N - 1 DOWNTO 0);
END multiplier_generic_arch;