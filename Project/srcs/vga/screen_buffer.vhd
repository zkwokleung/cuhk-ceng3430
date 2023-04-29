LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY screen_buffer IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600;
        BIT_DEPTH : INTEGER := 4
    );
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- x and y coordinates
        COOR_X, COOR_Y : IN INTEGER;

        -- The buffers for the screen
        RED_BUFFER_IN, GREEN_BUFFER_IN, BLUE_BUFFER_IN : IN STD_LOGIC_VECTOR(SCREEN_WIDTH * SCREEN_HEIGHT * BIT_DEPTH - 1 DOWNTO 0);

        -- The selected pixel to be displayed base on the x and y coordinates
        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END screen_buffer;

ARCHITECTURE screen_buffer_arch OF screen_buffer IS
BEGIN
    PROCESS (CLK, RESET)
        IF (RESET = '1') THEN
            RED_buffer <= (OTHERS => '0');
            GREEN_buffer <= (OTHERS => '0');
            BLUE_buffer <= (OTHERS => '0');
        ELSIF (rising_edge(CLK)) THEN
            IF (COOR_X >= 0 AND COOR_X < SCREEN_WIDTH AND COOR_Y >= 0 AND COOR_Y < SCREEN_HEIGHT) THEN
                -- The coordinates are within the display area
                RED_OUT <= RED_BUFFER_IN(SCREEN_WIDTH * BIT_DEPTH * COOR_Y + BIT_DEPTH * COOR_X + BIT_DEPTH - 1 DOWNTO SCREEN_WIDTH * BIT_DEPTH * COOR_Y + BIT_DEPTH * COOR_X);
                GREEN_OUT <= GREEN_BUFFER_IN(SCREEN_WIDTH * BIT_DEPTH * COOR_Y + BIT_DEPTH * COOR_X + BIT_DEPTH - 1 DOWNTO SCREEN_WIDTH * BIT_DEPTH * COOR_Y + BIT_DEPTH * COOR_X);
                BLUE_OUT <= BLUE_BUFFER_IN(SCREEN_WIDTH * BIT_DEPTH * COOR_Y + BIT_DEPTH * COOR_X + BIT_DEPTH - 1 DOWNTO SCREEN_WIDTH * BIT_DEPTH * COOR_Y + BIT_DEPTH * COOR_X);
            ELSE
                -- The coordinates are outside the display area
                RED_OUT <= (OTHERS => '0');
                GREEN_OUT <= (OTHERS => '0');
                BLUE_OUT <= (OTHERS => '0');
            END IF;
        END IF;
    END PROCESS;
END screen_buffer_arch;