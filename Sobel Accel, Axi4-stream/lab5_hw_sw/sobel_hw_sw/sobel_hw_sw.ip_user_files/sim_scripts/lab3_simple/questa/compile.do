vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_5
vlib questa_lib/msim/processing_system7_vip_v1_0_7
vlib questa_lib/msim/xlconcat_v2_1_3
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_4
vlib questa_lib/msim/lib_fifo_v1_0_13
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_21
vlib questa_lib/msim/axi_sg_v4_1_12
vlib questa_lib/msim/axi_dma_v7_1_20
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_19
vlib questa_lib/msim/axi_data_fifo_v2_1_18
vlib questa_lib/msim/axi_crossbar_v2_1_20
vlib questa_lib/msim/axi_protocol_converter_v2_1_19
vlib questa_lib/msim/axi_clock_converter_v2_1_18
vlib questa_lib/msim/blk_mem_gen_v8_4_3
vlib questa_lib/msim/axi_dwidth_converter_v2_1_19

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 questa_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 questa_lib/msim/processing_system7_vip_v1_0_7
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 questa_lib/msim/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 questa_lib/msim/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 questa_lib/msim/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 questa_lib/msim/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 questa_lib/msim/axi_dma_v7_1_20
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 questa_lib/msim/axi_register_slice_v2_1_19
vmap axi_data_fifo_v2_1_18 questa_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 questa_lib/msim/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 questa_lib/msim/axi_protocol_converter_v2_1_19
vmap axi_clock_converter_v2_1_18 questa_lib/msim/axi_clock_converter_v2_1_18
vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3
vmap axi_dwidth_converter_v2_1_19 questa_lib/msim/axi_dwidth_converter_v2_1_19

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/lab3_simple/ip/lab3_simple_processing_system7_0_1/sim/lab3_simple_processing_system7_0_1.v" \

vlog -work xlconcat_v2_1_3 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/lab3_simple/ip/lab3_simple_xlconcat_0_0/sim/lab3_simple_xlconcat_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/lab3_simple/ip/lab3_simple_axi_dma_0/sim/lab3_simple_axi_dma_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/lab3_simple/ip/lab3_simple_rst_ps7_0_100M_1/sim/lab3_simple_rst_ps7_0_100M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/lab3_simple/ip/lab3_simple_xbar_4/sim/lab3_simple_xbar_4.v" \
"../../../bd/lab3_simple/ip/lab3_simple_xbar_5/sim/lab3_simple_xbar_5.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter_ctrl_bus_s_axi.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter_Gx.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter_Gy.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter_mac_eOg.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter_mux_dEe.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter_pixebkb.v" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0a5b/hdl/verilog/sobel_filter.v" \
"../../../bd/lab3_simple/ip/lab3_simple_sobel_filter_1_1/sim/lab3_simple_sobel_filter_1_1.v" \
"../../../bd/lab3_simple/sim/lab3_simple.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_18 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_3 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_19 -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl" "+incdir+../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/lab3_simple/ip/lab3_simple_auto_us_0/sim/lab3_simple_auto_us_0.v" \
"../../../bd/lab3_simple/ip/lab3_simple_auto_us_1/sim/lab3_simple_auto_us_1.v" \
"../../../bd/lab3_simple/ip/lab3_simple_auto_pc_0/sim/lab3_simple_auto_pc_0.v" \
"../../../bd/lab3_simple/ip/lab3_simple_auto_pc_1/sim/lab3_simple_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"
