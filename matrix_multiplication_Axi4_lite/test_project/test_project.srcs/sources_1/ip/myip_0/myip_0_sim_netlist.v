// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Tue Apr 25 17:04:57 2017
// Host        : gkmikros-K56CB running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/gkmikros/Dropbox/CE435/lab4/test_project/test_project.srcs/sources_1/ip/myip_0/myip_0_sim_netlist.v
// Design      : myip_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "myip_0,myip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module myip_0
   (irq,
    s00_axi_awid,
    s00_axi_awaddr,
    s00_axi_awlen,
    s00_axi_awsize,
    s00_axi_awburst,
    s00_axi_awlock,
    s00_axi_awcache,
    s00_axi_awprot,
    s00_axi_awregion,
    s00_axi_awqos,
    s00_axi_awuser,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wlast,
    s00_axi_wuser,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bid,
    s00_axi_bresp,
    s00_axi_buser,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_arid,
    s00_axi_araddr,
    s00_axi_arlen,
    s00_axi_arsize,
    s00_axi_arburst,
    s00_axi_arlock,
    s00_axi_arcache,
    s00_axi_arprot,
    s00_axi_arregion,
    s00_axi_arqos,
    s00_axi_aruser,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rid,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rlast,
    s00_axi_ruser,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn,
    s_axi_intr_awaddr,
    s_axi_intr_awprot,
    s_axi_intr_awvalid,
    s_axi_intr_awready,
    s_axi_intr_wdata,
    s_axi_intr_wstrb,
    s_axi_intr_wvalid,
    s_axi_intr_wready,
    s_axi_intr_bresp,
    s_axi_intr_bvalid,
    s_axi_intr_bready,
    s_axi_intr_araddr,
    s_axi_intr_arprot,
    s_axi_intr_arvalid,
    s_axi_intr_arready,
    s_axi_intr_rdata,
    s_axi_intr_rresp,
    s_axi_intr_rvalid,
    s_axi_intr_rready,
    s_axi_intr_aclk,
    s_axi_intr_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [0:0]s00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [9:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]s00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]s00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]s00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input s00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]s00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]s00_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]s00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *) input [0:0]s00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input s00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [0:0]s00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [0:0]s00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BUSER" *) output [0:0]s00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [0:0]s00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [9:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]s00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]s00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]s00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input s00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]s00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]s00_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]s00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *) input [0:0]s00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [0:0]s00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output s00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [0:0]s00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR" *) input [4:0]s_axi_intr_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT" *) input [2:0]s_axi_intr_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID" *) input s_axi_intr_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY" *) output s_axi_intr_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA" *) input [31:0]s_axi_intr_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB" *) input [3:0]s_axi_intr_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID" *) input s_axi_intr_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY" *) output s_axi_intr_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP" *) output [1:0]s_axi_intr_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID" *) output s_axi_intr_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY" *) input s_axi_intr_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR" *) input [4:0]s_axi_intr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT" *) input [2:0]s_axi_intr_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID" *) input s_axi_intr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY" *) output s_axi_intr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA" *) output [31:0]s_axi_intr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP" *) output [1:0]s_axi_intr_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID" *) output s_axi_intr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY" *) input s_axi_intr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK" *) input s_axi_intr_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST" *) input s_axi_intr_aresetn;

  wire \<const0> ;
  wire irq;
  wire s00_axi_aclk;
  wire [9:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [0:0]s00_axi_arid;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [9:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [0:0]s00_axi_awid;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s_axi_intr_aclk;
  wire [4:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [4:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]\^s_axi_intr_rdata ;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [31:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;

  assign s00_axi_bid[0] = s00_axi_awid;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_buser[0] = \<const0> ;
  assign s00_axi_rid[0] = s00_axi_arid;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s_axi_intr_bresp[1] = \<const0> ;
  assign s_axi_intr_bresp[0] = \<const0> ;
  assign s_axi_intr_rdata[31] = \<const0> ;
  assign s_axi_intr_rdata[30] = \<const0> ;
  assign s_axi_intr_rdata[29] = \<const0> ;
  assign s_axi_intr_rdata[28] = \<const0> ;
  assign s_axi_intr_rdata[27] = \<const0> ;
  assign s_axi_intr_rdata[26] = \<const0> ;
  assign s_axi_intr_rdata[25] = \<const0> ;
  assign s_axi_intr_rdata[24] = \<const0> ;
  assign s_axi_intr_rdata[23] = \<const0> ;
  assign s_axi_intr_rdata[22] = \<const0> ;
  assign s_axi_intr_rdata[21] = \<const0> ;
  assign s_axi_intr_rdata[20] = \<const0> ;
  assign s_axi_intr_rdata[19] = \<const0> ;
  assign s_axi_intr_rdata[18] = \<const0> ;
  assign s_axi_intr_rdata[17] = \<const0> ;
  assign s_axi_intr_rdata[16] = \<const0> ;
  assign s_axi_intr_rdata[15] = \<const0> ;
  assign s_axi_intr_rdata[14] = \<const0> ;
  assign s_axi_intr_rdata[13] = \<const0> ;
  assign s_axi_intr_rdata[12] = \<const0> ;
  assign s_axi_intr_rdata[11] = \<const0> ;
  assign s_axi_intr_rdata[10] = \<const0> ;
  assign s_axi_intr_rdata[9] = \<const0> ;
  assign s_axi_intr_rdata[8] = \<const0> ;
  assign s_axi_intr_rdata[7] = \<const0> ;
  assign s_axi_intr_rdata[6] = \<const0> ;
  assign s_axi_intr_rdata[5] = \<const0> ;
  assign s_axi_intr_rdata[4] = \<const0> ;
  assign s_axi_intr_rdata[3] = \<const0> ;
  assign s_axi_intr_rdata[2] = \<const0> ;
  assign s_axi_intr_rdata[1] = \<const0> ;
  assign s_axi_intr_rdata[0] = \^s_axi_intr_rdata [0];
  assign s_axi_intr_rresp[1] = \<const0> ;
  assign s_axi_intr_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  myip_0_myip_v1_0 inst
       (.irq(irq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[9:2]),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[9:2]),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axi_intr_aclk(s_axi_intr_aclk),
        .s_axi_intr_araddr(s_axi_intr_araddr[4:2]),
        .s_axi_intr_aresetn(s_axi_intr_aresetn),
        .s_axi_intr_arready(s_axi_intr_arready),
        .s_axi_intr_arvalid(s_axi_intr_arvalid),
        .s_axi_intr_awaddr(s_axi_intr_awaddr[4:2]),
        .s_axi_intr_awready(s_axi_intr_awready),
        .s_axi_intr_awvalid(s_axi_intr_awvalid),
        .s_axi_intr_bready(s_axi_intr_bready),
        .s_axi_intr_bvalid(s_axi_intr_bvalid),
        .s_axi_intr_rdata(\^s_axi_intr_rdata ),
        .s_axi_intr_rready(s_axi_intr_rready),
        .s_axi_intr_rvalid(s_axi_intr_rvalid),
        .s_axi_intr_wdata(s_axi_intr_wdata[0]),
        .s_axi_intr_wready(s_axi_intr_wready),
        .s_axi_intr_wvalid(s_axi_intr_wvalid));
endmodule

(* ORIG_REF_NAME = "myip_v1_0" *) 
module myip_0_myip_v1_0
   (s00_axi_awready,
    s_axi_intr_wready,
    s_axi_intr_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s_axi_intr_arready,
    s00_axi_wready,
    s00_axi_rlast,
    s00_axi_bvalid,
    s_axi_intr_bvalid,
    s_axi_intr_rvalid,
    s_axi_intr_rdata,
    irq,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s_axi_intr_awvalid,
    s_axi_intr_wvalid,
    s00_axi_arvalid,
    s_axi_intr_arvalid,
    s_axi_intr_aresetn,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_arlen,
    s00_axi_awburst,
    s00_axi_awlen,
    s00_axi_arburst,
    s_axi_intr_aclk,
    s_axi_intr_awaddr,
    s_axi_intr_araddr,
    s00_axi_rready,
    s00_axi_wvalid,
    s00_axi_wlast,
    s00_axi_bready,
    s_axi_intr_bready,
    s_axi_intr_rready,
    s_axi_intr_wdata);
  output s00_axi_awready;
  output s_axi_intr_wready;
  output s_axi_intr_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s_axi_intr_arready;
  output s00_axi_wready;
  output s00_axi_rlast;
  output s00_axi_bvalid;
  output s_axi_intr_bvalid;
  output s_axi_intr_rvalid;
  output [0:0]s_axi_intr_rdata;
  output irq;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s_axi_intr_awvalid;
  input s_axi_intr_wvalid;
  input s00_axi_arvalid;
  input s_axi_intr_arvalid;
  input s_axi_intr_aresetn;
  input [7:0]s00_axi_awaddr;
  input [7:0]s00_axi_araddr;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input [7:0]s00_axi_arlen;
  input [1:0]s00_axi_awburst;
  input [7:0]s00_axi_awlen;
  input [1:0]s00_axi_arburst;
  input s_axi_intr_aclk;
  input [2:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_araddr;
  input s00_axi_rready;
  input s00_axi_wvalid;
  input s00_axi_wlast;
  input s00_axi_bready;
  input s_axi_intr_bready;
  input s_axi_intr_rready;
  input [0:0]s_axi_intr_wdata;

  wire irq;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s_axi_intr_aclk;
  wire [2:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [2:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]s_axi_intr_rdata;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [0:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;

  myip_0_myip_v1_0_S00_AXI myip_v1_0_S00_AXI_inst
       (.s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  myip_0_myip_v1_0_S_AXI_INTR myip_v1_0_S_AXI_INTR_inst
       (.irq(irq),
        .s_axi_intr_aclk(s_axi_intr_aclk),
        .s_axi_intr_araddr(s_axi_intr_araddr),
        .s_axi_intr_aresetn(s_axi_intr_aresetn),
        .s_axi_intr_arready(s_axi_intr_arready),
        .s_axi_intr_arvalid(s_axi_intr_arvalid),
        .s_axi_intr_awaddr(s_axi_intr_awaddr),
        .s_axi_intr_awready(s_axi_intr_awready),
        .s_axi_intr_awvalid(s_axi_intr_awvalid),
        .s_axi_intr_bready(s_axi_intr_bready),
        .s_axi_intr_bvalid(s_axi_intr_bvalid),
        .s_axi_intr_rdata(s_axi_intr_rdata),
        .s_axi_intr_rready(s_axi_intr_rready),
        .s_axi_intr_rvalid(s_axi_intr_rvalid),
        .s_axi_intr_wdata(s_axi_intr_wdata),
        .s_axi_intr_wready(s_axi_intr_wready),
        .s_axi_intr_wvalid(s_axi_intr_wvalid));
endmodule

(* ORIG_REF_NAME = "myip_v1_0_S00_AXI" *) 
module myip_0_myip_v1_0_S00_AXI
   (s00_axi_wready,
    s00_axi_rvalid,
    s00_axi_arready,
    s00_axi_awready,
    s00_axi_bvalid,
    s00_axi_rlast,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_wlast,
    s00_axi_rready,
    s00_axi_bready,
    s00_axi_arlen,
    s00_axi_awburst,
    s00_axi_awlen,
    s00_axi_arburst);
  output s00_axi_wready;
  output s00_axi_rvalid;
  output s00_axi_arready;
  output s00_axi_awready;
  output s00_axi_bvalid;
  output s00_axi_rlast;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input [7:0]s00_axi_awaddr;
  input [7:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_wlast;
  input s00_axi_rready;
  input s00_axi_bready;
  input [7:0]s00_axi_arlen;
  input [1:0]s00_axi_awburst;
  input [7:0]s00_axi_awlen;
  input [1:0]s00_axi_arburst;

  wire ar_wrap_en;
  wire ar_wrap_en__0_carry_i_1_n_0;
  wire ar_wrap_en__0_carry_i_2_n_0;
  wire ar_wrap_en__0_carry_i_3_n_0;
  wire ar_wrap_en__0_carry_i_4_n_0;
  wire ar_wrap_en__0_carry_n_1;
  wire ar_wrap_en__0_carry_n_2;
  wire ar_wrap_en__0_carry_n_3;
  wire aw_wrap_en;
  wire aw_wrap_en__0_carry_i_1_n_0;
  wire aw_wrap_en__0_carry_i_2_n_0;
  wire aw_wrap_en__0_carry_i_3_n_0;
  wire aw_wrap_en__0_carry_i_4_n_0;
  wire aw_wrap_en__0_carry_n_1;
  wire aw_wrap_en__0_carry_n_2;
  wire aw_wrap_en__0_carry_n_3;
  wire [7:2]axi_araddr0;
  wire \axi_araddr0_inferred__0/i__carry__0_n_1 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_2 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_3 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_4 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_5 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_6 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_7 ;
  wire \axi_araddr0_inferred__0/i__carry_n_0 ;
  wire \axi_araddr0_inferred__0/i__carry_n_1 ;
  wire \axi_araddr0_inferred__0/i__carry_n_2 ;
  wire \axi_araddr0_inferred__0/i__carry_n_3 ;
  wire \axi_araddr0_inferred__0/i__carry_n_4 ;
  wire \axi_araddr0_inferred__0/i__carry_n_5 ;
  wire \axi_araddr0_inferred__0/i__carry_n_6 ;
  wire \axi_araddr0_inferred__0/i__carry_n_7 ;
  wire axi_araddr1;
  wire axi_araddr3;
  wire axi_araddr3_carry_i_1_n_0;
  wire axi_araddr3_carry_i_2_n_0;
  wire axi_araddr3_carry_i_3_n_0;
  wire axi_araddr3_carry_i_4_n_0;
  wire axi_araddr3_carry_i_5_n_0;
  wire axi_araddr3_carry_i_6_n_0;
  wire axi_araddr3_carry_i_7_n_0;
  wire axi_araddr3_carry_i_8_n_0;
  wire axi_araddr3_carry_n_1;
  wire axi_araddr3_carry_n_2;
  wire axi_araddr3_carry_n_3;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[2]_i_2_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_3_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[5]_i_3_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[6]_i_3_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[7]_i_3_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[8]_i_2_n_0 ;
  wire \axi_araddr[8]_i_3_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire \axi_araddr[9]_i_2_n_0 ;
  wire \axi_araddr[9]_i_3_n_0 ;
  wire [1:0]axi_arburst;
  wire \axi_arlen[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_arlen_cntr_reg__0;
  wire \axi_arlen_reg_n_0_[0] ;
  wire \axi_arlen_reg_n_0_[1] ;
  wire \axi_arlen_reg_n_0_[2] ;
  wire \axi_arlen_reg_n_0_[3] ;
  wire \axi_arlen_reg_n_0_[4] ;
  wire \axi_arlen_reg_n_0_[5] ;
  wire \axi_arlen_reg_n_0_[6] ;
  wire \axi_arlen_reg_n_0_[7] ;
  wire axi_arready1__0;
  wire axi_arready2__14;
  wire axi_arready_i_1_n_0;
  wire axi_arready_i_4_n_0;
  wire axi_arready_i_5_n_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_1 ;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_2 ;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_3 ;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_4 ;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_5 ;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_6 ;
  wire \axi_awaddr0_inferred__0/i__carry__0_n_7 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_0 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_1 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_2 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_3 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_4 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_5 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_6 ;
  wire \axi_awaddr0_inferred__0/i__carry_n_7 ;
  wire axi_awaddr1;
  wire axi_awaddr3;
  wire axi_awaddr3_carry_i_1_n_0;
  wire axi_awaddr3_carry_i_2_n_0;
  wire axi_awaddr3_carry_i_3_n_0;
  wire axi_awaddr3_carry_i_4_n_0;
  wire axi_awaddr3_carry_i_5_n_0;
  wire axi_awaddr3_carry_i_6_n_0;
  wire axi_awaddr3_carry_i_7_n_0;
  wire axi_awaddr3_carry_i_8_n_0;
  wire axi_awaddr3_carry_n_1;
  wire axi_awaddr3_carry_n_2;
  wire axi_awaddr3_carry_n_3;
  wire \axi_awaddr[2]_i_2_n_0 ;
  wire \axi_awaddr[3]_i_2_n_0 ;
  wire \axi_awaddr[4]_i_3_n_0 ;
  wire \axi_awaddr[5]_i_3_n_0 ;
  wire \axi_awaddr[6]_i_3_n_0 ;
  wire \axi_awaddr[7]_i_3_n_0 ;
  wire \axi_awaddr[8]_i_2_n_0 ;
  wire \axi_awaddr[8]_i_3_n_0 ;
  wire \axi_awaddr[9]_i_1_n_0 ;
  wire \axi_awaddr[9]_i_3_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire \axi_awaddr_reg_n_0_[8] ;
  wire \axi_awaddr_reg_n_0_[9] ;
  wire [1:0]axi_awburst;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg__0;
  wire \axi_awlen_reg_n_0_[0] ;
  wire \axi_awlen_reg_n_0_[1] ;
  wire \axi_awlen_reg_n_0_[2] ;
  wire \axi_awlen_reg_n_0_[3] ;
  wire \axi_awlen_reg_n_0_[4] ;
  wire \axi_awlen_reg_n_0_[5] ;
  wire \axi_awlen_reg_n_0_[6] ;
  wire \axi_awlen_reg_n_0_[7] ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire [7:0]mem_address;
  wire [31:0]\mem_data_out[0]_0 ;
  wire mem_wren;
  wire [9:4]p_0_in;
  wire [7:0]p_0_in_0;
  wire [7:0]p_0_in__0;
  wire [7:1]p_0_in__1;
  wire p_20_in;
  wire [9:2]p_2_in;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [15:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPBDOP_UNCONNECTED ;
  wire [15:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPBDOP_UNCONNECTED ;
  wire [15:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPBDOP_UNCONNECTED ;
  wire [15:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPBDOP_UNCONNECTED ;
  wire [3:0]NLW_ar_wrap_en__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_aw_wrap_en__0_carry_O_UNCONNECTED;
  wire [3:3]\NLW_axi_araddr0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]NLW_axi_araddr3_carry_O_UNCONNECTED;
  wire [3:3]\NLW_axi_awaddr0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]NLW_axi_awaddr3_carry_O_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg 
       (.ADDRARDADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_axi_wdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOBDO_UNCONNECTED [15:8],\mem_data_out[0]_0 [7:0]}),
        .DOPADOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(mem_wren),
        .ENBWREN(axi_arv_arr_flag),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({s00_axi_wstrb[0],s00_axi_wstrb[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wready),
        .O(mem_wren));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_2 
       (.I0(p_0_in_0[7]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[9] ),
        .O(mem_address[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_3 
       (.I0(p_0_in_0[6]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[8] ),
        .O(mem_address[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_4 
       (.I0(p_0_in_0[5]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .O(mem_address[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_5 
       (.I0(p_0_in_0[4]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .O(mem_address[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_6 
       (.I0(p_0_in_0[3]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .O(mem_address[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_7 
       (.I0(p_0_in_0[2]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .O(mem_address[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_8 
       (.I0(p_0_in_0[1]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .O(mem_address[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_9 
       (.I0(p_0_in_0[0]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(mem_address[0]));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg 
       (.ADDRARDADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_axi_wdata[15:8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOBDO_UNCONNECTED [15:8],\mem_data_out[0]_0 [15:8]}),
        .DOPADOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(mem_wren),
        .ENBWREN(axi_arv_arr_flag),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({s00_axi_wstrb[1],s00_axi_wstrb[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg 
       (.ADDRARDADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_axi_wdata[23:16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOBDO_UNCONNECTED [15:8],\mem_data_out[0]_0 [23:16]}),
        .DOPADOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(mem_wren),
        .ENBWREN(axi_arv_arr_flag),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({s00_axi_wstrb[2],s00_axi_wstrb[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg 
       (.ADDRARDADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,mem_address,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_axi_wdata[31:24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOBDO_UNCONNECTED [15:8],\mem_data_out[0]_0 [31:24]}),
        .DOPADOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(mem_wren),
        .ENBWREN(axi_arv_arr_flag),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({s00_axi_wstrb[3],s00_axi_wstrb[3]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  CARRY4 ar_wrap_en__0_carry
       (.CI(1'b0),
        .CO({ar_wrap_en,ar_wrap_en__0_carry_n_1,ar_wrap_en__0_carry_n_2,ar_wrap_en__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ar_wrap_en__0_carry_O_UNCONNECTED[3:0]),
        .S({ar_wrap_en__0_carry_i_1_n_0,ar_wrap_en__0_carry_i_2_n_0,ar_wrap_en__0_carry_i_3_n_0,ar_wrap_en__0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'hD)) 
    ar_wrap_en__0_carry_i_1
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(p_0_in_0[7]),
        .O(ar_wrap_en__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    ar_wrap_en__0_carry_i_2
       (.I0(p_0_in_0[4]),
        .I1(\axi_arlen_reg_n_0_[4] ),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(p_0_in_0[6]),
        .I4(\axi_arlen_reg_n_0_[5] ),
        .I5(p_0_in_0[5]),
        .O(ar_wrap_en__0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    ar_wrap_en__0_carry_i_3
       (.I0(p_0_in_0[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[3] ),
        .I3(p_0_in_0[3]),
        .I4(\axi_arlen_reg_n_0_[2] ),
        .I5(p_0_in_0[2]),
        .O(ar_wrap_en__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    ar_wrap_en__0_carry_i_4
       (.I0(\axi_arlen_reg_n_0_[0] ),
        .I1(p_0_in_0[0]),
        .O(ar_wrap_en__0_carry_i_4_n_0));
  CARRY4 aw_wrap_en__0_carry
       (.CI(1'b0),
        .CO({aw_wrap_en,aw_wrap_en__0_carry_n_1,aw_wrap_en__0_carry_n_2,aw_wrap_en__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_aw_wrap_en__0_carry_O_UNCONNECTED[3:0]),
        .S({aw_wrap_en__0_carry_i_1_n_0,aw_wrap_en__0_carry_i_2_n_0,aw_wrap_en__0_carry_i_3_n_0,aw_wrap_en__0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'hD)) 
    aw_wrap_en__0_carry_i_1
       (.I0(\axi_awlen_reg_n_0_[7] ),
        .I1(\axi_awaddr_reg_n_0_[9] ),
        .O(aw_wrap_en__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    aw_wrap_en__0_carry_i_2
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(\axi_awlen_reg_n_0_[4] ),
        .I2(\axi_awlen_reg_n_0_[6] ),
        .I3(\axi_awaddr_reg_n_0_[8] ),
        .I4(\axi_awlen_reg_n_0_[5] ),
        .I5(\axi_awaddr_reg_n_0_[7] ),
        .O(aw_wrap_en__0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    aw_wrap_en__0_carry_i_3
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awlen_reg_n_0_[1] ),
        .I2(\axi_awlen_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(\axi_awlen_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(aw_wrap_en__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    aw_wrap_en__0_carry_i_4
       (.I0(\axi_awlen_reg_n_0_[0] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .O(aw_wrap_en__0_carry_i_4_n_0));
  CARRY4 \axi_araddr0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry_n_0 ,\axi_araddr0_inferred__0/i__carry_n_1 ,\axi_araddr0_inferred__0/i__carry_n_2 ,\axi_araddr0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,1'b0}),
        .O({\axi_araddr0_inferred__0/i__carry_n_4 ,\axi_araddr0_inferred__0/i__carry_n_5 ,\axi_araddr0_inferred__0/i__carry_n_6 ,\axi_araddr0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0}));
  CARRY4 \axi_araddr0_inferred__0/i__carry__0 
       (.CI(\axi_araddr0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_axi_araddr0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\axi_araddr0_inferred__0/i__carry__0_n_1 ,\axi_araddr0_inferred__0/i__carry__0_n_2 ,\axi_araddr0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0}),
        .O({\axi_araddr0_inferred__0/i__carry__0_n_4 ,\axi_araddr0_inferred__0/i__carry__0_n_5 ,\axi_araddr0_inferred__0/i__carry__0_n_6 ,\axi_araddr0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0}));
  CARRY4 axi_araddr3_carry
       (.CI(1'b0),
        .CO({axi_araddr3,axi_araddr3_carry_n_1,axi_araddr3_carry_n_2,axi_araddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_araddr3_carry_i_1_n_0,axi_araddr3_carry_i_2_n_0,axi_araddr3_carry_i_3_n_0,axi_araddr3_carry_i_4_n_0}),
        .O(NLW_axi_araddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_araddr3_carry_i_5_n_0,axi_araddr3_carry_i_6_n_0,axi_araddr3_carry_i_7_n_0,axi_araddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_1
       (.I0(\axi_arlen_reg_n_0_[6] ),
        .I1(axi_arlen_cntr_reg__0[6]),
        .I2(axi_arlen_cntr_reg__0[7]),
        .I3(\axi_arlen_reg_n_0_[7] ),
        .O(axi_araddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_2
       (.I0(\axi_arlen_reg_n_0_[4] ),
        .I1(axi_arlen_cntr_reg__0[4]),
        .I2(axi_arlen_cntr_reg__0[5]),
        .I3(\axi_arlen_reg_n_0_[5] ),
        .O(axi_araddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_3
       (.I0(\axi_arlen_reg_n_0_[2] ),
        .I1(axi_arlen_cntr_reg__0[2]),
        .I2(axi_arlen_cntr_reg__0[3]),
        .I3(\axi_arlen_reg_n_0_[3] ),
        .O(axi_araddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_4
       (.I0(\axi_arlen_reg_n_0_[0] ),
        .I1(axi_arlen_cntr_reg__0[0]),
        .I2(axi_arlen_cntr_reg__0[1]),
        .I3(\axi_arlen_reg_n_0_[1] ),
        .O(axi_araddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_5
       (.I0(\axi_arlen_reg_n_0_[6] ),
        .I1(axi_arlen_cntr_reg__0[6]),
        .I2(\axi_arlen_reg_n_0_[7] ),
        .I3(axi_arlen_cntr_reg__0[7]),
        .O(axi_araddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_6
       (.I0(\axi_arlen_reg_n_0_[4] ),
        .I1(axi_arlen_cntr_reg__0[4]),
        .I2(\axi_arlen_reg_n_0_[5] ),
        .I3(axi_arlen_cntr_reg__0[5]),
        .O(axi_araddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_7
       (.I0(\axi_arlen_reg_n_0_[2] ),
        .I1(axi_arlen_cntr_reg__0[2]),
        .I2(\axi_arlen_reg_n_0_[3] ),
        .I3(axi_arlen_cntr_reg__0[3]),
        .O(axi_araddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_8
       (.I0(\axi_arlen_reg_n_0_[0] ),
        .I1(axi_arlen_cntr_reg__0[0]),
        .I2(\axi_arlen_reg_n_0_[1] ),
        .I3(axi_arlen_cntr_reg__0[1]),
        .O(axi_araddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hCCCCF055)) 
    \axi_araddr[2]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(s00_axi_araddr[0]),
        .I2(\axi_araddr[2]_i_2_n_0 ),
        .I3(axi_arburst[1]),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666CCCCF000F0FF)) 
    \axi_araddr[2]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(\axi_araddr0_inferred__0/i__carry_n_7 ),
        .I3(ar_wrap_en),
        .I4(p_0_in_0[0]),
        .I5(axi_arburst[0]),
        .O(\axi_araddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF006666)) 
    \axi_araddr[3]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_araddr[1]),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_arburst[1]),
        .I5(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0CFCFC0)) 
    \axi_araddr[3]_i_2 
       (.I0(axi_araddr0[3]),
        .I1(\axi_araddr0_inferred__0/i__carry_n_6 ),
        .I2(ar_wrap_en),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(axi_arburst[0]),
        .O(\axi_araddr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_araddr[4]_i_1 
       (.I0(axi_araddr0[2]),
        .I1(s00_axi_araddr[2]),
        .I2(\axi_araddr[4]_i_3_n_0 ),
        .I3(axi_arburst[1]),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_araddr[4]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .O(axi_araddr0[2]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \axi_araddr[4]_i_3 
       (.I0(axi_araddr0[4]),
        .I1(\axi_araddr0_inferred__0/i__carry_n_5 ),
        .I2(ar_wrap_en),
        .I3(axi_araddr0[2]),
        .I4(axi_arburst[0]),
        .O(\axi_araddr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_araddr[5]_i_1 
       (.I0(axi_araddr0[3]),
        .I1(s00_axi_araddr[3]),
        .I2(\axi_araddr[5]_i_3_n_0 ),
        .I3(axi_arburst[1]),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_araddr[5]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .O(axi_araddr0[3]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \axi_araddr[5]_i_3 
       (.I0(axi_araddr0[5]),
        .I1(\axi_araddr0_inferred__0/i__carry_n_4 ),
        .I2(ar_wrap_en),
        .I3(axi_araddr0[3]),
        .I4(axi_arburst[0]),
        .O(\axi_araddr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_araddr[6]_i_1 
       (.I0(axi_araddr0[4]),
        .I1(s00_axi_araddr[4]),
        .I2(\axi_araddr[6]_i_3_n_0 ),
        .I3(axi_arburst[1]),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_araddr[6]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .O(axi_araddr0[4]));
  LUT6 #(
    .INIT(64'h66666666F0FFF000)) 
    \axi_araddr[6]_i_3 
       (.I0(\axi_araddr[8]_i_2_n_0 ),
        .I1(p_0_in_0[6]),
        .I2(\axi_araddr0_inferred__0/i__carry__0_n_7 ),
        .I3(ar_wrap_en),
        .I4(axi_araddr0[4]),
        .I5(axi_arburst[0]),
        .O(\axi_araddr[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_araddr[7]_i_1 
       (.I0(axi_araddr0[5]),
        .I1(s00_axi_araddr[5]),
        .I2(\axi_araddr[7]_i_3_n_0 ),
        .I3(axi_arburst[1]),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_araddr[7]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[4]),
        .I5(p_0_in_0[5]),
        .O(axi_araddr0[5]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \axi_araddr[7]_i_3 
       (.I0(axi_araddr0[7]),
        .I1(\axi_araddr0_inferred__0/i__carry__0_n_6 ),
        .I2(ar_wrap_en),
        .I3(axi_araddr0[5]),
        .I4(axi_arburst[0]),
        .O(\axi_araddr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF006666)) 
    \axi_araddr[8]_i_1 
       (.I0(\axi_araddr[8]_i_2_n_0 ),
        .I1(p_0_in_0[6]),
        .I2(s00_axi_araddr[6]),
        .I3(\axi_araddr[8]_i_3_n_0 ),
        .I4(axi_arburst[1]),
        .I5(\axi_arlen[7]_i_1_n_0 ),
        .O(\axi_araddr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_araddr[8]_i_2 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[4]),
        .O(\axi_araddr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA000000C0CFCFC0)) 
    \axi_araddr[8]_i_3 
       (.I0(p_0_in_0[7]),
        .I1(\axi_araddr0_inferred__0/i__carry__0_n_5 ),
        .I2(ar_wrap_en),
        .I3(\axi_araddr[8]_i_2_n_0 ),
        .I4(p_0_in_0[6]),
        .I5(axi_arburst[0]),
        .O(\axi_araddr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_araddr[9]_i_1 
       (.I0(\axi_arlen[7]_i_1_n_0 ),
        .I1(axi_arburst[0]),
        .I2(axi_arburst[1]),
        .I3(s00_axi_rready),
        .I4(s00_axi_rvalid),
        .I5(axi_araddr3),
        .O(\axi_araddr[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCCACC)) 
    \axi_araddr[9]_i_2 
       (.I0(s00_axi_araddr[7]),
        .I1(\axi_araddr[9]_i_3_n_0 ),
        .I2(s00_axi_arready),
        .I3(s00_axi_arvalid),
        .I4(axi_arv_arr_flag),
        .O(\axi_araddr[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5050DCF0)) 
    \axi_araddr[9]_i_3 
       (.I0(axi_arburst[1]),
        .I1(\axi_araddr0_inferred__0/i__carry__0_n_4 ),
        .I2(axi_araddr0[7]),
        .I3(ar_wrap_en),
        .I4(axi_arburst[0]),
        .O(\axi_araddr[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_araddr[9]_i_4 
       (.I0(\axi_araddr[8]_i_2_n_0 ),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[7]),
        .O(axi_araddr0[7]));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(p_0_in_0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(p_0_in_0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(p_0_in_0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .D(\axi_araddr[9]_i_2_n_0 ),
        .Q(p_0_in_0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arburst_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arburst[0]),
        .Q(axi_arburst[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arburst_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arburst[1]),
        .Q(axi_arburst[1]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(axi_arv_arr_flag),
        .O(\axi_arlen[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg__0[0]),
        .I1(axi_arlen_cntr_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg__0[0]),
        .I1(axi_arlen_cntr_reg__0[1]),
        .I2(axi_arlen_cntr_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg__0[1]),
        .I1(axi_arlen_cntr_reg__0[0]),
        .I2(axi_arlen_cntr_reg__0[2]),
        .I3(axi_arlen_cntr_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg__0[2]),
        .I1(axi_arlen_cntr_reg__0[0]),
        .I2(axi_arlen_cntr_reg__0[1]),
        .I3(axi_arlen_cntr_reg__0[3]),
        .I4(axi_arlen_cntr_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg__0[3]),
        .I1(axi_arlen_cntr_reg__0[1]),
        .I2(axi_arlen_cntr_reg__0[0]),
        .I3(axi_arlen_cntr_reg__0[2]),
        .I4(axi_arlen_cntr_reg__0[4]),
        .I5(axi_arlen_cntr_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I1(axi_arlen_cntr_reg__0[6]),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(s00_axi_aresetn),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(s00_axi_rready),
        .I1(s00_axi_rvalid),
        .I2(axi_araddr3),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I1(axi_arlen_cntr_reg__0[6]),
        .I2(axi_arlen_cntr_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg__0[5]),
        .I1(axi_arlen_cntr_reg__0[3]),
        .I2(axi_arlen_cntr_reg__0[1]),
        .I3(axi_arlen_cntr_reg__0[0]),
        .I4(axi_arlen_cntr_reg__0[2]),
        .I5(axi_arlen_cntr_reg__0[4]),
        .O(\axi_arlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_arlen_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[0]),
        .Q(axi_arlen_cntr_reg__0[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[1]),
        .Q(axi_arlen_cntr_reg__0[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[2]),
        .Q(axi_arlen_cntr_reg__0[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[3]),
        .Q(axi_arlen_cntr_reg__0[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[4]),
        .Q(axi_arlen_cntr_reg__0[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[5]),
        .Q(axi_arlen_cntr_reg__0[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[6]),
        .Q(axi_arlen_cntr_reg__0[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in__0[7]),
        .Q(axi_arlen_cntr_reg__0[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[0]),
        .Q(\axi_arlen_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[1]),
        .Q(\axi_arlen_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[2]),
        .Q(\axi_arlen_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[3]),
        .Q(\axi_arlen_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[4]),
        .Q(\axi_arlen_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[5]),
        .Q(\axi_arlen_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[6]),
        .Q(\axi_arlen_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(s00_axi_arlen[7]),
        .Q(\axi_arlen_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCCDC0010)) 
    axi_arready_i_1
       (.I0(axi_awv_awr_flag),
        .I1(s00_axi_arready),
        .I2(s00_axi_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready1__0),
        .O(axi_arready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axi_arready_i_2
       (.I0(s00_axi_rready),
        .I1(s00_axi_rvalid),
        .I2(axi_arready2__14),
        .O(axi_arready1__0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    axi_arready_i_3
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg__0[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg__0[6]),
        .I4(axi_arready_i_4_n_0),
        .I5(axi_arready_i_5_n_0),
        .O(axi_arready2__14));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arready_i_4
       (.I0(axi_arlen_cntr_reg__0[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_arlen_reg_n_0_[5] ),
        .I3(axi_arlen_cntr_reg__0[5]),
        .I4(\axi_arlen_reg_n_0_[4] ),
        .I5(axi_arlen_cntr_reg__0[4]),
        .O(axi_arready_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arready_i_5
       (.I0(axi_arlen_cntr_reg__0[0]),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg__0[2]),
        .I4(\axi_arlen_reg_n_0_[1] ),
        .I5(axi_arlen_cntr_reg__0[1]),
        .O(axi_arready_i_5_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0010FF10)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_awv_awr_flag),
        .I1(s00_axi_arready),
        .I2(s00_axi_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready1__0),
        .O(axi_arv_arr_flag_i_1_n_0));
  FDRE axi_arv_arr_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(axi_awready_i_1_n_0));
  CARRY4 \axi_awaddr0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\axi_awaddr0_inferred__0/i__carry_n_0 ,\axi_awaddr0_inferred__0/i__carry_n_1 ,\axi_awaddr0_inferred__0/i__carry_n_2 ,\axi_awaddr0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,1'b0}),
        .O({\axi_awaddr0_inferred__0/i__carry_n_4 ,\axi_awaddr0_inferred__0/i__carry_n_5 ,\axi_awaddr0_inferred__0/i__carry_n_6 ,\axi_awaddr0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  CARRY4 \axi_awaddr0_inferred__0/i__carry__0 
       (.CI(\axi_awaddr0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_axi_awaddr0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\axi_awaddr0_inferred__0/i__carry__0_n_1 ,\axi_awaddr0_inferred__0/i__carry__0_n_2 ,\axi_awaddr0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .O({\axi_awaddr0_inferred__0/i__carry__0_n_4 ,\axi_awaddr0_inferred__0/i__carry__0_n_5 ,\axi_awaddr0_inferred__0/i__carry__0_n_6 ,\axi_awaddr0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0}));
  CARRY4 axi_awaddr3_carry
       (.CI(1'b0),
        .CO({axi_awaddr3,axi_awaddr3_carry_n_1,axi_awaddr3_carry_n_2,axi_awaddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_awaddr3_carry_i_1_n_0,axi_awaddr3_carry_i_2_n_0,axi_awaddr3_carry_i_3_n_0,axi_awaddr3_carry_i_4_n_0}),
        .O(NLW_axi_awaddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_awaddr3_carry_i_5_n_0,axi_awaddr3_carry_i_6_n_0,axi_awaddr3_carry_i_7_n_0,axi_awaddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_1
       (.I0(\axi_awlen_reg_n_0_[6] ),
        .I1(axi_awlen_cntr_reg__0[6]),
        .I2(axi_awlen_cntr_reg__0[7]),
        .I3(\axi_awlen_reg_n_0_[7] ),
        .O(axi_awaddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_2
       (.I0(\axi_awlen_reg_n_0_[4] ),
        .I1(axi_awlen_cntr_reg__0[4]),
        .I2(axi_awlen_cntr_reg__0[5]),
        .I3(\axi_awlen_reg_n_0_[5] ),
        .O(axi_awaddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_3
       (.I0(\axi_awlen_reg_n_0_[2] ),
        .I1(axi_awlen_cntr_reg__0[2]),
        .I2(axi_awlen_cntr_reg__0[3]),
        .I3(\axi_awlen_reg_n_0_[3] ),
        .O(axi_awaddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_4
       (.I0(\axi_awlen_reg_n_0_[0] ),
        .I1(axi_awlen_cntr_reg__0[0]),
        .I2(axi_awlen_cntr_reg__0[1]),
        .I3(\axi_awlen_reg_n_0_[1] ),
        .O(axi_awaddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_5
       (.I0(\axi_awlen_reg_n_0_[6] ),
        .I1(axi_awlen_cntr_reg__0[6]),
        .I2(\axi_awlen_reg_n_0_[7] ),
        .I3(axi_awlen_cntr_reg__0[7]),
        .O(axi_awaddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_6
       (.I0(\axi_awlen_reg_n_0_[4] ),
        .I1(axi_awlen_cntr_reg__0[4]),
        .I2(\axi_awlen_reg_n_0_[5] ),
        .I3(axi_awlen_cntr_reg__0[5]),
        .O(axi_awaddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_7
       (.I0(\axi_awlen_reg_n_0_[2] ),
        .I1(axi_awlen_cntr_reg__0[2]),
        .I2(\axi_awlen_reg_n_0_[3] ),
        .I3(axi_awlen_cntr_reg__0[3]),
        .O(axi_awaddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_8
       (.I0(\axi_awlen_reg_n_0_[0] ),
        .I1(axi_awlen_cntr_reg__0[0]),
        .I2(\axi_awlen_reg_n_0_[1] ),
        .I3(axi_awlen_cntr_reg__0[1]),
        .O(axi_awaddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hCCCCF055)) 
    \axi_awaddr[2]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr[2]_i_2_n_0 ),
        .I3(axi_awburst[1]),
        .I4(p_20_in),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h6666CCCCF000F0FF)) 
    \axi_awaddr[2]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(\axi_awaddr0_inferred__0/i__carry_n_7 ),
        .I3(aw_wrap_en),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(axi_awburst[0]),
        .O(\axi_awaddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF006666)) 
    \axi_awaddr[3]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awaddr[1]),
        .I3(\axi_awaddr[3]_i_2_n_0 ),
        .I4(axi_awburst[1]),
        .I5(p_20_in),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0CFCFC0)) 
    \axi_awaddr[3]_i_2 
       (.I0(p_0_in[5]),
        .I1(\axi_awaddr0_inferred__0/i__carry_n_6 ),
        .I2(aw_wrap_en),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(axi_awburst[0]),
        .O(\axi_awaddr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_awaddr[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(s00_axi_awaddr[2]),
        .I2(\axi_awaddr[4]_i_3_n_0 ),
        .I3(axi_awburst[1]),
        .I4(p_20_in),
        .O(p_2_in[4]));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awaddr[4]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \axi_awaddr[4]_i_3 
       (.I0(p_0_in[6]),
        .I1(\axi_awaddr0_inferred__0/i__carry_n_5 ),
        .I2(aw_wrap_en),
        .I3(p_0_in[4]),
        .I4(axi_awburst[0]),
        .O(\axi_awaddr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_awaddr[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(s00_axi_awaddr[3]),
        .I2(\axi_awaddr[5]_i_3_n_0 ),
        .I3(axi_awburst[1]),
        .I4(p_20_in),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_awaddr[5]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \axi_awaddr[5]_i_3 
       (.I0(p_0_in[7]),
        .I1(\axi_awaddr0_inferred__0/i__carry_n_4 ),
        .I2(aw_wrap_en),
        .I3(p_0_in[5]),
        .I4(axi_awburst[0]),
        .O(\axi_awaddr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_awaddr[6]_i_1 
       (.I0(p_0_in[6]),
        .I1(s00_axi_awaddr[4]),
        .I2(\axi_awaddr[6]_i_3_n_0 ),
        .I3(axi_awburst[1]),
        .I4(p_20_in),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_awaddr[6]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h66666666F0FFF000)) 
    \axi_awaddr[6]_i_3 
       (.I0(\axi_awaddr[8]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[8] ),
        .I2(\axi_awaddr0_inferred__0/i__carry__0_n_7 ),
        .I3(aw_wrap_en),
        .I4(p_0_in[6]),
        .I5(axi_awburst[0]),
        .O(\axi_awaddr[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \axi_awaddr[7]_i_1 
       (.I0(p_0_in[7]),
        .I1(s00_axi_awaddr[5]),
        .I2(\axi_awaddr[7]_i_3_n_0 ),
        .I3(axi_awburst[1]),
        .I4(p_20_in),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_awaddr[7]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .I5(\axi_awaddr_reg_n_0_[7] ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \axi_awaddr[7]_i_3 
       (.I0(p_0_in[9]),
        .I1(\axi_awaddr0_inferred__0/i__carry__0_n_6 ),
        .I2(aw_wrap_en),
        .I3(p_0_in[7]),
        .I4(axi_awburst[0]),
        .O(\axi_awaddr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF006666)) 
    \axi_awaddr[8]_i_1 
       (.I0(\axi_awaddr[8]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[8] ),
        .I2(s00_axi_awaddr[6]),
        .I3(\axi_awaddr[8]_i_3_n_0 ),
        .I4(axi_awburst[1]),
        .I5(p_20_in),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awaddr[8]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[7] ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\axi_awaddr_reg_n_0_[6] ),
        .O(\axi_awaddr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA000000C0CFCFC0)) 
    \axi_awaddr[8]_i_3 
       (.I0(\axi_awaddr_reg_n_0_[9] ),
        .I1(\axi_awaddr0_inferred__0/i__carry__0_n_5 ),
        .I2(aw_wrap_en),
        .I3(\axi_awaddr[8]_i_2_n_0 ),
        .I4(\axi_awaddr_reg_n_0_[8] ),
        .I5(axi_awburst[0]),
        .O(\axi_awaddr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_awaddr[9]_i_1 
       (.I0(p_20_in),
        .I1(axi_awburst[0]),
        .I2(axi_awburst[1]),
        .I3(s00_axi_wready),
        .I4(s00_axi_wvalid),
        .I5(axi_awaddr3),
        .O(\axi_awaddr[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCCACC)) 
    \axi_awaddr[9]_i_2 
       (.I0(s00_axi_awaddr[7]),
        .I1(\axi_awaddr[9]_i_3_n_0 ),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(axi_awv_awr_flag),
        .O(p_2_in[9]));
  LUT5 #(
    .INIT(32'h5050DCF0)) 
    \axi_awaddr[9]_i_3 
       (.I0(axi_awburst[1]),
        .I1(\axi_awaddr0_inferred__0/i__carry__0_n_4 ),
        .I2(p_0_in[9]),
        .I3(aw_wrap_en),
        .I4(axi_awburst[0]),
        .O(\axi_awaddr[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awaddr[9]_i_4 
       (.I0(\axi_awaddr[8]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[8] ),
        .I2(\axi_awaddr_reg_n_0_[9] ),
        .O(p_0_in[9]));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\axi_awaddr_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[9]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\axi_awaddr_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_awburst[1]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(axi_awv_awr_flag),
        .O(p_20_in));
  FDRE \axi_awburst_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awburst[0]),
        .Q(axi_awburst[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awburst_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awburst[1]),
        .Q(axi_awburst[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg__0[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg__0[0]),
        .I1(axi_awlen_cntr_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg__0[0]),
        .I1(axi_awlen_cntr_reg__0[1]),
        .I2(axi_awlen_cntr_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg__0[1]),
        .I1(axi_awlen_cntr_reg__0[0]),
        .I2(axi_awlen_cntr_reg__0[2]),
        .I3(axi_awlen_cntr_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg__0[2]),
        .I1(axi_awlen_cntr_reg__0[0]),
        .I2(axi_awlen_cntr_reg__0[1]),
        .I3(axi_awlen_cntr_reg__0[3]),
        .I4(axi_awlen_cntr_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg__0[3]),
        .I1(axi_awlen_cntr_reg__0[1]),
        .I2(axi_awlen_cntr_reg__0[0]),
        .I3(axi_awlen_cntr_reg__0[2]),
        .I4(axi_awlen_cntr_reg__0[4]),
        .I5(axi_awlen_cntr_reg__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg__0[6]),
        .O(p_0_in__1[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awv_awr_flag),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_aresetn),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .I2(axi_awaddr3),
        .O(axi_awaddr1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg__0[6]),
        .I2(axi_awlen_cntr_reg__0[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg__0[5]),
        .I1(axi_awlen_cntr_reg__0[3]),
        .I2(axi_awlen_cntr_reg__0[1]),
        .I3(axi_awlen_cntr_reg__0[0]),
        .I4(axi_awlen_cntr_reg__0[2]),
        .I5(axi_awlen_cntr_reg__0[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_awlen_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg__0[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[1]),
        .Q(axi_awlen_cntr_reg__0[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[2]),
        .Q(axi_awlen_cntr_reg__0[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[3]),
        .Q(axi_awlen_cntr_reg__0[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[4]),
        .Q(axi_awlen_cntr_reg__0[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[5]),
        .Q(axi_awlen_cntr_reg__0[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[6]),
        .Q(axi_awlen_cntr_reg__0[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__1[7]),
        .Q(axi_awlen_cntr_reg__0[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[0]),
        .Q(\axi_awlen_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[1]),
        .Q(\axi_awlen_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[2]),
        .Q(\axi_awlen_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[3]),
        .Q(\axi_awlen_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[4]),
        .Q(\axi_awlen_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[5]),
        .Q(\axi_awlen_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[6]),
        .Q(\axi_awlen_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_20_in),
        .D(s00_axi_awlen[7]),
        .Q(\axi_awlen_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCDC001000100010)) 
    axi_awready_i_2
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(axi_awv_awr_flag),
        .I4(s00_axi_wready),
        .I5(s00_axi_wlast),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010FF10FF10FF10)) 
    axi_awv_awr_flag_i_1
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(axi_awv_awr_flag),
        .I4(s00_axi_wready),
        .I5(s00_axi_wlast),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE axi_awv_awr_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008000FFFF8000)) 
    axi_bvalid_i_1
       (.I0(axi_awv_awr_flag),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_wlast),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_bready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000F200000000)) 
    axi_rlast_i_1
       (.I0(s00_axi_rlast),
        .I1(s00_axi_rready),
        .I2(axi_rlast0),
        .I3(\axi_arlen[7]_i_1_n_0 ),
        .I4(axi_araddr1),
        .I5(s00_axi_aresetn),
        .O(axi_rlast_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    axi_rlast_i_2
       (.I0(s00_axi_rlast),
        .I1(axi_arready2__14),
        .I2(axi_arv_arr_flag),
        .O(axi_rlast0));
  FDRE axi_rlast_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(s00_axi_rlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_rready),
        .I2(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awv_awr_flag),
        .I2(s00_axi_wready),
        .I3(s00_axi_wlast),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\axi_awaddr_reg_n_0_[7] ),
        .I1(\axi_awlen_reg_n_0_[5] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__0
       (.I0(p_0_in_0[5]),
        .I1(\axi_arlen_reg_n_0_[5] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(\axi_awlen_reg_n_0_[4] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2__0
       (.I0(p_0_in_0[4]),
        .I1(\axi_arlen_reg_n_0_[4] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(\axi_awlen_reg_n_0_[3] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__0
       (.I0(p_0_in_0[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_4
       (.I0(\axi_awlen_reg_n_0_[6] ),
        .I1(\axi_awaddr_reg_n_0_[8] ),
        .I2(\axi_awlen_reg_n_0_[7] ),
        .I3(\axi_awaddr_reg_n_0_[9] ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_4__0
       (.I0(\axi_arlen_reg_n_0_[6] ),
        .I1(p_0_in_0[6]),
        .I2(\axi_arlen_reg_n_0_[7] ),
        .I3(p_0_in_0[7]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5
       (.I0(\axi_awlen_reg_n_0_[5] ),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(\axi_awlen_reg_n_0_[6] ),
        .I3(\axi_awaddr_reg_n_0_[8] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__0
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(p_0_in_0[5]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(p_0_in_0[6]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_6
       (.I0(\axi_awlen_reg_n_0_[4] ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(\axi_awlen_reg_n_0_[5] ),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_6__0
       (.I0(\axi_arlen_reg_n_0_[4] ),
        .I1(p_0_in_0[4]),
        .I2(\axi_arlen_reg_n_0_[5] ),
        .I3(p_0_in_0[5]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_7
       (.I0(\axi_awlen_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awlen_reg_n_0_[4] ),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_7__0
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(p_0_in_0[3]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(p_0_in_0[4]),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(\axi_awlen_reg_n_0_[2] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__0
       (.I0(p_0_in_0[2]),
        .I1(\axi_arlen_reg_n_0_[2] ),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awlen_reg_n_0_[1] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2__0
       (.I0(p_0_in_0[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_3
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(\axi_awlen_reg_n_0_[0] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_3__0
       (.I0(p_0_in_0[0]),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_4
       (.I0(\axi_awlen_reg_n_0_[2] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(\axi_awlen_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_4__0
       (.I0(\axi_arlen_reg_n_0_[2] ),
        .I1(p_0_in_0[2]),
        .I2(\axi_arlen_reg_n_0_[3] ),
        .I3(p_0_in_0[3]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_5
       (.I0(\axi_awlen_reg_n_0_[1] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awlen_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_5__0
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(p_0_in_0[1]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(p_0_in_0[2]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i__carry_i_6
       (.I0(\axi_awlen_reg_n_0_[0] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awlen_reg_n_0_[1] ),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i__carry_i_6__0
       (.I0(\axi_arlen_reg_n_0_[0] ),
        .I1(p_0_in_0[0]),
        .I2(\axi_arlen_reg_n_0_[1] ),
        .I3(p_0_in_0[1]),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(\axi_awlen_reg_n_0_[0] ),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7__0
       (.I0(p_0_in_0[0]),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .O(i__carry_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [0]),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [10]),
        .O(s00_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [11]),
        .O(s00_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [12]),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [13]),
        .O(s00_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [14]),
        .O(s00_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [15]),
        .O(s00_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [16]),
        .O(s00_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [17]),
        .O(s00_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [18]),
        .O(s00_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [19]),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [1]),
        .O(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [20]),
        .O(s00_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [21]),
        .O(s00_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [22]),
        .O(s00_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [23]),
        .O(s00_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [24]),
        .O(s00_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [25]),
        .O(s00_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [26]),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [27]),
        .O(s00_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [28]),
        .O(s00_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [29]),
        .O(s00_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [2]),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [30]),
        .O(s00_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [31]),
        .O(s00_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [3]),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [4]),
        .O(s00_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [5]),
        .O(s00_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [6]),
        .O(s00_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [7]),
        .O(s00_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [8]),
        .O(s00_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(s00_axi_rvalid),
        .I1(\mem_data_out[0]_0 [9]),
        .O(s00_axi_rdata[9]));
endmodule

(* ORIG_REF_NAME = "myip_v1_0_S_AXI_INTR" *) 
module myip_0_myip_v1_0_S_AXI_INTR
   (s_axi_intr_awready,
    s_axi_intr_wready,
    s_axi_intr_arready,
    s_axi_intr_bvalid,
    s_axi_intr_rvalid,
    s_axi_intr_rdata,
    irq,
    s_axi_intr_aclk,
    s_axi_intr_awvalid,
    s_axi_intr_wvalid,
    s_axi_intr_arvalid,
    s_axi_intr_aresetn,
    s_axi_intr_bready,
    s_axi_intr_rready,
    s_axi_intr_wdata,
    s_axi_intr_awaddr,
    s_axi_intr_araddr);
  output s_axi_intr_awready;
  output s_axi_intr_wready;
  output s_axi_intr_arready;
  output s_axi_intr_bvalid;
  output s_axi_intr_rvalid;
  output [0:0]s_axi_intr_rdata;
  output irq;
  input s_axi_intr_aclk;
  input s_axi_intr_awvalid;
  input s_axi_intr_wvalid;
  input s_axi_intr_arvalid;
  input s_axi_intr_aresetn;
  input s_axi_intr_bready;
  input s_axi_intr_rready;
  input [0:0]s_axi_intr_wdata;
  input [2:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_araddr;

  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready_i_1__0_n_0;
  wire [4:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready_i_1__0_n_0;
  wire axi_awready_i_2__0_n_0;
  wire axi_bvalid_i_1__0_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_wready_i_1__0_n_0;
  wire det_intr;
  wire \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0 ;
  wire \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ;
  wire \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ;
  wire \gen_intrall[0].intr_ack_all_i_1_n_0 ;
  wire \gen_intrall[0].intr_all_i_1_n_0 ;
  wire intr__0;
  wire intr_ack_all;
  wire intr_ack_all_ff;
  wire intr_all;
  wire [3:0]intr_counter;
  wire [0:0]intr_counter0__0;
  wire intr_counter0_n_0;
  wire \intr_counter[1]_i_1_n_0 ;
  wire \intr_counter[2]_i_1_n_0 ;
  wire \intr_counter[3]_i_1_n_0 ;
  wire intr_n_0;
  wire irq;
  wire p_1_out;
  wire reg_data_out;
  wire reg_global_intr_en;
  wire reg_intr_ack;
  wire reg_intr_en;
  wire reg_intr_pending;
  wire reg_intr_sts;
  wire s_axi_intr_aclk;
  wire [2:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [2:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]s_axi_intr_rdata;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [0:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire [2:0]sel0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_intr_araddr[0]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_intr_araddr[1]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s_axi_intr_araddr[2]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1__0
       (.I0(s_axi_intr_arvalid),
        .I1(s_axi_intr_arready),
        .O(axi_arready_i_1__0_n_0));
  FDRE axi_arready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(s_axi_intr_arready),
        .R(axi_awready_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_intr_awaddr[0]),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_intr_awaddr[1]),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(s_axi_intr_awaddr[2]),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .I4(axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(axi_awaddr[4]),
        .R(axi_awready_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1__0
       (.I0(s_axi_intr_aresetn),
        .O(axi_awready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2__0
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_awready),
        .O(axi_awready_i_2__0_n_0));
  FDRE axi_awready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2__0_n_0),
        .Q(s_axi_intr_awready),
        .R(axi_awready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1__0
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_wready),
        .I3(s_axi_intr_awready),
        .I4(s_axi_intr_bready),
        .I5(s_axi_intr_bvalid),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(s_axi_intr_bvalid),
        .R(axi_awready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \axi_rdata[0]_i_1 
       (.I0(reg_data_out),
        .I1(s_axi_intr_rvalid),
        .I2(s_axi_intr_arready),
        .I3(s_axi_intr_arvalid),
        .I4(s_axi_intr_rdata),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[0]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(reg_intr_pending),
        .I4(sel0[0]),
        .O(reg_data_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(reg_intr_ack),
        .I1(reg_intr_sts),
        .I2(sel0[1]),
        .I3(reg_intr_en),
        .I4(sel0[0]),
        .I5(reg_global_intr_en),
        .O(\axi_rdata[0]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_intr_rdata),
        .R(axi_awready_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1__0
       (.I0(s_axi_intr_arvalid),
        .I1(s_axi_intr_arready),
        .I2(s_axi_intr_rvalid),
        .I3(s_axi_intr_rready),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(s_axi_intr_rvalid),
        .R(axi_awready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1__0
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_wready),
        .O(axi_wready_i_1__0_n_0));
  FDRE axi_wready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(s_axi_intr_wready),
        .R(axi_awready_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1 
       (.I0(intr__0),
        .I1(det_intr),
        .O(\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0 ));
  FDRE \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0 ),
        .Q(det_intr),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA00)) 
    \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1 
       (.I0(irq),
        .I1(reg_global_intr_en),
        .I2(intr_all),
        .I3(s_axi_intr_aresetn),
        .I4(intr_ack_all),
        .O(\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ));
  FDRE \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ),
        .Q(irq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_intr_reg[0].reg_global_intr_en[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[4]),
        .I3(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ),
        .I4(axi_awaddr[3]),
        .I5(reg_global_intr_en),
        .O(\gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_intr_reg[0].reg_global_intr_en[0]_i_2 
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_wready),
        .I3(s_axi_intr_awready),
        .O(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ));
  FDRE \gen_intr_reg[0].reg_global_intr_en_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ),
        .Q(reg_global_intr_en),
        .R(axi_awready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \gen_intr_reg[0].reg_intr_ack[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .I5(reg_intr_ack),
        .O(\gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_ack_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ),
        .Q(reg_intr_ack),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \gen_intr_reg[0].reg_intr_en[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[2]),
        .I4(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ),
        .I5(reg_intr_en),
        .O(\gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_en_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ),
        .Q(reg_intr_en),
        .R(axi_awready_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_intr_reg[0].reg_intr_pending[0]_i_1 
       (.I0(reg_intr_en),
        .I1(reg_intr_sts),
        .O(p_1_out));
  FDRE \gen_intr_reg[0].reg_intr_pending_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(reg_intr_pending),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_intr_reg[0].reg_intr_sts[0]_i_1 
       (.I0(reg_intr_ack),
        .I1(s_axi_intr_aresetn),
        .O(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_sts_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(det_intr),
        .Q(reg_intr_sts),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_intrall[0].intr_ack_all_i_1 
       (.I0(intr_ack_all),
        .I1(reg_intr_ack),
        .I2(s_axi_intr_aresetn),
        .I3(intr_ack_all_ff),
        .O(\gen_intrall[0].intr_ack_all_i_1_n_0 ));
  FDRE \gen_intrall[0].intr_ack_all_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intrall[0].intr_ack_all_i_1_n_0 ),
        .Q(intr_ack_all),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_intrall[0].intr_all_i_1 
       (.I0(intr_all),
        .I1(reg_intr_pending),
        .I2(s_axi_intr_aresetn),
        .I3(intr_ack_all_ff),
        .O(\gen_intrall[0].intr_all_i_1_n_0 ));
  FDRE \gen_intrall[0].intr_all_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intrall[0].intr_all_i_1_n_0 ),
        .Q(intr_all),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    intr
       (.I0(intr_counter[0]),
        .I1(intr_counter[2]),
        .I2(intr_counter[1]),
        .I3(intr_counter[3]),
        .O(intr_n_0));
  FDRE intr_ack_all_ff_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(intr_ack_all),
        .Q(intr_ack_all_ff),
        .R(axi_awready_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    intr_counter0
       (.I0(intr_counter[1]),
        .I1(intr_counter[0]),
        .I2(intr_counter[2]),
        .I3(intr_counter[3]),
        .O(intr_counter0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \intr_counter[0]_i_1 
       (.I0(intr_counter[0]),
        .O(intr_counter0__0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \intr_counter[1]_i_1 
       (.I0(intr_counter[0]),
        .I1(intr_counter[1]),
        .O(\intr_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \intr_counter[2]_i_1 
       (.I0(intr_counter[1]),
        .I1(intr_counter[0]),
        .I2(intr_counter[2]),
        .O(\intr_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \intr_counter[3]_i_1 
       (.I0(intr_counter[0]),
        .I1(intr_counter[1]),
        .I2(intr_counter[2]),
        .I3(intr_counter[3]),
        .O(\intr_counter[3]_i_1_n_0 ));
  FDSE \intr_counter_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(intr_counter0_n_0),
        .D(intr_counter0__0),
        .Q(intr_counter[0]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \intr_counter_reg[1] 
       (.C(s_axi_intr_aclk),
        .CE(intr_counter0_n_0),
        .D(\intr_counter[1]_i_1_n_0 ),
        .Q(intr_counter[1]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \intr_counter_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(intr_counter0_n_0),
        .D(\intr_counter[2]_i_1_n_0 ),
        .Q(intr_counter[2]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \intr_counter_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(intr_counter0_n_0),
        .D(\intr_counter[3]_i_1_n_0 ),
        .Q(intr_counter[3]),
        .S(axi_awready_i_1__0_n_0));
  FDRE \intr_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(intr_n_0),
        .Q(intr__0),
        .R(axi_awready_i_1__0_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
