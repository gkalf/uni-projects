vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../../myip_0/hdl/myip_v1_0_S00_AXI.vhd" \
"../../../../myip_0/hdl/myip_v1_0.vhd" \
"../../../../myip_0/sim/myip_0.vhd" \


