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
    CONSTANT vec2_half : vec2_float := ("00111111000000000000000000000000", "00111111000000000000000000000000");
    CONSTANT viewSize : vec2_int := (SCREEN_WIDTH, SCREEN_HEIGHT);
    SIGNAL clipSpacePos : vec4_float;
    SIGNAL ndcPos : vec3_float;
    SIGNAL viewSize : float32;
    SIGNAL screenPos : vec2_float;
BEGIN
    -- Pipeline the calculations
    PROCESS (RESET, CLK)
        VARIABLE aug_point_3d, view_times_point : vec4_float;
        VARIABLE clipSpacePos_xyz : vec3_float;
        VARIABLE ndcSpacePos_xy, ndcSpacePos_xy_plus_one, ndcSpacePos_xy_plus_one_halfed : vec2_float;
        VARIABLE screenPos_x, screenPos_y : float32;
    BEGIN
        IF RESET = '1' THEN
            clipSpacePos <= (float32_zero, float32_zero, float32_zero, float32_zero);
            ndcPos <= (float32_zero, float32_zero, float32_zero);
            viewSize <= float32_zero;
            screenPos <= (float32_zero, float32_zero);
        ELSIF rising_edge(CLK) THEN
            -- Augment the vec3 to a vec4
            aug_point_3d := to_vec4_float(POINT_3D, float32_one);

            -- viewMatrix * point
            view_times_point <= VIEW_MATRIX * aug_point_3d;

            -- clipSpacePos = projectionMatrix * viewMatrix * point
            clipSpacePos <= PROJECTION_MATRIX * view_times_point;

            -- clipSpacePos.xyz
            clipSpacePos_xyz <= clipSpacePos(0 TO 2);

            -- ndcSpacePos = clipSpacePos.xyz / clipSpacePos.w
            ndcPos <= clipSpacePos_xyz / clipSpacePos(3);

            -- screenPos = (ndcSpacePos.xy + 1) / 2 * viewSize
            ndcSpacePos_xy <= ndcPos(0 TO 1);
            ndcSpacePos_xy_plus_one <= ndcSpacePos_xy + (float32_one, float32_one);
            ndcSpacePos_xy_plus_one_halfed <= ndcSpacePos_xy_plus_one / to_float(2, 8, 23);
            screenPos_x := ndcSpacePos_xy_plus_one_halfed(0) * viewSize;
            screenPos_y := ndcSpacePos_xy_plus_one_halfed(1) * viewSize;
            screenPos <= (screenPos_x, screenPos_y);

            SCREEN_POS_OUT <= screenPos;
        END IF;
    END PROCESS;

END world_to_screen_convertor_arch; -- world_to_screen_convertor_arch