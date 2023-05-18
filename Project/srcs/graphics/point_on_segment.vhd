LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY point_on_segment IS
    PORT (
        CLK : IN STD_LOGIC;
        x, y : IN INTEGER;
        v1_x, v1_y, v2_x, v2_y : IN INTEGER;

        on_segment : OUT STD_LOGIC
    );
END point_on_segment;

ARCHITECTURE point_on_segment_arch OF point_on_segment IS
BEGIN
    PROCESS (RESET, CLK)
        VARIABLE dx1, dy1, dx2, dy2, cross, dot : INTEGER;
    BEGIN
        dx1 := x - v1_x;
        dy1 := y - v1_y;
        dx2 := v2_x - v1_x;
        dy2 := v2_y - v1_y;
        cross := dx1 * dy2 - dy1 * dx2;
        dot := dx1 * dx2 + dy1 * dy2;
        IF cross /= 0 THEN
            on_segment <= '0';
        ELSIF dot < 0 OR dot > dx2 * dx2 + dy2 * dy2 THEN
            on_segment <= '0';
        ELSE
            on_segment <= '1';
        END IF;

    END PROCESS;

END point_on_segment_arch; -- point_on_segment_arch