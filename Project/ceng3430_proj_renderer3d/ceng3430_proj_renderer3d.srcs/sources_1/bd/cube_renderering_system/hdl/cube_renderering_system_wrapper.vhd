--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
--Date        : Fri May 19 13:08:40 2023
--Host        : LAPTOP-UCKDP9IT running 64-bit major release  (build 9200)
--Command     : generate_target cube_renderering_system_wrapper.bd
--Design      : cube_renderering_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_wrapper is
  port (
    BTNC : in STD_LOGIC;
    BTND : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    BTNU : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    VGA_BLUE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_GREEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HSYNC : out STD_LOGIC;
    VGA_RED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_VSYNC : out STD_LOGIC
  );
end cube_renderering_system_wrapper;

architecture STRUCTURE of cube_renderering_system_wrapper is
  component cube_renderering_system is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    BTNU : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    VGA_BLUE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HSYNC : out STD_LOGIC;
    VGA_GREEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_RED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BTND : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    VGA_VSYNC : out STD_LOGIC;
    CLK : in STD_LOGIC;
    BTNC : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component cube_renderering_system;
begin
cube_renderering_system_i: component cube_renderering_system
     port map (
      BTNC => BTNC,
      BTND => BTND,
      BTNL => BTNL,
      BTNR => BTNR,
      BTNU => BTNU,
      CLK => CLK,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LED(7 downto 0) => LED(7 downto 0),
      SW(7 downto 0) => SW(7 downto 0),
      VGA_BLUE(3 downto 0) => VGA_BLUE(3 downto 0),
      VGA_GREEN(3 downto 0) => VGA_GREEN(3 downto 0),
      VGA_HSYNC => VGA_HSYNC,
      VGA_RED(3 downto 0) => VGA_RED(3 downto 0),
      VGA_VSYNC => VGA_VSYNC
    );
end STRUCTURE;
