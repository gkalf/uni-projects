onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib lab3_simple_opt

do {wave.do}

view wave
view structure
view signals

do {lab3_simple.udo}

run -all

quit -force
