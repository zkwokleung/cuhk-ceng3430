LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cube_renderer_controller_v2_0_S00_AXI IS
	GENERIC (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH : INTEGER := 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH : INTEGER := 8
	);
	PORT (
		-- Users to add ports here
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
END cube_renderer_controller_v2_0_S00_AXI;

ARCHITECTURE arch_imp OF cube_renderer_controller_v2_0_S00_AXI IS

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
	CONSTANT OPT_MEM_ADDR_BITS : INTEGER := 5;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 64
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
				-- slv_reg16 <= (OTHERS => '0');
				-- slv_reg17 <= (OTHERS => '0');
				-- slv_reg18 <= (OTHERS => '0');
				-- slv_reg19 <= (OTHERS => '0');
				-- slv_reg20 <= (OTHERS => '0');
				-- slv_reg21 <= (OTHERS => '0');
				-- slv_reg22 <= (OTHERS => '0');
				-- slv_reg23 <= (OTHERS => '0');
				-- slv_reg24 <= (OTHERS => '0');
				-- slv_reg25 <= (OTHERS => '0');
				-- slv_reg26 <= (OTHERS => '0');
				-- slv_reg27 <= (OTHERS => '0');
				-- slv_reg28 <= (OTHERS => '0');
				-- slv_reg29 <= (OTHERS => '0');
				-- slv_reg30 <= (OTHERS => '0');
				-- slv_reg31 <= (OTHERS => '0');
				-- slv_reg32 <= (OTHERS => '0');
				-- slv_reg33 <= (OTHERS => '0');
				-- slv_reg34 <= (OTHERS => '0');
				-- slv_reg35 <= (OTHERS => '0');
				-- slv_reg36 <= (OTHERS => '0');
				-- slv_reg37 <= (OTHERS => '0');
				-- slv_reg38 <= (OTHERS => '0');
				-- slv_reg39 <= (OTHERS => '0');
				-- slv_reg40 <= (OTHERS => '0');
				-- slv_reg41 <= (OTHERS => '0');
				-- slv_reg42 <= (OTHERS => '0');
				-- slv_reg43 <= (OTHERS => '0');
				-- slv_reg44 <= (OTHERS => '0');
				-- slv_reg45 <= (OTHERS => '0');
				-- slv_reg46 <= (OTHERS => '0');
				-- slv_reg47 <= (OTHERS => '0');
				-- slv_reg48 <= (OTHERS => '0');
				-- slv_reg49 <= (OTHERS => '0');
				-- slv_reg50 <= (OTHERS => '0');
				-- slv_reg51 <= (OTHERS => '0');
				-- slv_reg52 <= (OTHERS => '0');
				-- slv_reg53 <= (OTHERS => '0');
				-- slv_reg54 <= (OTHERS => '0');
				-- slv_reg55 <= (OTHERS => '0');
				-- slv_reg56 <= (OTHERS => '0');
				-- slv_reg57 <= (OTHERS => '0');
				-- slv_reg58 <= (OTHERS => '0');
				-- slv_reg59 <= (OTHERS => '0');
				-- slv_reg60 <= (OTHERS => '0');
				-- slv_reg61 <= (OTHERS => '0');
				-- slv_reg62 <= (OTHERS => '0');
				-- slv_reg63 <= (OTHERS => '0');
			ELSE
				loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB);
				IF (slv_reg_wren = '1') THEN
					CASE loc_addr IS
						WHEN b"000000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 0
									slv_reg0(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 1
									slv_reg1(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 2
									slv_reg2(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 3
									slv_reg3(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 4
									slv_reg4(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 5
									slv_reg5(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 6
									slv_reg6(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"000111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 7
									slv_reg7(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001000" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 8
									slv_reg8(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001001" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 9
									slv_reg9(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001010" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 10
									slv_reg10(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001011" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 11
									slv_reg11(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001100" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 12
									slv_reg12(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001101" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 13
									slv_reg13(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001110" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 14
									slv_reg14(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
						WHEN b"001111" =>
							FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
								IF (S_AXI_WSTRB(byte_index) = '1') THEN
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 15
									slv_reg15(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
								END IF;
							END LOOP;
							-- WHEN b"010000" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 16
							-- 			slv_reg16(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010001" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 17
							-- 			slv_reg17(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010010" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 18
							-- 			slv_reg18(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010011" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 19
							-- 			slv_reg19(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010100" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 20
							-- 			slv_reg20(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010101" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 21
							-- 			slv_reg21(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010110" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 22
							-- 			slv_reg22(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"010111" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 23
							-- 			slv_reg23(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011000" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 24
							-- 			slv_reg24(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011001" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 25
							-- 			slv_reg25(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011010" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 26
							-- 			slv_reg26(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011011" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 27
							-- 			slv_reg27(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011100" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 28
							-- 			slv_reg28(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011101" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 29
							-- 			slv_reg29(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011110" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 30
							-- 			slv_reg30(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"011111" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 31
							-- 			slv_reg31(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100000" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 32
							-- 			slv_reg32(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100001" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 33
							-- 			slv_reg33(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100010" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 34
							-- 			slv_reg34(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100011" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 35
							-- 			slv_reg35(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100100" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 36
							-- 			slv_reg36(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100101" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 37
							-- 			slv_reg37(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100110" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 38
							-- 			slv_reg38(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"100111" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 39
							-- 			slv_reg39(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101000" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 40
							-- 			slv_reg40(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101001" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 41
							-- 			slv_reg41(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101010" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 42
							-- 			slv_reg42(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101011" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 43
							-- 			slv_reg43(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101100" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 44
							-- 			slv_reg44(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101101" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 45
							-- 			slv_reg45(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101110" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 46
							-- 			slv_reg46(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"101111" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 47
							-- 			slv_reg47(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110000" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 48
							-- 			slv_reg48(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110001" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 49
							-- 			slv_reg49(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110010" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 50
							-- 			slv_reg50(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110011" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 51
							-- 			slv_reg51(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110100" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 52
							-- 			slv_reg52(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110101" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 53
							-- 			slv_reg53(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110110" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 54
							-- 			slv_reg54(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"110111" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 55
							-- 			slv_reg55(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111000" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 56
							-- 			slv_reg56(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111001" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 57
							-- 			slv_reg57(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111010" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 58
							-- 			slv_reg58(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111011" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 59
							-- 			slv_reg59(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111100" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 60
							-- 			slv_reg60(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111101" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 61
							-- 			slv_reg61(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111110" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 62
							-- 			slv_reg62(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
							-- WHEN b"111111" =>
							-- 	FOR byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) LOOP
							-- 		IF (S_AXI_WSTRB(byte_index) = '1') THEN
							-- 			-- Respective byte enables are asserted as per write strobes                   
							-- 			-- slave registor 63
							-- 			slv_reg63(byte_index * 8 + 7 DOWNTO byte_index * 8) <= S_AXI_WDATA(byte_index * 8 + 7 DOWNTO byte_index * 8);
							-- 		END IF;
							-- 	END LOOP;
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
							-- slv_reg16 <= slv_reg16;
							-- slv_reg17 <= slv_reg17;
							-- slv_reg18 <= slv_reg18;
							-- slv_reg19 <= slv_reg19;
							-- slv_reg20 <= slv_reg20;
							-- slv_reg21 <= slv_reg21;
							-- slv_reg22 <= slv_reg22;
							-- slv_reg23 <= slv_reg23;
							-- slv_reg24 <= slv_reg24;
							-- slv_reg25 <= slv_reg25;
							-- slv_reg26 <= slv_reg26;
							-- slv_reg27 <= slv_reg27;
							-- slv_reg28 <= slv_reg28;
							-- slv_reg29 <= slv_reg29;
							-- slv_reg30 <= slv_reg30;
							-- slv_reg31 <= slv_reg31;
							-- slv_reg32 <= slv_reg32;
							-- slv_reg33 <= slv_reg33;
							-- slv_reg34 <= slv_reg34;
							-- slv_reg35 <= slv_reg35;
							-- slv_reg36 <= slv_reg36;
							-- slv_reg37 <= slv_reg37;
							-- slv_reg38 <= slv_reg38;
							-- slv_reg39 <= slv_reg39;
							-- slv_reg40 <= slv_reg40;
							-- slv_reg41 <= slv_reg41;
							-- slv_reg42 <= slv_reg42;
							-- slv_reg43 <= slv_reg43;
							-- slv_reg44 <= slv_reg44;
							-- slv_reg45 <= slv_reg45;
							-- slv_reg46 <= slv_reg46;
							-- slv_reg47 <= slv_reg47;
							-- slv_reg48 <= slv_reg48;
							-- slv_reg49 <= slv_reg49;
							-- slv_reg50 <= slv_reg50;
							-- slv_reg51 <= slv_reg51;
							-- slv_reg52 <= slv_reg52;
							-- slv_reg53 <= slv_reg53;
							-- slv_reg54 <= slv_reg54;
							-- slv_reg55 <= slv_reg55;
							-- slv_reg56 <= slv_reg56;
							-- slv_reg57 <= slv_reg57;
							-- slv_reg58 <= slv_reg58;
							-- slv_reg59 <= slv_reg59;
							-- slv_reg60 <= slv_reg60;
							-- slv_reg61 <= slv_reg61;
							-- slv_reg62 <= slv_reg62;
							-- slv_reg63 <= slv_reg63;
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

	PROCESS (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, slv_reg30, slv_reg31, slv_reg32, slv_reg33, slv_reg34, slv_reg35, slv_reg36, slv_reg37, slv_reg38, slv_reg39, slv_reg40, slv_reg41, slv_reg42, slv_reg43, slv_reg44, slv_reg45, slv_reg46, slv_reg47, slv_reg48, slv_reg49, slv_reg50, slv_reg51, slv_reg52, slv_reg53, slv_reg54, slv_reg55, slv_reg56, slv_reg57, slv_reg58, slv_reg59, slv_reg60, slv_reg61, slv_reg62, slv_reg63, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
		VARIABLE loc_addr : STD_LOGIC_VECTOR(OPT_MEM_ADDR_BITS DOWNTO 0);
	BEGIN
		-- Address decoding for reading registers
		loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB);
		CASE loc_addr IS
			WHEN b"000000" =>
				reg_data_out <= slv_reg0;
			WHEN b"000001" =>
				reg_data_out <= slv_reg1;
			WHEN b"000010" =>
				reg_data_out <= slv_reg2;
			WHEN b"000011" =>
				reg_data_out <= slv_reg3;
			WHEN b"000100" =>
				reg_data_out <= slv_reg4;
			WHEN b"000101" =>
				reg_data_out <= slv_reg5;
			WHEN b"000110" =>
				reg_data_out <= slv_reg6;
			WHEN b"000111" =>
				reg_data_out <= slv_reg7;
			WHEN b"001000" =>
				reg_data_out <= slv_reg8;
			WHEN b"001001" =>
				reg_data_out <= slv_reg9;
			WHEN b"001010" =>
				reg_data_out <= slv_reg10;
			WHEN b"001011" =>
				reg_data_out <= slv_reg11;
			WHEN b"001100" =>
				reg_data_out <= slv_reg12;
			WHEN b"001101" =>
				reg_data_out <= slv_reg13;
			WHEN b"001110" =>
				reg_data_out <= slv_reg14;
			WHEN b"001111" =>
				reg_data_out <= slv_reg15;
			WHEN b"010000" =>
				reg_data_out <= slv_reg16;
			WHEN b"010001" =>
				reg_data_out <= slv_reg17;
			WHEN b"010010" =>
				reg_data_out <= slv_reg18;
			WHEN b"010011" =>
				reg_data_out <= slv_reg19;
			WHEN b"010100" =>
				reg_data_out <= slv_reg20;
			WHEN b"010101" =>
				reg_data_out <= slv_reg21;
			WHEN b"010110" =>
				reg_data_out <= slv_reg22;
			WHEN b"010111" =>
				reg_data_out <= slv_reg23;
			WHEN b"011000" =>
				reg_data_out <= slv_reg24;
			WHEN b"011001" =>
				reg_data_out <= slv_reg25;
			WHEN b"011010" =>
				reg_data_out <= slv_reg26;
			WHEN b"011011" =>
				reg_data_out <= slv_reg27;
			WHEN b"011100" =>
				reg_data_out <= slv_reg28;
			WHEN b"011101" =>
				reg_data_out <= slv_reg29;
			WHEN b"011110" =>
				reg_data_out <= slv_reg30;
			WHEN b"011111" =>
				reg_data_out <= slv_reg31;
			WHEN b"100000" =>
				reg_data_out <= slv_reg32;
			WHEN b"100001" =>
				reg_data_out <= slv_reg33;
			WHEN b"100010" =>
				reg_data_out <= slv_reg34;
			WHEN b"100011" =>
				reg_data_out <= slv_reg35;
			WHEN b"100100" =>
				reg_data_out <= slv_reg36;
			WHEN b"100101" =>
				reg_data_out <= slv_reg37;
			WHEN b"100110" =>
				reg_data_out <= slv_reg38;
			WHEN b"100111" =>
				reg_data_out <= slv_reg39;
			WHEN b"101000" =>
				reg_data_out <= slv_reg40;
			WHEN b"101001" =>
				reg_data_out <= slv_reg41;
			WHEN b"101010" =>
				reg_data_out <= slv_reg42;
			WHEN b"101011" =>
				reg_data_out <= slv_reg43;
			WHEN b"101100" =>
				reg_data_out <= slv_reg44;
			WHEN b"101101" =>
				reg_data_out <= slv_reg45;
			WHEN b"101110" =>
				reg_data_out <= slv_reg46;
			WHEN b"101111" =>
				reg_data_out <= slv_reg47;
			WHEN b"110000" =>
				reg_data_out <= slv_reg48;
			WHEN b"110001" =>
				reg_data_out <= slv_reg49;
			WHEN b"110010" =>
				reg_data_out <= slv_reg50;
			WHEN b"110011" =>
				reg_data_out <= slv_reg51;
			WHEN b"110100" =>
				reg_data_out <= slv_reg52;
			WHEN b"110101" =>
				reg_data_out <= slv_reg53;
			WHEN b"110110" =>
				reg_data_out <= slv_reg54;
			WHEN b"110111" =>
				reg_data_out <= slv_reg55;
			WHEN b"111000" =>
				reg_data_out <= slv_reg56;
			WHEN b"111001" =>
				reg_data_out <= slv_reg57;
			WHEN b"111010" =>
				reg_data_out <= slv_reg58;
			WHEN b"111011" =>
				reg_data_out <= slv_reg59;
			WHEN b"111100" =>
				reg_data_out <= slv_reg60;
			WHEN b"111101" =>
				reg_data_out <= slv_reg61;
			WHEN b"111110" =>
				reg_data_out <= slv_reg62;
			WHEN b"111111" =>
				reg_data_out <= slv_reg63;
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