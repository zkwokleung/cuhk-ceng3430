onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "D:/Xilinx/Vivado/2016.3/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib cube_renderering_system_opt

do {wave.do}

view wave
view structure
view signals

do {cube_renderering_system.udo}

run -all

quit -force
