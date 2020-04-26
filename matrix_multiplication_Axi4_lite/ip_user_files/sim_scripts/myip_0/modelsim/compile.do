vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../myip_0/hdl/myip_v1_0_S00_AXI.vhd" \
"../../../../myip_0/hdl/myip_v1_0.vhd" \
"../../../../myip_0/sim/myip_0.vhd" \


