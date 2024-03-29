LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- Handles the VGA output and the vga synchronization

ENTITY vga_controller IS
    PORT (
        -- Clock
        CLK : IN STD_LOGIC;

        -- VGA
        VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
        VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Input
        RED_IN, GREEN_IN, BLUE_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Output
        COOR_H, COOR_V : OUT INTEGER;
        NEXT_COOR_H, NEXT_COOR_V : OUT INTEGER
    );
END vga_controller;

ARCHITECTURE vga_controller_arch OF vga_controller IS
    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    --------- VGA CONSTANT START ---------
    -- row constants
    CONSTANT h_total : INTEGER := 1344 - 1;
    CONSTANT h_sync : INTEGER := 48 - 1;
    CONSTANT h_back : INTEGER := 240 - 1;
    CONSTANT h_start : INTEGER := 48 + 240 - 1;
    CONSTANT h_active : INTEGER := 1024 - 1;
    CONSTANT h_end : INTEGER := 1344 - 32 - 1;
    CONSTANT h_front : INTEGER := 32 - 1;

    -- column constants
    CONSTANT v_total : INTEGER := 625 - 1;
    CONSTANT v_sync : INTEGER := 3 - 1;
    CONSTANT v_back : INTEGER := 12 - 1;
    CONSTANT v_start : INTEGER := 3 + 12 - 1;
    CONSTANT v_active : INTEGER := 600 - 1;
    CONSTANT v_end : INTEGER := 625 - 10 - 1;
    CONSTANT v_front : INTEGER := 10 - 1;

    SIGNAL h_count, v_count : INTEGER;
    SIGNAL clk_50Mhz : STD_LOGIC;
    --------- VGA CONSTANT END ---------    
BEGIN
    -- Clock divider
    clk_divider : clock_divider
    GENERIC MAP(N => 1)
    PORT MAP(
        CLK_IN => CLK,
        CLK_OUT => clk_50Mhz
    );

    --------- VGA UTILITY START ---------
    -- horizontal counter in [0, h_total]
    pixel_count_proc : PROCESS (clk_50Mhz)
    BEGIN
        IF (rising_edge(clk_50Mhz)) THEN
            IF (h_count = h_total)
                THEN
                h_count <= 0;
            ELSE
                h_count <= h_count + 1;
            END IF;
        END IF;
    END PROCESS pixel_count_proc;

    -- generate hsync in [0, h_sync)
    hsync_gen_proc : PROCESS (h_count)
    BEGIN
        IF (h_count <= h_sync)
            THEN
            VGA_HSYNC <= '1';
        ELSE
            VGA_HSYNC <= '0';
        END IF;
    END PROCESS hsync_gen_proc;

    -- vertical counter in [0, v_total]
    line_count_proc : PROCESS (clk_50Mhz)
    BEGIN
        IF (rising_edge(clk_50Mhz)) THEN
            IF (h_count = h_total) THEN
                IF (v_count = v_total) THEN
                    v_count <= 0;
                ELSE
                    v_count <= v_count + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS line_count_proc;

    -- generate vsync in [0, v_sync)
    vsync_gen_proc : PROCESS (v_count)
    BEGIN
        IF (v_count <= v_sync) THEN
            VGA_VSYNC <= '1';
        ELSE
            VGA_VSYNC <= '0';
        END IF;
    END PROCESS vsync_gen_proc;
    --------- VGA UTILITY END ---------

    -- Calculate the coordinates
    coor_calc_proc : PROCESS (clk_50Mhz)
    BEGIN
        IF (rising_edge(clk_50Mhz)) THEN

            -- Calculate the coordinates
            COOR_H <= h_count - h_start;
            COOR_V <= v_count - v_start;
            NEXT_COOR_H <= h_count - h_start + 1;
            NEXT_COOR_V <= v_count - v_start + 1;
        END IF;
    END PROCESS;

    -- Rendering process
    render_proc : PROCESS (clk_50Mhz)
    BEGIN
        IF (rising_edge(clk_50Mhz)) THEN
            -- Check if we are in the active area
            IF ((h_count >= h_start AND h_count <= h_end) AND
                (v_count >= v_start AND v_count <= v_end))
                THEN
                -- Render the color
                VGA_RED <= RED_IN;
                VGA_GREEN <= GREEN_IN;
                VGA_BLUE <= BLUE_IN;

            ELSE
                -- Set the color to black
                VGA_RED <= "0000";
                VGA_GREEN <= "0000";
                VGA_BLUE <= "0000";
            END IF;
        END IF;
    END PROCESS;
END vga_controller_arch;