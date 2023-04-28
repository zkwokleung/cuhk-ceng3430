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
    -- Constants
    CONSTANT SCREEN_WIDTH : INTEGER := 512;
    CONSTANT SCREEN_HEIGHT : INTEGER := 300;
    CONSTANT BIT_DEPTH : INTEGER := 4;

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

    COMPONENT screen_buffer IS
        GENERIC (
            SCREEN_WIDTH : INTEGER := 1;
            SCREEN_HEIGHT : INTEGER := 1;
            BIT_DEPTH : INTEGER := 4
        );
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;

            red_buffer_in, green_buffer_in, blue_buffer_in : IN STD_LOGIC_VECTOR(SCREEN_WIDTH * SCREEN_HEIGHT * BIT_DEPTH - 1 DOWNTO 0);
            red_out, green_out, blue_out : OUT STD_LOGIC_VECTOR(BIT_DEPTH - 1 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL red_buffer, green_buffer, blue_buffer : STD_LOGIC_VECTOR(SCREEN_WIDTH * SCREEN_HEIGHT * BIT_DEPTH - 1 DOWNTO 0);
    SIGNAL buffer_red_out, buffer_green_out, buffer_blue_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal coor_h, coor_v, next_coor_h, next_coor_v : integer;
BEGIN
    red_buffer <= (OTHERS => '1');
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
        VGA_BLUE => VGA_BLUE,
        COOR_H => coor_h,
        COOR_V => coor_v,
        NEXT_COOR_H => next_coor_h,
        NEXT_COOR_V => next_coor_v
    );

    screen_buffer_inst : screen_buffer
    GENERIC MAP(
        SCREEN_WIDTH => SCREEN_WIDTH,
        SCREEN_HEIGHT => SCREEN_HEIGHT,
        BIT_DEPTH => BIT_DEPTH
    )
    PORT MAP(
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