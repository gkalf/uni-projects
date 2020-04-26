onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+myip_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.myip_0

do {wave.do}

view wave
view structure

do {myip_0.udo}

run -all

endsim

quit -force
