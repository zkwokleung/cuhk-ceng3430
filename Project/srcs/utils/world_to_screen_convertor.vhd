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

    -- Pipeline the calculations
    PROCESS (clk_50Mhz, VIEW_MATRIX, POINT_3D, PROJECTION_MATRIX)
        VARIABLE clipSpacePos, view_times_point : vec4_float := (float32_zero, float32_zero, float32_zero, float32_zero);
        VARIABLE ndcPos : vec3_float := (float32_zero, float32_zero, float32_zero);
        VARIABLE ndcSpacePos_xy_plus_one_halfed : vec2_float := (float32_zero, float32_zero);
    BEGIN
        IF (rising_edge(clk_50Mhz)) THEN
            -- viewMatrix * point
            view_times_point := VIEW_MATRIX * to_vec4_float(POINT_3D, float32_one);

            -- clipSpacePos = projectionMatrix * viewMatrix * point
            clipSpacePos := PROJECTION_MATRIX * view_times_point;

            -- ndcSpacePos = clipSpacePos.xyz / clipSpacePos.w
            ndcPos := to_vec3_float(clipSpacePos) / clipSpacePos(3);

            -- screenPos = (ndcSpacePos.xy + 1) / 2 * viewSize
            ndcSpacePos_xy_plus_one_halfed := (to_vec2_float(ndcPos) + (float32_one, float32_one)) / to_float(2, 8, 23);

            SCREEN_POS_OUT <= (ndcSpacePos_xy_plus_one_halfed(0) * viewSize(0), ndcSpacePos_xy_plus_one_halfed(1) * viewSize(1));
        END IF;
    END PROCESS;
END world_to_screen_convertor_arch; -- world_to_screen_convertor_arch