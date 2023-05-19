vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/2527/hdl" "+incdir+../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/7e3a/hdl" "+incdir+../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/2527/hdl" "+incdir+../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/7e3a/hdl" \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cube_renderering_system/ip/cube_renderering_system_processing_system7_0_0/cube_renderering_system_processing_system7_0_0_sim_netlist.vhdl" \
"../../../bd/cube_renderering_system/srcs/pkg/generic_type_pkg.vhd" \
"../../../bd/cube_renderering_system/srcs/graphics/bresenham.vhd" \
"../../../bd/cube_renderering_system/srcs/utils/clock_divider.vhd" \
"../../../bd/cube_renderering_system/srcs/renderer3D.vhd" \
"../../../bd/cube_renderering_system/ipshared/7a6e/hdl/cube_renderer_controller_v2_0_S00_AXI.vhd" \
"../../../bd/cube_renderering_system/srcs/vga/vga_controller.vhd" \
"../../../bd/cube_renderering_system/ipshared/7a6e/hdl/cube_renderer_controller_v2_0.vhd" \
"../../../bd/cube_renderering_system/ip/cube_renderering_system_cube_renderer_controller_0_0/sim/cube_renderering_system_cube_renderer_controller_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cube_renderering_system/ip/cube_renderering_system_rst_ps7_0_50M_0/sim/cube_renderering_system_rst_ps7_0_50M_0.vhd" \
"../../../bd/cube_renderering_system/hdl/cube_renderering_system.vhd" \
"../../../bd/cube_renderering_system/ip/cube_renderering_system_auto_pc_0/cube_renderering_system_auto_pc_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib "glbl.v"
