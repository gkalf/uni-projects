vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/processing_system7_bfm_v2_0_5
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_13
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12
vlib msim/axi_protocol_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap processing_system7_bfm_v2_0_5 msim/processing_system7_bfm_v2_0_5
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_13 msim/axi_gpio_v2_0_13
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../bd/lab3_simple/ip/lab3_simple_processing_system7_0_0/sim/lab3_simple_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_13 -64 -93 \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/lab3_simple/ip/lab3_simple_axi_gpio_0_0/sim/lab3_simple_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/lab3_simple/ip/lab3_simple_rst_ps7_0_100M_0/sim/lab3_simple_rst_ps7_0_100M_0.vhd" \
"../../../bd/lab3_simple/ip/lab3_simple_axi_gpio_0_1/sim/lab3_simple_axi_gpio_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../bd/lab3_simple/ip/lab3_simple_xbar_0/sim/lab3_simple_xbar_0.v" \
"../../../bd/lab3_simple/hdl/lab3_simple.v" \
"../../../bd/lab3_simple/ipshared/4a30/hdl/Gray_counter_ip_v1_0_S00_AXI.v" \
"../../../bd/lab3_simple/ipshared/4a30/hdl/Gray_counter_ip_v1_0.v" \
"../../../bd/lab3_simple/ip/lab3_simple_Gray_counter_ip_0_1/sim/lab3_simple_Gray_counter_ip_0_1.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl" "+incdir+../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl" \
"../../../bd/lab3_simple/ip/lab3_simple_auto_pc_0/sim/lab3_simple_auto_pc_0.v" \

vlog -work xil_defaultlib "glbl.v"

