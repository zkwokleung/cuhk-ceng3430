LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY vga_displayer IS
    PORT (
        clk : IN STD_LOGIC;
        vga_hsync : OUT STD_LOGIC;
        vga_vsync : OUT STD_LOGIC;
        vga_red, vga_green, vga_blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    );
END vga_displayer;

ARCHITECTURE vga_displayer_arch OF vga_displayer IS
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

    -- Clock
    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk1Hz, clk10Hz, clk50MHz : STD_LOGIC;

BEGIN
    -- generate clocks
    u_clk1hz : clock_divider GENERIC MAP(N => 50000000) PORT MAP(clk, clk1Hz);
    u_clk10hz : clock_divider GENERIC MAP(N => 5000000) PORT MAP(clk, clk10Hz);
    u_clk50mhz : clock_divider GENERIC MAP(N => 1) PORT MAP(clk, clk50MHz);

    --------- VGA UTILITY START ---------
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
    vsync_gen_proc : PROCESS (vcount)
    BEGIN
        IF (vcount <= V_SYNC) THEN
            vsync <= '1';
        ELSE
            vsync <= '0';
        END IF;
    END PROCESS vsync_gen_proc;
    --------- VGA UTILITY END ---------

END vga_displayer_arch;