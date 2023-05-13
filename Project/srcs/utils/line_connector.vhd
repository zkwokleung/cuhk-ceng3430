--------------------------------------------------------------------
-- | Description : Determine if the current rendering position is 
-- |               on the line.
-- |               The Bresenham Line-Drawing Algorithm is adapted
-- |               for the implementation.
--------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY line_connector IS
    GENERIC (
        LINE_WIDTH : INTEGER := 1
    );
    PORT (
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;

        -- Displayer data
        DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;

        V1, V2 : IN vec2_int;

        -- Output
        DRAW_SIGNAL_OUT : OUT STD_LOGIC
    );
END line_connector;

ARCHITECTURE line_connector_arch OF line_connector IS
BEGIN
    PROCESS (RESET, CLK)
        VARIABLE dy, dx, pk : INTEGER := 0;
        VARIABLE slope_flag : BOOLEAN := false;
    BEGIN
        IF RESET = '1' THEN
            DRAW_SIGNAL_OUT <= '0';

            dy := 0;
            dx := 0;
            pk := 0;
        ELSIF rising_edge(CLK) THEN
            dy := ABS(V2(1) - V1(1));
            dx := ABS(V2(0) - V1(0));
            pk := 2 * dy - dx;
            slope_flag := dx > dy;

            -- If the current rendering position is within the rectangle region
            IF ((DISPLAY_COOR_H >= V1(0) AND DISPLAY_COOR_H <= V2(0)) OR
                (DISPLAY_COOR_H >= V2(0) AND DISPLAY_COOR_H <= V1(0))) AND
                ((DISPLAY_COOR_V >= V1(1) AND DISPLAY_COOR_V <= V2(1)) OR
                (DISPLAY_COOR_V >= V2(1) AND DISPLAY_COOR_V <= V1(1))) THEN
                -- Calculate if the display coordinate is a part of the line with the Bresenham Line-Drawing Algorithm

                -- IF pk < 0 THEN
                --     if(slope_flag) then
                --         pk := pk + (2 * dy);
                --     else
                --         DRAW_SIGNAL_OUT <= '0';
                --         pk := pk + (2 * dy);
                --     end if;
            ELSE
                DRAW_SIGNAL_OUT <= '1';
            END IF;

        END IF;
    END PROCESS;

END line_connector_arch; -- line_connector_arch