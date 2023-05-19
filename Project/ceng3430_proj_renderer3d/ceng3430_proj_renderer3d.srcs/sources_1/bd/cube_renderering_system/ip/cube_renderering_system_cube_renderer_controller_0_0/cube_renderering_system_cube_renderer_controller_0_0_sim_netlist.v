// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Fri May 19 13:09:39 2023
// Host        : LAPTOP-UCKDP9IT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Git/cuhk-ceng3430/Project/ceng3430_proj_renderer3d/ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ip/cube_renderering_system_cube_renderer_controller_0_0/cube_renderering_system_cube_renderer_controller_0_0_sim_netlist.v
// Design      : cube_renderering_system_cube_renderer_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ORIG_REF_NAME = "cube_renderering_system_cube_renderer_controller_0_0_point_on_segment" *) 
module cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment_HD1
   (CLK,
    on_segment,
    \point[0] ,
    \point[1] ,
    \v1[0] ,
    \v1[1] ,
    \v2[0] ,
    \v2[1] );
  input CLK;
  output on_segment;
  input [31:0]\point[0] ;
  input [31:0]\point[1] ;
  input [31:0]\v1[0] ;
  input [31:0]\v1[1] ;
  input [31:0]\v2[0] ;
  input [31:0]\v2[1] ;


endmodule

(* CHECK_LICENSE_TYPE = "cube_renderering_system_cube_renderer_controller_0_0,cube_renderer_controller_v2_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cube_renderer_controller_v2_0,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module cube_renderering_system_cube_renderer_controller_0_0
   (CLK,
    SW,
    BTNC,
    BTNU,
    BTND,
    BTNL,
    BTNR,
    LED,
    VGA_BLUE,
    VGA_GREEN,
    VGA_RED,
    VGA_HSYNC,
    VGA_VSYNC,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) input CLK;
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [7:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [7:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire BTNC;
  wire BTND;
  wire BTNL;
  wire BTNR;
  wire BTNU;
  wire CLK;
  wire [7:0]SW;
  wire VGA_HSYNC;
  wire [0:0]\^VGA_RED ;
  wire VGA_VSYNC;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign LED[7:0] = SW;
  assign VGA_BLUE[3] = \^VGA_RED [0];
  assign VGA_BLUE[2] = \^VGA_RED [0];
  assign VGA_BLUE[1] = \^VGA_RED [0];
  assign VGA_BLUE[0] = \^VGA_RED [0];
  assign VGA_GREEN[3] = \^VGA_RED [0];
  assign VGA_GREEN[2] = \^VGA_RED [0];
  assign VGA_GREEN[1] = \^VGA_RED [0];
  assign VGA_GREEN[0] = \^VGA_RED [0];
  assign VGA_RED[3] = \^VGA_RED [0];
  assign VGA_RED[2] = \^VGA_RED [0];
  assign VGA_RED[1] = \^VGA_RED [0];
  assign VGA_RED[0] = \^VGA_RED [0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0 U0
       (.BTNC(BTNC),
        .BTND(BTND),
        .BTNL(BTNL),
        .BTNR(BTNR),
        .BTNU(BTNU),
        .CLK(CLK),
        .SW(SW),
        .VGA_HSYNC(VGA_HSYNC),
        .VGA_RED(\^VGA_RED ),
        .VGA_VSYNC(VGA_VSYNC),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[7:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[7:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module cube_renderering_system_cube_renderer_controller_0_0_clock_divider
   (sig,
    CLK);
  output sig;
  input CLK;

  wire CLK;
  wire [31:0]counter;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_i_1_n_0;
  wire counter0_carry__3_i_2_n_0;
  wire counter0_carry__3_i_3_n_0;
  wire counter0_carry__3_i_4_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_i_1_n_0;
  wire counter0_carry__4_i_2_n_0;
  wire counter0_carry__4_i_3_n_0;
  wire counter0_carry__4_i_4_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_i_1_n_0;
  wire counter0_carry__5_i_2_n_0;
  wire counter0_carry__5_i_3_n_0;
  wire counter0_carry__5_i_4_n_0;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_i_1_n_0;
  wire counter0_carry__6_i_2_n_0;
  wire counter0_carry__6_i_3_n_0;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [31:1]data0;
  wire [0:0]data0__0;
  wire sig;
  wire sig_0;
  wire sig_i_1_n_0;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_1
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_2
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_3
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_4
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4_n_0));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_1
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_2
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_3
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_4
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4_n_0));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_1
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_2
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_3
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_4
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4_n_0));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({counter0_carry__3_i_1_n_0,counter0_carry__3_i_2_n_0,counter0_carry__3_i_3_n_0,counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_1
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_2
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_3
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_4
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4_n_0));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({counter0_carry__4_i_1_n_0,counter0_carry__4_i_2_n_0,counter0_carry__4_i_3_n_0,counter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_1
       (.I0(counter[24]),
        .O(counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_2
       (.I0(counter[23]),
        .O(counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_3
       (.I0(counter[22]),
        .O(counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_4
       (.I0(counter[21]),
        .O(counter0_carry__4_i_4_n_0));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({counter0_carry__5_i_1_n_0,counter0_carry__5_i_2_n_0,counter0_carry__5_i_3_n_0,counter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_1
       (.I0(counter[28]),
        .O(counter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_2
       (.I0(counter[27]),
        .O(counter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_3
       (.I0(counter[26]),
        .O(counter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_4
       (.I0(counter[25]),
        .O(counter0_carry__5_i_4_n_0));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,counter0_carry__6_i_1_n_0,counter0_carry__6_i_2_n_0,counter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__6_i_1
       (.I0(counter[31]),
        .O(counter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__6_i_2
       (.I0(counter[30]),
        .O(counter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__6_i_3
       (.I0(counter[29]),
        .O(counter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_1
       (.I0(counter[4]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_2
       (.I0(counter[3]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_3
       (.I0(counter[2]),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_4
       (.I0(counter[1]),
        .O(counter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(data0__0));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .O(sig_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_2 
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .I4(\counter[31]_i_6_n_0 ),
        .O(\counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_3 
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[30]),
        .I3(counter[31]),
        .I4(\counter[31]_i_7_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_4 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_6 
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .O(\counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_7 
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .O(\counter[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_8 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .O(\counter[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0__0),
        .Q(counter[0]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter[10]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter[11]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter[12]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[13]),
        .Q(counter[13]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter[14]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[15]),
        .Q(counter[15]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[16]),
        .Q(counter[16]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[17]),
        .Q(counter[17]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[18]),
        .Q(counter[18]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[19]),
        .Q(counter[19]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter[1]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[20]),
        .Q(counter[20]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[21]),
        .Q(counter[21]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[22]),
        .Q(counter[22]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[23]),
        .Q(counter[23]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[24]),
        .Q(counter[24]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[25]),
        .Q(counter[25]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[26]),
        .Q(counter[26]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[27]),
        .Q(counter[27]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[28]),
        .Q(counter[28]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[29]),
        .Q(counter[29]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter[2]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[30]),
        .Q(counter[30]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[31]),
        .Q(counter[31]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter[3]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter[4]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[5]),
        .Q(counter[5]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[6]),
        .Q(counter[6]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[7]),
        .Q(counter[7]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[8]),
        .Q(counter[8]),
        .R(sig_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter[9]),
        .R(sig_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    sig_i_1
       (.I0(\counter[31]_i_5_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_2_n_0 ),
        .I4(sig),
        .O(sig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sig_i_1_n_0),
        .Q(sig),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cube_renderer_controller_v2_0" *) 
module cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0
   (s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_bvalid,
    VGA_RED,
    VGA_HSYNC,
    VGA_VSYNC,
    s00_axi_arvalid,
    SW,
    BTND,
    BTNU,
    BTNR,
    BTNL,
    BTNC,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready,
    CLK);
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output [0:0]VGA_RED;
  output VGA_HSYNC;
  output VGA_VSYNC;
  input s00_axi_arvalid;
  input [7:0]SW;
  input BTND;
  input BTNU;
  input BTNR;
  input BTNL;
  input BTNC;
  input s00_axi_aclk;
  input [5:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [5:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;
  input CLK;

  wire BTNC;
  wire BTND;
  wire BTNL;
  wire BTNR;
  wire BTNU;
  wire CLK;
  wire [31:0]COOR_H;
  wire [31:0]COOR_V;
  wire [7:0]SW;
  wire VGA_HSYNC;
  wire [0:0]VGA_RED;
  wire VGA_VSYNC;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire [31:0]slv_reg1;
  wire [31:0]slv_reg10;
  wire [31:0]slv_reg11;
  wire [31:0]slv_reg12;
  wire [31:0]slv_reg13;
  wire [31:0]slv_reg14;
  wire [31:0]slv_reg15;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg3;
  wire [31:0]slv_reg4;
  wire [31:0]slv_reg5;
  wire [31:0]slv_reg6;
  wire [31:0]slv_reg7;
  wire [31:0]slv_reg8;
  wire [31:0]slv_reg9;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_awvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI cube_renderer_controller_v2_0_S00_AXI_inst
       (.BTNC(BTNC),
        .BTND(BTND),
        .BTNL(BTNL),
        .BTNR(BTNR),
        .BTNU(BTNU),
        .Q(slv_reg0),
        .SR(axi_awready_i_1_n_0),
        .SW(SW),
        .axi_arready_reg_0(axi_rvalid_i_1_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .\axi_rdata_reg[31]_0 (slv_reg1),
        .\axi_rdata_reg[31]_1 (slv_reg2),
        .\axi_rdata_reg[31]_10 (slv_reg11),
        .\axi_rdata_reg[31]_11 (slv_reg12),
        .\axi_rdata_reg[31]_12 (slv_reg13),
        .\axi_rdata_reg[31]_13 (slv_reg14),
        .\axi_rdata_reg[31]_14 (slv_reg15),
        .\axi_rdata_reg[31]_2 (slv_reg3),
        .\axi_rdata_reg[31]_3 (slv_reg4),
        .\axi_rdata_reg[31]_4 (slv_reg5),
        .\axi_rdata_reg[31]_5 (slv_reg6),
        .\axi_rdata_reg[31]_6 (slv_reg7),
        .\axi_rdata_reg[31]_7 (slv_reg8),
        .\axi_rdata_reg[31]_8 (slv_reg9),
        .\axi_rdata_reg[31]_9 (slv_reg10),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  cube_renderering_system_cube_renderer_controller_0_0_renderer3D renderer3D_inst
       (.CLK(CLK),
        .COOR_V(COOR_V),
        .VGA_RED(VGA_RED),
        .\cube_screen_vertices[0][0] (slv_reg0),
        .\cube_screen_vertices[0][1] (slv_reg1),
        .\cube_screen_vertices[1][0] (slv_reg2),
        .\cube_screen_vertices[1][1] (slv_reg3),
        .\cube_screen_vertices[2][0] (slv_reg4),
        .\cube_screen_vertices[2][1] (slv_reg5),
        .\cube_screen_vertices[3][0] (slv_reg6),
        .\cube_screen_vertices[3][1] (slv_reg7),
        .\cube_screen_vertices[4][0] (slv_reg8),
        .\cube_screen_vertices[4][1] (slv_reg9),
        .\cube_screen_vertices[5][0] (slv_reg10),
        .\cube_screen_vertices[5][1] (slv_reg11),
        .\cube_screen_vertices[6][0] (slv_reg12),
        .\cube_screen_vertices[6][1] (slv_reg13),
        .\cube_screen_vertices[7][0] (slv_reg14),
        .\cube_screen_vertices[7][1] (slv_reg15),
        .\point[0] (COOR_H));
  cube_renderering_system_cube_renderer_controller_0_0_vga_controller vga_controller_inst
       (.CLK(CLK),
        .COOR_V(COOR_V),
        .VGA_HSYNC(VGA_HSYNC),
        .VGA_VSYNC(VGA_VSYNC),
        .\point[0] (COOR_H));
endmodule

(* ORIG_REF_NAME = "cube_renderer_controller_v2_0_S00_AXI" *) 
module cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    Q,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_1 ,
    \axi_rdata_reg[31]_2 ,
    \axi_rdata_reg[31]_3 ,
    \axi_rdata_reg[31]_4 ,
    \axi_rdata_reg[31]_5 ,
    \axi_rdata_reg[31]_6 ,
    \axi_rdata_reg[31]_7 ,
    \axi_rdata_reg[31]_8 ,
    \axi_rdata_reg[31]_9 ,
    \axi_rdata_reg[31]_10 ,
    \axi_rdata_reg[31]_11 ,
    \axi_rdata_reg[31]_12 ,
    \axi_rdata_reg[31]_13 ,
    \axi_rdata_reg[31]_14 ,
    s00_axi_rdata,
    SR,
    s00_axi_aclk,
    axi_bvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_arvalid,
    SW,
    BTND,
    BTNU,
    BTNR,
    BTNL,
    BTNC,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]Q;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output [31:0]\axi_rdata_reg[31]_1 ;
  output [31:0]\axi_rdata_reg[31]_2 ;
  output [31:0]\axi_rdata_reg[31]_3 ;
  output [31:0]\axi_rdata_reg[31]_4 ;
  output [31:0]\axi_rdata_reg[31]_5 ;
  output [31:0]\axi_rdata_reg[31]_6 ;
  output [31:0]\axi_rdata_reg[31]_7 ;
  output [31:0]\axi_rdata_reg[31]_8 ;
  output [31:0]\axi_rdata_reg[31]_9 ;
  output [31:0]\axi_rdata_reg[31]_10 ;
  output [31:0]\axi_rdata_reg[31]_11 ;
  output [31:0]\axi_rdata_reg[31]_12 ;
  output [31:0]\axi_rdata_reg[31]_13 ;
  output [31:0]\axi_rdata_reg[31]_14 ;
  output [31:0]s00_axi_rdata;
  input [0:0]SR;
  input s00_axi_aclk;
  input axi_bvalid_reg_0;
  input axi_arready_reg_0;
  input s00_axi_arvalid;
  input [7:0]SW;
  input BTND;
  input BTNU;
  input BTNR;
  input BTNL;
  input BTNC;
  input [5:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [5:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;

  wire BTNC;
  wire BTND;
  wire BTNL;
  wire BTNR;
  wire BTNU;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [7:0]SW;
  wire \axi_araddr_reg_n_0_[7] ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire axi_awready0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[11]_i_8_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[12]_i_8_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[1]_i_8_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[2]_i_8_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[3]_i_8_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[4]_i_8_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[5]_i_8_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[6]_i_8_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[7]_i_8_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire [31:0]\axi_rdata_reg[31]_1 ;
  wire [31:0]\axi_rdata_reg[31]_10 ;
  wire [31:0]\axi_rdata_reg[31]_11 ;
  wire [31:0]\axi_rdata_reg[31]_12 ;
  wire [31:0]\axi_rdata_reg[31]_13 ;
  wire [31:0]\axi_rdata_reg[31]_14 ;
  wire [31:0]\axi_rdata_reg[31]_2 ;
  wire [31:0]\axi_rdata_reg[31]_3 ;
  wire [31:0]\axi_rdata_reg[31]_4 ;
  wire [31:0]\axi_rdata_reg[31]_5 ;
  wire [31:0]\axi_rdata_reg[31]_6 ;
  wire [31:0]\axi_rdata_reg[31]_7 ;
  wire [31:0]\axi_rdata_reg[31]_8 ;
  wire [31:0]\axi_rdata_reg[31]_9 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_wready0;
  wire [3:0]p_0_in;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [4:0]sel0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[31]_i_3_n_0 ;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[31]_i_2_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[31]_i_2_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;

  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .S(SR));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .S(SR));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .S(SR));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .S(SR));
  FDSE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[4]),
        .Q(sel0[4]),
        .S(SR));
  FDSE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[5]),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(SR));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(SR));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[0]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[0]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(BTNC),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [0]),
        .I1(\axi_rdata_reg[31]_1 [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [0]),
        .I1(\axi_rdata_reg[31]_5 [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [0]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [0]),
        .I1(\axi_rdata_reg[31]_9 [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [0]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [0]),
        .I1(\axi_rdata_reg[31]_13 [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [0]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [0]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[10]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[10]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[5]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [10]),
        .I1(\axi_rdata_reg[31]_1 [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [10]),
        .I4(sel0[0]),
        .I5(Q[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [10]),
        .I1(\axi_rdata_reg[31]_5 [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [10]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [10]),
        .I1(\axi_rdata_reg[31]_9 [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [10]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [10]),
        .I1(\axi_rdata_reg[31]_13 [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [10]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [10]),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[11]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[11]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[6]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [11]),
        .I1(\axi_rdata_reg[31]_1 [11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [11]),
        .I4(sel0[0]),
        .I5(Q[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [11]),
        .I1(\axi_rdata_reg[31]_5 [11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [11]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [11]),
        .I1(\axi_rdata_reg[31]_9 [11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [11]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [11]),
        .I1(\axi_rdata_reg[31]_13 [11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [11]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [11]),
        .O(\axi_rdata[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[12]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[12]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[7]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [12]),
        .I1(\axi_rdata_reg[31]_1 [12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [12]),
        .I4(sel0[0]),
        .I5(Q[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [12]),
        .I1(\axi_rdata_reg[31]_5 [12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [12]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [12]),
        .I1(\axi_rdata_reg[31]_9 [12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [12]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [12]),
        .I1(\axi_rdata_reg[31]_13 [12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [12]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [12]),
        .O(\axi_rdata[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[13]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[13]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[13]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [13]),
        .I1(\axi_rdata_reg[31]_9 [13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [13]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [13]),
        .I1(\axi_rdata_reg[31]_13 [13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [13]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [13]),
        .I1(\axi_rdata_reg[31]_1 [13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [13]),
        .I4(sel0[0]),
        .I5(Q[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [13]),
        .I1(\axi_rdata_reg[31]_5 [13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [13]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[14]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[14]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [14]),
        .I1(\axi_rdata_reg[31]_9 [14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [14]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [14]),
        .I1(\axi_rdata_reg[31]_13 [14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [14]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [14]),
        .I1(\axi_rdata_reg[31]_1 [14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [14]),
        .I4(sel0[0]),
        .I5(Q[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [14]),
        .I1(\axi_rdata_reg[31]_5 [14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [14]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[15]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[15]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [15]),
        .I1(\axi_rdata_reg[31]_9 [15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [15]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [15]),
        .I1(\axi_rdata_reg[31]_13 [15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [15]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [15]),
        .I1(\axi_rdata_reg[31]_1 [15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [15]),
        .I4(sel0[0]),
        .I5(Q[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [15]),
        .I1(\axi_rdata_reg[31]_5 [15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [15]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[16]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[16]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [16]),
        .I1(\axi_rdata_reg[31]_9 [16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [16]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [16]),
        .I1(\axi_rdata_reg[31]_13 [16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [16]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [16]),
        .I1(\axi_rdata_reg[31]_1 [16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [16]),
        .I4(sel0[0]),
        .I5(Q[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [16]),
        .I1(\axi_rdata_reg[31]_5 [16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [16]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[17]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[17]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [17]),
        .I1(\axi_rdata_reg[31]_9 [17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [17]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [17]),
        .I1(\axi_rdata_reg[31]_13 [17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [17]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [17]),
        .I1(\axi_rdata_reg[31]_1 [17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [17]),
        .I4(sel0[0]),
        .I5(Q[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [17]),
        .I1(\axi_rdata_reg[31]_5 [17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [17]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[18]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[18]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [18]),
        .I1(\axi_rdata_reg[31]_9 [18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [18]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [18]),
        .I1(\axi_rdata_reg[31]_13 [18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [18]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [18]),
        .I1(\axi_rdata_reg[31]_1 [18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [18]),
        .I4(sel0[0]),
        .I5(Q[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [18]),
        .I1(\axi_rdata_reg[31]_5 [18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [18]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[19]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[19]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[19]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [19]),
        .I1(\axi_rdata_reg[31]_9 [19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [19]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [19]),
        .I1(\axi_rdata_reg[31]_13 [19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [19]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [19]),
        .I1(\axi_rdata_reg[31]_1 [19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [19]),
        .I4(sel0[0]),
        .I5(Q[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [19]),
        .I1(\axi_rdata_reg[31]_5 [19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [19]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[1]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[1]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(BTNL),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [1]),
        .I1(\axi_rdata_reg[31]_1 [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [1]),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [1]),
        .I1(\axi_rdata_reg[31]_5 [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [1]),
        .I1(\axi_rdata_reg[31]_9 [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [1]),
        .I1(\axi_rdata_reg[31]_13 [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [1]),
        .O(\axi_rdata[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[20]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[20]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [20]),
        .I1(\axi_rdata_reg[31]_9 [20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [20]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [20]),
        .I1(\axi_rdata_reg[31]_13 [20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [20]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [20]),
        .I1(\axi_rdata_reg[31]_1 [20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [20]),
        .I4(sel0[0]),
        .I5(Q[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [20]),
        .I1(\axi_rdata_reg[31]_5 [20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [20]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[21]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[21]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[21]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [21]),
        .I1(\axi_rdata_reg[31]_9 [21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [21]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [21]),
        .I1(\axi_rdata_reg[31]_13 [21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [21]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [21]),
        .I1(\axi_rdata_reg[31]_1 [21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [21]),
        .I4(sel0[0]),
        .I5(Q[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [21]),
        .I1(\axi_rdata_reg[31]_5 [21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [21]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[22]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[22]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [22]),
        .I1(\axi_rdata_reg[31]_9 [22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [22]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [22]),
        .I1(\axi_rdata_reg[31]_13 [22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [22]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [22]),
        .I1(\axi_rdata_reg[31]_1 [22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [22]),
        .I4(sel0[0]),
        .I5(Q[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [22]),
        .I1(\axi_rdata_reg[31]_5 [22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [22]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[23]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[23]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[23]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [23]),
        .I1(\axi_rdata_reg[31]_9 [23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [23]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [23]),
        .I1(\axi_rdata_reg[31]_13 [23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [23]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [23]),
        .I1(\axi_rdata_reg[31]_1 [23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [23]),
        .I4(sel0[0]),
        .I5(Q[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [23]),
        .I1(\axi_rdata_reg[31]_5 [23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [23]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[24]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[24]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [24]),
        .I1(\axi_rdata_reg[31]_9 [24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [24]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [24]),
        .I1(\axi_rdata_reg[31]_13 [24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [24]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [24]),
        .I1(\axi_rdata_reg[31]_1 [24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [24]),
        .I4(sel0[0]),
        .I5(Q[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [24]),
        .I1(\axi_rdata_reg[31]_5 [24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [24]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[25]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[25]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[25]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [25]),
        .I1(\axi_rdata_reg[31]_9 [25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [25]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [25]),
        .I1(\axi_rdata_reg[31]_13 [25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [25]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [25]),
        .I1(\axi_rdata_reg[31]_1 [25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [25]),
        .I4(sel0[0]),
        .I5(Q[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [25]),
        .I1(\axi_rdata_reg[31]_5 [25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [25]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[26]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[26]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[26]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [26]),
        .I1(\axi_rdata_reg[31]_9 [26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [26]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [26]),
        .I1(\axi_rdata_reg[31]_13 [26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [26]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [26]),
        .I1(\axi_rdata_reg[31]_1 [26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [26]),
        .I4(sel0[0]),
        .I5(Q[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [26]),
        .I1(\axi_rdata_reg[31]_5 [26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [26]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[27]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[27]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[27]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [27]),
        .I1(\axi_rdata_reg[31]_9 [27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [27]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [27]),
        .I1(\axi_rdata_reg[31]_13 [27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [27]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [27]),
        .I1(\axi_rdata_reg[31]_1 [27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [27]),
        .I4(sel0[0]),
        .I5(Q[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [27]),
        .I1(\axi_rdata_reg[31]_5 [27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [27]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[28]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[28]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[28]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [28]),
        .I1(\axi_rdata_reg[31]_9 [28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [28]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [28]),
        .I1(\axi_rdata_reg[31]_13 [28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [28]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [28]),
        .I1(\axi_rdata_reg[31]_1 [28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [28]),
        .I4(sel0[0]),
        .I5(Q[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [28]),
        .I1(\axi_rdata_reg[31]_5 [28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [28]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[29]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[29]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[29]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [29]),
        .I1(\axi_rdata_reg[31]_9 [29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [29]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [29]),
        .I1(\axi_rdata_reg[31]_13 [29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [29]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [29]),
        .I1(\axi_rdata_reg[31]_1 [29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [29]),
        .I4(sel0[0]),
        .I5(Q[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [29]),
        .I1(\axi_rdata_reg[31]_5 [29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [29]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[2]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[2]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(BTNR),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [2]),
        .I1(\axi_rdata_reg[31]_1 [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [2]),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [2]),
        .I1(\axi_rdata_reg[31]_5 [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [2]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [2]),
        .I1(\axi_rdata_reg[31]_9 [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [2]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [2]),
        .I1(\axi_rdata_reg[31]_13 [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [2]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [2]),
        .O(\axi_rdata[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[30]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[30]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(\axi_rdata_reg[31]_10 [30]),
        .I1(\axi_rdata_reg[31]_9 [30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [30]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\axi_rdata_reg[31]_14 [30]),
        .I1(\axi_rdata_reg[31]_13 [30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [30]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(\axi_rdata_reg[31]_2 [30]),
        .I1(\axi_rdata_reg[31]_1 [30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [30]),
        .I4(sel0[0]),
        .I5(Q[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(\axi_rdata_reg[31]_6 [30]),
        .I1(\axi_rdata_reg[31]_5 [30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [30]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[31]_i_2 
       (.I0(sel0[4]),
        .I1(\axi_rdata_reg[31]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata_reg[31]_i_4_n_0 ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(\axi_rdata_reg[31]_10 [31]),
        .I1(\axi_rdata_reg[31]_9 [31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [31]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(\axi_rdata_reg[31]_14 [31]),
        .I1(\axi_rdata_reg[31]_13 [31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [31]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(\axi_rdata_reg[31]_2 [31]),
        .I1(\axi_rdata_reg[31]_1 [31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [31]),
        .I4(sel0[0]),
        .I5(Q[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(\axi_rdata_reg[31]_6 [31]),
        .I1(\axi_rdata_reg[31]_5 [31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [31]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[3]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[3]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(BTNU),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [3]),
        .I1(\axi_rdata_reg[31]_1 [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [3]),
        .I4(sel0[0]),
        .I5(Q[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [3]),
        .I1(\axi_rdata_reg[31]_5 [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [3]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [3]),
        .I1(\axi_rdata_reg[31]_9 [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [3]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [3]),
        .I1(\axi_rdata_reg[31]_13 [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [3]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [3]),
        .O(\axi_rdata[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[4]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[4]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(BTND),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [4]),
        .I1(\axi_rdata_reg[31]_1 [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [4]),
        .I4(sel0[0]),
        .I5(Q[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [4]),
        .I1(\axi_rdata_reg[31]_5 [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [4]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [4]),
        .I1(\axi_rdata_reg[31]_9 [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [4]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [4]),
        .I1(\axi_rdata_reg[31]_13 [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [4]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [4]),
        .O(\axi_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[5]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[5]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[0]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [5]),
        .I1(\axi_rdata_reg[31]_1 [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [5]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [5]),
        .I1(\axi_rdata_reg[31]_5 [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [5]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [5]),
        .I1(\axi_rdata_reg[31]_9 [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [5]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [5]),
        .I1(\axi_rdata_reg[31]_13 [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [5]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [5]),
        .O(\axi_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[6]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[6]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [6]),
        .I1(\axi_rdata_reg[31]_1 [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [6]),
        .I4(sel0[0]),
        .I5(Q[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [6]),
        .I1(\axi_rdata_reg[31]_5 [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [6]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [6]),
        .I1(\axi_rdata_reg[31]_9 [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [6]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [6]),
        .I1(\axi_rdata_reg[31]_13 [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [6]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [6]),
        .O(\axi_rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[7]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[7]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[7]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[2]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [7]),
        .I1(\axi_rdata_reg[31]_1 [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [7]),
        .I4(sel0[0]),
        .I5(Q[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [7]),
        .I1(\axi_rdata_reg[31]_5 [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [7]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [7]),
        .I1(\axi_rdata_reg[31]_9 [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [7]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [7]),
        .I1(\axi_rdata_reg[31]_13 [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [7]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [7]),
        .O(\axi_rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[8]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[8]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[3]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [8]),
        .I1(\axi_rdata_reg[31]_1 [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [8]),
        .I4(sel0[0]),
        .I5(Q[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [8]),
        .I1(\axi_rdata_reg[31]_5 [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [8]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [8]),
        .I1(\axi_rdata_reg[31]_9 [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [8]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [8]),
        .I1(\axi_rdata_reg[31]_13 [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [8]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [8]),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[9]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[9]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(SW[4]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\axi_rdata_reg[31]_2 [9]),
        .I1(\axi_rdata_reg[31]_1 [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_0 [9]),
        .I4(sel0[0]),
        .I5(Q[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(\axi_rdata_reg[31]_6 [9]),
        .I1(\axi_rdata_reg[31]_5 [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_4 [9]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_3 [9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(\axi_rdata_reg[31]_10 [9]),
        .I1(\axi_rdata_reg[31]_9 [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_8 [9]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_7 [9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_8 
       (.I0(\axi_rdata_reg[31]_14 [9]),
        .I1(\axi_rdata_reg[31]_13 [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_12 [9]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_11 [9]),
        .O(\axi_rdata[9]_i_8_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_5_n_0 ),
        .I1(\axi_rdata[0]_i_6_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_7_n_0 ),
        .I1(\axi_rdata[0]_i_8_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_5_n_0 ),
        .I1(\axi_rdata[10]_i_6_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_7_n_0 ),
        .I1(\axi_rdata[10]_i_8_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_5_n_0 ),
        .I1(\axi_rdata[11]_i_6_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_7_n_0 ),
        .I1(\axi_rdata[11]_i_8_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_5_n_0 ),
        .I1(\axi_rdata[12]_i_6_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_7_n_0 ),
        .I1(\axi_rdata[12]_i_8_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_5_n_0 ),
        .I1(\axi_rdata[1]_i_6_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_7_n_0 ),
        .I1(\axi_rdata[1]_i_8_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_5_n_0 ),
        .I1(\axi_rdata[2]_i_6_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_7_n_0 ),
        .I1(\axi_rdata[2]_i_8_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_5_n_0 ),
        .I1(\axi_rdata[31]_i_6_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(\axi_rdata[31]_i_8_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_5_n_0 ),
        .I1(\axi_rdata[3]_i_6_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_7_n_0 ),
        .I1(\axi_rdata[3]_i_8_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_5_n_0 ),
        .I1(\axi_rdata[4]_i_6_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_7_n_0 ),
        .I1(\axi_rdata[4]_i_8_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_5_n_0 ),
        .I1(\axi_rdata[5]_i_6_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_7_n_0 ),
        .I1(\axi_rdata[5]_i_8_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_5_n_0 ),
        .I1(\axi_rdata[6]_i_6_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_7_n_0 ),
        .I1(\axi_rdata[6]_i_8_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_5_n_0 ),
        .I1(\axi_rdata[7]_i_6_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_7_n_0 ),
        .I1(\axi_rdata[7]_i_8_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_5_n_0 ),
        .I1(\axi_rdata[8]_i_6_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_7_n_0 ),
        .I1(\axi_rdata[8]_i_8_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_5_n_0 ),
        .I1(\axi_rdata[9]_i_6_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_7_n_0 ),
        .I1(\axi_rdata[9]_i_8_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \slv_reg0[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .I4(p_0_in[3]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(\slv_reg0[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg10[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg10[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg10[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg10[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_9 [0]),
        .R(SR));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_9 [10]),
        .R(SR));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_9 [11]),
        .R(SR));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_9 [12]),
        .R(SR));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_9 [13]),
        .R(SR));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_9 [14]),
        .R(SR));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_9 [15]),
        .R(SR));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_9 [16]),
        .R(SR));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_9 [17]),
        .R(SR));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_9 [18]),
        .R(SR));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_9 [19]),
        .R(SR));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_9 [1]),
        .R(SR));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_9 [20]),
        .R(SR));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_9 [21]),
        .R(SR));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_9 [22]),
        .R(SR));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_9 [23]),
        .R(SR));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_9 [24]),
        .R(SR));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_9 [25]),
        .R(SR));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_9 [26]),
        .R(SR));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_9 [27]),
        .R(SR));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_9 [28]),
        .R(SR));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_9 [29]),
        .R(SR));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_9 [2]),
        .R(SR));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_9 [30]),
        .R(SR));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_9 [31]),
        .R(SR));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_9 [3]),
        .R(SR));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_9 [4]),
        .R(SR));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_9 [5]),
        .R(SR));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_9 [6]),
        .R(SR));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_9 [7]),
        .R(SR));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_9 [8]),
        .R(SR));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_9 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg11[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg11[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg11[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg11[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_10 [0]),
        .R(SR));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_10 [10]),
        .R(SR));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_10 [11]),
        .R(SR));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_10 [12]),
        .R(SR));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_10 [13]),
        .R(SR));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_10 [14]),
        .R(SR));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_10 [15]),
        .R(SR));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_10 [16]),
        .R(SR));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_10 [17]),
        .R(SR));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_10 [18]),
        .R(SR));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_10 [19]),
        .R(SR));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_10 [1]),
        .R(SR));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_10 [20]),
        .R(SR));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_10 [21]),
        .R(SR));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_10 [22]),
        .R(SR));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_10 [23]),
        .R(SR));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_10 [24]),
        .R(SR));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_10 [25]),
        .R(SR));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_10 [26]),
        .R(SR));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_10 [27]),
        .R(SR));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_10 [28]),
        .R(SR));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_10 [29]),
        .R(SR));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_10 [2]),
        .R(SR));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_10 [30]),
        .R(SR));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_10 [31]),
        .R(SR));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_10 [3]),
        .R(SR));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_10 [4]),
        .R(SR));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_10 [5]),
        .R(SR));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_10 [6]),
        .R(SR));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_10 [7]),
        .R(SR));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_10 [8]),
        .R(SR));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_10 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg12[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg12[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg12[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg12[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_11 [0]),
        .R(SR));
  FDRE \slv_reg12_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_11 [10]),
        .R(SR));
  FDRE \slv_reg12_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_11 [11]),
        .R(SR));
  FDRE \slv_reg12_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_11 [12]),
        .R(SR));
  FDRE \slv_reg12_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_11 [13]),
        .R(SR));
  FDRE \slv_reg12_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_11 [14]),
        .R(SR));
  FDRE \slv_reg12_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_11 [15]),
        .R(SR));
  FDRE \slv_reg12_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_11 [16]),
        .R(SR));
  FDRE \slv_reg12_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_11 [17]),
        .R(SR));
  FDRE \slv_reg12_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_11 [18]),
        .R(SR));
  FDRE \slv_reg12_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_11 [19]),
        .R(SR));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_11 [1]),
        .R(SR));
  FDRE \slv_reg12_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_11 [20]),
        .R(SR));
  FDRE \slv_reg12_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_11 [21]),
        .R(SR));
  FDRE \slv_reg12_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_11 [22]),
        .R(SR));
  FDRE \slv_reg12_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_11 [23]),
        .R(SR));
  FDRE \slv_reg12_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_11 [24]),
        .R(SR));
  FDRE \slv_reg12_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_11 [25]),
        .R(SR));
  FDRE \slv_reg12_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_11 [26]),
        .R(SR));
  FDRE \slv_reg12_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_11 [27]),
        .R(SR));
  FDRE \slv_reg12_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_11 [28]),
        .R(SR));
  FDRE \slv_reg12_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_11 [29]),
        .R(SR));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_11 [2]),
        .R(SR));
  FDRE \slv_reg12_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_11 [30]),
        .R(SR));
  FDRE \slv_reg12_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_11 [31]),
        .R(SR));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_11 [3]),
        .R(SR));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_11 [4]),
        .R(SR));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_11 [5]),
        .R(SR));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_11 [6]),
        .R(SR));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_11 [7]),
        .R(SR));
  FDRE \slv_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_11 [8]),
        .R(SR));
  FDRE \slv_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_11 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg13[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg13[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg13[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg13[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_12 [0]),
        .R(SR));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_12 [10]),
        .R(SR));
  FDRE \slv_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_12 [11]),
        .R(SR));
  FDRE \slv_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_12 [12]),
        .R(SR));
  FDRE \slv_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_12 [13]),
        .R(SR));
  FDRE \slv_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_12 [14]),
        .R(SR));
  FDRE \slv_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_12 [15]),
        .R(SR));
  FDRE \slv_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_12 [16]),
        .R(SR));
  FDRE \slv_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_12 [17]),
        .R(SR));
  FDRE \slv_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_12 [18]),
        .R(SR));
  FDRE \slv_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_12 [19]),
        .R(SR));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_12 [1]),
        .R(SR));
  FDRE \slv_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_12 [20]),
        .R(SR));
  FDRE \slv_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_12 [21]),
        .R(SR));
  FDRE \slv_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_12 [22]),
        .R(SR));
  FDRE \slv_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_12 [23]),
        .R(SR));
  FDRE \slv_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_12 [24]),
        .R(SR));
  FDRE \slv_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_12 [25]),
        .R(SR));
  FDRE \slv_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_12 [26]),
        .R(SR));
  FDRE \slv_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_12 [27]),
        .R(SR));
  FDRE \slv_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_12 [28]),
        .R(SR));
  FDRE \slv_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_12 [29]),
        .R(SR));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_12 [2]),
        .R(SR));
  FDRE \slv_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_12 [30]),
        .R(SR));
  FDRE \slv_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_12 [31]),
        .R(SR));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_12 [3]),
        .R(SR));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_12 [4]),
        .R(SR));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_12 [5]),
        .R(SR));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_12 [6]),
        .R(SR));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_12 [7]),
        .R(SR));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_12 [8]),
        .R(SR));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_12 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg14[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg14[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg14[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg14[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_13 [0]),
        .R(SR));
  FDRE \slv_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_13 [10]),
        .R(SR));
  FDRE \slv_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_13 [11]),
        .R(SR));
  FDRE \slv_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_13 [12]),
        .R(SR));
  FDRE \slv_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_13 [13]),
        .R(SR));
  FDRE \slv_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_13 [14]),
        .R(SR));
  FDRE \slv_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_13 [15]),
        .R(SR));
  FDRE \slv_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_13 [16]),
        .R(SR));
  FDRE \slv_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_13 [17]),
        .R(SR));
  FDRE \slv_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_13 [18]),
        .R(SR));
  FDRE \slv_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_13 [19]),
        .R(SR));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_13 [1]),
        .R(SR));
  FDRE \slv_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_13 [20]),
        .R(SR));
  FDRE \slv_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_13 [21]),
        .R(SR));
  FDRE \slv_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_13 [22]),
        .R(SR));
  FDRE \slv_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_13 [23]),
        .R(SR));
  FDRE \slv_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_13 [24]),
        .R(SR));
  FDRE \slv_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_13 [25]),
        .R(SR));
  FDRE \slv_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_13 [26]),
        .R(SR));
  FDRE \slv_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_13 [27]),
        .R(SR));
  FDRE \slv_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_13 [28]),
        .R(SR));
  FDRE \slv_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_13 [29]),
        .R(SR));
  FDRE \slv_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_13 [2]),
        .R(SR));
  FDRE \slv_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_13 [30]),
        .R(SR));
  FDRE \slv_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_13 [31]),
        .R(SR));
  FDRE \slv_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_13 [3]),
        .R(SR));
  FDRE \slv_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_13 [4]),
        .R(SR));
  FDRE \slv_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_13 [5]),
        .R(SR));
  FDRE \slv_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_13 [6]),
        .R(SR));
  FDRE \slv_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_13 [7]),
        .R(SR));
  FDRE \slv_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_13 [8]),
        .R(SR));
  FDRE \slv_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_13 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg15[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg15[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg15[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg15[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_14 [0]),
        .R(SR));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_14 [10]),
        .R(SR));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_14 [11]),
        .R(SR));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_14 [12]),
        .R(SR));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_14 [13]),
        .R(SR));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_14 [14]),
        .R(SR));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_14 [15]),
        .R(SR));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_14 [16]),
        .R(SR));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_14 [17]),
        .R(SR));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_14 [18]),
        .R(SR));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_14 [19]),
        .R(SR));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_14 [1]),
        .R(SR));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_14 [20]),
        .R(SR));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_14 [21]),
        .R(SR));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_14 [22]),
        .R(SR));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_14 [23]),
        .R(SR));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_14 [24]),
        .R(SR));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_14 [25]),
        .R(SR));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_14 [26]),
        .R(SR));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_14 [27]),
        .R(SR));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_14 [28]),
        .R(SR));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_14 [29]),
        .R(SR));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_14 [2]),
        .R(SR));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_14 [30]),
        .R(SR));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_14 [31]),
        .R(SR));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_14 [3]),
        .R(SR));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_14 [4]),
        .R(SR));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_14 [5]),
        .R(SR));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_14 [6]),
        .R(SR));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_14 [7]),
        .R(SR));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_14 [8]),
        .R(SR));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_14 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg1[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .I4(p_0_in[3]),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_1 [0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_1 [10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_1 [11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_1 [12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_1 [13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_1 [14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_1 [15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_1 [16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_1 [17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_1 [18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_1 [19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_1 [1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_1 [20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_1 [21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_1 [22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_1 [23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_1 [24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_1 [25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_1 [26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_1 [27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_1 [28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_1 [29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_1 [2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_1 [30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_1 [31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_1 [3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_1 [4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_1 [5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_1 [6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_1 [7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_1 [8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_1 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_2 [0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_2 [10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_2 [11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_2 [12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_2 [13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_2 [14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_2 [15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_2 [16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_2 [17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_2 [18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_2 [19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_2 [1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_2 [20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_2 [21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_2 [22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_2 [23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_2 [24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_2 [25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_2 [26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_2 [27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_2 [28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_2 [29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_2 [2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_2 [30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_2 [31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_2 [3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_2 [4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_2 [5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_2 [6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_2 [7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_2 [8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_2 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg4[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg4[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg4[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg4[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_3 [0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_3 [10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_3 [11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_3 [12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_3 [13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_3 [14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_3 [15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_3 [16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_3 [17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_3 [18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_3 [19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_3 [1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_3 [20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_3 [21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_3 [22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_3 [23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_3 [24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_3 [25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_3 [26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_3 [27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_3 [28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_3 [29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_3 [2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_3 [30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_3 [31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_3 [3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_3 [4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_3 [5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_3 [6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_3 [7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_3 [8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_3 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_4 [0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_4 [10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_4 [11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_4 [12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_4 [13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_4 [14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_4 [15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_4 [16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_4 [17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_4 [18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_4 [19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_4 [1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_4 [20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_4 [21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_4 [22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_4 [23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_4 [24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_4 [25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_4 [26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_4 [27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_4 [28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_4 [29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_4 [2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_4 [30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_4 [31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_4 [3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_4 [4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_4 [5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_4 [6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_4 [7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_4 [8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_4 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_5 [0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_5 [10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_5 [11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_5 [12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_5 [13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_5 [14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_5 [15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_5 [16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_5 [17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_5 [18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_5 [19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_5 [1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_5 [20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_5 [21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_5 [22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_5 [23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_5 [24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_5 [25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_5 [26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_5 [27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_5 [28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_5 [29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_5 [2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_5 [30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_5 [31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_5 [3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_5 [4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_5 [5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_5 [6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_5 [7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_5 [8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_5 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg7[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg7[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg7[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg7[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_6 [0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_6 [10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_6 [11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_6 [12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_6 [13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_6 [14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_6 [15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_6 [16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_6 [17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_6 [18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_6 [19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_6 [1]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_6 [20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_6 [21]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_6 [22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_6 [23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_6 [24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_6 [25]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_6 [26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_6 [27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_6 [28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_6 [29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_6 [2]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_6 [30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_6 [31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_6 [3]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_6 [4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_6 [5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_6 [6]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_6 [7]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_6 [8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_6 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg8[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg8[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg8[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg8[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \slv_reg8[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .I4(p_0_in[3]),
        .O(\slv_reg8[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg8[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg8[31]_i_2_n_0 ),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_7 [0]),
        .R(SR));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_7 [10]),
        .R(SR));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_7 [11]),
        .R(SR));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_7 [12]),
        .R(SR));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_7 [13]),
        .R(SR));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_7 [14]),
        .R(SR));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_7 [15]),
        .R(SR));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_7 [16]),
        .R(SR));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_7 [17]),
        .R(SR));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_7 [18]),
        .R(SR));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_7 [19]),
        .R(SR));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_7 [1]),
        .R(SR));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_7 [20]),
        .R(SR));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_7 [21]),
        .R(SR));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_7 [22]),
        .R(SR));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_7 [23]),
        .R(SR));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_7 [24]),
        .R(SR));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_7 [25]),
        .R(SR));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_7 [26]),
        .R(SR));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_7 [27]),
        .R(SR));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_7 [28]),
        .R(SR));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_7 [29]),
        .R(SR));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_7 [2]),
        .R(SR));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_7 [30]),
        .R(SR));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_7 [31]),
        .R(SR));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_7 [3]),
        .R(SR));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_7 [4]),
        .R(SR));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_7 [5]),
        .R(SR));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_7 [6]),
        .R(SR));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_7 [7]),
        .R(SR));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_7 [8]),
        .R(SR));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_7 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg9[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg9[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg9[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg9[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg9[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .I4(p_0_in[3]),
        .O(\slv_reg9[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg9[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg9[31]_i_2_n_0 ),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_8 [0]),
        .R(SR));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_8 [10]),
        .R(SR));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_8 [11]),
        .R(SR));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_8 [12]),
        .R(SR));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_8 [13]),
        .R(SR));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_8 [14]),
        .R(SR));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_8 [15]),
        .R(SR));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_8 [16]),
        .R(SR));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_8 [17]),
        .R(SR));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_8 [18]),
        .R(SR));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_8 [19]),
        .R(SR));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_8 [1]),
        .R(SR));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_8 [20]),
        .R(SR));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_8 [21]),
        .R(SR));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_8 [22]),
        .R(SR));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_8 [23]),
        .R(SR));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_8 [24]),
        .R(SR));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_8 [25]),
        .R(SR));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_8 [26]),
        .R(SR));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_8 [27]),
        .R(SR));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_8 [28]),
        .R(SR));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_8 [29]),
        .R(SR));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_8 [2]),
        .R(SR));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_8 [30]),
        .R(SR));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_8 [31]),
        .R(SR));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_8 [3]),
        .R(SR));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_8 [4]),
        .R(SR));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_8 [5]),
        .R(SR));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_8 [6]),
        .R(SR));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_8 [7]),
        .R(SR));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_8 [8]),
        .R(SR));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_8 [9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "point_on_segment" *) 
module cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
   (CLK,
    \point[0] ,
    \point[1] ,
    \v1[0] ,
    \v1[1] ,
    \v2[0] ,
    \v2[1] ,
    on_segment);
  input CLK;
  input [31:0]\point[0] ;
  input [31:0]\point[1] ;
  input [31:0]\v1[0] ;
  input [31:0]\v1[1] ;
  input [31:0]\v2[0] ;
  input [31:0]\v2[1] ;
  output on_segment;


endmodule

(* ORIG_REF_NAME = "renderer3D" *) 
module cube_renderering_system_cube_renderer_controller_0_0_renderer3D
   (VGA_RED,
    CLK,
    \point[0] ,
    COOR_V,
    \cube_screen_vertices[0][0] ,
    \cube_screen_vertices[0][1] ,
    \cube_screen_vertices[1][0] ,
    \cube_screen_vertices[1][1] ,
    \cube_screen_vertices[4][0] ,
    \cube_screen_vertices[4][1] ,
    \cube_screen_vertices[5][0] ,
    \cube_screen_vertices[5][1] ,
    \cube_screen_vertices[2][0] ,
    \cube_screen_vertices[2][1] ,
    \cube_screen_vertices[6][0] ,
    \cube_screen_vertices[6][1] ,
    \cube_screen_vertices[3][0] ,
    \cube_screen_vertices[3][1] ,
    \cube_screen_vertices[7][0] ,
    \cube_screen_vertices[7][1] );
  output [0:0]VGA_RED;
  input CLK;
  input [31:0]\point[0] ;
  input [31:0]COOR_V;
  input [31:0]\cube_screen_vertices[0][0] ;
  input [31:0]\cube_screen_vertices[0][1] ;
  input [31:0]\cube_screen_vertices[1][0] ;
  input [31:0]\cube_screen_vertices[1][1] ;
  input [31:0]\cube_screen_vertices[4][0] ;
  input [31:0]\cube_screen_vertices[4][1] ;
  input [31:0]\cube_screen_vertices[5][0] ;
  input [31:0]\cube_screen_vertices[5][1] ;
  input [31:0]\cube_screen_vertices[2][0] ;
  input [31:0]\cube_screen_vertices[2][1] ;
  input [31:0]\cube_screen_vertices[6][0] ;
  input [31:0]\cube_screen_vertices[6][1] ;
  input [31:0]\cube_screen_vertices[3][0] ;
  input [31:0]\cube_screen_vertices[3][1] ;
  input [31:0]\cube_screen_vertices[7][0] ;
  input [31:0]\cube_screen_vertices[7][1] ;

  wire CLK;
  wire [31:0]COOR_V;
  wire [0:0]VGA_RED;
  wire \VGA_RED[0]_INST_0_i_1_n_0 ;
  wire \VGA_RED[0]_INST_0_i_2_n_0 ;
  wire [31:0]\cube_screen_vertices[0][0] ;
  wire [31:0]\cube_screen_vertices[0][1] ;
  wire [31:0]\cube_screen_vertices[1][0] ;
  wire [31:0]\cube_screen_vertices[1][1] ;
  wire [31:0]\cube_screen_vertices[2][0] ;
  wire [31:0]\cube_screen_vertices[2][1] ;
  wire [31:0]\cube_screen_vertices[3][0] ;
  wire [31:0]\cube_screen_vertices[3][1] ;
  wire [31:0]\cube_screen_vertices[4][0] ;
  wire [31:0]\cube_screen_vertices[4][1] ;
  wire [31:0]\cube_screen_vertices[5][0] ;
  wire [31:0]\cube_screen_vertices[5][1] ;
  wire [31:0]\cube_screen_vertices[6][0] ;
  wire [31:0]\cube_screen_vertices[6][1] ;
  wire [31:0]\cube_screen_vertices[7][0] ;
  wire [31:0]\cube_screen_vertices[7][1] ;
  wire [11:0]draw_signal;
  wire [31:0]\point[0] ;

  LUT2 #(
    .INIT(4'h7)) 
    \VGA_RED[0]_INST_0 
       (.I0(\VGA_RED[0]_INST_0_i_1_n_0 ),
        .I1(\VGA_RED[0]_INST_0_i_2_n_0 ),
        .O(VGA_RED));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \VGA_RED[0]_INST_0_i_1 
       (.I0(draw_signal[5]),
        .I1(draw_signal[3]),
        .I2(draw_signal[4]),
        .I3(draw_signal[0]),
        .I4(draw_signal[1]),
        .I5(draw_signal[2]),
        .O(\VGA_RED[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \VGA_RED[0]_INST_0_i_2 
       (.I0(draw_signal[10]),
        .I1(draw_signal[9]),
        .I2(draw_signal[11]),
        .I3(draw_signal[6]),
        .I4(draw_signal[7]),
        .I5(draw_signal[8]),
        .O(\VGA_RED[0]_INST_0_i_2_n_0 ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[0].point_on_segment_i 
       (.CLK(CLK),
        .on_segment(draw_signal[0]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[0][0] ),
        .\v1[1] (\cube_screen_vertices[0][1] ),
        .\v2[0] (\cube_screen_vertices[1][0] ),
        .\v2[1] (\cube_screen_vertices[1][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[0].point_on_segment_j 
       (.CLK(CLK),
        .on_segment(draw_signal[4]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[4][0] ),
        .\v1[1] (\cube_screen_vertices[4][1] ),
        .\v2[0] (\cube_screen_vertices[5][0] ),
        .\v2[1] (\cube_screen_vertices[5][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[0].point_on_segment_k 
       (.CLK(CLK),
        .on_segment(draw_signal[8]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[0][0] ),
        .\v1[1] (\cube_screen_vertices[0][1] ),
        .\v2[0] (\cube_screen_vertices[4][0] ),
        .\v2[1] (\cube_screen_vertices[4][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[1].point_on_segment_i 
       (.CLK(CLK),
        .on_segment(draw_signal[1]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[1][0] ),
        .\v1[1] (\cube_screen_vertices[1][1] ),
        .\v2[0] (\cube_screen_vertices[2][0] ),
        .\v2[1] (\cube_screen_vertices[2][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[1].point_on_segment_j 
       (.CLK(CLK),
        .on_segment(draw_signal[5]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[5][0] ),
        .\v1[1] (\cube_screen_vertices[5][1] ),
        .\v2[0] (\cube_screen_vertices[6][0] ),
        .\v2[1] (\cube_screen_vertices[6][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[1].point_on_segment_k 
       (.CLK(CLK),
        .on_segment(draw_signal[9]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[1][0] ),
        .\v1[1] (\cube_screen_vertices[1][1] ),
        .\v2[0] (\cube_screen_vertices[5][0] ),
        .\v2[1] (\cube_screen_vertices[5][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[2].point_on_segment_i 
       (.CLK(CLK),
        .on_segment(draw_signal[2]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[2][0] ),
        .\v1[1] (\cube_screen_vertices[2][1] ),
        .\v2[0] (\cube_screen_vertices[3][0] ),
        .\v2[1] (\cube_screen_vertices[3][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[2].point_on_segment_j 
       (.CLK(CLK),
        .on_segment(draw_signal[6]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[6][0] ),
        .\v1[1] (\cube_screen_vertices[6][1] ),
        .\v2[0] (\cube_screen_vertices[7][0] ),
        .\v2[1] (\cube_screen_vertices[7][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[2].point_on_segment_k 
       (.CLK(CLK),
        .on_segment(draw_signal[10]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[2][0] ),
        .\v1[1] (\cube_screen_vertices[2][1] ),
        .\v2[0] (\cube_screen_vertices[6][0] ),
        .\v2[1] (\cube_screen_vertices[6][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[3].point_on_segment_i 
       (.CLK(CLK),
        .on_segment(draw_signal[3]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[3][0] ),
        .\v1[1] (\cube_screen_vertices[3][1] ),
        .\v2[0] (\cube_screen_vertices[0][0] ),
        .\v2[1] (\cube_screen_vertices[0][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment \point_on_segment_i[3].point_on_segment_j 
       (.CLK(CLK),
        .on_segment(draw_signal[7]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[7][0] ),
        .\v1[1] (\cube_screen_vertices[7][1] ),
        .\v2[0] (\cube_screen_vertices[4][0] ),
        .\v2[1] (\cube_screen_vertices[4][1] ));
  cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment_HD1 \point_on_segment_i[3].point_on_segment_k 
       (.CLK(CLK),
        .on_segment(draw_signal[11]),
        .\point[0] (\point[0] ),
        .\point[1] (COOR_V),
        .\v1[0] (\cube_screen_vertices[3][0] ),
        .\v1[1] (\cube_screen_vertices[3][1] ),
        .\v2[0] (\cube_screen_vertices[7][0] ),
        .\v2[1] (\cube_screen_vertices[7][1] ));
endmodule

(* ORIG_REF_NAME = "vga_controller" *) 
module cube_renderering_system_cube_renderer_controller_0_0_vga_controller
   (\point[0] ,
    VGA_HSYNC,
    VGA_VSYNC,
    COOR_V,
    CLK);
  output [31:0]\point[0] ;
  output VGA_HSYNC;
  output VGA_VSYNC;
  output [31:0]COOR_V;
  input CLK;

  wire CLK;
  wire [31:0]COOR_V;
  wire VGA_HSYNC;
  wire VGA_HSYNC0_carry__0_i_1_n_0;
  wire VGA_HSYNC0_carry__0_i_2_n_0;
  wire VGA_HSYNC0_carry__0_i_3_n_0;
  wire VGA_HSYNC0_carry__0_i_4_n_0;
  wire VGA_HSYNC0_carry__0_n_0;
  wire VGA_HSYNC0_carry__0_n_1;
  wire VGA_HSYNC0_carry__0_n_2;
  wire VGA_HSYNC0_carry__0_n_3;
  wire VGA_HSYNC0_carry__1_i_1_n_0;
  wire VGA_HSYNC0_carry__1_i_2_n_0;
  wire VGA_HSYNC0_carry__1_i_3_n_0;
  wire VGA_HSYNC0_carry__1_i_4_n_0;
  wire VGA_HSYNC0_carry__1_n_0;
  wire VGA_HSYNC0_carry__1_n_1;
  wire VGA_HSYNC0_carry__1_n_2;
  wire VGA_HSYNC0_carry__1_n_3;
  wire VGA_HSYNC0_carry__2_i_1_n_0;
  wire VGA_HSYNC0_carry__2_i_2_n_0;
  wire VGA_HSYNC0_carry__2_i_3_n_0;
  wire VGA_HSYNC0_carry__2_i_4_n_0;
  wire VGA_HSYNC0_carry__2_n_1;
  wire VGA_HSYNC0_carry__2_n_2;
  wire VGA_HSYNC0_carry__2_n_3;
  wire VGA_HSYNC0_carry_i_1_n_0;
  wire VGA_HSYNC0_carry_i_2_n_0;
  wire VGA_HSYNC0_carry_i_3_n_0;
  wire VGA_HSYNC0_carry_i_4_n_0;
  wire VGA_HSYNC0_carry_i_5_n_0;
  wire VGA_HSYNC0_carry_i_6_n_0;
  wire VGA_HSYNC0_carry_i_7_n_0;
  wire VGA_HSYNC0_carry_n_0;
  wire VGA_HSYNC0_carry_n_1;
  wire VGA_HSYNC0_carry_n_2;
  wire VGA_HSYNC0_carry_n_3;
  wire VGA_VSYNC;
  wire VGA_VSYNC0_carry__0_i_1_n_0;
  wire VGA_VSYNC0_carry__0_i_2_n_0;
  wire VGA_VSYNC0_carry__0_i_3_n_0;
  wire VGA_VSYNC0_carry__0_i_4_n_0;
  wire VGA_VSYNC0_carry__0_n_0;
  wire VGA_VSYNC0_carry__0_n_1;
  wire VGA_VSYNC0_carry__0_n_2;
  wire VGA_VSYNC0_carry__0_n_3;
  wire VGA_VSYNC0_carry__1_i_1_n_0;
  wire VGA_VSYNC0_carry__1_i_2_n_0;
  wire VGA_VSYNC0_carry__1_i_3_n_0;
  wire VGA_VSYNC0_carry__1_i_4_n_0;
  wire VGA_VSYNC0_carry__1_n_0;
  wire VGA_VSYNC0_carry__1_n_1;
  wire VGA_VSYNC0_carry__1_n_2;
  wire VGA_VSYNC0_carry__1_n_3;
  wire VGA_VSYNC0_carry__2_i_1_n_0;
  wire VGA_VSYNC0_carry__2_i_2_n_0;
  wire VGA_VSYNC0_carry__2_i_3_n_0;
  wire VGA_VSYNC0_carry__2_i_4_n_0;
  wire VGA_VSYNC0_carry__2_n_1;
  wire VGA_VSYNC0_carry__2_n_2;
  wire VGA_VSYNC0_carry__2_n_3;
  wire VGA_VSYNC0_carry_i_1_n_0;
  wire VGA_VSYNC0_carry_i_2_n_0;
  wire VGA_VSYNC0_carry_i_3_n_0;
  wire VGA_VSYNC0_carry_i_4_n_0;
  wire VGA_VSYNC0_carry_i_5_n_0;
  wire VGA_VSYNC0_carry_n_0;
  wire VGA_VSYNC0_carry_n_1;
  wire VGA_VSYNC0_carry_n_2;
  wire VGA_VSYNC0_carry_n_3;
  wire [31:0]h_count;
  wire \h_count[12]_i_2_n_0 ;
  wire \h_count[12]_i_3_n_0 ;
  wire \h_count[12]_i_4_n_0 ;
  wire \h_count[12]_i_5_n_0 ;
  wire \h_count[16]_i_2_n_0 ;
  wire \h_count[16]_i_3_n_0 ;
  wire \h_count[16]_i_4_n_0 ;
  wire \h_count[16]_i_5_n_0 ;
  wire \h_count[20]_i_2_n_0 ;
  wire \h_count[20]_i_3_n_0 ;
  wire \h_count[20]_i_4_n_0 ;
  wire \h_count[20]_i_5_n_0 ;
  wire \h_count[24]_i_2_n_0 ;
  wire \h_count[24]_i_3_n_0 ;
  wire \h_count[24]_i_4_n_0 ;
  wire \h_count[24]_i_5_n_0 ;
  wire \h_count[28]_i_2_n_0 ;
  wire \h_count[28]_i_3_n_0 ;
  wire \h_count[28]_i_4_n_0 ;
  wire \h_count[28]_i_5_n_0 ;
  wire \h_count[31]_i_10_n_0 ;
  wire \h_count[31]_i_11_n_0 ;
  wire \h_count[31]_i_12_n_0 ;
  wire \h_count[31]_i_13_n_0 ;
  wire \h_count[31]_i_14_n_0 ;
  wire \h_count[31]_i_3_n_0 ;
  wire \h_count[31]_i_4_n_0 ;
  wire \h_count[31]_i_5_n_0 ;
  wire \h_count[31]_i_6_n_0 ;
  wire \h_count[31]_i_7_n_0 ;
  wire \h_count[31]_i_8_n_0 ;
  wire \h_count[31]_i_9_n_0 ;
  wire \h_count[4]_i_2_n_0 ;
  wire \h_count[4]_i_3_n_0 ;
  wire \h_count[4]_i_4_n_0 ;
  wire \h_count[4]_i_5_n_0 ;
  wire \h_count[8]_i_2_n_0 ;
  wire \h_count[8]_i_3_n_0 ;
  wire \h_count[8]_i_4_n_0 ;
  wire \h_count[8]_i_5_n_0 ;
  wire \h_count_reg[12]_i_1_n_0 ;
  wire \h_count_reg[12]_i_1_n_1 ;
  wire \h_count_reg[12]_i_1_n_2 ;
  wire \h_count_reg[12]_i_1_n_3 ;
  wire \h_count_reg[12]_i_1_n_4 ;
  wire \h_count_reg[12]_i_1_n_5 ;
  wire \h_count_reg[12]_i_1_n_6 ;
  wire \h_count_reg[12]_i_1_n_7 ;
  wire \h_count_reg[16]_i_1_n_0 ;
  wire \h_count_reg[16]_i_1_n_1 ;
  wire \h_count_reg[16]_i_1_n_2 ;
  wire \h_count_reg[16]_i_1_n_3 ;
  wire \h_count_reg[16]_i_1_n_4 ;
  wire \h_count_reg[16]_i_1_n_5 ;
  wire \h_count_reg[16]_i_1_n_6 ;
  wire \h_count_reg[16]_i_1_n_7 ;
  wire \h_count_reg[20]_i_1_n_0 ;
  wire \h_count_reg[20]_i_1_n_1 ;
  wire \h_count_reg[20]_i_1_n_2 ;
  wire \h_count_reg[20]_i_1_n_3 ;
  wire \h_count_reg[20]_i_1_n_4 ;
  wire \h_count_reg[20]_i_1_n_5 ;
  wire \h_count_reg[20]_i_1_n_6 ;
  wire \h_count_reg[20]_i_1_n_7 ;
  wire \h_count_reg[24]_i_1_n_0 ;
  wire \h_count_reg[24]_i_1_n_1 ;
  wire \h_count_reg[24]_i_1_n_2 ;
  wire \h_count_reg[24]_i_1_n_3 ;
  wire \h_count_reg[24]_i_1_n_4 ;
  wire \h_count_reg[24]_i_1_n_5 ;
  wire \h_count_reg[24]_i_1_n_6 ;
  wire \h_count_reg[24]_i_1_n_7 ;
  wire \h_count_reg[28]_i_1_n_0 ;
  wire \h_count_reg[28]_i_1_n_1 ;
  wire \h_count_reg[28]_i_1_n_2 ;
  wire \h_count_reg[28]_i_1_n_3 ;
  wire \h_count_reg[28]_i_1_n_4 ;
  wire \h_count_reg[28]_i_1_n_5 ;
  wire \h_count_reg[28]_i_1_n_6 ;
  wire \h_count_reg[28]_i_1_n_7 ;
  wire \h_count_reg[31]_i_2_n_2 ;
  wire \h_count_reg[31]_i_2_n_3 ;
  wire \h_count_reg[31]_i_2_n_5 ;
  wire \h_count_reg[31]_i_2_n_6 ;
  wire \h_count_reg[31]_i_2_n_7 ;
  wire \h_count_reg[4]_i_1_n_0 ;
  wire \h_count_reg[4]_i_1_n_1 ;
  wire \h_count_reg[4]_i_1_n_2 ;
  wire \h_count_reg[4]_i_1_n_3 ;
  wire \h_count_reg[4]_i_1_n_4 ;
  wire \h_count_reg[4]_i_1_n_5 ;
  wire \h_count_reg[4]_i_1_n_6 ;
  wire \h_count_reg[4]_i_1_n_7 ;
  wire \h_count_reg[8]_i_1_n_0 ;
  wire \h_count_reg[8]_i_1_n_1 ;
  wire \h_count_reg[8]_i_1_n_2 ;
  wire \h_count_reg[8]_i_1_n_3 ;
  wire \h_count_reg[8]_i_1_n_4 ;
  wire \h_count_reg[8]_i_1_n_5 ;
  wire \h_count_reg[8]_i_1_n_6 ;
  wire \h_count_reg[8]_i_1_n_7 ;
  wire [31:0]\point[0] ;
  wire \point_on_segment_i[0].point_on_segment_i_i_10_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_10_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_10_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_11_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_11_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_11_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_11_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_12_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_12_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_12_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_12_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_13_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_13_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_13_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_13_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_14_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_14_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_14_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_14_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_15_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_15_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_15_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_15_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_16_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_16_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_16_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_16_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_17_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_17_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_17_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_17_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_18_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_19_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_1_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_1_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_20_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_21_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_22_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_23_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_24_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_25_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_26_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_27_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_28_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_29_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_2_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_2_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_2_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_2_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_30_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_31_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_32_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_33_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_34_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_35_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_36_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_37_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_38_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_39_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_3_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_3_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_3_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_3_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_40_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_41_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_42_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_43_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_44_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_45_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_46_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_47_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_48_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_49_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_4_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_4_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_4_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_4_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_50_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_51_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_52_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_53_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_54_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_55_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_56_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_57_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_58_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_59_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_5_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_5_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_5_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_5_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_60_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_61_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_62_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_63_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_64_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_65_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_66_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_67_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_68_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_69_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_6_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_6_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_6_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_6_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_70_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_71_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_72_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_73_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_74_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_75_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_76_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_77_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_78_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_79_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_7_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_7_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_7_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_7_n_3 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_80_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_8_n_0 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_8_n_1 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_8_n_2 ;
  wire \point_on_segment_i[0].point_on_segment_i_i_8_n_3 ;
  wire sig;
  wire [31:0]v_count;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[12]_i_2_n_0 ;
  wire \v_count[12]_i_3_n_0 ;
  wire \v_count[12]_i_4_n_0 ;
  wire \v_count[12]_i_5_n_0 ;
  wire \v_count[16]_i_2_n_0 ;
  wire \v_count[16]_i_3_n_0 ;
  wire \v_count[16]_i_4_n_0 ;
  wire \v_count[16]_i_5_n_0 ;
  wire \v_count[20]_i_2_n_0 ;
  wire \v_count[20]_i_3_n_0 ;
  wire \v_count[20]_i_4_n_0 ;
  wire \v_count[20]_i_5_n_0 ;
  wire \v_count[24]_i_2_n_0 ;
  wire \v_count[24]_i_3_n_0 ;
  wire \v_count[24]_i_4_n_0 ;
  wire \v_count[24]_i_5_n_0 ;
  wire \v_count[28]_i_2_n_0 ;
  wire \v_count[28]_i_3_n_0 ;
  wire \v_count[28]_i_4_n_0 ;
  wire \v_count[28]_i_5_n_0 ;
  wire \v_count[31]_i_10_n_0 ;
  wire \v_count[31]_i_11_n_0 ;
  wire \v_count[31]_i_12_n_0 ;
  wire \v_count[31]_i_13_n_0 ;
  wire \v_count[31]_i_14_n_0 ;
  wire \v_count[31]_i_15_n_0 ;
  wire \v_count[31]_i_16_n_0 ;
  wire \v_count[31]_i_17_n_0 ;
  wire \v_count[31]_i_18_n_0 ;
  wire \v_count[31]_i_1_n_0 ;
  wire \v_count[31]_i_3_n_0 ;
  wire \v_count[31]_i_4_n_0 ;
  wire \v_count[31]_i_5_n_0 ;
  wire \v_count[31]_i_6_n_0 ;
  wire \v_count[31]_i_7_n_0 ;
  wire \v_count[31]_i_8_n_0 ;
  wire \v_count[31]_i_9_n_0 ;
  wire \v_count[4]_i_2_n_0 ;
  wire \v_count[4]_i_3_n_0 ;
  wire \v_count[4]_i_4_n_0 ;
  wire \v_count[4]_i_5_n_0 ;
  wire \v_count[8]_i_2_n_0 ;
  wire \v_count[8]_i_3_n_0 ;
  wire \v_count[8]_i_4_n_0 ;
  wire \v_count[8]_i_5_n_0 ;
  wire v_count_0;
  wire \v_count_reg[12]_i_1_n_0 ;
  wire \v_count_reg[12]_i_1_n_1 ;
  wire \v_count_reg[12]_i_1_n_2 ;
  wire \v_count_reg[12]_i_1_n_3 ;
  wire \v_count_reg[12]_i_1_n_4 ;
  wire \v_count_reg[12]_i_1_n_5 ;
  wire \v_count_reg[12]_i_1_n_6 ;
  wire \v_count_reg[12]_i_1_n_7 ;
  wire \v_count_reg[16]_i_1_n_0 ;
  wire \v_count_reg[16]_i_1_n_1 ;
  wire \v_count_reg[16]_i_1_n_2 ;
  wire \v_count_reg[16]_i_1_n_3 ;
  wire \v_count_reg[16]_i_1_n_4 ;
  wire \v_count_reg[16]_i_1_n_5 ;
  wire \v_count_reg[16]_i_1_n_6 ;
  wire \v_count_reg[16]_i_1_n_7 ;
  wire \v_count_reg[20]_i_1_n_0 ;
  wire \v_count_reg[20]_i_1_n_1 ;
  wire \v_count_reg[20]_i_1_n_2 ;
  wire \v_count_reg[20]_i_1_n_3 ;
  wire \v_count_reg[20]_i_1_n_4 ;
  wire \v_count_reg[20]_i_1_n_5 ;
  wire \v_count_reg[20]_i_1_n_6 ;
  wire \v_count_reg[20]_i_1_n_7 ;
  wire \v_count_reg[24]_i_1_n_0 ;
  wire \v_count_reg[24]_i_1_n_1 ;
  wire \v_count_reg[24]_i_1_n_2 ;
  wire \v_count_reg[24]_i_1_n_3 ;
  wire \v_count_reg[24]_i_1_n_4 ;
  wire \v_count_reg[24]_i_1_n_5 ;
  wire \v_count_reg[24]_i_1_n_6 ;
  wire \v_count_reg[24]_i_1_n_7 ;
  wire \v_count_reg[28]_i_1_n_0 ;
  wire \v_count_reg[28]_i_1_n_1 ;
  wire \v_count_reg[28]_i_1_n_2 ;
  wire \v_count_reg[28]_i_1_n_3 ;
  wire \v_count_reg[28]_i_1_n_4 ;
  wire \v_count_reg[28]_i_1_n_5 ;
  wire \v_count_reg[28]_i_1_n_6 ;
  wire \v_count_reg[28]_i_1_n_7 ;
  wire \v_count_reg[31]_i_2_n_2 ;
  wire \v_count_reg[31]_i_2_n_3 ;
  wire \v_count_reg[31]_i_2_n_5 ;
  wire \v_count_reg[31]_i_2_n_6 ;
  wire \v_count_reg[31]_i_2_n_7 ;
  wire \v_count_reg[4]_i_1_n_0 ;
  wire \v_count_reg[4]_i_1_n_1 ;
  wire \v_count_reg[4]_i_1_n_2 ;
  wire \v_count_reg[4]_i_1_n_3 ;
  wire \v_count_reg[4]_i_1_n_4 ;
  wire \v_count_reg[4]_i_1_n_5 ;
  wire \v_count_reg[4]_i_1_n_6 ;
  wire \v_count_reg[4]_i_1_n_7 ;
  wire \v_count_reg[8]_i_1_n_0 ;
  wire \v_count_reg[8]_i_1_n_1 ;
  wire \v_count_reg[8]_i_1_n_2 ;
  wire \v_count_reg[8]_i_1_n_3 ;
  wire \v_count_reg[8]_i_1_n_4 ;
  wire \v_count_reg[8]_i_1_n_5 ;
  wire \v_count_reg[8]_i_1_n_6 ;
  wire \v_count_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_COOR_H_CARRY4_CO_UNCONNECTED;
  wire [3:0]NLW_COOR_H_CARRY4_DI_UNCONNECTED;
  wire [3:1]NLW_COOR_H_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_COOR_H_CARRY4_S_UNCONNECTED;
  wire [3:0]NLW_VGA_HSYNC0_carry_O_UNCONNECTED;
  wire [3:0]NLW_VGA_HSYNC0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_VGA_HSYNC0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_VGA_HSYNC0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_VGA_VSYNC0_carry_O_UNCONNECTED;
  wire [3:0]NLW_VGA_VSYNC0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_VGA_VSYNC0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_VGA_VSYNC0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_h_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_count_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_point_on_segment_i[0].point_on_segment_i_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_point_on_segment_i[0].point_on_segment_i_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_point_on_segment_i[0].point_on_segment_i_i_10_CO_UNCONNECTED ;
  wire [0:0]\NLW_point_on_segment_i[0].point_on_segment_i_i_8_O_UNCONNECTED ;
  wire [3:2]\NLW_v_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_v_count_reg[31]_i_2_O_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 COOR_H_CARRY4
       (.CI(1'b0),
        .CO(NLW_COOR_H_CARRY4_CO_UNCONNECTED[3:0]),
        .CYINIT(h_count[0]),
        .DI(NLW_COOR_H_CARRY4_DI_UNCONNECTED[3:0]),
        .O({NLW_COOR_H_CARRY4_O_UNCONNECTED[3:1],\point[0] [1]}),
        .S({NLW_COOR_H_CARRY4_S_UNCONNECTED[3:1],h_count[1]}));
  CARRY4 VGA_HSYNC0_carry
       (.CI(1'b0),
        .CO({VGA_HSYNC0_carry_n_0,VGA_HSYNC0_carry_n_1,VGA_HSYNC0_carry_n_2,VGA_HSYNC0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,VGA_HSYNC0_carry_i_1_n_0,VGA_HSYNC0_carry_i_2_n_0,VGA_HSYNC0_carry_i_3_n_0}),
        .O(NLW_VGA_HSYNC0_carry_O_UNCONNECTED[3:0]),
        .S({VGA_HSYNC0_carry_i_4_n_0,VGA_HSYNC0_carry_i_5_n_0,VGA_HSYNC0_carry_i_6_n_0,VGA_HSYNC0_carry_i_7_n_0}));
  CARRY4 VGA_HSYNC0_carry__0
       (.CI(VGA_HSYNC0_carry_n_0),
        .CO({VGA_HSYNC0_carry__0_n_0,VGA_HSYNC0_carry__0_n_1,VGA_HSYNC0_carry__0_n_2,VGA_HSYNC0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_VGA_HSYNC0_carry__0_O_UNCONNECTED[3:0]),
        .S({VGA_HSYNC0_carry__0_i_1_n_0,VGA_HSYNC0_carry__0_i_2_n_0,VGA_HSYNC0_carry__0_i_3_n_0,VGA_HSYNC0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__0_i_1
       (.I0(h_count[15]),
        .I1(h_count[14]),
        .O(VGA_HSYNC0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__0_i_2
       (.I0(h_count[13]),
        .I1(h_count[12]),
        .O(VGA_HSYNC0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__0_i_3
       (.I0(h_count[10]),
        .I1(h_count[11]),
        .O(VGA_HSYNC0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__0_i_4
       (.I0(h_count[8]),
        .I1(h_count[9]),
        .O(VGA_HSYNC0_carry__0_i_4_n_0));
  CARRY4 VGA_HSYNC0_carry__1
       (.CI(VGA_HSYNC0_carry__0_n_0),
        .CO({VGA_HSYNC0_carry__1_n_0,VGA_HSYNC0_carry__1_n_1,VGA_HSYNC0_carry__1_n_2,VGA_HSYNC0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_VGA_HSYNC0_carry__1_O_UNCONNECTED[3:0]),
        .S({VGA_HSYNC0_carry__1_i_1_n_0,VGA_HSYNC0_carry__1_i_2_n_0,VGA_HSYNC0_carry__1_i_3_n_0,VGA_HSYNC0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__1_i_1
       (.I0(h_count[23]),
        .I1(h_count[22]),
        .O(VGA_HSYNC0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__1_i_2
       (.I0(h_count[21]),
        .I1(h_count[20]),
        .O(VGA_HSYNC0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__1_i_3
       (.I0(h_count[19]),
        .I1(h_count[18]),
        .O(VGA_HSYNC0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__1_i_4
       (.I0(h_count[17]),
        .I1(h_count[16]),
        .O(VGA_HSYNC0_carry__1_i_4_n_0));
  CARRY4 VGA_HSYNC0_carry__2
       (.CI(VGA_HSYNC0_carry__1_n_0),
        .CO({VGA_HSYNC,VGA_HSYNC0_carry__2_n_1,VGA_HSYNC0_carry__2_n_2,VGA_HSYNC0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({h_count[31],1'b0,1'b0,1'b0}),
        .O(NLW_VGA_HSYNC0_carry__2_O_UNCONNECTED[3:0]),
        .S({VGA_HSYNC0_carry__2_i_1_n_0,VGA_HSYNC0_carry__2_i_2_n_0,VGA_HSYNC0_carry__2_i_3_n_0,VGA_HSYNC0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__2_i_1
       (.I0(h_count[31]),
        .I1(h_count[30]),
        .O(VGA_HSYNC0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__2_i_2
       (.I0(h_count[29]),
        .I1(h_count[28]),
        .O(VGA_HSYNC0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__2_i_3
       (.I0(h_count[27]),
        .I1(h_count[26]),
        .O(VGA_HSYNC0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry__2_i_4
       (.I0(h_count[25]),
        .I1(h_count[24]),
        .O(VGA_HSYNC0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    VGA_HSYNC0_carry_i_1
       (.I0(h_count[5]),
        .O(VGA_HSYNC0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    VGA_HSYNC0_carry_i_2
       (.I0(h_count[2]),
        .I1(h_count[3]),
        .O(VGA_HSYNC0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    VGA_HSYNC0_carry_i_3
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .O(VGA_HSYNC0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_HSYNC0_carry_i_4
       (.I0(h_count[7]),
        .I1(h_count[6]),
        .O(VGA_HSYNC0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    VGA_HSYNC0_carry_i_5
       (.I0(h_count[5]),
        .I1(h_count[4]),
        .O(VGA_HSYNC0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    VGA_HSYNC0_carry_i_6
       (.I0(h_count[3]),
        .I1(h_count[2]),
        .O(VGA_HSYNC0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    VGA_HSYNC0_carry_i_7
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .O(VGA_HSYNC0_carry_i_7_n_0));
  CARRY4 VGA_VSYNC0_carry
       (.CI(1'b0),
        .CO({VGA_VSYNC0_carry_n_0,VGA_VSYNC0_carry_n_1,VGA_VSYNC0_carry_n_2,VGA_VSYNC0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,VGA_VSYNC0_carry_i_1_n_0}),
        .O(NLW_VGA_VSYNC0_carry_O_UNCONNECTED[3:0]),
        .S({VGA_VSYNC0_carry_i_2_n_0,VGA_VSYNC0_carry_i_3_n_0,VGA_VSYNC0_carry_i_4_n_0,VGA_VSYNC0_carry_i_5_n_0}));
  CARRY4 VGA_VSYNC0_carry__0
       (.CI(VGA_VSYNC0_carry_n_0),
        .CO({VGA_VSYNC0_carry__0_n_0,VGA_VSYNC0_carry__0_n_1,VGA_VSYNC0_carry__0_n_2,VGA_VSYNC0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_VGA_VSYNC0_carry__0_O_UNCONNECTED[3:0]),
        .S({VGA_VSYNC0_carry__0_i_1_n_0,VGA_VSYNC0_carry__0_i_2_n_0,VGA_VSYNC0_carry__0_i_3_n_0,VGA_VSYNC0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__0_i_1
       (.I0(v_count[14]),
        .I1(v_count[15]),
        .O(VGA_VSYNC0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__0_i_2
       (.I0(v_count[12]),
        .I1(v_count[13]),
        .O(VGA_VSYNC0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__0_i_3
       (.I0(v_count[10]),
        .I1(v_count[11]),
        .O(VGA_VSYNC0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__0_i_4
       (.I0(v_count[8]),
        .I1(v_count[9]),
        .O(VGA_VSYNC0_carry__0_i_4_n_0));
  CARRY4 VGA_VSYNC0_carry__1
       (.CI(VGA_VSYNC0_carry__0_n_0),
        .CO({VGA_VSYNC0_carry__1_n_0,VGA_VSYNC0_carry__1_n_1,VGA_VSYNC0_carry__1_n_2,VGA_VSYNC0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_VGA_VSYNC0_carry__1_O_UNCONNECTED[3:0]),
        .S({VGA_VSYNC0_carry__1_i_1_n_0,VGA_VSYNC0_carry__1_i_2_n_0,VGA_VSYNC0_carry__1_i_3_n_0,VGA_VSYNC0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__1_i_1
       (.I0(v_count[22]),
        .I1(v_count[23]),
        .O(VGA_VSYNC0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__1_i_2
       (.I0(v_count[20]),
        .I1(v_count[21]),
        .O(VGA_VSYNC0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__1_i_3
       (.I0(v_count[18]),
        .I1(v_count[19]),
        .O(VGA_VSYNC0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__1_i_4
       (.I0(v_count[16]),
        .I1(v_count[17]),
        .O(VGA_VSYNC0_carry__1_i_4_n_0));
  CARRY4 VGA_VSYNC0_carry__2
       (.CI(VGA_VSYNC0_carry__1_n_0),
        .CO({VGA_VSYNC,VGA_VSYNC0_carry__2_n_1,VGA_VSYNC0_carry__2_n_2,VGA_VSYNC0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({v_count[31],1'b0,1'b0,1'b0}),
        .O(NLW_VGA_VSYNC0_carry__2_O_UNCONNECTED[3:0]),
        .S({VGA_VSYNC0_carry__2_i_1_n_0,VGA_VSYNC0_carry__2_i_2_n_0,VGA_VSYNC0_carry__2_i_3_n_0,VGA_VSYNC0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__2_i_1
       (.I0(v_count[30]),
        .I1(v_count[31]),
        .O(VGA_VSYNC0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__2_i_2
       (.I0(v_count[28]),
        .I1(v_count[29]),
        .O(VGA_VSYNC0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__2_i_3
       (.I0(v_count[26]),
        .I1(v_count[27]),
        .O(VGA_VSYNC0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry__2_i_4
       (.I0(v_count[24]),
        .I1(v_count[25]),
        .O(VGA_VSYNC0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    VGA_VSYNC0_carry_i_1
       (.I0(v_count[1]),
        .O(VGA_VSYNC0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry_i_2
       (.I0(v_count[6]),
        .I1(v_count[7]),
        .O(VGA_VSYNC0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry_i_3
       (.I0(v_count[4]),
        .I1(v_count[5]),
        .O(VGA_VSYNC0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VSYNC0_carry_i_4
       (.I0(v_count[2]),
        .I1(v_count[3]),
        .O(VGA_VSYNC0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    VGA_VSYNC0_carry_i_5
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .O(VGA_VSYNC0_carry_i_5_n_0));
  cube_renderering_system_cube_renderer_controller_0_0_clock_divider clk_divider
       (.CLK(CLK),
        .sig(sig));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[12]_i_2 
       (.I0(h_count[12]),
        .O(\h_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[12]_i_3 
       (.I0(h_count[11]),
        .O(\h_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[12]_i_4 
       (.I0(h_count[10]),
        .O(\h_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[12]_i_5 
       (.I0(h_count[9]),
        .O(\h_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[16]_i_2 
       (.I0(h_count[16]),
        .O(\h_count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[16]_i_3 
       (.I0(h_count[15]),
        .O(\h_count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[16]_i_4 
       (.I0(h_count[14]),
        .O(\h_count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[16]_i_5 
       (.I0(h_count[13]),
        .O(\h_count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[20]_i_2 
       (.I0(h_count[20]),
        .O(\h_count[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[20]_i_3 
       (.I0(h_count[19]),
        .O(\h_count[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[20]_i_4 
       (.I0(h_count[18]),
        .O(\h_count[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[20]_i_5 
       (.I0(h_count[17]),
        .O(\h_count[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[24]_i_2 
       (.I0(h_count[24]),
        .O(\h_count[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[24]_i_3 
       (.I0(h_count[23]),
        .O(\h_count[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[24]_i_4 
       (.I0(h_count[22]),
        .O(\h_count[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[24]_i_5 
       (.I0(h_count[21]),
        .O(\h_count[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[28]_i_2 
       (.I0(h_count[28]),
        .O(\h_count[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[28]_i_3 
       (.I0(h_count[27]),
        .O(\h_count[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[28]_i_4 
       (.I0(h_count[26]),
        .O(\h_count[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[28]_i_5 
       (.I0(h_count[25]),
        .O(\h_count[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \h_count[31]_i_1 
       (.I0(\h_count[31]_i_3_n_0 ),
        .I1(\h_count[31]_i_4_n_0 ),
        .I2(\h_count[31]_i_5_n_0 ),
        .I3(\h_count[31]_i_6_n_0 ),
        .O(v_count_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \h_count[31]_i_10 
       (.I0(h_count[25]),
        .I1(h_count[24]),
        .I2(h_count[27]),
        .I3(h_count[26]),
        .O(\h_count[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \h_count[31]_i_11 
       (.I0(h_count[2]),
        .I1(h_count[3]),
        .O(\h_count[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \h_count[31]_i_12 
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .O(\h_count[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \h_count[31]_i_13 
       (.I0(h_count[10]),
        .I1(h_count[11]),
        .I2(h_count[7]),
        .I3(h_count[6]),
        .O(\h_count[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \h_count[31]_i_14 
       (.I0(h_count[17]),
        .I1(h_count[16]),
        .I2(h_count[19]),
        .I3(h_count[18]),
        .O(\h_count[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \h_count[31]_i_3 
       (.I0(h_count[22]),
        .I1(h_count[23]),
        .I2(h_count[20]),
        .I3(h_count[21]),
        .I4(\h_count[31]_i_10_n_0 ),
        .O(\h_count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \h_count[31]_i_4 
       (.I0(h_count[30]),
        .I1(h_count[31]),
        .I2(h_count[28]),
        .I3(h_count[29]),
        .I4(\h_count[31]_i_11_n_0 ),
        .I5(\h_count[31]_i_12_n_0 ),
        .O(\h_count[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \h_count[31]_i_5 
       (.I0(h_count[9]),
        .I1(h_count[8]),
        .I2(h_count[4]),
        .I3(h_count[5]),
        .I4(\h_count[31]_i_13_n_0 ),
        .O(\h_count[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \h_count[31]_i_6 
       (.I0(h_count[14]),
        .I1(h_count[15]),
        .I2(h_count[12]),
        .I3(h_count[13]),
        .I4(\h_count[31]_i_14_n_0 ),
        .O(\h_count[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[31]_i_7 
       (.I0(h_count[31]),
        .O(\h_count[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[31]_i_8 
       (.I0(h_count[30]),
        .O(\h_count[31]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[31]_i_9 
       (.I0(h_count[29]),
        .O(\h_count[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[4]_i_2 
       (.I0(h_count[4]),
        .O(\h_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[4]_i_3 
       (.I0(h_count[3]),
        .O(\h_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[4]_i_4 
       (.I0(h_count[2]),
        .O(\h_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[4]_i_5 
       (.I0(h_count[1]),
        .O(\h_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[8]_i_2 
       (.I0(h_count[8]),
        .O(\h_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[8]_i_3 
       (.I0(h_count[7]),
        .O(\h_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[8]_i_4 
       (.I0(h_count[6]),
        .O(\h_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_count[8]_i_5 
       (.I0(h_count[5]),
        .O(\h_count[8]_i_5_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(sig),
        .CE(1'b1),
        .D(\point[0] [0]),
        .Q(h_count[0]),
        .R(1'b0));
  FDRE \h_count_reg[10] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[12]_i_1_n_6 ),
        .Q(h_count[10]),
        .R(v_count_0));
  FDRE \h_count_reg[11] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[12]_i_1_n_5 ),
        .Q(h_count[11]),
        .R(v_count_0));
  FDRE \h_count_reg[12] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[12]_i_1_n_4 ),
        .Q(h_count[12]),
        .R(v_count_0));
  CARRY4 \h_count_reg[12]_i_1 
       (.CI(\h_count_reg[8]_i_1_n_0 ),
        .CO({\h_count_reg[12]_i_1_n_0 ,\h_count_reg[12]_i_1_n_1 ,\h_count_reg[12]_i_1_n_2 ,\h_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[12]_i_1_n_4 ,\h_count_reg[12]_i_1_n_5 ,\h_count_reg[12]_i_1_n_6 ,\h_count_reg[12]_i_1_n_7 }),
        .S({\h_count[12]_i_2_n_0 ,\h_count[12]_i_3_n_0 ,\h_count[12]_i_4_n_0 ,\h_count[12]_i_5_n_0 }));
  FDRE \h_count_reg[13] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[16]_i_1_n_7 ),
        .Q(h_count[13]),
        .R(v_count_0));
  FDRE \h_count_reg[14] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[16]_i_1_n_6 ),
        .Q(h_count[14]),
        .R(v_count_0));
  FDRE \h_count_reg[15] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[16]_i_1_n_5 ),
        .Q(h_count[15]),
        .R(v_count_0));
  FDRE \h_count_reg[16] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[16]_i_1_n_4 ),
        .Q(h_count[16]),
        .R(v_count_0));
  CARRY4 \h_count_reg[16]_i_1 
       (.CI(\h_count_reg[12]_i_1_n_0 ),
        .CO({\h_count_reg[16]_i_1_n_0 ,\h_count_reg[16]_i_1_n_1 ,\h_count_reg[16]_i_1_n_2 ,\h_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[16]_i_1_n_4 ,\h_count_reg[16]_i_1_n_5 ,\h_count_reg[16]_i_1_n_6 ,\h_count_reg[16]_i_1_n_7 }),
        .S({\h_count[16]_i_2_n_0 ,\h_count[16]_i_3_n_0 ,\h_count[16]_i_4_n_0 ,\h_count[16]_i_5_n_0 }));
  FDRE \h_count_reg[17] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[20]_i_1_n_7 ),
        .Q(h_count[17]),
        .R(v_count_0));
  FDRE \h_count_reg[18] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[20]_i_1_n_6 ),
        .Q(h_count[18]),
        .R(v_count_0));
  FDRE \h_count_reg[19] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[20]_i_1_n_5 ),
        .Q(h_count[19]),
        .R(v_count_0));
  FDRE \h_count_reg[1] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[4]_i_1_n_7 ),
        .Q(h_count[1]),
        .R(v_count_0));
  FDRE \h_count_reg[20] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[20]_i_1_n_4 ),
        .Q(h_count[20]),
        .R(v_count_0));
  CARRY4 \h_count_reg[20]_i_1 
       (.CI(\h_count_reg[16]_i_1_n_0 ),
        .CO({\h_count_reg[20]_i_1_n_0 ,\h_count_reg[20]_i_1_n_1 ,\h_count_reg[20]_i_1_n_2 ,\h_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[20]_i_1_n_4 ,\h_count_reg[20]_i_1_n_5 ,\h_count_reg[20]_i_1_n_6 ,\h_count_reg[20]_i_1_n_7 }),
        .S({\h_count[20]_i_2_n_0 ,\h_count[20]_i_3_n_0 ,\h_count[20]_i_4_n_0 ,\h_count[20]_i_5_n_0 }));
  FDRE \h_count_reg[21] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[24]_i_1_n_7 ),
        .Q(h_count[21]),
        .R(v_count_0));
  FDRE \h_count_reg[22] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[24]_i_1_n_6 ),
        .Q(h_count[22]),
        .R(v_count_0));
  FDRE \h_count_reg[23] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[24]_i_1_n_5 ),
        .Q(h_count[23]),
        .R(v_count_0));
  FDRE \h_count_reg[24] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[24]_i_1_n_4 ),
        .Q(h_count[24]),
        .R(v_count_0));
  CARRY4 \h_count_reg[24]_i_1 
       (.CI(\h_count_reg[20]_i_1_n_0 ),
        .CO({\h_count_reg[24]_i_1_n_0 ,\h_count_reg[24]_i_1_n_1 ,\h_count_reg[24]_i_1_n_2 ,\h_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[24]_i_1_n_4 ,\h_count_reg[24]_i_1_n_5 ,\h_count_reg[24]_i_1_n_6 ,\h_count_reg[24]_i_1_n_7 }),
        .S({\h_count[24]_i_2_n_0 ,\h_count[24]_i_3_n_0 ,\h_count[24]_i_4_n_0 ,\h_count[24]_i_5_n_0 }));
  FDRE \h_count_reg[25] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[28]_i_1_n_7 ),
        .Q(h_count[25]),
        .R(v_count_0));
  FDRE \h_count_reg[26] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[28]_i_1_n_6 ),
        .Q(h_count[26]),
        .R(v_count_0));
  FDRE \h_count_reg[27] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[28]_i_1_n_5 ),
        .Q(h_count[27]),
        .R(v_count_0));
  FDRE \h_count_reg[28] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[28]_i_1_n_4 ),
        .Q(h_count[28]),
        .R(v_count_0));
  CARRY4 \h_count_reg[28]_i_1 
       (.CI(\h_count_reg[24]_i_1_n_0 ),
        .CO({\h_count_reg[28]_i_1_n_0 ,\h_count_reg[28]_i_1_n_1 ,\h_count_reg[28]_i_1_n_2 ,\h_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[28]_i_1_n_4 ,\h_count_reg[28]_i_1_n_5 ,\h_count_reg[28]_i_1_n_6 ,\h_count_reg[28]_i_1_n_7 }),
        .S({\h_count[28]_i_2_n_0 ,\h_count[28]_i_3_n_0 ,\h_count[28]_i_4_n_0 ,\h_count[28]_i_5_n_0 }));
  FDRE \h_count_reg[29] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[31]_i_2_n_7 ),
        .Q(h_count[29]),
        .R(v_count_0));
  FDRE \h_count_reg[2] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[4]_i_1_n_6 ),
        .Q(h_count[2]),
        .R(v_count_0));
  FDRE \h_count_reg[30] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[31]_i_2_n_6 ),
        .Q(h_count[30]),
        .R(v_count_0));
  FDRE \h_count_reg[31] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[31]_i_2_n_5 ),
        .Q(h_count[31]),
        .R(v_count_0));
  CARRY4 \h_count_reg[31]_i_2 
       (.CI(\h_count_reg[28]_i_1_n_0 ),
        .CO({\NLW_h_count_reg[31]_i_2_CO_UNCONNECTED [3:2],\h_count_reg[31]_i_2_n_2 ,\h_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_count_reg[31]_i_2_O_UNCONNECTED [3],\h_count_reg[31]_i_2_n_5 ,\h_count_reg[31]_i_2_n_6 ,\h_count_reg[31]_i_2_n_7 }),
        .S({1'b0,\h_count[31]_i_7_n_0 ,\h_count[31]_i_8_n_0 ,\h_count[31]_i_9_n_0 }));
  FDRE \h_count_reg[3] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[4]_i_1_n_5 ),
        .Q(h_count[3]),
        .R(v_count_0));
  FDRE \h_count_reg[4] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[4]_i_1_n_4 ),
        .Q(h_count[4]),
        .R(v_count_0));
  CARRY4 \h_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\h_count_reg[4]_i_1_n_0 ,\h_count_reg[4]_i_1_n_1 ,\h_count_reg[4]_i_1_n_2 ,\h_count_reg[4]_i_1_n_3 }),
        .CYINIT(h_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[4]_i_1_n_4 ,\h_count_reg[4]_i_1_n_5 ,\h_count_reg[4]_i_1_n_6 ,\h_count_reg[4]_i_1_n_7 }),
        .S({\h_count[4]_i_2_n_0 ,\h_count[4]_i_3_n_0 ,\h_count[4]_i_4_n_0 ,\h_count[4]_i_5_n_0 }));
  FDRE \h_count_reg[5] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[8]_i_1_n_7 ),
        .Q(h_count[5]),
        .R(v_count_0));
  FDRE \h_count_reg[6] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[8]_i_1_n_6 ),
        .Q(h_count[6]),
        .R(v_count_0));
  FDRE \h_count_reg[7] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[8]_i_1_n_5 ),
        .Q(h_count[7]),
        .R(v_count_0));
  FDRE \h_count_reg[8] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[8]_i_1_n_4 ),
        .Q(h_count[8]),
        .R(v_count_0));
  CARRY4 \h_count_reg[8]_i_1 
       (.CI(\h_count_reg[4]_i_1_n_0 ),
        .CO({\h_count_reg[8]_i_1_n_0 ,\h_count_reg[8]_i_1_n_1 ,\h_count_reg[8]_i_1_n_2 ,\h_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[8]_i_1_n_4 ,\h_count_reg[8]_i_1_n_5 ,\h_count_reg[8]_i_1_n_6 ,\h_count_reg[8]_i_1_n_7 }),
        .S({\h_count[8]_i_2_n_0 ,\h_count[8]_i_3_n_0 ,\h_count[8]_i_4_n_0 ,\h_count[8]_i_5_n_0 }));
  FDRE \h_count_reg[9] 
       (.C(sig),
        .CE(1'b1),
        .D(\h_count_reg[12]_i_1_n_7 ),
        .Q(h_count[9]),
        .R(v_count_0));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_1 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_2_n_0 ),
        .CO({\NLW_point_on_segment_i[0].point_on_segment_i_i_1_CO_UNCONNECTED [3:2],\point_on_segment_i[0].point_on_segment_i_i_1_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,h_count[30:29]}),
        .O({\NLW_point_on_segment_i[0].point_on_segment_i_i_1_O_UNCONNECTED [3],\point[0] [31:29]}),
        .S({1'b0,\point_on_segment_i[0].point_on_segment_i_i_18_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_19_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_20_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_10 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_11_n_0 ),
        .CO({\NLW_point_on_segment_i[0].point_on_segment_i_i_10_CO_UNCONNECTED [3],\point_on_segment_i[0].point_on_segment_i_i_10_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_10_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,v_count[30:28]}),
        .O(COOR_V[31:28]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_49_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_50_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_51_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_52_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_11 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_12_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_11_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_11_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_11_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(v_count[27:24]),
        .O(COOR_V[27:24]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_53_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_54_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_55_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_56_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_12 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_13_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_12_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_12_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_12_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(v_count[23:20]),
        .O(COOR_V[23:20]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_57_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_58_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_59_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_60_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_13 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_14_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_13_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_13_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_13_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI(v_count[19:16]),
        .O(COOR_V[19:16]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_61_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_62_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_63_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_64_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_14 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_15_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_14_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_14_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_14_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(v_count[15:12]),
        .O(COOR_V[15:12]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_65_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_66_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_67_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_68_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_15 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_16_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_15_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_15_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_15_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI(v_count[11:8]),
        .O(COOR_V[11:8]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_69_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_70_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_71_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_72_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_16 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_17_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_16_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_16_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_16_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(v_count[7:4]),
        .O(COOR_V[7:4]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_73_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_74_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_75_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_76_n_0 }));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_17 
       (.CI(1'b0),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_17_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_17_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_17_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,v_count[1],1'b0}),
        .O(COOR_V[3:0]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_77_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_78_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_79_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_80_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_18 
       (.I0(h_count[31]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_19 
       (.I0(h_count[30]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_19_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_2 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_3_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_2_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_2_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_2_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(h_count[28:25]),
        .O(\point[0] [28:25]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_21_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_22_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_23_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_24_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_20 
       (.I0(h_count[29]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_21 
       (.I0(h_count[28]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_22 
       (.I0(h_count[27]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_23 
       (.I0(h_count[26]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_24 
       (.I0(h_count[25]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_25 
       (.I0(h_count[24]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_26 
       (.I0(h_count[23]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_27 
       (.I0(h_count[22]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_28 
       (.I0(h_count[21]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_29 
       (.I0(h_count[20]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_29_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_3 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_4_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_3_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_3_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_3_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(h_count[24:21]),
        .O(\point[0] [24:21]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_25_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_26_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_27_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_28_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_30 
       (.I0(h_count[19]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_31 
       (.I0(h_count[18]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_32 
       (.I0(h_count[17]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_33 
       (.I0(h_count[16]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_34 
       (.I0(h_count[15]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_35 
       (.I0(h_count[14]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_36 
       (.I0(h_count[13]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_37 
       (.I0(h_count[12]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_38 
       (.I0(h_count[11]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_39 
       (.I0(h_count[10]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_39_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_4 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_5_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_4_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_4_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_4_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(h_count[20:17]),
        .O(\point[0] [20:17]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_29_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_30_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_31_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_32_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_40 
       (.I0(h_count[9]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_41 
       (.I0(h_count[8]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_42 
       (.I0(h_count[7]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_43 
       (.I0(h_count[6]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_44 
       (.I0(h_count[5]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_45 
       (.I0(h_count[4]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_46 
       (.I0(h_count[3]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_47 
       (.I0(h_count[2]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_48 
       (.I0(h_count[1]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_49 
       (.I0(v_count[31]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_49_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_5 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_6_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_5_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_5_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_5_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(h_count[16:13]),
        .O(\point[0] [16:13]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_33_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_34_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_35_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_36_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_50 
       (.I0(v_count[30]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_50_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_51 
       (.I0(v_count[29]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_52 
       (.I0(v_count[28]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_53 
       (.I0(v_count[27]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_54 
       (.I0(v_count[26]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_55 
       (.I0(v_count[25]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_56 
       (.I0(v_count[24]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_57 
       (.I0(v_count[23]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_58 
       (.I0(v_count[22]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_58_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_59 
       (.I0(v_count[21]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_59_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_6 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_7_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_6_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_6_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_6_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(h_count[12:9]),
        .O(\point[0] [12:9]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_37_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_38_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_39_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_40_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_60 
       (.I0(v_count[20]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_61 
       (.I0(v_count[19]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_62 
       (.I0(v_count[18]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_63 
       (.I0(v_count[17]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_64 
       (.I0(v_count[16]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_65 
       (.I0(v_count[15]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_66 
       (.I0(v_count[14]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_67 
       (.I0(v_count[13]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_68 
       (.I0(v_count[12]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_69 
       (.I0(v_count[11]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_69_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_7 
       (.CI(\point_on_segment_i[0].point_on_segment_i_i_8_n_0 ),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_7_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_7_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_7_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,h_count[7:5]}),
        .O(\point[0] [8:5]),
        .S({\point_on_segment_i[0].point_on_segment_i_i_41_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_42_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_43_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_44_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_70 
       (.I0(v_count[10]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_70_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_71 
       (.I0(v_count[9]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_71_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_72 
       (.I0(v_count[8]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_72_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_73 
       (.I0(v_count[7]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_74 
       (.I0(v_count[6]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_75 
       (.I0(v_count[5]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_76 
       (.I0(v_count[4]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_77 
       (.I0(v_count[3]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_77_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_78 
       (.I0(v_count[2]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_78_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_79 
       (.I0(v_count[1]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_79_n_0 ));
  CARRY4 \point_on_segment_i[0].point_on_segment_i_i_8 
       (.CI(1'b0),
        .CO({\point_on_segment_i[0].point_on_segment_i_i_8_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_8_n_1 ,\point_on_segment_i[0].point_on_segment_i_i_8_n_2 ,\point_on_segment_i[0].point_on_segment_i_i_8_n_3 }),
        .CYINIT(h_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\point[0] [4:2],\NLW_point_on_segment_i[0].point_on_segment_i_i_8_O_UNCONNECTED [0]}),
        .S({\point_on_segment_i[0].point_on_segment_i_i_45_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_46_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_47_n_0 ,\point_on_segment_i[0].point_on_segment_i_i_48_n_0 }));
  LUT1 #(
    .INIT(2'h2)) 
    \point_on_segment_i[0].point_on_segment_i_i_80 
       (.I0(v_count[0]),
        .O(\point_on_segment_i[0].point_on_segment_i_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \point_on_segment_i[0].point_on_segment_i_i_9 
       (.I0(h_count[0]),
        .O(\point[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count[0]),
        .O(\v_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[12]_i_2 
       (.I0(v_count[12]),
        .O(\v_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[12]_i_3 
       (.I0(v_count[11]),
        .O(\v_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[12]_i_4 
       (.I0(v_count[10]),
        .O(\v_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[12]_i_5 
       (.I0(v_count[9]),
        .O(\v_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[16]_i_2 
       (.I0(v_count[16]),
        .O(\v_count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[16]_i_3 
       (.I0(v_count[15]),
        .O(\v_count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[16]_i_4 
       (.I0(v_count[14]),
        .O(\v_count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[16]_i_5 
       (.I0(v_count[13]),
        .O(\v_count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[20]_i_2 
       (.I0(v_count[20]),
        .O(\v_count[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[20]_i_3 
       (.I0(v_count[19]),
        .O(\v_count[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[20]_i_4 
       (.I0(v_count[18]),
        .O(\v_count[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[20]_i_5 
       (.I0(v_count[17]),
        .O(\v_count[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[24]_i_2 
       (.I0(v_count[24]),
        .O(\v_count[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[24]_i_3 
       (.I0(v_count[23]),
        .O(\v_count[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[24]_i_4 
       (.I0(v_count[22]),
        .O(\v_count[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[24]_i_5 
       (.I0(v_count[21]),
        .O(\v_count[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[28]_i_2 
       (.I0(v_count[28]),
        .O(\v_count[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[28]_i_3 
       (.I0(v_count[27]),
        .O(\v_count[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[28]_i_4 
       (.I0(v_count[26]),
        .O(\v_count[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[28]_i_5 
       (.I0(v_count[25]),
        .O(\v_count[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \v_count[31]_i_1 
       (.I0(\v_count[31]_i_3_n_0 ),
        .I1(\v_count[31]_i_4_n_0 ),
        .I2(\v_count[31]_i_5_n_0 ),
        .I3(\h_count[31]_i_3_n_0 ),
        .I4(\h_count[31]_i_4_n_0 ),
        .I5(\v_count[31]_i_6_n_0 ),
        .O(\v_count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[31]_i_10 
       (.I0(v_count[10]),
        .I1(v_count[11]),
        .I2(v_count[8]),
        .I3(v_count[27]),
        .O(\v_count[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \v_count[31]_i_11 
       (.I0(v_count[13]),
        .I1(v_count[12]),
        .O(\v_count[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[31]_i_12 
       (.I0(v_count[2]),
        .I1(v_count[3]),
        .I2(v_count[0]),
        .I3(v_count[1]),
        .O(\v_count[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[31]_i_13 
       (.I0(v_count[28]),
        .I1(v_count[7]),
        .I2(v_count[31]),
        .I3(v_count[29]),
        .O(\v_count[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[31]_i_14 
       (.I0(v_count[26]),
        .I1(v_count[30]),
        .I2(v_count[24]),
        .I3(v_count[25]),
        .O(\v_count[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[31]_i_15 
       (.I0(v_count[18]),
        .I1(v_count[19]),
        .I2(v_count[16]),
        .I3(v_count[17]),
        .O(\v_count[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \v_count[31]_i_16 
       (.I0(h_count[6]),
        .I1(h_count[7]),
        .O(\v_count[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \v_count[31]_i_17 
       (.I0(h_count[5]),
        .I1(h_count[4]),
        .I2(h_count[8]),
        .I3(h_count[9]),
        .O(\v_count[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[31]_i_18 
       (.I0(h_count[13]),
        .I1(h_count[12]),
        .I2(h_count[15]),
        .I3(h_count[14]),
        .O(\v_count[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \v_count[31]_i_3 
       (.I0(\v_count[31]_i_10_n_0 ),
        .I1(v_count[14]),
        .I2(v_count[15]),
        .I3(\v_count[31]_i_11_n_0 ),
        .I4(\v_count[31]_i_12_n_0 ),
        .I5(\v_count[31]_i_13_n_0 ),
        .O(\v_count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \v_count[31]_i_4 
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .I2(v_count[9]),
        .I3(v_count[4]),
        .I4(\v_count[31]_i_14_n_0 ),
        .O(\v_count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \v_count[31]_i_5 
       (.I0(v_count[21]),
        .I1(v_count[20]),
        .I2(v_count[23]),
        .I3(v_count[22]),
        .I4(\v_count[31]_i_15_n_0 ),
        .O(\v_count[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \v_count[31]_i_6 
       (.I0(h_count[10]),
        .I1(h_count[11]),
        .I2(\v_count[31]_i_16_n_0 ),
        .I3(\v_count[31]_i_17_n_0 ),
        .I4(\h_count[31]_i_14_n_0 ),
        .I5(\v_count[31]_i_18_n_0 ),
        .O(\v_count[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[31]_i_7 
       (.I0(v_count[31]),
        .O(\v_count[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[31]_i_8 
       (.I0(v_count[30]),
        .O(\v_count[31]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[31]_i_9 
       (.I0(v_count[29]),
        .O(\v_count[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[4]_i_2 
       (.I0(v_count[4]),
        .O(\v_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[4]_i_3 
       (.I0(v_count[3]),
        .O(\v_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[4]_i_4 
       (.I0(v_count[2]),
        .O(\v_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[4]_i_5 
       (.I0(v_count[1]),
        .O(\v_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[8]_i_2 
       (.I0(v_count[8]),
        .O(\v_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[8]_i_3 
       (.I0(v_count[7]),
        .O(\v_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[8]_i_4 
       (.I0(v_count[6]),
        .O(\v_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_count[8]_i_5 
       (.I0(v_count[5]),
        .O(\v_count[8]_i_5_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count[0]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[10] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[12]_i_1_n_6 ),
        .Q(v_count[10]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[11] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[12]_i_1_n_5 ),
        .Q(v_count[11]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[12] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[12]_i_1_n_4 ),
        .Q(v_count[12]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[12]_i_1 
       (.CI(\v_count_reg[8]_i_1_n_0 ),
        .CO({\v_count_reg[12]_i_1_n_0 ,\v_count_reg[12]_i_1_n_1 ,\v_count_reg[12]_i_1_n_2 ,\v_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[12]_i_1_n_4 ,\v_count_reg[12]_i_1_n_5 ,\v_count_reg[12]_i_1_n_6 ,\v_count_reg[12]_i_1_n_7 }),
        .S({\v_count[12]_i_2_n_0 ,\v_count[12]_i_3_n_0 ,\v_count[12]_i_4_n_0 ,\v_count[12]_i_5_n_0 }));
  FDRE \v_count_reg[13] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[16]_i_1_n_7 ),
        .Q(v_count[13]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[14] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[16]_i_1_n_6 ),
        .Q(v_count[14]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[15] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[16]_i_1_n_5 ),
        .Q(v_count[15]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[16] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[16]_i_1_n_4 ),
        .Q(v_count[16]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[16]_i_1 
       (.CI(\v_count_reg[12]_i_1_n_0 ),
        .CO({\v_count_reg[16]_i_1_n_0 ,\v_count_reg[16]_i_1_n_1 ,\v_count_reg[16]_i_1_n_2 ,\v_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[16]_i_1_n_4 ,\v_count_reg[16]_i_1_n_5 ,\v_count_reg[16]_i_1_n_6 ,\v_count_reg[16]_i_1_n_7 }),
        .S({\v_count[16]_i_2_n_0 ,\v_count[16]_i_3_n_0 ,\v_count[16]_i_4_n_0 ,\v_count[16]_i_5_n_0 }));
  FDRE \v_count_reg[17] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[20]_i_1_n_7 ),
        .Q(v_count[17]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[18] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[20]_i_1_n_6 ),
        .Q(v_count[18]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[19] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[20]_i_1_n_5 ),
        .Q(v_count[19]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[1] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[4]_i_1_n_7 ),
        .Q(v_count[1]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[20] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[20]_i_1_n_4 ),
        .Q(v_count[20]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[20]_i_1 
       (.CI(\v_count_reg[16]_i_1_n_0 ),
        .CO({\v_count_reg[20]_i_1_n_0 ,\v_count_reg[20]_i_1_n_1 ,\v_count_reg[20]_i_1_n_2 ,\v_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[20]_i_1_n_4 ,\v_count_reg[20]_i_1_n_5 ,\v_count_reg[20]_i_1_n_6 ,\v_count_reg[20]_i_1_n_7 }),
        .S({\v_count[20]_i_2_n_0 ,\v_count[20]_i_3_n_0 ,\v_count[20]_i_4_n_0 ,\v_count[20]_i_5_n_0 }));
  FDRE \v_count_reg[21] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[24]_i_1_n_7 ),
        .Q(v_count[21]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[22] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[24]_i_1_n_6 ),
        .Q(v_count[22]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[23] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[24]_i_1_n_5 ),
        .Q(v_count[23]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[24] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[24]_i_1_n_4 ),
        .Q(v_count[24]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[24]_i_1 
       (.CI(\v_count_reg[20]_i_1_n_0 ),
        .CO({\v_count_reg[24]_i_1_n_0 ,\v_count_reg[24]_i_1_n_1 ,\v_count_reg[24]_i_1_n_2 ,\v_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[24]_i_1_n_4 ,\v_count_reg[24]_i_1_n_5 ,\v_count_reg[24]_i_1_n_6 ,\v_count_reg[24]_i_1_n_7 }),
        .S({\v_count[24]_i_2_n_0 ,\v_count[24]_i_3_n_0 ,\v_count[24]_i_4_n_0 ,\v_count[24]_i_5_n_0 }));
  FDRE \v_count_reg[25] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[28]_i_1_n_7 ),
        .Q(v_count[25]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[26] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[28]_i_1_n_6 ),
        .Q(v_count[26]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[27] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[28]_i_1_n_5 ),
        .Q(v_count[27]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[28] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[28]_i_1_n_4 ),
        .Q(v_count[28]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[28]_i_1 
       (.CI(\v_count_reg[24]_i_1_n_0 ),
        .CO({\v_count_reg[28]_i_1_n_0 ,\v_count_reg[28]_i_1_n_1 ,\v_count_reg[28]_i_1_n_2 ,\v_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[28]_i_1_n_4 ,\v_count_reg[28]_i_1_n_5 ,\v_count_reg[28]_i_1_n_6 ,\v_count_reg[28]_i_1_n_7 }),
        .S({\v_count[28]_i_2_n_0 ,\v_count[28]_i_3_n_0 ,\v_count[28]_i_4_n_0 ,\v_count[28]_i_5_n_0 }));
  FDRE \v_count_reg[29] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[31]_i_2_n_7 ),
        .Q(v_count[29]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[2] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[4]_i_1_n_6 ),
        .Q(v_count[2]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[30] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[31]_i_2_n_6 ),
        .Q(v_count[30]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[31] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[31]_i_2_n_5 ),
        .Q(v_count[31]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[31]_i_2 
       (.CI(\v_count_reg[28]_i_1_n_0 ),
        .CO({\NLW_v_count_reg[31]_i_2_CO_UNCONNECTED [3:2],\v_count_reg[31]_i_2_n_2 ,\v_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_v_count_reg[31]_i_2_O_UNCONNECTED [3],\v_count_reg[31]_i_2_n_5 ,\v_count_reg[31]_i_2_n_6 ,\v_count_reg[31]_i_2_n_7 }),
        .S({1'b0,\v_count[31]_i_7_n_0 ,\v_count[31]_i_8_n_0 ,\v_count[31]_i_9_n_0 }));
  FDRE \v_count_reg[3] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[4]_i_1_n_5 ),
        .Q(v_count[3]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[4] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[4]_i_1_n_4 ),
        .Q(v_count[4]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\v_count_reg[4]_i_1_n_0 ,\v_count_reg[4]_i_1_n_1 ,\v_count_reg[4]_i_1_n_2 ,\v_count_reg[4]_i_1_n_3 }),
        .CYINIT(v_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[4]_i_1_n_4 ,\v_count_reg[4]_i_1_n_5 ,\v_count_reg[4]_i_1_n_6 ,\v_count_reg[4]_i_1_n_7 }),
        .S({\v_count[4]_i_2_n_0 ,\v_count[4]_i_3_n_0 ,\v_count[4]_i_4_n_0 ,\v_count[4]_i_5_n_0 }));
  FDRE \v_count_reg[5] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[8]_i_1_n_7 ),
        .Q(v_count[5]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[6] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[8]_i_1_n_6 ),
        .Q(v_count[6]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[7] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[8]_i_1_n_5 ),
        .Q(v_count[7]),
        .R(\v_count[31]_i_1_n_0 ));
  FDRE \v_count_reg[8] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[8]_i_1_n_4 ),
        .Q(v_count[8]),
        .R(\v_count[31]_i_1_n_0 ));
  CARRY4 \v_count_reg[8]_i_1 
       (.CI(\v_count_reg[4]_i_1_n_0 ),
        .CO({\v_count_reg[8]_i_1_n_0 ,\v_count_reg[8]_i_1_n_1 ,\v_count_reg[8]_i_1_n_2 ,\v_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[8]_i_1_n_4 ,\v_count_reg[8]_i_1_n_5 ,\v_count_reg[8]_i_1_n_6 ,\v_count_reg[8]_i_1_n_7 }),
        .S({\v_count[8]_i_2_n_0 ,\v_count[8]_i_3_n_0 ,\v_count[8]_i_4_n_0 ,\v_count[8]_i_5_n_0 }));
  FDRE \v_count_reg[9] 
       (.C(sig),
        .CE(v_count_0),
        .D(\v_count_reg[12]_i_1_n_7 ),
        .Q(v_count[9]),
        .R(\v_count[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
