LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE std.textio.ALL;

ENTITY multiplier_generic_tb IS
END ENTITY multiplier_generic_tb;

ARCHITECTURE multiplier_generic_tb_arch OF multiplier_generic_tb IS
    COMPONENT multiplier_generic
        GENERIC (
            N : INTEGER := 32
        );
        PORT (
            a : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            b : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            c : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
        );
    END COMPONENT;

    FOR multiplier_generic_inst : multiplier_generic USE ENTITY work.multiplier_generic;

    SIGNAL a, b, c : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
    multiplier_generic_inst : multiplier_generic
    GENERIC MAP(N => 32)
    PORT MAP(a, b, c);

    PROCESS
        VARIABLE l : line;
    BEGIN
        a <= STD_LOGIC_VECTOR(to_unsigned(2, 32));
        b <= STD_LOGIC_VECTOR(to_unsigned(3, 32));
        ASSERT c = STD_LOGIC_VECTOR(to_unsigned(6, 32)) REPORT "Test Failed" SEVERITY error;
        WAIT;
    END PROCESS;

END multiplier_generic_tb_arch;