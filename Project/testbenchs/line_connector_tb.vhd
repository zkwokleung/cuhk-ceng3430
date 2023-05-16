--------------------------------------------------------------------
-- | Description : Determine if the current rendering position is 
-- |               on the line.
-- |               The Bresenham Line-Drawing Algorithm is adapted
-- |               for the implementation.
--------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.my_fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY line_connector_tb IS
END line_connector_tb;

ARCHITECTURE line_connector_tb_arch OF line_connector_tb IS
    COMPONENT line_connector
        GENERIC (
            LINE_WIDTH : INTEGER := 1
        );
        PORT (
            RESET : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;
            V1, V2 : IN vec2_int;
            DRAW_SIGNAL_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL reset, clk, draw_signal_out : STD_LOGIC := '0';
    SIGNAL display_coor_h, display_coor_v : INTEGER := 0;
    SIGNAL v1, v2 : vec2_int := (0, 0);
BEGIN
    uut : line_connector
    GENERIC MAP(
        LINE_WIDTH => 1
    )
    PORT MAP(
        RESET => reset,
        CLK => clk,
        DISPLAY_COOR_H => display_coor_h,
        DISPLAY_COOR_V => display_coor_v,
        V1 => v1,
        V2 => v2,
        DRAW_SIGNAL_OUT => draw_signal_out
    );

    test_process : PROCESS
    BEGIN
        reset <= '1';
        WAIT FOR 10 ns;
        reset <= '0';
        WAIT FOR 10 ns;

        v1 <= (100, 100);
        v2 <= (200, 200);

        display_coor_h <= 100;
        display_coor_v <= 100;

        FOR i IN 0 TO 10 LOOP
            clk <= '1';
            WAIT FOR 1 ns;
            clk <= '0';
            WAIT FOR 1 ns;
        END LOOP;

        display_coor_h <= 200;
        display_coor_v <= 100;

        FOR i IN 0 TO 10 LOOP
            clk <= '1';
            WAIT FOR 1 ns;
            clk <= '0';
            WAIT FOR 1 ns;
        END LOOP;
        WAIT;
    END PROCESS;

END line_connector_tb_arch; -- line_connector_tb_arch