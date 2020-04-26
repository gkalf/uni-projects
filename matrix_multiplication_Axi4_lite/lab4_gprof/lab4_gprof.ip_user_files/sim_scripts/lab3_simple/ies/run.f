-makelib ies/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/processing_system7_bfm_v2_0_5 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_processing_system7_0_0/sim/lab3_simple_processing_system7_0_0.v" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_13 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_axi_gpio_0_0/sim/lab3_simple_axi_gpio_0_0.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_rst_ps7_0_100M_0/sim/lab3_simple_rst_ps7_0_100M_0.vhd" \
  "../../../bd/lab3_simple/ip/lab3_simple_axi_gpio_0_1/sim/lab3_simple_axi_gpio_0_1.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_xbar_0/sim/lab3_simple_xbar_0.v" \
  "../../../bd/lab3_simple/hdl/lab3_simple.v" \
  "../../../bd/lab3_simple/ipshared/4a30/hdl/Gray_counter_ip_v1_0_S00_AXI.v" \
  "../../../bd/lab3_simple/ipshared/4a30/hdl/Gray_counter_ip_v1_0.v" \
  "../../../bd/lab3_simple/ip/lab3_simple_Gray_counter_ip_0_1/sim/lab3_simple_Gray_counter_ip_0_1.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../lab3_graycounter.srcs/sources_1/bd/lab3_simple/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/lab3_simple/ip/lab3_simple_auto_pc_0/sim/lab3_simple_auto_pc_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

