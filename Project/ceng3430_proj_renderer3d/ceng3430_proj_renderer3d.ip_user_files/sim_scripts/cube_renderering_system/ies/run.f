-makelib ies/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/cube_renderering_system/ip/cube_renderering_system_processing_system7_0_0/cube_renderering_system_processing_system7_0_0_sim_netlist.vhdl" \
  "../../../bd/cube_renderering_system/srcs/pkg/generic_type_pkg.vhd" \
  "../../../bd/cube_renderering_system/srcs/graphics/point_on_segment.vhd" \
  "../../../bd/cube_renderering_system/srcs/utils/clock_divider.vhd" \
  "../../../bd/cube_renderering_system/srcs/renderer3D.vhd" \
  "../../../bd/cube_renderering_system/ipshared/c089/hdl/cube_renderer_controller_v2_0_S00_AXI.vhd" \
  "../../../bd/cube_renderering_system/srcs/vga/vga_controller.vhd" \
  "../../../bd/cube_renderering_system/ipshared/c089/hdl/cube_renderer_controller_v2_0.vhd" \
  "../../../bd/cube_renderering_system/ip/cube_renderering_system_cube_renderer_controller_0_0/sim/cube_renderering_system_cube_renderer_controller_0_0.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/cube_renderering_system/ip/cube_renderering_system_rst_ps7_0_50M_0/sim/cube_renderering_system_rst_ps7_0_50M_0.vhd" \
  "../../../bd/cube_renderering_system/hdl/cube_renderering_system.vhd" \
  "../../../bd/cube_renderering_system/ip/cube_renderering_system_auto_pc_0/cube_renderering_system_auto_pc_0_sim_netlist.vhdl" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

