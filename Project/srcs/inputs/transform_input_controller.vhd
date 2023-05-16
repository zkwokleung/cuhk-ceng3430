LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.my_float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY transform_input_controller IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Default Data
        DEFAULT_POS_VEC3 : IN vec3_int;
        DEFAULT_ROT_VEC3 : IN vec3_int;
        DEFAULT_SCALE_VEC3 : IN vec3_int;

        -- Input controls
        BTNC, BTNL, BTNR, BTNU, BTND : IN STD_LOGIC;
        SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- Output controls
        POS_VEC3, ROT_VEC3, SCALE_VEC3 : OUT vec3_int
    );
END transform_input_controller;

ARCHITECTURE transform_input_controller_arch OF transform_input_controller IS
    SIGNAL pos_tmp, rot_tmp, scale_tmp : vec3_int := (0, 0, 0);
BEGIN
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            pos_tmp <= (0, 0, 0);
            rot_tmp <= (0, 0, 0);
            scale_tmp <= (1, 1, 1);
        ELSIF rising_edge(CLK) THEN

            IF SW(0) = '1' THEN
                -- Position
                IF BTNL = '1' THEN
                    pos_tmp <= pos_tmp + (-1, 0, 0);
                END IF;

                IF BTNR = '1' THEN
                    pos_tmp <= pos_tmp + (1, 0, 0);
                END IF;

                IF BTNU = '1' THEN
                    pos_tmp <= pos_tmp + (0, 1, 0);
                END IF;

                IF BTND = '1' THEN
                    pos_tmp <= pos_tmp + (0, -1, 0);
                END IF;

            ELSIF SW(1) = '1' THEN
                -- Rotation
                IF BTNL = '1' THEN
                    rot_tmp <= rot_tmp + (0, -1, 0);
                END IF;

                IF BTNR = '1' THEN
                    rot_tmp <= rot_tmp + (0, 1, 0);
                END IF;

                IF BTNU = '1' THEN
                    rot_tmp <= rot_tmp + (1, 0, 0);
                END IF;

                IF BTND = '1' THEN
                    rot_tmp <= rot_tmp + (-1, 0, 0);
                END IF;

            ELSIF SW(2) = '1' THEN
                -- Scale
                IF BTNL = '1' THEN
                    scale_tmp <= scale_tmp + (-1, 0, 0);
                END IF;

                IF BTNR = '1' THEN
                    scale_tmp <= scale_tmp + (1, 0, 0);
                END IF;

                IF BTNU = '1' THEN
                    scale_tmp <= scale_tmp + (0, 1, 0);
                END IF;

                IF BTND = '1' THEN
                    scale_tmp <= scale_tmp + (0, -1, 0);
                END IF;

            ELSIF SW(3) = '1' THEN

            ELSIF SW(4) = '1' THEN

            ELSIF SW(5) = '1' THEN

            ELSIF SW(6) = '1' THEN

            ELSIF SW(7) = '1' THEN

            ELSE
                pos_tmp <= (0, 0, 0);
                rot_tmp <= (0, 0, 0);
                scale_tmp <= (0, 0, 0);
            END IF;
        END IF;
    END PROCESS;

    POS_VEC3 <= pos_tmp;
    ROT_VEC3 <= rot_tmp;
    SCALE_VEC3 <= scale_tmp;

END transform_input_controller_arch;