LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- A generic adder that can be instantiated with any number of bits

ENTITY adder_generic_tb IS
END adder_generic_tb;

ARCHITECTURE adder_generic_tb_arch OF adder_generic_tb IS
    COMPONENT adder_generic IS
        GENERIC (
            N : INTEGER := 32
        );
        PORT (
            a : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            s : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            cout : OUT STD_LOGIC
        );
    END COMPONENT;
    SIGNAL a, b, s : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL cout : STD_LOGIC;
BEGIN

    adder_generic_inst : adder_generic
    GENERIC MAP(N => 32)
    PORT MAP(a => a, b => b, s => s, cout => cout);

    PROCESS BEGIN
        a <= "00000000000000000000000000000000";
        b <= "00000000000000000000000000000000";
        WAIT FOR 10 ns;

        a <= "00000000000000000000000000000001";
        b <= "00000000000000000000000000000001";
        WAIT FOR 10 ns;

        a <= "00000000000111111100000000000001";
        b <= "00000000000000000000000000000001";
        WAIT FOR 10 ns;

        a <= "00000000000000000000000000000001";
        b <= "00000000000000011100000000000001";
        WAIT FOR 10 ns;

        a <= "00000111011100000000000000000001";
        b <= "00000011100011111100000000000001";
        WAIT FOR 10 ns;

        a <= "00000111011111111100000000000001";
        b <= "00001100000011111100000000000001";
        WAIT FOR 10 ns;

        a <= "00000111011100011100000000000001";
        b <= "00001111000011111100000000000001";
        WAIT FOR 10 ns;
        WAIT;
    END PROCESS;
END adder_generic_tb_arch;