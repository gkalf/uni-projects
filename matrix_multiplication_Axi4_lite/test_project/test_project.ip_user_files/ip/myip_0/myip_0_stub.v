// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Tue Apr 25 17:04:56 2017
// Host        : gkmikros-K56CB running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/gkmikros/Dropbox/CE435/lab4/test_project/test_project.srcs/sources_1/ip/myip_0/myip_0_stub.v
// Design      : myip_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "myip_v1_0,Vivado 2016.4" *)
module myip_0(irq, s00_axi_awid, s00_axi_awaddr, 
  s00_axi_awlen, s00_axi_awsize, s00_axi_awburst, s00_axi_awlock, s00_axi_awcache, 
  s00_axi_awprot, s00_axi_awregion, s00_axi_awqos, s00_axi_awuser, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wlast, s00_axi_wuser, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bid, s00_axi_bresp, s00_axi_buser, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_arid, s00_axi_araddr, s00_axi_arlen, s00_axi_arsize, 
  s00_axi_arburst, s00_axi_arlock, s00_axi_arcache, s00_axi_arprot, s00_axi_arregion, 
  s00_axi_arqos, s00_axi_aruser, s00_axi_arvalid, s00_axi_arready, s00_axi_rid, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rlast, s00_axi_ruser, s00_axi_rvalid, s00_axi_rready, 
  s00_axi_aclk, s00_axi_aresetn, s_axi_intr_awaddr, s_axi_intr_awprot, s_axi_intr_awvalid, 
  s_axi_intr_awready, s_axi_intr_wdata, s_axi_intr_wstrb, s_axi_intr_wvalid, 
  s_axi_intr_wready, s_axi_intr_bresp, s_axi_intr_bvalid, s_axi_intr_bready, 
  s_axi_intr_araddr, s_axi_intr_arprot, s_axi_intr_arvalid, s_axi_intr_arready, 
  s_axi_intr_rdata, s_axi_intr_rresp, s_axi_intr_rvalid, s_axi_intr_rready, 
  s_axi_intr_aclk, s_axi_intr_aresetn)
/* synthesis syn_black_box black_box_pad_pin="irq,s00_axi_awid[0:0],s00_axi_awaddr[9:0],s00_axi_awlen[7:0],s00_axi_awsize[2:0],s00_axi_awburst[1:0],s00_axi_awlock,s00_axi_awcache[3:0],s00_axi_awprot[2:0],s00_axi_awregion[3:0],s00_axi_awqos[3:0],s00_axi_awuser[0:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wlast,s00_axi_wuser[0:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bid[0:0],s00_axi_bresp[1:0],s00_axi_buser[0:0],s00_axi_bvalid,s00_axi_bready,s00_axi_arid[0:0],s00_axi_araddr[9:0],s00_axi_arlen[7:0],s00_axi_arsize[2:0],s00_axi_arburst[1:0],s00_axi_arlock,s00_axi_arcache[3:0],s00_axi_arprot[2:0],s00_axi_arregion[3:0],s00_axi_arqos[3:0],s00_axi_aruser[0:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rid[0:0],s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rlast,s00_axi_ruser[0:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn,s_axi_intr_awaddr[4:0],s_axi_intr_awprot[2:0],s_axi_intr_awvalid,s_axi_intr_awready,s_axi_intr_wdata[31:0],s_axi_intr_wstrb[3:0],s_axi_intr_wvalid,s_axi_intr_wready,s_axi_intr_bresp[1:0],s_axi_intr_bvalid,s_axi_intr_bready,s_axi_intr_araddr[4:0],s_axi_intr_arprot[2:0],s_axi_intr_arvalid,s_axi_intr_arready,s_axi_intr_rdata[31:0],s_axi_intr_rresp[1:0],s_axi_intr_rvalid,s_axi_intr_rready,s_axi_intr_aclk,s_axi_intr_aresetn" */;
  output irq;
  input [0:0]s00_axi_awid;
  input [9:0]s00_axi_awaddr;
  input [7:0]s00_axi_awlen;
  input [2:0]s00_axi_awsize;
  input [1:0]s00_axi_awburst;
  input s00_axi_awlock;
  input [3:0]s00_axi_awcache;
  input [2:0]s00_axi_awprot;
  input [3:0]s00_axi_awregion;
  input [3:0]s00_axi_awqos;
  input [0:0]s00_axi_awuser;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wlast;
  input [0:0]s00_axi_wuser;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [0:0]s00_axi_bid;
  output [1:0]s00_axi_bresp;
  output [0:0]s00_axi_buser;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [0:0]s00_axi_arid;
  input [9:0]s00_axi_araddr;
  input [7:0]s00_axi_arlen;
  input [2:0]s00_axi_arsize;
  input [1:0]s00_axi_arburst;
  input s00_axi_arlock;
  input [3:0]s00_axi_arcache;
  input [2:0]s00_axi_arprot;
  input [3:0]s00_axi_arregion;
  input [3:0]s00_axi_arqos;
  input [0:0]s00_axi_aruser;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [0:0]s00_axi_rid;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rlast;
  output [0:0]s00_axi_ruser;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [4:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_awprot;
  input s_axi_intr_awvalid;
  output s_axi_intr_awready;
  input [31:0]s_axi_intr_wdata;
  input [3:0]s_axi_intr_wstrb;
  input s_axi_intr_wvalid;
  output s_axi_intr_wready;
  output [1:0]s_axi_intr_bresp;
  output s_axi_intr_bvalid;
  input s_axi_intr_bready;
  input [4:0]s_axi_intr_araddr;
  input [2:0]s_axi_intr_arprot;
  input s_axi_intr_arvalid;
  output s_axi_intr_arready;
  output [31:0]s_axi_intr_rdata;
  output [1:0]s_axi_intr_rresp;
  output s_axi_intr_rvalid;
  input s_axi_intr_rready;
  input s_axi_intr_aclk;
  input s_axi_intr_aresetn;
endmodule
