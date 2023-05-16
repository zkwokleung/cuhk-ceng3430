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
    CONSTANT value_error : fixed := to_fixed(10);

    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk_50Mhz : STD_LOGIC;
BEGIN
    -- Clock divider
    clk_divider : clock_divider
    GENERIC MAP(N => 1)
    PORT MAP(
        CLK_IN => CLK,
        CLK_OUT => clk_50Mhz
    );

    PROCESS (clk_50Mhz, V1, V2, DISPLAY_COOR_H, DISPLAY_COOR_V)
        VARIABLE m, c : fixed;
    BEGIN
        IF rising_edge(clk_50Mhz) THEN
            m := to_fixed(V2(1) - V1(1)) / to_fixed(V2(0) - V1(0));
            c := to_fixed(V1(1)) - m * to_fixed(V1(0));

            -- If the current rendering position is within the rectangle region
            IF ((DISPLAY_COOR_H >= V1(0) AND DISPLAY_COOR_H <= V2(0)) OR
                (DISPLAY_COOR_H >= V2(0) AND DISPLAY_COOR_H <= V1(0))) AND
                ((DISPLAY_COOR_V >= V1(1) AND DISPLAY_COOR_V <= V2(1)) OR
                (DISPLAY_COOR_V >= V2(1) AND DISPLAY_COOR_V <= V1(1))) THEN
                -- Calculate if the display coordinate is a part of the line 
                IF ABS(to_fixed(DISPLAY_COOR_V) - (m * to_fixed(DISPLAY_COOR_H) + c)) <= value_error THEN
                    DRAW_SIGNAL_OUT <= '1';
                ELSE
                    DRAW_SIGNAL_OUT <= '0';
                END IF;
            ELSE
                DRAW_SIGNAL_OUT <= '0';
            END IF;
        END IF;
    END PROCESS;

END line_connector_arch; -- line_connector_arch