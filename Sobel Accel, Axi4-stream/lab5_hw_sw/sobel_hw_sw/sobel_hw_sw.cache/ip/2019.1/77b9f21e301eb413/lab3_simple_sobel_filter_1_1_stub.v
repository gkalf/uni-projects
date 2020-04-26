// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 26 18:46:39 2020
// Host        : DESKTOP-KE3UBO5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab3_simple_sobel_filter_1_1_stub.v
// Design      : lab3_simple_sobel_filter_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sobel_filter,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_ctrl_bus_AWADDR, 
  s_axi_ctrl_bus_AWVALID, s_axi_ctrl_bus_AWREADY, s_axi_ctrl_bus_WDATA, 
  s_axi_ctrl_bus_WSTRB, s_axi_ctrl_bus_WVALID, s_axi_ctrl_bus_WREADY, 
  s_axi_ctrl_bus_BRESP, s_axi_ctrl_bus_BVALID, s_axi_ctrl_bus_BREADY, 
  s_axi_ctrl_bus_ARADDR, s_axi_ctrl_bus_ARVALID, s_axi_ctrl_bus_ARREADY, 
  s_axi_ctrl_bus_RDATA, s_axi_ctrl_bus_RRESP, s_axi_ctrl_bus_RVALID, 
  s_axi_ctrl_bus_RREADY, ap_clk, ap_rst_n, interrupt, INPUT_IMAGE_TVALID, INPUT_IMAGE_TREADY, 
  INPUT_IMAGE_TDATA, INPUT_IMAGE_TDEST, INPUT_IMAGE_TKEEP, INPUT_IMAGE_TSTRB, 
  INPUT_IMAGE_TUSER, INPUT_IMAGE_TLAST, INPUT_IMAGE_TID, OUTPUT_IMAGE_TVALID, 
  OUTPUT_IMAGE_TREADY, OUTPUT_IMAGE_TDATA, OUTPUT_IMAGE_TDEST, OUTPUT_IMAGE_TKEEP, 
  OUTPUT_IMAGE_TSTRB, OUTPUT_IMAGE_TUSER, OUTPUT_IMAGE_TLAST, OUTPUT_IMAGE_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_ctrl_bus_AWADDR[3:0],s_axi_ctrl_bus_AWVALID,s_axi_ctrl_bus_AWREADY,s_axi_ctrl_bus_WDATA[31:0],s_axi_ctrl_bus_WSTRB[3:0],s_axi_ctrl_bus_WVALID,s_axi_ctrl_bus_WREADY,s_axi_ctrl_bus_BRESP[1:0],s_axi_ctrl_bus_BVALID,s_axi_ctrl_bus_BREADY,s_axi_ctrl_bus_ARADDR[3:0],s_axi_ctrl_bus_ARVALID,s_axi_ctrl_bus_ARREADY,s_axi_ctrl_bus_RDATA[31:0],s_axi_ctrl_bus_RRESP[1:0],s_axi_ctrl_bus_RVALID,s_axi_ctrl_bus_RREADY,ap_clk,ap_rst_n,interrupt,INPUT_IMAGE_TVALID,INPUT_IMAGE_TREADY,INPUT_IMAGE_TDATA[7:0],INPUT_IMAGE_TDEST[5:0],INPUT_IMAGE_TKEEP[0:0],INPUT_IMAGE_TSTRB[0:0],INPUT_IMAGE_TUSER[1:0],INPUT_IMAGE_TLAST[0:0],INPUT_IMAGE_TID[4:0],OUTPUT_IMAGE_TVALID,OUTPUT_IMAGE_TREADY,OUTPUT_IMAGE_TDATA[7:0],OUTPUT_IMAGE_TDEST[5:0],OUTPUT_IMAGE_TKEEP[0:0],OUTPUT_IMAGE_TSTRB[0:0],OUTPUT_IMAGE_TUSER[1:0],OUTPUT_IMAGE_TLAST[0:0],OUTPUT_IMAGE_TID[4:0]" */;
  input [3:0]s_axi_ctrl_bus_AWADDR;
  input s_axi_ctrl_bus_AWVALID;
  output s_axi_ctrl_bus_AWREADY;
  input [31:0]s_axi_ctrl_bus_WDATA;
  input [3:0]s_axi_ctrl_bus_WSTRB;
  input s_axi_ctrl_bus_WVALID;
  output s_axi_ctrl_bus_WREADY;
  output [1:0]s_axi_ctrl_bus_BRESP;
  output s_axi_ctrl_bus_BVALID;
  input s_axi_ctrl_bus_BREADY;
  input [3:0]s_axi_ctrl_bus_ARADDR;
  input s_axi_ctrl_bus_ARVALID;
  output s_axi_ctrl_bus_ARREADY;
  output [31:0]s_axi_ctrl_bus_RDATA;
  output [1:0]s_axi_ctrl_bus_RRESP;
  output s_axi_ctrl_bus_RVALID;
  input s_axi_ctrl_bus_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input INPUT_IMAGE_TVALID;
  output INPUT_IMAGE_TREADY;
  input [7:0]INPUT_IMAGE_TDATA;
  input [5:0]INPUT_IMAGE_TDEST;
  input [0:0]INPUT_IMAGE_TKEEP;
  input [0:0]INPUT_IMAGE_TSTRB;
  input [1:0]INPUT_IMAGE_TUSER;
  input [0:0]INPUT_IMAGE_TLAST;
  input [4:0]INPUT_IMAGE_TID;
  output OUTPUT_IMAGE_TVALID;
  input OUTPUT_IMAGE_TREADY;
  output [7:0]OUTPUT_IMAGE_TDATA;
  output [5:0]OUTPUT_IMAGE_TDEST;
  output [0:0]OUTPUT_IMAGE_TKEEP;
  output [0:0]OUTPUT_IMAGE_TSTRB;
  output [1:0]OUTPUT_IMAGE_TUSER;
  output [0:0]OUTPUT_IMAGE_TLAST;
  output [4:0]OUTPUT_IMAGE_TID;
endmodule
