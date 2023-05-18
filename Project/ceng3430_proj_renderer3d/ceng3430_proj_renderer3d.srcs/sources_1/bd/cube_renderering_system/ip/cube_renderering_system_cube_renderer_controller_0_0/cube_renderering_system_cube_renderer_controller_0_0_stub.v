// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu May 18 12:43:39 2023
// Host        : LAPTOP-UCKDP9IT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Git/cuhk-ceng3430/Project/ceng3430_proj_renderer3d/ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ip/cube_renderering_system_cube_renderer_controller_0_0/cube_renderering_system_cube_renderer_controller_0_0_stub.v
// Design      : cube_renderering_system_cube_renderer_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cube_renderer_controller_v2_0,Vivado 2016.3" *)
module cube_renderering_system_cube_renderer_controller_0_0(CLK, SW, BTNC, BTNU, BTND, BTNL, BTNR, LED, VGA_BLUE, 
  VGA_GREEN, VGA_RED, VGA_HSYNC, VGA_VSYNC, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="CLK,SW[7:0],BTNC,BTNU,BTND,BTNL,BTNR,LED[7:0],VGA_BLUE[3:0],VGA_GREEN[3:0],VGA_RED[3:0],VGA_HSYNC,VGA_VSYNC,s00_axi_awaddr[7:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[7:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input CLK;
  input [7:0]SW;
  input BTNC;
  input BTNU;
  input BTND;
  input BTNL;
  input BTNR;
  output [7:0]LED;
  output [3:0]VGA_BLUE;
  output [3:0]VGA_GREEN;
  output [3:0]VGA_RED;
  output VGA_HSYNC;
  output VGA_VSYNC;
  input [7:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [7:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
