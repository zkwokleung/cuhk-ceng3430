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
    SIGNAL product : STD_LOGIC_VECTOR(N * 2 - 1 DOWNTO 0);

    SIGNAL adder_out_s : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL adder_cout : STD_LOGIC;
    SIGNAL product_right_shift : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
BEGIN
    product_right_shift <= product(N - 1 DOWNTO 1) & "0";

    adder_generic_inst : adder_generic
    GENERIC MAP(N => 32)
    PORT MAP(
        a => a,
        b => product(N * 2 - 1 DOWNTO N),
        s => adder_out_s,
        cout => adder_cout
    );

    PROCESS (a, b)
    BEGIN
        FOR i IN 0 TO N - 1 LOOP
            IF b(i) = '1' THEN
                product(N * 2 - 1 DOWNTO N) <= adder_out_s;
            ELSE
                product <= product;
            END IF;

        END LOOP;
    END PROCESS;

    p <= product(N - 1 DOWNTO 0);
END multiplier_generic_arch;