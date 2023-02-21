LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY demo IS
    PORT (
        clk : IN STD_LOGIC;
        hsync, vsync : OUT STD_LOGIC;
        red, green, blue : OUT
        STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END demo;

ARCHITECTURE Behavioral OF demo IS
    --------- VGA CONSTANT START ---------
    -- row constants
    CONSTANT H_TOTAL : INTEGER := 1344 - 1;
    CONSTANT H_SYNC : INTEGER := 48 - 1;
    CONSTANT H_BACK : INTEGER := 240 - 1;
    CONSTANT H_START : INTEGER := 48 + 240 - 1;
    CONSTANT H_ACTIVE : INTEGER := 1024 - 1;
    CONSTANT H_END : INTEGER := 1344 - 32 - 1;
    CONSTANT H_FRONT : INTEGER := 32 - 1;

    -- column constants
    CONSTANT V_TOTAL : INTEGER := 625 - 1;
    CONSTANT V_SYNC : INTEGER := 3 - 1;
    CONSTANT V_BACK : INTEGER := 12 - 1;
    CONSTANT V_START : INTEGER := 3 + 12 - 1;
    CONSTANT V_ACTIVE : INTEGER := 600 - 1;
    CONSTANT V_END : INTEGER := 625 - 10 - 1;
    CONSTANT V_FRONT : INTEGER := 10 - 1;
    SIGNAL hcount, vcount : INTEGER;

    --------- VGA CONSTANT END ---------
    -- for clock
    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk1Hz, clk10Hz, clk50MHz : STD_LOGIC;

    -- for the position of block
    CONSTANT X_STEP : INTEGER := 40;
    CONSTANT Y_STEP : INTEGER := 120;
    CONSTANT SIZE : INTEGER := 120;
    SIGNAL x : INTEGER := H_START;
    SIGNAL y : INTEGER := V_START;
    SIGNAL dx : INTEGER := X_STEP;
    SIGNAL dy : INTEGER := Y_STEP;

    -- for the color of the block
    TYPE colors IS (C_Black, C_Green, C_Blue, C_Red, C_White, C_Yellow, C_DarkGreen, C_LightGreen, C_Pink);
    TYPE T_1D IS ARRAY(0 TO 4) OF colors;
    CONSTANT fig : T_1D := (C_Green, C_Blue, C_Red,
    C_White, C_Yellow);
    SIGNAL color : colors;
BEGIN
    --------- VGA UTILITY START ---------
    -- generate 50MHz clock
    u_clk50mhz : clock_divider GENERIC MAP(N => 1)
    PORT MAP(clk, clk50MHz);

    -- horizontal counter in [0, H_TOTAL]
    pixel_count_proc : PROCESS (clk50MHz)
    BEGIN
        IF (rising_edge(clk50MHz))
            THEN
            IF (hcount = H_TOTAL)
                THEN
                hcount <= 0;
            ELSE
                hcount <= hcount + 1;
            END IF;
        END IF;
    END PROCESS pixel_count_proc;

    -- generate hsync in [0, H_SYNC)
    hsync_gen_proc : PROCESS (hcount)
    BEGIN
        IF (hcount <= H_SYNC)
            THEN
            hsync <= '1';
        ELSE
            hsync <= '0';
        END IF;
    END PROCESS hsync_gen_proc;

    -- vertical counter in [0, V_TOTAL]
    line_count_proc : PROCESS (clk50MHz)
    BEGIN
        IF (rising_edge(clk50MHz))
            THEN
            IF (hcount = H_TOTAL)
                THEN
                IF (vcount = V_TOTAL)
                    THEN
                    vcount <= 0;
                ELSE
                    vcount <= vcount + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS line_count_proc;

    -- generate vsync in [0, V_SYNC)
    vsync_gen_proc : PROCESS (hcount)
    BEGIN
        IF (vcount <= V_SYNC) THEN
            vsync <= '1';
        ELSE
            vsync <= '0';
        END IF;
    END PROCESS vsync_gen_proc;

    -- generate 1Hz, 10Hz clock
    u_clk1hz : clock_divider GENERIC MAP(N => 50000000)
    PORT MAP(clk, clk1Hz);

    u_clk10hz : clock_divider GENERIC MAP(N => 5000000)
    PORT MAP(clk, clk10Hz);

    -- maintain the top left point (x, y) of the running BLOCK.
    PROCESS (clk10Hz)
    BEGIN
        IF (rising_edge(clk10Hz)) THEN
            IF (x + SIZE >= H_END) THEN
                x <= H_START;
                IF (y + SIZE >= V_END) THEN
                    y <= V_START;
                ELSE
                    y <= y + dy;
                END IF;
            ELSE
                x <= x + dx;
            END IF;
        END IF;
    END PROCESS;

    -- select the correct color of the pixel (hcount, vcount).
    PROCESS (hcount, vcount, x, y)
    BEGIN
        IF ((hcount >= H_START AND hcount < H_END) AND
            (vcount >= V_START AND vcount < V_TOTAL))
            THEN
            IF (x <= hcount AND hcount < x + SIZE AND
                y < vcount AND vcount < y + SIZE)
                THEN
                color <= fig((y - V_START)/Y_STEP);
            ELSE
                color <= C_BLACK;
            END IF;
        ELSE
            color <= C_BLACK;
        END IF;
    END PROCESS;

    -- output the correct RGB according to the SIGNAL 'color'.
    PROCESS (color)
    BEGIN
        CASE(color) IS
            WHEN C_Black =>
            red <= "0000";
            green <= "0000";
            blue <= "0000";

            WHEN C_Green =>
            red <= "0000";
            green <= "1000";
            blue <= "0000";

            WHEN C_Blue =>
            red <= "0000";
            green <= "0000";
            blue <= "1111";

            WHEN C_Red =>
            red <= "1111";
            green <= "0000";
            blue <= "0000";

            WHEN C_White =>
            red <= "1111";
            green <= "1111";
            blue <= "1111";

            WHEN C_Yellow =>
            red <= "1111";
            green <= "1111";
            blue <= "0000";

            WHEN C_DarkGreen =>
            red <= "0000";
            green <= "0111";
            blue <= "0000";

            WHEN C_LightGreen =>
            red <= "0000";
            green <= "1111";
            blue <= "0000";

            WHEN C_Pink =>
            red <= "1111";
            green <= "0000";
            blue <= "1111";

            WHEN OTHERS =>
            red <= "0000";
            green <= "0000";
            blue <= "0000";
        END CASE;
    END PROCESS;
END Behavioral;