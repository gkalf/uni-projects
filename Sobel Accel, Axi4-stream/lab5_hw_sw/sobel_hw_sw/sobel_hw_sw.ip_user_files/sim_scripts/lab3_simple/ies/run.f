-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_processing_system7_0_1/sim/lab3_simple_processing_system7_0_1.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_3 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_xlconcat_0_0/sim/lab3_simple_xlconcat_0_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_13 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_21 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_12 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_20 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_axi_dma_0/sim/lab3_simple_axi_dma_0.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_rst_ps7_0_100M_1/sim/lab3_simple_rst_ps7_0_100M_1.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_18 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_3 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_19 \
  "../../../../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_auto_us_0/sim/lab3_simple_auto_us_0.v" \
  "../../../bd/lab3_simple/ip/lab3_simple_auto_us_1/sim/lab3_simple_auto_us_1.v" \
  "../../../bd/lab3_simple/ip/lab3_simple_auto_pc_0/sim/lab3_simple_auto_pc_0.v" \
  "../../../bd/lab3_simple/ip/lab3_simple_auto_pc_1/sim/lab3_simple_auto_pc_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

