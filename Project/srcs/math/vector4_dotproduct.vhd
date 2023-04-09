LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- <a0, a1, a2, a3> * <b0, b1, b2, b3> = c
-- 
-- Each element is 32 bits wide

ENTITY vector4_dotproduct IS
    PORT (
        a0, a1, a2, a3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        b0, b1, b2, b3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        c : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END vector4_dotproduct;

ARCHITECTURE vector4_dotproduct_arch OF vector4_dotproduct IS
    -- Component declarations
    COMPONENT multiplier_generic
        GENERIC (
            N : INTEGER := 32
        );
        PORT (
            a, b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            c : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
        );
    END COMPONENT;

    -- Signal declarations
    SIGNAL out0, out1, out2, out3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL t0, t1, t2, t3 : unsigned(31 DOWNTO 0);
BEGIN
    mult_a0_b0 : multiplier_generic
    GENERIC MAP(N => 32)
    PORT MAP(a => a0, b => b0, c => out0);

    mult_a1_b1 : multiplier_generic
    GENERIC MAP(N => 32)
    PORT MAP(a => a1, b => b1, c => out1);

    mult_a2_b2 : multiplier_generic
    GENERIC MAP(N => 32)
    PORT MAP(a => a2, b => b2, c => out2);

    mult_a3_b3 : multiplier_generic
    GENERIC MAP(N => 32)
    PORT MAP(a => a3, b => b3, c => out3);

    t0 <= unsigned(out0);
    t1 <= unsigned(out1);
    t2 <= unsigned(out2);
    t3 <= unsigned(out3);

    c <= STD_LOGIC_VECTOR(t0 + t1 + t2 + t3);

END vector4_dotproduct_arch;