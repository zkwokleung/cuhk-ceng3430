LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;
USE work.math3D_pkg.ALL;

-- Determine the color of the current rendering pixel
-- based on the current cube position and the size of the cube.

-- TODO: Transform the xyz coordinates into the screen space
-- TODO: Interpolate the lines between two vertexs
ENTITY cube_generator IS
    GENERIC (
        SCREEN_WIDTH : INTEGER := 1024;
        SCREEN_HEIGHT : INTEGER := 600;
        BIT_DEPTH : INTEGER := 4;
        FRAME_WIDTH : INTEGER := 1
    );
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Displayer data
        DISPLAY_COOR_H, DISPLAY_COOR_V : IN INTEGER;

        -- Rendering data
        PROJECTION_MATRIX, VIEW_MATRIX : IN mat4_float;

        -- Cube properties
        POS, ROT, SCALE : IN vec3_float;

        RED_OUT, GREEN_OUT, BLUE_OUT : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
    );
END cube_generator;

ARCHITECTURE Behavioral OF cube_generator IS
    TYPE cube_vertex IS ARRAY(0 TO 7) OF vec3_float;
    TYPE screen_vertex_float IS ARRAY(0 TO 7) OF vec2_float;
    TYPE screen_vertex_int IS ARRAY(0 TO 7) OF vec2_int;

    COMPONENT world_to_screen_convertor IS
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
    END COMPONENT;

    -- The base coordinates(before rotation) and the actual coordinate(after translation) of the cube
    SIGNAL base_vertices, vertices : cube_vertex;
    SIGNAL screen_vertices_float : screen_vertex_float;
    SIGNAL screen_vertices_int : screen_vertex_int;

BEGIN
    base_vertices <= (
        (POS(0) - (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
        (POS(0) + (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
        (POS(0) + (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
        (POS(0) - (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) - (SCALE(2)/2)),
        (POS(0) - (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
        (POS(0) + (SCALE(0)/2), POS(1) - (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
        (POS(0) + (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) + (SCALE(2)/2)),
        (POS(0) - (SCALE(0)/2), POS(1) + (SCALE(1)/2), POS(2) + (SCALE(2)/2))
        );

    world_to_screen_convertor_inst_0 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(0),
        SCREEN_POS_OUT => screen_vertices_float(0)
    );
    screen_vertices_int(0) <= to_vec2_int(screen_vertices_float(0));

    world_to_screen_convertor_inst_1 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(1),
        SCREEN_POS_OUT => screen_vertices_float(1)
    );
    screen_vertices_int(1) <= to_vec2_int(screen_vertices_float(1));

    world_to_screen_convertor_inst_2 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(2),
        SCREEN_POS_OUT => screen_vertices_float(2)
    );
    screen_vertices_int(2) <= to_vec2_int(screen_vertices_float(2));

    world_to_screen_convertor_inst_3 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(3),
        SCREEN_POS_OUT => screen_vertices_float(3)
    );
    screen_vertices_int(3) <= to_vec2_int(screen_vertices_float(3));

    world_to_screen_convertor_inst_4 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(4),
        SCREEN_POS_OUT => screen_vertices_float(4)
    );
    screen_vertices_int(4) <= to_vec2_int(screen_vertices_float(4));

    world_to_screen_convertor_inst_5 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(5),
        SCREEN_POS_OUT => screen_vertices_float(5)
    );
    screen_vertices_int(5) <= to_vec2_int(screen_vertices_float(5));

    world_to_screen_convertor_inst_6 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(6),
        SCREEN_POS_OUT => screen_vertices_float(6)
    );
    screen_vertices_int(6) <= to_vec2_int(screen_vertices_float(6));

    world_to_screen_convertor_inst_7 : world_to_screen_convertor
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT
    )
    PORT MAP(
        PROJECTION_MATRIX => PROJECTION_MATRIX,
        VIEW_MATRIX => VIEW_MATRIX,
        POINT_3D => base_vertices(7),
        SCREEN_POS_OUT => screen_vertices_float(7)
    );
    screen_vertices_int(7) <= to_vec2_int(screen_vertices_float(7));

    -- Color output process
    PROCESS (CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            RED_OUT <= (OTHERS => '0');
            GREEN_OUT <= (OTHERS => '0');
            BLUE_OUT <= (OTHERS => '0');
        ELSIF rising_edge(CLK) THEN
            -- Calculate if the current pixel is in the cube
            IF (DISPLAY_COOR_H = screen_vertices_int(0)(0) AND DISPLAY_COOR_V = screen_vertices_int(0)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(1)(0) AND DISPLAY_COOR_V = screen_vertices_int(1)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(2)(0) AND DISPLAY_COOR_V = screen_vertices_int(2)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(3)(0) AND DISPLAY_COOR_V = screen_vertices_int(3)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(4)(0) AND DISPLAY_COOR_V = screen_vertices_int(4)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(5)(0) AND DISPLAY_COOR_V = screen_vertices_int(5)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(6)(0) AND DISPLAY_COOR_V = screen_vertices_int(6)(1)) OR
                (DISPLAY_COOR_H = screen_vertices_int(7)(0) AND DISPLAY_COOR_V = screen_vertices_int(7)(1))
                THEN
                RED_OUT <= "1111";
                GREEN_OUT <= "1111";
                BLUE_OUT <= "1111";
            ELSE
                RED_OUT <= (OTHERS => '0');
                GREEN_OUT <= (OTHERS => '0');
                BLUE_OUT <= (OTHERS => '0');
            END IF;
        END IF;
    END PROCESS;
END Behavioral;