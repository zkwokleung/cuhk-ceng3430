LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY renderer3D IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;

        -- Board inputs
        SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        BTNC, BTNU, BTND, BTNL, BTNR : IN STD_LOGIC;

        -- Board outputs
        LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- VGA outputs
        VGA_BLUE, VGA_GREEN, VGA_RED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC
    );
END renderer3D;

ARCHITECTURE renderer3D_arch OF renderer3D IS
    COMPONENT vga_controller IS
        PORT (
            CLK : IN STD_LOGIC;
            VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
            RED_IN, GREEN_IN, BLUE_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            COOR_H, COOR_V : OUT INTEGER;
            NEXT_COOR_H, NEXT_COOR_V : OUT INTEGER
        );
    END COMPONENT;

BEGIN

END renderer3D_arch; -- renderer3D_arch