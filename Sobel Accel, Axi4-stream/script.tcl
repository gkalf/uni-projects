############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab5_hw
set_top sobel_filter
add_files lab5_hw/sobel.cpp
add_files lab5_hw/sobel.h
add_files -tb lab5_hw/golden.gre
add_files -tb lab5_hw/input.gre
add_files -tb lab5_hw/sobel.h
add_files -tb lab5_hw/sobeltb.cpp
open_solution "solution2"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 6.5 -name default
source "./lab5_hw/solution2/directives.tcl"
#csim_design -compiler gcc
csynth_design
#export_design -rtl verilog -format ip_catalog
exit
