--------------------------------------------------------------------
-- | Description : Control the position of a vertex in 3D space, also 
-- |               applies the rotations to it.
--------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY vertex_controller IS
    PORT (
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;

        VERTEX_IN : IN vec3_float;
        ROTATION_VEC3_IN : IN vec3_float;

        VERTEX_OUT : OUT vec3_float
    );
END vertex_controller;

ARCHITECTURE vertex_controller_arch OF vertex_controller IS
    COMPONENT clock_divider IS
        GENERIC (N : INTEGER);
        PORT (
            CLK_IN : IN STD_LOGIC;
            CLK_OUT : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals for the clock divider
    SIGNAL clk_10Mhz, clk_50Mhz : STD_LOGIC;

    -- Signals for the calculation of the vertex position
    SIGNAL rot_vec3_int : vec3_int;
    SIGNAL rot_mat4_float : mat4_float;
    SIGNAL vert_in_vec4_float : vec4_float;
    SIGNAL vert_out_vec3_float : vec3_float;
BEGIN
    -- Clock dividers
    clk_div_50Mhz : clock_divider
    GENERIC MAP(N => 1)
    PORT MAP(
        CLK_IN => CLK,
        CLK_OUT => clk_50Mhz
    );

    clk_div_10Mhz : clock_divider
    GENERIC MAP(N => 5)
    PORT MAP(
        CLK_IN => clk_50Mhz,
        CLK_OUT => clk_10Mhz
    );

    -- Pipeline the calculation of the vertex position
    PROCESS (clk_10Mhz)
    BEGIN
        IF RESET = '1' THEN
            rot_vec3_int <= (0, 0, 0);
            rot_mat4_float <= identity_mat4_float;
            vert_in_vec4_float <= (float32_zero, float32_zero, float32_zero, float32_zero);
            vert_out_vec3_float <= (float32_zero, float32_zero, float32_zero);
            vertex_out <= (float32_zero, float32_zero, float32_zero);
        ELSIF rising_edge(clk_10Mhz) THEN
            rot_vec3_int <= to_vec3_int(ROTATION_VEC3_IN);
            rot_mat4_float <= rotation_mat4_float(rot_vec3_int);
            vert_in_vec4_float <= to_vec4_float(VERTEX_IN, float32_one);
            vert_out_vec3_float <= to_vec3_float(vert_in_vec4_float);
            VERTEX_OUT <= vert_out_vec3_float;
        END IF;
    END PROCESS;
END vertex_controller_arch; -- vertex_controller_arch