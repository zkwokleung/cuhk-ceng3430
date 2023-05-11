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
            p : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL a, b, p : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
    multiplier_generic_inst : multiplier_generic
    GENERIC MAP(N => 32)
    PORT MAP(a, b, p);

    PROCESS
    BEGIN
        a <= "00000000000000000000000000000000";
        b <= "00000000000000000000000000000000";
        WAIT FOR 10 ns;
        a <= "00000000000000000000000000001000";
        b <= "00000000000000000000000000001000";
        WAIT FOR 10 ns;
        a <= "00000000000000000000000011001000";
        b <= "00000000000000000000000000111000";
        WAIT FOR 10 ns;
        WAIT;
    END PROCESS;

END multiplier_generic_tb_arch;