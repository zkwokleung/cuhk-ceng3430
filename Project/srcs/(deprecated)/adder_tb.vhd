LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY adder_tb IS
END adder_tb;

ARCHITECTURE adder_tb_arch OF adder_tb IS
    COMPONENT adder IS
        PORT (
            a, b : IN STD_LOGIC;
            ci : IN STD_LOGIC;
            s : OUT STD_LOGIC;
            co : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL a, b, ci, s, co : STD_LOGIC;
BEGIN
    DUT : adder PORT MAP(
        a => a,
        b => b,
        ci => ci,
        s => s,
        co => co);

    PROCESS
    BEGIN
        a <= '0';
        b <= '0';
        ci <= '0';
        WAIT FOR 10 ns;
        a <= '0';
        b <= '0';
        ci <= '1';
        WAIT FOR 10 ns;
        a <= '0';
        b <= '1';
        ci <= '0';
        WAIT FOR 10 ns;
        a <= '0';
        b <= '1';
        ci <= '1';
        WAIT FOR 10 ns;
        a <= '1';
        b <= '0';
        ci <= '0';
        WAIT FOR 10 ns;
        a <= '1';
        b <= '0';
        ci <= '1';
        WAIT FOR 10 ns;
        a <= '1';
        b <= '1';
        ci <= '0';
        WAIT FOR 10 ns;
        a <= '1';
        b <= '1';
        ci <= '1';
        WAIT FOR 10 ns;
        a <= '0';
        b <= '0';
        ci <= '0';
        WAIT;
    END PROCESS;

END adder_tb_arch;