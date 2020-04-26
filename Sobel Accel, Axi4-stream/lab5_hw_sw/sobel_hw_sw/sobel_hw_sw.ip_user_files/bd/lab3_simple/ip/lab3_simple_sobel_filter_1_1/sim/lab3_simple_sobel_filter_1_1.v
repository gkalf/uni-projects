// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:sobel_filter:1.0
// IP Revision: 2004261841

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module lab3_simple_sobel_filter_1_1 (
  s_axi_ctrl_bus_AWADDR,
  s_axi_ctrl_bus_AWVALID,
  s_axi_ctrl_bus_AWREADY,
  s_axi_ctrl_bus_WDATA,
  s_axi_ctrl_bus_WSTRB,
  s_axi_ctrl_bus_WVALID,
  s_axi_ctrl_bus_WREADY,
  s_axi_ctrl_bus_BRESP,
  s_axi_ctrl_bus_BVALID,
  s_axi_ctrl_bus_BREADY,
  s_axi_ctrl_bus_ARADDR,
  s_axi_ctrl_bus_ARVALID,
  s_axi_ctrl_bus_ARREADY,
  s_axi_ctrl_bus_RDATA,
  s_axi_ctrl_bus_RRESP,
  s_axi_ctrl_bus_RVALID,
  s_axi_ctrl_bus_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  INPUT_IMAGE_TVALID,
  INPUT_IMAGE_TREADY,
  INPUT_IMAGE_TDATA,
  INPUT_IMAGE_TDEST,
  INPUT_IMAGE_TKEEP,
  INPUT_IMAGE_TSTRB,
  INPUT_IMAGE_TUSER,
  INPUT_IMAGE_TLAST,
  INPUT_IMAGE_TID,
  OUTPUT_IMAGE_TVALID,
  OUTPUT_IMAGE_TREADY,
  OUTPUT_IMAGE_TDATA,
  OUTPUT_IMAGE_TDEST,
  OUTPUT_IMAGE_TKEEP,
  OUTPUT_IMAGE_TSTRB,
  OUTPUT_IMAGE_TUSER,
  OUTPUT_IMAGE_TLAST,
  OUTPUT_IMAGE_TID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWADDR" *)
input wire [3 : 0] s_axi_ctrl_bus_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWVALID" *)
input wire s_axi_ctrl_bus_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWREADY" *)
output wire s_axi_ctrl_bus_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WDATA" *)
input wire [31 : 0] s_axi_ctrl_bus_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WSTRB" *)
input wire [3 : 0] s_axi_ctrl_bus_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WVALID" *)
input wire s_axi_ctrl_bus_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WREADY" *)
output wire s_axi_ctrl_bus_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BRESP" *)
output wire [1 : 0] s_axi_ctrl_bus_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BVALID" *)
output wire s_axi_ctrl_bus_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BREADY" *)
input wire s_axi_ctrl_bus_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARADDR" *)
input wire [3 : 0] s_axi_ctrl_bus_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARVALID" *)
input wire s_axi_ctrl_bus_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARREADY" *)
output wire s_axi_ctrl_bus_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RDATA" *)
output wire [31 : 0] s_axi_ctrl_bus_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RRESP" *)
output wire [1 : 0] s_axi_ctrl_bus_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RVALID" *)
output wire s_axi_ctrl_bus_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_bus, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, NUM_R\
EAD_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RREADY" *)
input wire s_axi_ctrl_bus_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl_bus:INPUT_IMAGE:OUTPUT_IMAGE, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TVALID" *)
input wire INPUT_IMAGE_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TREADY" *)
output wire INPUT_IMAGE_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TDATA" *)
input wire [7 : 0] INPUT_IMAGE_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TDEST" *)
input wire [5 : 0] INPUT_IMAGE_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TKEEP" *)
input wire [0 : 0] INPUT_IMAGE_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TSTRB" *)
input wire [0 : 0] INPUT_IMAGE_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TUSER" *)
input wire [1 : 0] INPUT_IMAGE_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TLAST" *)
input wire [0 : 0] INPUT_IMAGE_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INPUT_IMAGE, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TID" *)
input wire [4 : 0] INPUT_IMAGE_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TVALID" *)
output wire OUTPUT_IMAGE_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TREADY" *)
input wire OUTPUT_IMAGE_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TDATA" *)
output wire [7 : 0] OUTPUT_IMAGE_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TDEST" *)
output wire [5 : 0] OUTPUT_IMAGE_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TKEEP" *)
output wire [0 : 0] OUTPUT_IMAGE_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TSTRB" *)
output wire [0 : 0] OUTPUT_IMAGE_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TUSER" *)
output wire [1 : 0] OUTPUT_IMAGE_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TLAST" *)
output wire [0 : 0] OUTPUT_IMAGE_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OUTPUT_IMAGE, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TID" *)
output wire [4 : 0] OUTPUT_IMAGE_TID;

  sobel_filter #(
    .C_S_AXI_CTRL_BUS_ADDR_WIDTH(4),
    .C_S_AXI_CTRL_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_ctrl_bus_AWADDR(s_axi_ctrl_bus_AWADDR),
    .s_axi_ctrl_bus_AWVALID(s_axi_ctrl_bus_AWVALID),
    .s_axi_ctrl_bus_AWREADY(s_axi_ctrl_bus_AWREADY),
    .s_axi_ctrl_bus_WDATA(s_axi_ctrl_bus_WDATA),
    .s_axi_ctrl_bus_WSTRB(s_axi_ctrl_bus_WSTRB),
    .s_axi_ctrl_bus_WVALID(s_axi_ctrl_bus_WVALID),
    .s_axi_ctrl_bus_WREADY(s_axi_ctrl_bus_WREADY),
    .s_axi_ctrl_bus_BRESP(s_axi_ctrl_bus_BRESP),
    .s_axi_ctrl_bus_BVALID(s_axi_ctrl_bus_BVALID),
    .s_axi_ctrl_bus_BREADY(s_axi_ctrl_bus_BREADY),
    .s_axi_ctrl_bus_ARADDR(s_axi_ctrl_bus_ARADDR),
    .s_axi_ctrl_bus_ARVALID(s_axi_ctrl_bus_ARVALID),
    .s_axi_ctrl_bus_ARREADY(s_axi_ctrl_bus_ARREADY),
    .s_axi_ctrl_bus_RDATA(s_axi_ctrl_bus_RDATA),
    .s_axi_ctrl_bus_RRESP(s_axi_ctrl_bus_RRESP),
    .s_axi_ctrl_bus_RVALID(s_axi_ctrl_bus_RVALID),
    .s_axi_ctrl_bus_RREADY(s_axi_ctrl_bus_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .INPUT_IMAGE_TVALID(INPUT_IMAGE_TVALID),
    .INPUT_IMAGE_TREADY(INPUT_IMAGE_TREADY),
    .INPUT_IMAGE_TDATA(INPUT_IMAGE_TDATA),
    .INPUT_IMAGE_TDEST(INPUT_IMAGE_TDEST),
    .INPUT_IMAGE_TKEEP(INPUT_IMAGE_TKEEP),
    .INPUT_IMAGE_TSTRB(INPUT_IMAGE_TSTRB),
    .INPUT_IMAGE_TUSER(INPUT_IMAGE_TUSER),
    .INPUT_IMAGE_TLAST(INPUT_IMAGE_TLAST),
    .INPUT_IMAGE_TID(INPUT_IMAGE_TID),
    .OUTPUT_IMAGE_TVALID(OUTPUT_IMAGE_TVALID),
    .OUTPUT_IMAGE_TREADY(OUTPUT_IMAGE_TREADY),
    .OUTPUT_IMAGE_TDATA(OUTPUT_IMAGE_TDATA),
    .OUTPUT_IMAGE_TDEST(OUTPUT_IMAGE_TDEST),
    .OUTPUT_IMAGE_TKEEP(OUTPUT_IMAGE_TKEEP),
    .OUTPUT_IMAGE_TSTRB(OUTPUT_IMAGE_TSTRB),
    .OUTPUT_IMAGE_TUSER(OUTPUT_IMAGE_TUSER),
    .OUTPUT_IMAGE_TLAST(OUTPUT_IMAGE_TLAST),
    .OUTPUT_IMAGE_TID(OUTPUT_IMAGE_TID)
  );
endmodule
