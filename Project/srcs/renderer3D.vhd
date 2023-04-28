LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY renderer3D IS
    PORT (
        -- Board Ports
        CLK : IN STD_LOGIC;
        BTNC : IN STD_LOGIC;

        -- VGA Ports
        VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
        VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END renderer3D;

ARCHITECTURE renderer3D_arch OF renderer3D IS
    COMPONENT vga_controller IS
        PORT (
            CLK : IN STD_LOGIC;
            VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;
            RED_IN, GREEN_IN, BLUE_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            VGA_RED, VGA_GREEN, VGA_BLUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT screen_buffer IS
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;

            red_buffer_in, green_buffer_in, blue_buffer_in : IN STD_LOGIC_VECTOR(2457600 DOWNTO 0);
            red_out, green_out, blue_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL red_buffer, green_buffer, blue_buffer : STD_LOGIC_VECTOR(2457600 DOWNTO 0);
    SIGNAL buffer_red_out, buffer_green_out, buffer_blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    red_buffer <= (OTHERS => '0');
    green_buffer <= (OTHERS => '0');
    blue_buffer <= (OTHERS => '1');

    vga_controller_inst : vga_controller PORT MAP(
        CLK => CLK,
        VGA_HSYNC => VGA_HSYNC,
        VGA_VSYNC => VGA_VSYNC,
        RED_IN => buffer_red_out,
        GREEN_IN => buffer_green_out,
        BLUE_IN => buffer_blue_out,
        VGA_RED => VGA_RED,
        VGA_GREEN => VGA_GREEN,
        VGA_BLUE => VGA_BLUE
    );

    screen_buffer_inst : screen_buffer PORT MAP(
        clk => CLK,
        reset => BTNC,
        red_buffer_in => red_buffer,
        green_buffer_in => green_buffer,
        blue_buffer_in => blue_buffer,
        red_out => buffer_red_out,
        green_out => buffer_green_out,
        blue_out => buffer_blue_out
    );

END renderer3D_arch;