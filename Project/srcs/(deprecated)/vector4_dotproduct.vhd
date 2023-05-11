LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- <a0, a1, a2, a3> * <b0, b1, b2, b3> = dp
-- 
-- Each element is 32 bits wide

ENTITY vector4_dotproduct IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
        dp : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END vector4_dotproduct;

ARCHITECTURE vector4_dotproduct_arch OF vector4_dotproduct IS
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

    COMPONENT multiplier_generic
        GENERIC (
            N : INTEGER := 32
        );
        PORT (
            a, b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            p : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
        );
    END COMPONENT;

    -- Signal declarations
    SIGNAL adder_outs : STD_LOGIC_VECTOR(63 DOWNTO 0);
    SIGNAL mult_outs : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL cout_0, cout_1, cout_2 : STD_LOGIC;
BEGIN

    multiplier_generic_insts : FOR i IN 0 TO 3 GENERATE
        multiplier_generic_inst_i : multiplier_generic
        PORT MAP(
            a(i * 32 - 1 DOWNTO i * 32 - 32), b(i * 32 - 1 DOWNTO i * 32 - 32), mult_outs(i * 32 - 1 DOWNTO i * 32 - 32)
        );
    END GENERATE;

    adder_generic_inst_0 : adder_generic
    PORT MAP(
        mult_outs(31 DOWNTO 0), mult_outs(63 DOWNTO 32), adder_outs(31 DOWNTO 0), cout_0
    );

    adder_generic_inst_1 : adder_generic
    PORT MAP(
        mult_outs(95 DOWNTO 64), mult_outs(127 DOWNTO 96), adder_outs(63 DOWNTO 32), cout_1
    );

    adder_generic_inst_2 : adder_generic
    PORT MAP(
        adder_outs(31 DOWNTO 0), adder_outs(63 DOWNTO 32), dp, cout_2
    );

END vector4_dotproduct_arch;