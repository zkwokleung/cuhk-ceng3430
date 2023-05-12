-- --------------------------------------------------------------------
-- | Description: Convert a 3D point to a 2D point on the screen
-- --------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY world_to_screen_convertor IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600
    );
    PORT (
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        PROJECTION_MATRIX,
        VIEW_MATRIX : IN mat4_float;
        POINT_3D : IN vec3_float;
        SCREEN_POS_OUT : OUT vec2_float
    );
END world_to_screen_convertor;

ARCHITECTURE world_to_screen_convertor_arch OF world_to_screen_convertor IS
    CONSTANT viewSize : vec2_int := (SCREEN_WIDTH, SCREEN_HEIGHT);
    SIGNAL clipSpacePos : vec4_float := (float32_zero, float32_zero, float32_zero, float32_zero);
    SIGNAL ndcPos : vec3_float := (float32_zero, float32_zero, float32_zero);
    SIGNAL screenPos : vec2_float := (float32_zero, float32_zero);

    SIGNAL aug_point_3d, view_times_point : vec4_float := (float32_zero, float32_zero, float32_zero, float32_zero);
    SIGNAL clipSpacePos_xyz : vec3_float := (float32_zero, float32_zero, float32_zero);
    SIGNAL ndcSpacePos_xy, ndcSpacePos_xy_plus_one, ndcSpacePos_xy_plus_one_halfed : vec2_float := (float32_zero, float32_zero);
    SIGNAL screenPos_x, screenPos_y : float32 := float32_zero;
BEGIN
    -- Pipeline the calculations
    -- This process takes 12 clock cycles to complete
    PROCESS (RESET, CLK)
    BEGIN
        IF RESET = '1' THEN
            clipSpacePos <= (float32_zero, float32_zero, float32_zero, float32_zero);
            ndcPos <= (float32_zero, float32_zero, float32_zero);
            screenPos <= (float32_zero, float32_zero);
            SCREEN_POS_OUT <= (float32_zero, float32_zero);
            aug_point_3d <= (float32_zero, float32_zero, float32_zero, float32_zero);
            view_times_point <= (float32_zero, float32_zero, float32_zero, float32_zero);
            clipSpacePos_xyz <= (float32_zero, float32_zero, float32_zero);
            ndcSpacePos_xy <= (float32_zero, float32_zero);
            ndcSpacePos_xy_plus_one <= (float32_zero, float32_zero);
            ndcSpacePos_xy_plus_one_halfed <= (float32_zero, float32_zero);
            screenPos_x <= float32_zero;
            screenPos_y <= float32_zero;
        ELSIF rising_edge(CLK) THEN
            -- Augment the vec3 to a vec4
            aug_point_3d <= to_vec4_float(POINT_3D, float32_one);

            -- viewMatrix * point
            view_times_point <= VIEW_MATRIX * aug_point_3d;

            -- clipSpacePos = projectionMatrix * viewMatrix * point
            clipSpacePos <= PROJECTION_MATRIX * view_times_point;

            -- clipSpacePos.xyz
            clipSpacePos_xyz <= to_vec3_float(clipSpacePos);

            -- ndcSpacePos = clipSpacePos.xyz / clipSpacePos.w
            ndcPos <= clipSpacePos_xyz / clipSpacePos(3);

            -- screenPos = (ndcSpacePos.xy + 1) / 2 * viewSize
            ndcSpacePos_xy <= to_vec2_float(ndcPos);
            ndcSpacePos_xy_plus_one <= ndcSpacePos_xy + (float32_one, float32_one);
            ndcSpacePos_xy_plus_one_halfed <= ndcSpacePos_xy_plus_one / to_float(2, 8, 23);
            screenPos_x <= ndcSpacePos_xy_plus_one_halfed(0) * viewSize(0);
            screenPos_y <= ndcSpacePos_xy_plus_one_halfed(1) * viewSize(1);
            screenPos <= (screenPos_x, screenPos_y);

            SCREEN_POS_OUT <= screenPos;
        END IF;
    END PROCESS;
END world_to_screen_convertor_arch; -- world_to_screen_convertor_arch