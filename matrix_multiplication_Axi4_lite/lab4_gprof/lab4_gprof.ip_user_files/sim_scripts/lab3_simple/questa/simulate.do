onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/opt/Xilinx/Vivado/2016.4/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib lab3_simple_opt

do {wave.do}

view wave
view structure
view signals

do {lab3_simple.udo}

run -all

quit -force
