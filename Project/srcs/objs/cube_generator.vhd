LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY IEEE_PROPOSED;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

-- Determine the color of the current rendering pixel
-- based on the current cube position and the size of the cube.

-- TODO: Transform the xyz coordinates into the screen space
-- TODO: Interpolate the lines between two vertexs
ENTITY cube_generator IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600;
        BIT_DEPTH : INTEGER := 4;
        FRAME_WIDTH : INTEGER := 1
    );
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Displayer data
        DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;

        -- Cube properties
        POS, ROT, SCALE : IN vec3_int;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    -- The base coordinates(before rotation) of the cube
    SIGNAL base_v0, base_v1, base_v2, base_v3, base_v4, base_v5, base_v6, base_v7 : vec3_float;

    -- The vertices of the cube
    SIGNAL v0, v1, v2, v3, v4, v5, v6, v7 : vec3_float;
BEGIN
    base_v0 <= (to_float(POS(0) - (SCALE(0)/2), 8, 23), to_float(POS(1) - (SCALE(1)/2), 8, 23), to_float(POS(2) - (SCALE(2)/2), 8, 23));
    base_v1 <= (to_float(POS(0) + (SCALE(0)/2), 8, 23), to_float(POS(1) - (SCALE(1)/2), 8, 23), to_float(POS(2) - (SCALE(2)/2), 8, 23));
    base_v2 <= (to_float(POS(0) + (SCALE(0)/2), 8, 23), to_float(POS(1) + (SCALE(1)/2), 8, 23), to_float(POS(2) - (SCALE(2)/2), 8, 23));
    base_v3 <= (to_float(POS(0) - (SCALE(0)/2), 8, 23), to_float(POS(1) + (SCALE(1)/2), 8, 23), to_float(POS(2) - (SCALE(2)/2), 8, 23));
    base_v4 <= (to_float(POS(0) - (SCALE(0)/2), 8, 23), to_float(POS(1) - (SCALE(1)/2), 8, 23), to_float(POS(2) + (SCALE(2)/2), 8, 23));
    base_v5 <= (to_float(POS(0) + (SCALE(0)/2), 8, 23), to_float(POS(1) - (SCALE(1)/2), 8, 23), to_float(POS(2) + (SCALE(2)/2), 8, 23));
    base_v6 <= (to_float(POS(0) + (SCALE(0)/2), 8, 23), to_float(POS(1) + (SCALE(1)/2), 8, 23), to_float(POS(2) + (SCALE(2)/2), 8, 23));
    base_v7 <= (to_float(POS(0) - (SCALE(0)/2), 8, 23), to_float(POS(1) + (SCALE(1)/2), 8, 23), to_float(POS(2) + (SCALE(2)/2), 8, 23));

    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            RED_OUT <= (OTHERS => '0');
            GREEN_OUT <= (OTHERS => '0');
            BLUE_OUT <= (OTHERS => '0');
        ELSIF rising_edge(CLK) THEN
            -- Calculate if the current pixel is in the cube
            IF (DISPLAY_COOR_H = POS(0) - (SCALE(0)/2) OR DISPLAY_COOR_H = POS(0) + (SCALE(0)/2)) OR
                (DISPLAY_COOR_V = POS(1) - (SCALE(1)/2) OR DISPLAY_COOR_V = POS(1) + (SCALE(1)/2))
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