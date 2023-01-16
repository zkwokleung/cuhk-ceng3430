library ieee;
use ieee.std_logic_1164.all;

entity tb_lab1_1 is
end tb_lab1_1;

architecture tb of tb_lab1_1 is

    component lab1_1
        port (A : in std_logic_vector(1 downto 0);
              B : in std_logic_vector(1 downto 0);
              C : out std_logic
        );
    end component;

    signal A : std_logic_vector(1 downto 0);
    signal B : std_logic_vector(1 downto 0);
    signal C : std_logic;

begin

    dut : lab1_1
    port map (A => A,
              B => B,
              C => C);

    stimuli : process
    begin
        A <= "00";
        B <= "00";
        
        for i in 0 to 1 loop
            if (i = 0) then B(1) <= '0'; else B(1) <= '1'; end if;
            for j in 0 to 1 loop
                if (j = 0) then B(0) <= '0'; else B(0) <= '1'; end if;
                for k in 0 to 1 loop
                    if (k = 0) then A(1) <= '0'; else A(1) <= '1'; end if;
                    for l in 0 to 1 loop
                        if (l = 0) then A(0) <= '0'; else A(0) <= '1'; end if;
                        wait for 10ns;
                    end loop;
                end loop;
            end loop;
        end loop;

        wait;
    end process;

end tb;