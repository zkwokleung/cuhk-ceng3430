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
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;

        -- The position of the cube
        pos_x, pos_y, pos_z,

        -- The rotation of the cube
        rot_x, rot_y, rot_z,

        -- The size of the cube
        size : IN INTEGER;

        red_out, green_out, blue_out : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0);
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
    PROCESS (clk, reset)
    BEGIN
        IF reset = '1' THEN

        ELSIF rising_edge(clk) THEN

        END IF;
    END PROCESS;
END Behavioral;