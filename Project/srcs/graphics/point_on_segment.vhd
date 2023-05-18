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
        VARIABLE c : INTEGER;
    BEGIN
        IF rising_edge(CLK) THEN
            c := v1(1) - (((v2(1) - v1(1)) * v1(0)) / (v2(0) - v1(0)));

            IF ((point(1) <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 1 <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 1 >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 1 <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 1 >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 1 <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 1 >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 1 <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 1 >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 1 <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 1 >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 1 <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 1 >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 2 <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 2 >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 2 <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 2 >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 2 <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 2 >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 2 <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 2 >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 2 <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 2 >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 2 <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 2 >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 10 <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 10 >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 10 <= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 10 >= ((v2(1) - v1(1)) * point(0)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 10 <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 10 >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) + 10 <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) + 10 >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 10 <= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 10 >= ((v2(1) - v1(1)) * (point(0) + 1)/(v2(0) - v1(0))) + c - 10)) OR
                ((point(1) - 10 <= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c + 10) AND (point(1) - 10 >= ((v2(1) - v1(1)) * (point(0) - 1)/(v2(0) - v1(0))) + c - 10))
                THEN
                on_segment <= '1';
            ELSE
                on_segment <= '0';
            END IF;
        END IF;
    END PROCESS;

END point_on_segment_arch; -- point_on_segment_arch