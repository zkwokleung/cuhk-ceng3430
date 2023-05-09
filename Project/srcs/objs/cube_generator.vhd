LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

-- Determine the color of the current rendering pixel
-- based on the current cube position and the size of the cube.

-- TODO: Transform the xyz coordinates into the screen space
-- TODO: Interpolate the lines between two vertexs
ENTITY cube_generator IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600;
        BIT_DEPTH : INTEGER := 4
    );
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Displayer data
        DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;

        -- Cube properties
        POS_X, POS_Y, POS_Z,
        ROT_X, ROT_Y, ROT_Z,
        SIZE : IN INTEGER;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0);
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    -- The vertices of the cube
    SIGNAL x0, y0, z0,
    x1, y1, z1,
    x2, y2, z2,
    x3, y3, z3,
    x4, y4, z4,
    x5, y5, z5 : INTEGER;
BEGIN
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            RED_OUT <= (OTHERS => '0');
            GREEN_OUT <= (OTHERS => '0');
            BLUE_OUT <= (OTHERS => '0');
        ELSIF rising_edge(CLK) THEN
            -- Calculate if the current pixel is in the cube
            IF (DISPLAY_COOR_H >= POS_X - SIZE AND DISPLAY_COOR_H <= POS_X + SIZE) AND
                (DISPLAY_COOR_V >= POS_Y - SIZE AND DISPLAY_COOR_V <= POS_Y + SIZE)
                THEN
                RED_OUT <= "1111";
                GREEN_OUT <= "1111";
                BLUE_OUT <= "1111";
            ELSE
                RED_OUT <= (OTHERS => '0');
                GREEN_OUT <= (OTHERS => '0');
                BLUE_OUT <= (OTHERS => '0');
            END IF;
        END IF;
    END PROCESS;
END Behavioral;