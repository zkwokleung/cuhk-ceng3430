LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.generic_type_pkg.ALL;

ENTITY cube_renderer_controller_v2_0 IS
	GENERIC (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line
		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH : INTEGER := 32;
		C_S00_AXI_ADDR_WIDTH : INTEGER := 8
	);
	PORT (
		-- Users to add ports here
		CLK : IN STD_LOGIC;

		-- Board inputs
		SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		BTNC, BTNU, BTND, BTNL, BTNR : IN STD_LOGIC;

		-- Board outputs
		LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

		-- VGA outputs
		VGA_BLUE, VGA_GREEN, VGA_RED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_HSYNC, VGA_VSYNC : OUT STD_LOGIC;

		-- User ports ends
		-- Do not modify the ports beyond this line
		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk : IN STD_LOGIC;
		s00_axi_aresetn : IN STD_LOGIC;
		s00_axi_awaddr : IN STD_LOGIC_VECTOR(C_S00_AXI_ADDR_WIDTH - 1 DOWNTO 0);
		s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		s00_axi_awvalid : IN STD_LOGIC;
		s00_axi_awready : OUT STD_LOGIC;
		s00_axi_wdata : IN STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH - 1 DOWNTO 0);
		s00_axi_wstrb : IN STD_LOGIC_VECTOR((C_S00_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);
		s00_axi_wvalid : IN STD_LOGIC;
		s00_axi_wready : OUT STD_LOGIC;
		s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		s00_axi_bvalid : OUT STD_LOGIC;
		s00_axi_bready : IN STD_LOGIC;
		s00_axi_araddr : IN STD_LOGIC_VECTOR(C_S00_AXI_ADDR_WIDTH - 1 DOWNTO 0);
		s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		s00_axi_arvalid : IN STD_LOGIC;
		s00_axi_arready : OUT STD_LOGIC;
		s00_axi_rdata : OUT STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH - 1 DOWNTO 0);
		s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		s00_axi_rvalid : OUT STD_LOGIC;
		s00_axi_rready : IN STD_LOGIC
	);
END cube_renderer_controller_v2_0;

ARCHITECTURE arch_imp OF cube_renderer_controller_v2_0 IS
	CONSTANT FRAME_THICKNESS : INTEGER := 1;

	-- component declaration
	COMPONENT cube_renderer_controller_v2_0_S00_AXI IS
		GENERIC (
			C_S_AXI_DATA_WIDTH : INTEGER := 32;
			C_S_AXI_ADDR_WIDTH : INTEGER := 8
		);
		PORT (
			S_SLV_REG0 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG1 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG2 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG3 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG4 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG5 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG6 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG7 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG8 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG9 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG10 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG11 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG12 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG13 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG14 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG15 : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_SLV_REG16 : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);

			S_AXI_ACLK : IN STD_LOGIC;
			S_AXI_ARESETN : IN STD_LOGIC;
			S_AXI_AWADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
			S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			S_AXI_AWVALID : IN STD_LOGIC;
			S_AXI_AWREADY : OUT STD_LOGIC;
			S_AXI_WDATA : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_AXI_WSTRB : IN STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);
			S_AXI_WVALID : IN STD_LOGIC;
			S_AXI_WREADY : OUT STD_LOGIC;
			S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			S_AXI_BVALID : OUT STD_LOGIC;
			S_AXI_BREADY : IN STD_LOGIC;
			S_AXI_ARADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
			S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			S_AXI_ARVALID : IN STD_LOGIC;
			S_AXI_ARREADY : OUT STD_LOGIC;
			S_AXI_RDATA : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
			S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			S_AXI_RVALID : OUT STD_LOGIC;
			S_AXI_RREADY : IN STD_LOGIC
		);
	END COMPONENT cube_renderer_controller_v2_0_S00_AXI;

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

	COMPONENT renderer3D IS
		GENERIC (
			FRAME_THICKNESS : INTEGER := 1
		);
		PORT (
			RESET : IN STD_LOGIC;
			CLK : IN STD_LOGIC;
			COOR_H, COOR_V : IN INTEGER;
			cube_screen_vertices : IN cube_screen_vertices_t;

			BLUE_OUT, GREEN_OUT, RED_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	-- Renderer3D
	SIGNAL cube_screen_vertices : cube_screen_vertices_t := (OTHERS => (0, 0));

	-- VGA
	SIGNAL buffer_red, buffer_green, buffer_blue : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL coor_h, coor_v, next_coor_h, next_coor_v : INTEGER := 0;

	SIGNAL slv_reg0, slv_reg1, slv_reg2, slv_reg3,
	slv_reg4, slv_reg5, slv_reg6, slv_reg7,
	slv_reg8, slv_reg9, slv_reg10, slv_reg11,
	slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
BEGIN
	-- Instantiation of Axi Bus Interface S00_AXI
	cube_renderer_controller_v2_0_S00_AXI_inst : cube_renderer_controller_v2_0_S00_AXI
	GENERIC MAP(
		C_S_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH
	)
	PORT MAP(
		S_SLV_REG0 => slv_reg0,
		S_SLV_REG1 => slv_reg1,
		S_SLV_REG2 => slv_reg2,
		S_SLV_REG3 => slv_reg3,
		S_SLV_REG4 => slv_reg4,
		S_SLV_REG5 => slv_reg5,
		S_SLV_REG6 => slv_reg6,
		S_SLV_REG7 => slv_reg7,
		S_SLV_REG8 => slv_reg8,
		S_SLV_REG9 => slv_reg9,
		S_SLV_REG10 => slv_reg10,
		S_SLV_REG11 => slv_reg11,
		S_SLV_REG12 => slv_reg12,
		S_SLV_REG13 => slv_reg13,
		S_SLV_REG14 => slv_reg14,
		S_SLV_REG15 => slv_reg15,
		S_SLV_REG16 => slv_reg16,

		S_AXI_ACLK => s00_axi_aclk,
		S_AXI_ARESETN => s00_axi_aresetn,
		S_AXI_AWADDR => s00_axi_awaddr,
		S_AXI_AWPROT => s00_axi_awprot,
		S_AXI_AWVALID => s00_axi_awvalid,
		S_AXI_AWREADY => s00_axi_awready,
		S_AXI_WDATA => s00_axi_wdata,
		S_AXI_WSTRB => s00_axi_wstrb,
		S_AXI_WVALID => s00_axi_wvalid,
		S_AXI_WREADY => s00_axi_wready,
		S_AXI_BRESP => s00_axi_bresp,
		S_AXI_BVALID => s00_axi_bvalid,
		S_AXI_BREADY => s00_axi_bready,
		S_AXI_ARADDR => s00_axi_araddr,
		S_AXI_ARPROT => s00_axi_arprot,
		S_AXI_ARVALID => s00_axi_arvalid,
		S_AXI_ARREADY => s00_axi_arready,
		S_AXI_RDATA => s00_axi_rdata,
		S_AXI_RRESP => s00_axi_rresp,
		S_AXI_RVALID => s00_axi_rvalid,
		S_AXI_RREADY => s00_axi_rready
	);

	-- Add user logic here
	-- Combinational logic to map the register values to the signals
	cube_screen_vertices(0)(0) <= to_integer(unsigned(slv_reg0));
	cube_screen_vertices(0)(1) <= to_integer(unsigned(slv_reg1));
	cube_screen_vertices(1)(0) <= to_integer(unsigned(slv_reg2));
	cube_screen_vertices(1)(1) <= to_integer(unsigned(slv_reg3));
	cube_screen_vertices(2)(0) <= to_integer(unsigned(slv_reg4));
	cube_screen_vertices(2)(1) <= to_integer(unsigned(slv_reg5));
	cube_screen_vertices(3)(0) <= to_integer(unsigned(slv_reg6));
	cube_screen_vertices(3)(1) <= to_integer(unsigned(slv_reg7));
	cube_screen_vertices(4)(0) <= to_integer(unsigned(slv_reg8));
	cube_screen_vertices(4)(1) <= to_integer(unsigned(slv_reg9));
	cube_screen_vertices(5)(0) <= to_integer(unsigned(slv_reg10));
	cube_screen_vertices(5)(1) <= to_integer(unsigned(slv_reg11));
	cube_screen_vertices(6)(0) <= to_integer(unsigned(slv_reg12));
	cube_screen_vertices(6)(1) <= to_integer(unsigned(slv_reg13));
	cube_screen_vertices(7)(0) <= to_integer(unsigned(slv_reg14));
	cube_screen_vertices(7)(1) <= to_integer(unsigned(slv_reg15));

	slv_reg16 <= (C_S00_AXI_DATA_WIDTH - 1 DOWNTO 13 => '0') & SW & BTND & BTNU & BTNR & BTNL & BTNC;

	renderer3D_inst : renderer3D
	GENERIC MAP(
		FRAME_THICKNESS => 1
	)
	PORT MAP(
		RESET => BTNC,
		CLK => CLK,
		COOR_H => coor_h,
		COOR_V => coor_v,
		cube_screen_vertices => cube_screen_vertices,
		BLUE_OUT => buffer_blue_out,
		GREEN_OUT => buffer_green_out,
		RED_OUT => buffer_red_out
	);

	LED <= SW;

	-- VGA controller
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
	-- User logic ends

END arch_imp;