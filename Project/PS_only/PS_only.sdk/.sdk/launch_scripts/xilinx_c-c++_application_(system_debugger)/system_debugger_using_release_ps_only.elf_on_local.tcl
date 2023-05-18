connect -url tcp:127.0.0.1:3121
source D:/Git/cuhk-ceng3430/Project/PS_only/PS_only.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248565423"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248565423" && level==0} -index 1
fpga -file D:/Git/cuhk-ceng3430/Project/PS_only/PS_only.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248565423"} -index 0
loadhw D:/Git/cuhk-ceng3430/Project/PS_only/PS_only.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248565423"} -index 0
ps7_init
ps7_post_config