set_property SRC_FILE_INFO {cfile:c:/Users/geoka/Documents/GitHub/uni-projects/lab5/lab5_hw_sw/sobel_hw_sw/sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1/lab3_simple_processing_system7_0_1.xdc rfile:../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_processing_system7_0_1/lab3_simple_processing_system7_0_1.xdc id:1 order:EARLY scoped_inst:lab3_simple_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/geoka/Documents/GitHub/uni-projects/lab5/lab5_hw_sw/sobel_hw_sw/sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_axi_dma_0/lab3_simple_axi_dma_0.xdc rfile:../sobel_hw_sw.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_axi_dma_0/lab3_simple_axi_dma_0.xdc id:2 order:EARLY scoped_inst:lab3_simple_i/axi_dma/U0} [current_design]
current_instance lab3_simple_i/processing_system7_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.24
current_instance
current_instance lab3_simple_i/axi_dma/U0
set_property src_info {type:SCOPED_XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_dma" -tags "9601" -desc "The CDC-1 warning is waived as it is safe in the context of AXI DMA. The Address and Data value does not change until AXI transaction is complete." -to [get_pins -hier -quiet -filter {NAME =~*I_AXI_DMA_REG_MODULE/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_ASYNC_WRITE.REG_WADDR_TO_IPCLK/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[*].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to/D}]
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_dma" -tags "9601" -desc "The CDC-1 warning is waived as it is safe in the context of AXI DMA. The Address and Data value does not change until AXI transaction is complete." -to [get_pins -hier -quiet -filter {NAME =~*I_AXI_DMA_REG_MODULE/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_ASYNC_WRITE.REG_WADDR_TO_IPCLK1/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[*].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to/D}]
set_property src_info {type:SCOPED_XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_dma" -tags "9601" -desc "The CDC-1 warning is waived as it is safe in the context of AXI DMA. In multi channel mode, it is safe to ignore this." -from [get_pins -hier -quiet -filter {NAME =~*MM2S_SPLIT.I_COMMAND_MM2S_SPLITTER/vsize_data_int_reg[*]/C}]
