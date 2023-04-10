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
    SIGNAL carry : STD_LOGIC;
BEGIN
    PROCESS (a, b)
    BEGIN
        carry <= '0';
        FOR i IN 0 TO N - 1 LOOP
            IF (a(i) = '1' AND b(i) = '1') THEN
                IF (carry = '1') THEN
                    s(i) <= '1';
                ELSE
                    s(i) <= '0';
                    carry <= '1';
                END IF;
            ELSIF (a(i) = '1' OR b(i) = '1') THEN
                IF (carry = '1') THEN
                    s(i) <= '0';
                ELSE
                    s(i) <= '1';
                END IF;
            ELSE
                IF (carry = '1') THEN
                    s(i) <= '1';
                    carry <= '0';
                ELSE
                    s(i) <= '0';
                END IF;
            END IF;
        END LOOP;
    END PROCESS;
    cout <= carry;

END adder_generic_arch;