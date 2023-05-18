connect -url tcp:127.0.0.1:3121
source D:/Git/cuhk-ceng3430/Project/ceng3430_proj_renderer3d/ceng3430_proj_renderer3d.sdk/cube_renderering_system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248657233"} -index 0
loadhw D:/Git/cuhk-ceng3430/Project/ceng3430_proj_renderer3d/ceng3430_proj_renderer3d.sdk/cube_renderering_system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248657233"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248657233"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248657233"} -index 0
dow D:/Git/cuhk-ceng3430/Project/ceng3430_proj_renderer3d/ceng3430_proj_renderer3d.sdk/cube_renderer/Debug/cube_renderer.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248657233"} -index 0
con
