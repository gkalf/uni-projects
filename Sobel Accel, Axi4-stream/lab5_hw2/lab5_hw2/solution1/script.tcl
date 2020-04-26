############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab5_hw2
set_top sobel_filter
add_files ../lab5_hw/sobel.cpp
add_files ../lab5_hw/sobel.h
add_files -tb ../lab5_hw/golden.gre
add_files -tb ../lab5_hw/input.gre
add_files -tb ../lab5_hw/sobeltb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
config_sdx -optimization_level none -target none
source "./lab5_hw2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
