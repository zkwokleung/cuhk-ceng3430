LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY object_renderer_controller_v1_0_S00_AXI IS
	GENERIC (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH : INTEGER := 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH : INTEGER := 9
	);
	PORT (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK : IN STD_LOGIC;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN : IN STD_LOGIC;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
		-- Write channel Protection type. This signal indicates the
		-- privilege and security level of the transaction, and whether
		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		-- Write address valid. This signal indicates that the master signaling
		-- valid write address and control information.
		S_AXI_AWVALID : IN STD_LOGIC;
		-- Write address ready. This signal indicates that the slave is ready
		-- to accept an address and associated control signals.
		S_AXI_AWREADY : OUT STD_LOGIC;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
		-- Write strobes. This signal indicates which byte lanes hold
		-- valid data. There is one write strobe bit for each eight
		-- bits of the write data bus.    
		S_AXI_WSTRB : IN STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);
		-- Write valid. This signal indicates that valid write
		-- data and strobes are available.
		S_AXI_WVALID : IN STD_LOGIC;
		-- Write ready. This signal indicates that the slave
		-- can accept the write data.
		S_AXI_WREADY : OUT STD_LOGIC;
		-- Write response. This signal indicates the status
		-- of the write transaction.
		S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		-- Write response valid. This signal indicates that the channel
		-- is signaling a valid write response.
		S_AXI_BVALID : OUT STD_LOGIC;
		-- Response ready. This signal indicates that the master
		-- can accept a write response.
		S_AXI_BREADY : IN STD_LOGIC;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
		-- Protection type. This signal indicates the privilege
		-- and security level of the transaction, and whether the
		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		-- Read address valid. This signal indicates that the channel
		-- is signaling valid read address and control information.
		S_AXI_ARVALID : IN STD_LOGIC;
		-- Read address ready. This signal indicates that the slave is
		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY : OUT STD_LOGIC;
		-- Read data (issued by slave)
		S_AXI_RDATA : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
		-- Read response. This signal indicates the status of the
		-- read transfer.
		S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		-- Read valid. This signal indicates that the channel is
		-- signaling the required read data.
		S_AXI_RVALID : OUT STD_LOGIC;
		-- Read ready. This signal indicates that the master can
		-- accept the read data and response information.
		S_AXI_RREADY : IN STD_LOGIC
	);
END object_renderer_controller_v1_0_S00_AXI;

ARCHITECTURE arch_imp OF object_renderer_controller_v1_0_S00_AXI IS

	-- AXI4LITE signals
	SIGNAL axi_awaddr : STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
	SIGNAL axi_awready : STD_LOGIC;
	SIGNAL axi_wready : STD_LOGIC;
	SIGNAL axi_bresp : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL axi_bvalid : STD_LOGIC;
	SIGNAL axi_araddr : STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
	SIGNAL axi_arready : STD_LOGIC;
	SIGNAL axi_rdata : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL axi_rresp : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL axi_rvalid : STD_LOGIC;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	CONSTANT ADDR_LSB : INTEGER := (C_S_AXI_DATA_WIDTH/32) + 1;
	CONSTANT OPT_MEM_ADDR_BITS : INTEGER := 6;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 128
	SIGNAL slv_reg0 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg1 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg2 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg3 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg4 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg5 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg6 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg7 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg8 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg9 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg10 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg11 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg12 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg13 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg14 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg15 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg16 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg17 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg18 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg19 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg20 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg21 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg22 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg23 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg24 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg25 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg26 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg27 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg28 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg29 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg30 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg31 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg32 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg33 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg34 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg35 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg36 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg37 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg38 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg39 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg40 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg41 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg42 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg43 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg44 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg45 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg46 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg47 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg48 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg49 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg50 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg51 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg52 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg53 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg54 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg55 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg56 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg57 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg58 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg59 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg60 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg61 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg62 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg63 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg64 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg65 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg66 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg67 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg68 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg69 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg70 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg71 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg72 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg73 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg74 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg75 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg76 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg77 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg78 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg79 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg80 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg81 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg82 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg83 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg84 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg85 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg86 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg87 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg88 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg89 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg90 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg91 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg92 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg93 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg94 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg95 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg96 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg97 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg98 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg99 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg100 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg101 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg102 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg103 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg104 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg105 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg106 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg107 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg108 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg109 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg110 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg111 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg112 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg113 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg114 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg115 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg116 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg117 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg118 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg119 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg120 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg121 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg122 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg123 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg124 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg125 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg126 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg127 : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL slv_reg_rden : STD_LOGIC;
	SIGNAL slv_reg_wren : STD_LOGIC;
	SIGNAL reg_data_out : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL byte_index : INTEGER;

BEGIN
	-- I/O Connections assignments

	S_AXI_AWREADY <= axi_awready;
	S_AXI_WREADY <= axi_wready;
	S_AXI_BRESP <= axi_bresp;
	S_AXI_BVALID <= axi_bvalid;
	S_AXI_ARREADY <= axi_arready;
	S_AXI_RDATA <= axi_rdata;
	S_AXI_RRESP <= axi_rresp;
	S_AXI_RVALID <= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	PROCESS (S_AXI_ACLK)
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				axi_awready <= '0';
			ELSE
				IF (axi_awready = '0' AND S_AXI_AWVALID = '1' AND S_AXI_WVALID = '1') THEN
					-- slave is ready to accept write address when
					-- there is a valid write address and write data
					-- on the write address and data bus. This design 
					-- expects no outstanding transactions. 
					axi_awready <= '1';
				ELSE
					axi_awready <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	PROCESS (S_AXI_ACLK)
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				axi_awaddr <= (OTHERS => '0');
			ELSE
				IF (axi_awready = '0' AND S_AXI_AWVALID = '1' AND S_AXI_WVALID = '1') THEN
					-- Write Address latching
					axi_awaddr <= S_AXI_AWADDR;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	PROCESS (S_AXI_ACLK)
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				axi_wready <= '0';
			ELSE
				IF (axi_wready = '0' AND S_AXI_WVALID = '1' AND S_AXI_AWVALID = '1') THEN
					-- slave is ready to accept write data when 
					-- there is a valid write address and write data
					-- on the write address and data bus. This design 
					-- expects no outstanding transactions.           
					axi_wready <= '1';
				ELSE
					axi_wready <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready AND S_AXI_WVALID AND axi_awready AND S_AXI_AWVALID;

	PROCESS (S_AXI_ACLK)
		VARIABLE loc_addr : STD_LOGIC_VECTOR(OPT_MEM_ADDR_BITS DOWNTO 0);
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				slv_reg0 <= (OTHERS => '0');
				slv_reg1 <= (OTHERS => '0');
				slv_reg2 <= (OTHERS => '0');
				slv_reg3 <= (OTHERS => '0');
				slv_reg4 <= (OTHERS => '0');
				slv_reg5 <= (OTHERS => '0');
				slv_reg6 <= (OTHERS => '0');
				slv_reg7 <= (OTHERS => '0');
				slv_reg8 <= (OTHERS => '0');
				slv_reg9 <= (OTHERS => '0');
				slv_reg10 <= (OTHERS => '0');
				slv_reg11 <= (OTHERS => '0');
				slv_reg12 <= (OTHERS => '0');
				slv_reg13 <= (OTHERS => '0');
				slv_reg14 <= (OTHERS => '0');
				slv_reg15 <= (OTHERS => '0');
				--   slv_reg16 <= (others => '0');
				--   slv_reg17 <= (others => '0');
				--   slv_reg18 <= (others => '0');
				--   slv_reg19 <= (others => '0');
				--   slv_reg20 <= (others => '0');
				--   slv_reg21 <= (others => '0');
				--   slv_reg22 <= (others => '0');
				--   slv_reg23 <= (others => '0');
				--   slv_reg24 <= (others => '0');
				--   slv_reg25 <= (others => '0');
				--   slv_reg26 <= (others => '0');
				--   slv_reg27 <= (others => '0');
				--   slv_reg28 <= (others => '0');
				--   slv_reg29 <= (others => '0');
				--   slv_reg30 <= (others => '0');
				--   slv_reg31 <= (others => '0');
				--   slv_reg32 <= (others => '0');
				--   slv_reg33 <= (others => '0');
				--   slv_reg34 <= (others => '0');
				--   slv_reg35 <= (others => '0');
				--   slv_reg36 <= (others => '0');
				--   slv_reg37 <= (others => '0');
				--   slv_reg38 <= (others => '0');
				--   slv_reg39 <= (others => '0');
				--   slv_reg40 <= (others => '0');
				--   slv_reg41 <= (others => '0');
				--   slv_reg42 <= (others => '0');
				--   slv_reg43 <= (others => '0');
				--   slv_reg44 <= (others => '0');
				--   slv_reg45 <= (others => '0');
				--   slv_reg46 <= (others => '0');
				--   slv_reg47 <= (others => '0');
				--   slv_reg48 <= (others => '0');
				--   slv_reg49 <= (others => '0');
				--   slv_reg50 <= (others => '0');
				--   slv_reg51 <= (others => '0');
				--   slv_reg52 <= (others => '0');
				--   slv_reg53 <= (others => '0');
				--   slv_reg54 <= (others => '0');
				--   slv_reg55 <= (others => '0');
				--   slv_reg56 <= (others => '0');
				--   slv_reg57 <= (others => '0');
				--   slv_reg58 <= (others => '0');
				--   slv_reg59 <= (others => '0');
				--   slv_reg60 <= (others => '0');
				--   slv_reg61 <= (others => '0');
				--   slv_reg62 <= (others => '0');
				--   slv_reg63 <= (others => '0');
				--   slv_reg64 <= (others => '0');
				--   slv_reg65 <= (others => '0');
				--   slv_reg66 <= (others => '0');
				--   slv_reg67 <= (others => '0');
				--   slv_reg68 <= (others => '0');
				--   slv_reg69 <= (others => '0');
				--   slv_reg70 <= (others => '0');
				--   slv_reg71 <= (others => '0');
				--   slv_reg72 <= (others => '0');
				--   slv_reg73 <= (others => '0');
				--   slv_reg74 <= (others => '0');
				--   slv_reg75 <= (others => '0');
				--   slv_reg76 <= (others => '0');
				--   slv_reg77 <= (others => '0');
				--   slv_reg78 <= (others => '0');
				--   slv_reg79 <= (others => '0');
				--   slv_reg80 <= (others => '0');
				--   slv_reg81 <= (others => '0');
				--   slv_reg82 <= (others => '0');
				--   slv_reg83 <= (others => '0');
				--   slv_reg84 <= (others => '0');
				--   slv_reg85 <= (others => '0');
				--   slv_reg86 <= (others => '0');
				--   slv_reg87 <= (others => '0');
				--   slv_reg88 <= (others => '0');
				--   slv_reg89 <= (others => '0');
				--   slv_reg90 <= (others => '0');
				--   slv_reg91 <= (others => '0');
				--   slv_reg92 <= (others => '0');
				--   slv_reg93 <= (others => '0');
				--   slv_reg94 <= (others => '0');
				--   slv_reg95 <= (others => '0');
				--   slv_reg96 <= (others => '0');
				--   slv_reg97 <= (others => '0');
				--   slv_reg98 <= (others => '0');
				--   slv_reg99 <= (others => '0');
				--   slv_reg100 <= (others => '0');
				--   slv_reg101 <= (others => '0');
				--   slv_reg102 <= (others => '0');
				--   slv_reg103 <= (others => '0');
				--   slv_reg104 <= (others => '0');
				--   slv_reg105 <= (others => '0');
				--   slv_reg106 <= (others => '0');
				--   slv_reg107 <= (others => '0');
				--   slv_reg108 <= (others => '0');
				--   slv_reg109 <= (others => '0');
				--   slv_reg110 <= (others => '0');
				--   slv_reg111 <= (others => '0');
				--   slv_reg112 <= (others => '0');
				--   slv_reg113 <= (others => '0');
				--   slv_reg114 <= (others => '0');
				--   slv_reg115 <= (others => '0');
				--   slv_reg116 <= (others => '0');
				--   slv_reg117 <= (others => '0');
				--   slv_reg118 <= (others => '0');
				--   slv_reg119 <= (others => '0');
				--   slv_reg120 <= (others => '0');
				--   slv_reg121 <= (others => '0');
				--   slv_reg122 <= (others => '0');
				--   slv_reg123 <= (others => '0');
				--   slv_reg124 <= (others => '0');
				--   slv_reg125 <= (others => '0');
				--   slv_reg126 <= (others => '0');
				--   slv_reg127 <= (others => '0');
			ELSE
				loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB);
				IF (slv_reg_wren = '1') THEN
					CASE loc_addr IS
						WHEN b"0000000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 0
									slv_reg0(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 1
									slv_reg1(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 2
									slv_reg2(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 3
									slv_reg3(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 4
									slv_reg4(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 5
									slv_reg5(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 6
									slv_reg6(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0000111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 7
									slv_reg7(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 8
									slv_reg8(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 9
									slv_reg9(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 10
									slv_reg10(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 11
									slv_reg11(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 12
									slv_reg12(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 13
									slv_reg13(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 14
									slv_reg14(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0001111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 15
									slv_reg15(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 16
									slv_reg16(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 17
									slv_reg17(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 18
									slv_reg18(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 19
									slv_reg19(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 20
									slv_reg20(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 21
									slv_reg21(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 22
									slv_reg22(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0010111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 23
									slv_reg23(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 24
									slv_reg24(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 25
									slv_reg25(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 26
									slv_reg26(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 27
									slv_reg27(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 28
									slv_reg28(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 29
									slv_reg29(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 30
									slv_reg30(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0011111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 31
									slv_reg31(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 32
									slv_reg32(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 33
									slv_reg33(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 34
									slv_reg34(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 35
									slv_reg35(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 36
									slv_reg36(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 37
									slv_reg37(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 38
									slv_reg38(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0100111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 39
									slv_reg39(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 40
									slv_reg40(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 41
									slv_reg41(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 42
									slv_reg42(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 43
									slv_reg43(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 44
									slv_reg44(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 45
									slv_reg45(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 46
									slv_reg46(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0101111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 47
									slv_reg47(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 48
									slv_reg48(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 49
									slv_reg49(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 50
									slv_reg50(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 51
									slv_reg51(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 52
									slv_reg52(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 53
									slv_reg53(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 54
									slv_reg54(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0110111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 55
									slv_reg55(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 56
									slv_reg56(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 57
									slv_reg57(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 58
									slv_reg58(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 59
									slv_reg59(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 60
									slv_reg60(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 61
									slv_reg61(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 62
									slv_reg62(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"0111111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 63
									slv_reg63(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"1000000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 64
									slv_reg64(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
							--   when b"1000001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 65
							--         slv_reg65(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1000010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 66
							--         slv_reg66(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1000011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 67
							--         slv_reg67(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1000100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 68
							--         slv_reg68(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1000101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 69
							--         slv_reg69(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1000110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 70
							--         slv_reg70(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1000111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 71
							--         slv_reg71(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 72
							--         slv_reg72(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 73
							--         slv_reg73(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 74
							--         slv_reg74(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 75
							--         slv_reg75(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 76
							--         slv_reg76(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 77
							--         slv_reg77(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 78
							--         slv_reg78(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1001111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 79
							--         slv_reg79(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 80
							--         slv_reg80(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 81
							--         slv_reg81(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 82
							--         slv_reg82(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 83
							--         slv_reg83(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 84
							--         slv_reg84(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 85
							--         slv_reg85(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 86
							--         slv_reg86(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1010111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 87
							--         slv_reg87(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 88
							--         slv_reg88(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 89
							--         slv_reg89(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 90
							--         slv_reg90(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 91
							--         slv_reg91(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 92
							--         slv_reg92(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 93
							--         slv_reg93(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 94
							--         slv_reg94(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1011111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 95
							--         slv_reg95(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 96
							--         slv_reg96(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 97
							--         slv_reg97(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 98
							--         slv_reg98(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 99
							--         slv_reg99(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 100
							--         slv_reg100(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 101
							--         slv_reg101(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 102
							--         slv_reg102(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1100111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 103
							--         slv_reg103(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 104
							--         slv_reg104(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 105
							--         slv_reg105(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 106
							--         slv_reg106(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 107
							--         slv_reg107(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 108
							--         slv_reg108(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 109
							--         slv_reg109(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 110
							--         slv_reg110(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1101111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 111
							--         slv_reg111(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 112
							--         slv_reg112(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 113
							--         slv_reg113(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 114
							--         slv_reg114(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 115
							--         slv_reg115(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 116
							--         slv_reg116(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 117
							--         slv_reg117(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 118
							--         slv_reg118(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1110111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 119
							--         slv_reg119(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111000" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 120
							--         slv_reg120(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111001" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 121
							--         slv_reg121(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111010" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 122
							--         slv_reg122(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111011" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 123
							--         slv_reg123(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111100" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 124
							--         slv_reg124(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111101" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 125
							--         slv_reg125(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111110" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 126
							--         slv_reg126(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
							--   when b"1111111" =>
							--     for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
							--       if ( S_AXI_WSTRB(byte_index) = '1' ) then
							--         -- Respective byte enables are asserted as per write strobes                   
							--         -- slave registor 127
							--         slv_reg127(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
							--       end if;
							--     end loop;
						WHEN OTHERS =>
							slv_reg0 <= slv_reg0;
							slv_reg1 <= slv_reg1;
							slv_reg2 <= slv_reg2;
							slv_reg3 <= slv_reg3;
							slv_reg4 <= slv_reg4;
							slv_reg5 <= slv_reg5;
							slv_reg6 <= slv_reg6;
							slv_reg7 <= slv_reg7;
							slv_reg8 <= slv_reg8;
							slv_reg9 <= slv_reg9;
							slv_reg10 <= slv_reg10;
							slv_reg11 <= slv_reg11;
							slv_reg12 <= slv_reg12;
							slv_reg13 <= slv_reg13;
							slv_reg14 <= slv_reg14;
							slv_reg15 <= slv_reg15;
							slv_reg16 <= slv_reg16;
							slv_reg17 <= slv_reg17;
							slv_reg18 <= slv_reg18;
							slv_reg19 <= slv_reg19;
							slv_reg20 <= slv_reg20;
							slv_reg21 <= slv_reg21;
							slv_reg22 <= slv_reg22;
							slv_reg23 <= slv_reg23;
							slv_reg24 <= slv_reg24;
							slv_reg25 <= slv_reg25;
							slv_reg26 <= slv_reg26;
							slv_reg27 <= slv_reg27;
							slv_reg28 <= slv_reg28;
							slv_reg29 <= slv_reg29;
							slv_reg30 <= slv_reg30;
							slv_reg31 <= slv_reg31;
							slv_reg32 <= slv_reg32;
							slv_reg33 <= slv_reg33;
							slv_reg34 <= slv_reg34;
							slv_reg35 <= slv_reg35;
							slv_reg36 <= slv_reg36;
							slv_reg37 <= slv_reg37;
							slv_reg38 <= slv_reg38;
							slv_reg39 <= slv_reg39;
							slv_reg40 <= slv_reg40;
							slv_reg41 <= slv_reg41;
							slv_reg42 <= slv_reg42;
							slv_reg43 <= slv_reg43;
							slv_reg44 <= slv_reg44;
							slv_reg45 <= slv_reg45;
							slv_reg46 <= slv_reg46;
							slv_reg47 <= slv_reg47;
							slv_reg48 <= slv_reg48;
							slv_reg49 <= slv_reg49;
							slv_reg50 <= slv_reg50;
							slv_reg51 <= slv_reg51;
							slv_reg52 <= slv_reg52;
							slv_reg53 <= slv_reg53;
							slv_reg54 <= slv_reg54;
							slv_reg55 <= slv_reg55;
							slv_reg56 <= slv_reg56;
							slv_reg57 <= slv_reg57;
							slv_reg58 <= slv_reg58;
							slv_reg59 <= slv_reg59;
							slv_reg60 <= slv_reg60;
							slv_reg61 <= slv_reg61;
							slv_reg62 <= slv_reg62;
							slv_reg63 <= slv_reg63;
							slv_reg64 <= slv_reg64;
							-- slv_reg65 <= slv_reg65;
							-- slv_reg66 <= slv_reg66;
							-- slv_reg67 <= slv_reg67;
							-- slv_reg68 <= slv_reg68;
							-- slv_reg69 <= slv_reg69;
							-- slv_reg70 <= slv_reg70;
							-- slv_reg71 <= slv_reg71;
							-- slv_reg72 <= slv_reg72;
							-- slv_reg73 <= slv_reg73;
							-- slv_reg74 <= slv_reg74;
							-- slv_reg75 <= slv_reg75;
							-- slv_reg76 <= slv_reg76;
							-- slv_reg77 <= slv_reg77;
							-- slv_reg78 <= slv_reg78;
							-- slv_reg79 <= slv_reg79;
							-- slv_reg80 <= slv_reg80;
							-- slv_reg81 <= slv_reg81;
							-- slv_reg82 <= slv_reg82;
							-- slv_reg83 <= slv_reg83;
							-- slv_reg84 <= slv_reg84;
							-- slv_reg85 <= slv_reg85;
							-- slv_reg86 <= slv_reg86;
							-- slv_reg87 <= slv_reg87;
							-- slv_reg88 <= slv_reg88;
							-- slv_reg89 <= slv_reg89;
							-- slv_reg90 <= slv_reg90;
							-- slv_reg91 <= slv_reg91;
							-- slv_reg92 <= slv_reg92;
							-- slv_reg93 <= slv_reg93;
							-- slv_reg94 <= slv_reg94;
							-- slv_reg95 <= slv_reg95;
							-- slv_reg96 <= slv_reg96;
							-- slv_reg97 <= slv_reg97;
							-- slv_reg98 <= slv_reg98;
							-- slv_reg99 <= slv_reg99;
							-- slv_reg100 <= slv_reg100;
							-- slv_reg101 <= slv_reg101;
							-- slv_reg102 <= slv_reg102;
							-- slv_reg103 <= slv_reg103;
							-- slv_reg104 <= slv_reg104;
							-- slv_reg105 <= slv_reg105;
							-- slv_reg106 <= slv_reg106;
							-- slv_reg107 <= slv_reg107;
							-- slv_reg108 <= slv_reg108;
							-- slv_reg109 <= slv_reg109;
							-- slv_reg110 <= slv_reg110;
							-- slv_reg111 <= slv_reg111;
							-- slv_reg112 <= slv_reg112;
							-- slv_reg113 <= slv_reg113;
							-- slv_reg114 <= slv_reg114;
							-- slv_reg115 <= slv_reg115;
							-- slv_reg116 <= slv_reg116;
							-- slv_reg117 <= slv_reg117;
							-- slv_reg118 <= slv_reg118;
							-- slv_reg119 <= slv_reg119;
							-- slv_reg120 <= slv_reg120;
							-- slv_reg121 <= slv_reg121;
							-- slv_reg122 <= slv_reg122;
							-- slv_reg123 <= slv_reg123;
							-- slv_reg124 <= slv_reg124;
							-- slv_reg125 <= slv_reg125;
							-- slv_reg126 <= slv_reg126;
							-- slv_reg127 <= slv_reg127;
					END CASE;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	PROCESS (S_AXI_ACLK)
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				axi_bvalid <= '0';
				axi_bresp <= "00"; --need to work more on the responses
			ELSE
				IF (axi_awready = '1' AND S_AXI_AWVALID = '1' AND axi_wready = '1' AND S_AXI_WVALID = '1' AND axi_bvalid = '0') THEN
					axi_bvalid <= '1';
					axi_bresp <= "00";
				ELSIF (S_AXI_BREADY = '1' AND axi_bvalid = '1') THEN --check if bready is asserted while bvalid is high)
					axi_bvalid <= '0'; -- (there is a possibility that bready is always asserted high)
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	PROCESS (S_AXI_ACLK)
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				axi_arready <= '0';
				axi_araddr <= (OTHERS => '1');
			ELSE
				IF (axi_arready = '0' AND S_AXI_ARVALID = '1') THEN
					-- indicates that the slave has acceped the valid read address
					axi_arready <= '1';
					-- Read Address latching 
					axi_araddr <= S_AXI_ARADDR;
				ELSE
					axi_arready <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	PROCESS (S_AXI_ACLK)
	BEGIN
		IF rising_edge(S_AXI_ACLK) THEN
			IF S_AXI_ARESETN = '0' THEN
				axi_rvalid <= '0';
				axi_rresp <= "00";
			ELSE
				IF (axi_arready = '1' AND S_AXI_ARVALID = '1' AND axi_rvalid = '0') THEN
					-- Valid read data is available at the read data bus
					axi_rvalid <= '1';
					axi_rresp <= "00"; -- 'OKAY' response
				ELSIF (axi_rvalid = '1' AND S_AXI_RREADY = '1') THEN
					-- Read data is accepted by the master
					axi_rvalid <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready AND S_AXI_ARVALID AND (NOT axi_rvalid);

	PROCESS (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, slv_reg30, slv_reg31, slv_reg32, slv_reg33, slv_reg34, slv_reg35, slv_reg36, slv_reg37, slv_reg38, slv_reg39, slv_reg40, slv_reg41, slv_reg42, slv_reg43, slv_reg44, slv_reg45, slv_reg46, slv_reg47, slv_reg48, slv_reg49, slv_reg50, slv_reg51, slv_reg52, slv_reg53, slv_reg54, slv_reg55, slv_reg56, slv_reg57, slv_reg58, slv_reg59, slv_reg60, slv_reg61, slv_reg62, slv_reg63, slv_reg64, slv_reg65, slv_reg66, slv_reg67, slv_reg68, slv_reg69, slv_reg70, slv_reg71, slv_reg72, slv_reg73, slv_reg74, slv_reg75, slv_reg76, slv_reg77, slv_reg78, slv_reg79, slv_reg80, slv_reg81, slv_reg82, slv_reg83, slv_reg84, slv_reg85, slv_reg86, slv_reg87, slv_reg88, slv_reg89, slv_reg90, slv_reg91, slv_reg92, slv_reg93, slv_reg94, slv_reg95, slv_reg96, slv_reg97, slv_reg98, slv_reg99, slv_reg100, slv_reg101, slv_reg102, slv_reg103, slv_reg104, slv_reg105, slv_reg106, slv_reg107, slv_reg108, slv_reg109, slv_reg110, slv_reg111, slv_reg112, slv_reg113, slv_reg114, slv_reg115, slv_reg116, slv_reg117, slv_reg118, slv_reg119, slv_reg120, slv_reg121, slv_reg122, slv_reg123, slv_reg124, slv_reg125, slv_reg126, slv_reg127, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
		VARIABLE loc_addr : STD_LOGIC_VECTOR(OPT_MEM_ADDR_BITS DOWNTO 0);
	BEGIN
		-- Address decoding for reading registers
		loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB);
		CASE loc_addr IS
			WHEN b"0000000" =>
				reg_data_out <= slv_reg0;
			WHEN b"0000001" =>
				reg_data_out <= slv_reg1;
			WHEN b"0000010" =>
				reg_data_out <= slv_reg2;
			WHEN b"0000011" =>
				reg_data_out <= slv_reg3;
			WHEN b"0000100" =>
				reg_data_out <= slv_reg4;
			WHEN b"0000101" =>
				reg_data_out <= slv_reg5;
			WHEN b"0000110" =>
				reg_data_out <= slv_reg6;
			WHEN b"0000111" =>
				reg_data_out <= slv_reg7;
			WHEN b"0001000" =>
				reg_data_out <= slv_reg8;
			WHEN b"0001001" =>
				reg_data_out <= slv_reg9;
			WHEN b"0001010" =>
				reg_data_out <= slv_reg10;
			WHEN b"0001011" =>
				reg_data_out <= slv_reg11;
			WHEN b"0001100" =>
				reg_data_out <= slv_reg12;
			WHEN b"0001101" =>
				reg_data_out <= slv_reg13;
			WHEN b"0001110" =>
				reg_data_out <= slv_reg14;
			WHEN b"0001111" =>
				reg_data_out <= slv_reg15;
			WHEN b"0010000" =>
				reg_data_out <= slv_reg16;
			WHEN b"0010001" =>
				reg_data_out <= slv_reg17;
			WHEN b"0010010" =>
				reg_data_out <= slv_reg18;
			WHEN b"0010011" =>
				reg_data_out <= slv_reg19;
			WHEN b"0010100" =>
				reg_data_out <= slv_reg20;
			WHEN b"0010101" =>
				reg_data_out <= slv_reg21;
			WHEN b"0010110" =>
				reg_data_out <= slv_reg22;
			WHEN b"0010111" =>
				reg_data_out <= slv_reg23;
			WHEN b"0011000" =>
				reg_data_out <= slv_reg24;
			WHEN b"0011001" =>
				reg_data_out <= slv_reg25;
			WHEN b"0011010" =>
				reg_data_out <= slv_reg26;
			WHEN b"0011011" =>
				reg_data_out <= slv_reg27;
			WHEN b"0011100" =>
				reg_data_out <= slv_reg28;
			WHEN b"0011101" =>
				reg_data_out <= slv_reg29;
			WHEN b"0011110" =>
				reg_data_out <= slv_reg30;
			WHEN b"0011111" =>
				reg_data_out <= slv_reg31;
			WHEN b"0100000" =>
				reg_data_out <= slv_reg32;
			WHEN b"0100001" =>
				reg_data_out <= slv_reg33;
			WHEN b"0100010" =>
				reg_data_out <= slv_reg34;
			WHEN b"0100011" =>
				reg_data_out <= slv_reg35;
			WHEN b"0100100" =>
				reg_data_out <= slv_reg36;
			WHEN b"0100101" =>
				reg_data_out <= slv_reg37;
			WHEN b"0100110" =>
				reg_data_out <= slv_reg38;
			WHEN b"0100111" =>
				reg_data_out <= slv_reg39;
			WHEN b"0101000" =>
				reg_data_out <= slv_reg40;
			WHEN b"0101001" =>
				reg_data_out <= slv_reg41;
			WHEN b"0101010" =>
				reg_data_out <= slv_reg42;
			WHEN b"0101011" =>
				reg_data_out <= slv_reg43;
			WHEN b"0101100" =>
				reg_data_out <= slv_reg44;
			WHEN b"0101101" =>
				reg_data_out <= slv_reg45;
			WHEN b"0101110" =>
				reg_data_out <= slv_reg46;
			WHEN b"0101111" =>
				reg_data_out <= slv_reg47;
			WHEN b"0110000" =>
				reg_data_out <= slv_reg48;
			WHEN b"0110001" =>
				reg_data_out <= slv_reg49;
			WHEN b"0110010" =>
				reg_data_out <= slv_reg50;
			WHEN b"0110011" =>
				reg_data_out <= slv_reg51;
			WHEN b"0110100" =>
				reg_data_out <= slv_reg52;
			WHEN b"0110101" =>
				reg_data_out <= slv_reg53;
			WHEN b"0110110" =>
				reg_data_out <= slv_reg54;
			WHEN b"0110111" =>
				reg_data_out <= slv_reg55;
			WHEN b"0111000" =>
				reg_data_out <= slv_reg56;
			WHEN b"0111001" =>
				reg_data_out <= slv_reg57;
			WHEN b"0111010" =>
				reg_data_out <= slv_reg58;
			WHEN b"0111011" =>
				reg_data_out <= slv_reg59;
			WHEN b"0111100" =>
				reg_data_out <= slv_reg60;
			WHEN b"0111101" =>
				reg_data_out <= slv_reg61;
			WHEN b"0111110" =>
				reg_data_out <= slv_reg62;
			WHEN b"0111111" =>
				reg_data_out <= slv_reg63;
			WHEN b"1000000" =>
				reg_data_out <= slv_reg64;
			WHEN b"1000001" =>
				reg_data_out <= slv_reg65;
			WHEN b"1000010" =>
				reg_data_out <= slv_reg66;
			WHEN b"1000011" =>
				reg_data_out <= slv_reg67;
			WHEN b"1000100" =>
				reg_data_out <= slv_reg68;
			WHEN b"1000101" =>
				reg_data_out <= slv_reg69;
			WHEN b"1000110" =>
				reg_data_out <= slv_reg70;
			WHEN b"1000111" =>
				reg_data_out <= slv_reg71;
			WHEN b"1001000" =>
				reg_data_out <= slv_reg72;
			WHEN b"1001001" =>
				reg_data_out <= slv_reg73;
			WHEN b"1001010" =>
				reg_data_out <= slv_reg74;
			WHEN b"1001011" =>
				reg_data_out <= slv_reg75;
			WHEN b"1001100" =>
				reg_data_out <= slv_reg76;
			WHEN b"1001101" =>
				reg_data_out <= slv_reg77;
			WHEN b"1001110" =>
				reg_data_out <= slv_reg78;
			WHEN b"1001111" =>
				reg_data_out <= slv_reg79;
			WHEN b"1010000" =>
				reg_data_out <= slv_reg80;
			WHEN b"1010001" =>
				reg_data_out <= slv_reg81;
			WHEN b"1010010" =>
				reg_data_out <= slv_reg82;
			WHEN b"1010011" =>
				reg_data_out <= slv_reg83;
			WHEN b"1010100" =>
				reg_data_out <= slv_reg84;
			WHEN b"1010101" =>
				reg_data_out <= slv_reg85;
			WHEN b"1010110" =>
				reg_data_out <= slv_reg86;
			WHEN b"1010111" =>
				reg_data_out <= slv_reg87;
			WHEN b"1011000" =>
				reg_data_out <= slv_reg88;
			WHEN b"1011001" =>
				reg_data_out <= slv_reg89;
			WHEN b"1011010" =>
				reg_data_out <= slv_reg90;
			WHEN b"1011011" =>
				reg_data_out <= slv_reg91;
			WHEN b"1011100" =>
				reg_data_out <= slv_reg92;
			WHEN b"1011101" =>
				reg_data_out <= slv_reg93;
			WHEN b"1011110" =>
				reg_data_out <= slv_reg94;
			WHEN b"1011111" =>
				reg_data_out <= slv_reg95;
			WHEN b"1100000" =>
				reg_data_out <= slv_reg96;
			WHEN b"1100001" =>
				reg_data_out <= slv_reg97;
			WHEN b"1100010" =>
				reg_data_out <= slv_reg98;
			WHEN b"1100011" =>
				reg_data_out <= slv_reg99;
			WHEN b"1100100" =>
				reg_data_out <= slv_reg100;
			WHEN b"1100101" =>
				reg_data_out <= slv_reg101;
			WHEN b"1100110" =>
				reg_data_out <= slv_reg102;
			WHEN b"1100111" =>
				reg_data_out <= slv_reg103;
			WHEN b"1101000" =>
				reg_data_out <= slv_reg104;
			WHEN b"1101001" =>
				reg_data_out <= slv_reg105;
			WHEN b"1101010" =>
				reg_data_out <= slv_reg106;
			WHEN b"1101011" =>
				reg_data_out <= slv_reg107;
			WHEN b"1101100" =>
				reg_data_out <= slv_reg108;
			WHEN b"1101101" =>
				reg_data_out <= slv_reg109;
			WHEN b"1101110" =>
				reg_data_out <= slv_reg110;
			WHEN b"1101111" =>
				reg_data_out <= slv_reg111;
			WHEN b"1110000" =>
				reg_data_out <= slv_reg112;
			WHEN b"1110001" =>
				reg_data_out <= slv_reg113;
			WHEN b"1110010" =>
				reg_data_out <= slv_reg114;
			WHEN b"1110011" =>
				reg_data_out <= slv_reg115;
			WHEN b"1110100" =>
				reg_data_out <= slv_reg116;
			WHEN b"1110101" =>
				reg_data_out <= slv_reg117;
			WHEN b"1110110" =>
				reg_data_out <= slv_reg118;
			WHEN b"1110111" =>
				reg_data_out <= slv_reg119;
			WHEN b"1111000" =>
				reg_data_out <= slv_reg120;
			WHEN b"1111001" =>
				reg_data_out <= slv_reg121;
			WHEN b"1111010" =>
				reg_data_out <= slv_reg122;
			WHEN b"1111011" =>
				reg_data_out <= slv_reg123;
			WHEN b"1111100" =>
				reg_data_out <= slv_reg124;
			WHEN b"1111101" =>
				reg_data_out <= slv_reg125;
			WHEN b"1111110" =>
				reg_data_out <= slv_reg126;
			WHEN b"1111111" =>
				reg_data_out <= slv_reg127;
			WHEN OTHERS =>
				reg_data_out <= (OTHERS => '0');
		END CASE;
	END PROCESS;

	-- Output register or memory read data
	PROCESS (S_AXI_ACLK) IS
	BEGIN
		IF (rising_edge (S_AXI_ACLK)) THEN
			IF (S_AXI_ARESETN = '0') THEN
				axi_rdata <= (OTHERS => '0');
			ELSE
				IF (slv_reg_rden = '1') THEN
					-- When there is a valid read address (S_AXI_ARVALID) with 
					-- acceptance of read address by the slave (axi_arready), 
					-- output the read dada 
					-- Read address mux
					axi_rdata <= reg_data_out; -- register read data
				END IF;
			END IF;
		END IF;
	END PROCESS;
	-- Add user logic here

	-- User logic ends

END arch_imp;