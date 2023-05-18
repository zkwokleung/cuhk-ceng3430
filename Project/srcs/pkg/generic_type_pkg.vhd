LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

PACKAGE generc_type_pkg IS
    TYPE vec2 IS ARRAY (0 TO 1) OF INTEGER;
    TYPE vec3 IS ARRAY (0 TO 2) OF INTEGER;
    TYPE cube_vertices_t IS ARRAY(0 TO 7) OF vec3;
    TYPE cube_screen_vertices_t IS ARRAY(0 TO 7) OF vec2;
END PACKAGE generc_type_pkg;