LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.generic_type_pkg.ALL;

ENTITY bresenham IS
    PORT (
        CLK : IN STD_LOGIC;
        POINT, V_START, V_END : IN vec2;
        DRAW_SIGNAL : OUT STD_LOGIC
    );
END bresenham;

ARCHITECTURE datapath OF bresenham IS
    TYPE state_type IS (LOOPING, LOOP_PAUSED, IDLE);
    SIGNAL state : state_type := IDLE;
    -- For simulating a for loop
    SIGNAL i, j, dx, dy, pk : INTEGER;
BEGIN
    fsm : PROCESS (CLK)
        VARIABLE pk_reg, dy_reg, dx_reg : INTEGER;
    BEGIN
        IF (rising_edge(CLK)) THEN
            CASE state IS
                WHEN LOOPING =>
                    IF (POINT(0) /= i OR POINT(1) /= j) THEN
                        -- Pause loop
                        state <= LOOP_PAUSED;
                        draw_signal <= '0';
                    ELSIF (POINT(0) = V_END(0) AND POINT(1) = V_END(1)) THEN
                        -- Loop ended
                        state <= IDLE;
                        draw_signal <= '1';
                    ELSE
                        -- Run main loop
                        IF (V_START(0) < V_END(0)) THEN
                            i <= i + 1;
                        ELSE
                            i <= i - 1;
                        END IF;

                        IF (pk < 0) THEN
                            IF (dx > dy) THEN
                                pk_reg := pk + 2 * dy;

                                -- Feedback for the next iteration
                                pk <= pk_reg;
                            ELSE
                                pk_reg := pk + 2 * dy;
                            END IF;
                        ELSE
                            IF (V_START(1) > V_END(1)) THEN
                                j <= j - 1;
                            ELSE
                                j <= j + 1;
                            END IF;
                        END IF;
                    END IF;

                WHEN LOOP_PAUSED =>
                    IF (POINT(0) = i AND POINT(1) = j) THEN
                        -- Resume loop to calculate the next point
                        state <= LOOPING;
                        draw_signal <= '1';
                    ELSE
                        state <= LOOP_PAUSED;
                        draw_signal <= '0';
                    END IF;

                WHEN IDLE =>
                    -- Initializing signal i and j
                    IF (POINT(0) = V_START(0) AND POINT(1) = V_START(1)) THEN
                        -- Initialize the loop
                        i <= V_START(0);
                        j <= V_START(1);
                        dy_reg := ABS(V_END(1) - V_START(1));
                        dx_reg := ABS(V_END(0) - V_START(0));
                        pk_reg := 2 * dy_reg - dx_reg;

                        -- Feedback 
                        dy <= dy_reg;
                        dx <= dx_reg;
                        pk <= pk_reg;
                        -- Start the loop
                        state <= LOOPING;

                        -- Draw the vertex itself
                        draw_signal <= '1';
                    ELSE
                        draw_signal <= '0';
                    END IF;
            END CASE;
        END IF;
    END PROCESS;
END ARCHITECTURE;