--------------------------------------------------------------------
-- | Description : Control the position of a vertex in 3D space, also 
-- |               applies the rotations to it.
--------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
USE work.my_fixed_pkg.ALL;
USE work.math3D_pkg.ALL;

ENTITY vertex_controller IS
    PORT (
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;

        VERTEX_IN : IN vec3_fixed;
        TRANSLATION_IN : IN vec3_int;
        ROTATION_IN : IN vec3_int;
        SCALE_IN : IN vec3_int;

        VERTEX_OUT : OUT vec3_fixed
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

    SIGNAL clk_50Mhz : STD_LOGIC;
BEGIN
    -- Clock divider
    clk_divider : clock_divider
    GENERIC MAP(N => 1)
    PORT MAP(
        CLK_IN => CLK,
        CLK_OUT => clk_50Mhz
    );

    -- Pipeline the calculation of the vertex position
    PROCESS (clk_50Mhz)
        -- Registers for the calculation of the vertex position
        VARIABLE translation_mat4, rotation_mat4, scale_mat4 : mat4_fixed := identity_mat4_fixed;
        VARIABLE scaled_vertex, rotated_vertex, translated_vertex : vec4_fixed;
    BEGIN
        IF rising_edge(clk_50Mhz) THEN
            -- Obtain the matrices from the input signals
            translation_mat4 := translation_mat4_fixed(TRANSLATION_IN);
            rotation_mat4 := rotation_mat4_fixed(ROTATION_IN);
            scale_mat4 := scaling_mat4_fixed(SCALE_IN);

            -- 1. Scale the vertex
            scaled_vertex := scale_mat4 * to_vec4_fixed(VERTEX_IN, fixed_one);

            -- 2. Rotate the vertex
            rotated_vertex := rotation_mat4 * scaled_vertex;

            -- 3. Translate the vertex
            translated_vertex := translation_mat4 * rotated_vertex;

            -- 4. Convert the vertex to vec3_fixed
            VERTEX_OUT <= to_vec3_fixed(translated_vertex);
        END IF;
    END PROCESS;
END vertex_controller_arch; -- vertex_controller_arch