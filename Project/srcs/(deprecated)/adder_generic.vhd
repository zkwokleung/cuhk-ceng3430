LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- A generic adder that can be instantiated with any number of bits

ENTITY adder_generic IS
    GENERIC (
        N : INTEGER := 32
    );
    PORT (
        a : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        s : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        cout : OUT STD_LOGIC
    );
END adder_generic;

ARCHITECTURE adder_generic_arch OF adder_generic IS
    COMPONENT adder IS
        PORT (
            a, b : IN STD_LOGIC;
            ci : IN STD_LOGIC;
            s : OUT STD_LOGIC;
            co : OUT STD_LOGIC);
    END COMPONENT;
    SIGNAL couts : STD_LOGIC_VECTOR (n DOWNTO 0);
BEGIN

    couts(0) <= '0';
    cout <= couts(N);
    adder_insts : FOR i IN 0 TO N - 1 GENERATE
        adder_inst_i : adder
        PORT MAP(
            a => a(i), b => b(i), ci => couts(i), s => s(i), co => couts(i + 1)
        );
    END GENERATE;

END adder_generic_arch;