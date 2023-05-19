onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+cube_renderering_system -pli "D:/Xilinx/Vivado/2016.3/lib/win64.o/libxil_vsim.dll" -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cube_renderering_system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {cube_renderering_system.udo}

run -all

endsim

quit -force
