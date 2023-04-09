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
        c : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
    );
END multiplier_generic;

ARCHITECTURE multiplier_generic_arch OF multiplier_generic IS
    -- Component declarations
    COMPONENT adder_generic
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

    SIGNAL multiplicand : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL multiplier : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL product : STD_LOGIC_VECTOR(N * 2 - 1 DOWNTO 0);
BEGIN

    PROCESS (a, b)
    BEGIN
        multiplicand <= a;
        multiplier <= b;
        product <= (OTHERS => '0');

        FOR i IN 0 TO N - 1 LOOP
            IF multiplier(i) = '1' THEN
                product <= product + (multiplicand & (OTHERS => '0'));
            END IF;
            multiplicand <= multiplicand & '0';
        END LOOP;
        c <= product(N - 1 DOWNTO 0);
    END PROCESS;
END multiplier_generic_arch;