LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.generic_type_pkg.ALL;

ENTITY point_on_segment IS
    PORT (
        CLK : IN STD_LOGIC;
        point : IN vec2;
        v1, v2 : IN vec2;

        on_segment : OUT STD_LOGIC
    );
END point_on_segment;

ARCHITECTURE point_on_segment_arch OF point_on_segment IS
BEGIN
    PROCESS (CLK)
        VARIABLE d1, d2 : vec2;
        VARIABLE cross, dot : INTEGER;
    BEGIN
        IF rising_edge(CLK) THEN
            d1(0) := point(0) - v1(0);
            d1(1) := point(1) - v1(1);
            d2(0) := v2(0) - v1(0);
            d2(1) := v2(1) - v1(1);
            cross := d1(0) * d2(1) - d1(1) * d2(0);
            dot := d1(0) * d2(0) + d1(1) * d2(1);
            IF cross /= 0 THEN
                on_segment <= '0';
            ELSIF dot < 0 OR dot > d2(0) * d2(0) + d2(1) * d2(1) THEN
                on_segment <= '0';
            ELSE
                on_segment <= '1';
            END IF;
        END IF;
    END PROCESS;

END point_on_segment_arch; -- point_on_segment_arch