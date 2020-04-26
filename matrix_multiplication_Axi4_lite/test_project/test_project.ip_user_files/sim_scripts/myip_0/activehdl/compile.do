vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../test_project.srcs/sources_1/ip/myip_0/hdl/myip_v1_0_S00_AXI.v" \
"../../../../test_project.srcs/sources_1/ip/myip_0/hdl/myip_v1_0_S_AXI_INTR.v" \
"../../../../test_project.srcs/sources_1/ip/myip_0/hdl/myip_v1_0.v" \
"../../../../test_project.srcs/sources_1/ip/myip_0/sim/myip_0.v" \


vlog -work xil_defaultlib "glbl.v"

