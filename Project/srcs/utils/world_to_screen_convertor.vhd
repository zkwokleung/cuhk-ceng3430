-- --------------------------------------------------------------------
-- | Description: Convert a 3D point to a 2D point on the screen
-- --------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY IEEE_PROPOSED;
USE work.my_fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

-- TODO: Update the output to be int
ENTITY world_to_screen_convertor IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600
    );
    PORT (
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        PROJECTION_MATRIX,
        VIEW_MATRIX : IN mat4_fixed;
        POINT_3D : IN vec3_fixed;
        SCREEN_POS_OUT : OUT vec2_int
    );
END world_to_screen_convertor;

ARCHITECTURE world_to_screen_convertor_arch OF world_to_screen_convertor IS
    CONSTANT viewSize : vec2_int := (SCREEN_WIDTH, SCREEN_HEIGHT);
BEGIN
    -- Pipeline the calculations
    PROCESS (CLK)
        VARIABLE clipSpacePos, view_times_point : vec4_fixed := (fixed_zero, fixed_zero, fixed_zero, fixed_zero);
        VARIABLE ndcPos : vec3_fixed := (fixed_zero, fixed_zero, fixed_zero);
        VARIABLE ndcSpacePos_xy_plus_one_halfed, result : vec2_fixed := (fixed_zero, fixed_zero);
        VARIABLE temp : fixed;
    BEGIN
        IF rising_edge(CLK) THEN
            -- viewMatrix * point
            view_times_point := VIEW_MATRIX * to_vec4_fixed(POINT_3D, fixed_one);

            -- clipSpacePos = projectionMatrix * viewMatrix * point
            clipSpacePos := PROJECTION_MATRIX * view_times_point;

            -- ndcSpacePos = clipSpacePos.xyz / clipSpacePos.w
            ndcPos := to_vec3_fixed(clipSpacePos) / clipSpacePos(3);

            -- screenPos = (ndcSpacePos.xy + 1) / 2 * viewSize
            ndcSpacePos_xy_plus_one_halfed := (to_vec2_fixed(ndcPos) + (fixed_one, fixed_one)) / to_fixed(2);

            result := (ndcSpacePos_xy_plus_one_halfed(0) * viewSize(0), ndcSpacePos_xy_plus_one_halfed(1) * viewSize(1));

            SCREEN_POS_OUT <= to_vec2_int(result);
        END IF;
    END PROCESS;
END world_to_screen_convertor_arch; -- world_to_screen_convertor_arch