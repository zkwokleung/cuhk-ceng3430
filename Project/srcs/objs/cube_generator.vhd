LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.fixed_float_types.ALL;
USE work.fixed_pkg.ALL;
USE work.float_pkg.ALL;
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

        -- Rendering data
        PROJECTION_MATRIX, VIEW_MATRIX : IN mat4_float;

        -- Cube properties
        POS, ROT, SCALE : IN vec3_float;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    TYPE cube_vertex IS ARRAY(0 TO 7) OF vec3_float;

    COMPONENT world_to_screen_convertor IS
        GENERIC (
            SCREEN_WIDTH : INTEGER := 1024;
            SCREEN_HEIGHT : INTEGER := 600
        );
        PORT (
            PROJECTION_MATRIX,
            VIEW_MATRIX : IN mat4_float;
            POINT_3D : IN vec3_float;
            SCREEN_POS_OUT : OUT vec2_float
        );
    END COMPONENT;

    -- The base coordinates(before rotation) and the actual coordinate(after translation) of the cube
    SIGNAL base_vertices, vertices : cube_vertex;

    -- The vertices of the cube after rotation
BEGIN
    -- base_vertices <= (
    -- (POS(0) - (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
    -- (POS(0) + (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
    -- (POS(0) + (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
    -- (POS(0) - (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
    -- (POS(0) - (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
    -- (POS(0) + (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
    -- (POS(0) + (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
    -- (POS(0) - (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) + (SCALE(2)/2))
    -- );

    -- Color output process
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