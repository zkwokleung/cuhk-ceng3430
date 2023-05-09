-- --------------------------------------------------------------------
-- | Description: Convert a 3D point to a 2D point on the screen
-- --------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.fixed_float_types.ALL;
USE work.fixed_pkg.ALL;
USE work.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY world_to_screen_convertor IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600
    );
    PORT (
        PROJECTION_MATRIX,
        VIEW_MATRIX : IN mat4_float;
        POINT_3D : IN vec3_float;
        SCREEN_POS_OUT : OUT vec2_float
    );
END world_to_screen_convertor;

ARCHITECTURE world_to_screen_convertor_arch OF world_to_screen_convertor IS
    SIGNAL clipSpacePos : vec4_float;
    SIGNAL ndcPos : vec3_float;
    SIGNAL viewSize : float32;
    SIGNAL screenPos : vec2_float;
BEGIN

    clipSpacePos <= PROJECTION_MATRIX * VIEW_MATRIX * vec4_float(POINT_3D, float32_one);
    ndcPos <= to_vec3_float(clipSpacePos) / clipSpacePos(3);
    viewSize <= SCREEN_WIDTH / SCREEN_HEIGHT;
    screenPos <= (to_vector2(ndcPos) + vec2_float((float32_one, float32_one)) / to_float(2)) * viewSize;
    SCREEN_POS_OUT <= screenPos;

END world_to_screen_convertor_arch; -- world_to_screen_convertor_arch