// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 26 18:46:39 2020
// Host        : DESKTOP-KE3UBO5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab3_simple_sobel_filter_1_1_sim_netlist.v
// Design      : lab3_simple_sobel_filter_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab3_simple_sobel_filter_1_1,sobel_filter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "sobel_filter,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_ctrl_bus_AWADDR,
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
    OUTPUT_IMAGE_TID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWADDR" *) input [3:0]s_axi_ctrl_bus_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWVALID" *) input s_axi_ctrl_bus_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWREADY" *) output s_axi_ctrl_bus_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WDATA" *) input [31:0]s_axi_ctrl_bus_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WSTRB" *) input [3:0]s_axi_ctrl_bus_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WVALID" *) input s_axi_ctrl_bus_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WREADY" *) output s_axi_ctrl_bus_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BRESP" *) output [1:0]s_axi_ctrl_bus_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BVALID" *) output s_axi_ctrl_bus_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BREADY" *) input s_axi_ctrl_bus_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARADDR" *) input [3:0]s_axi_ctrl_bus_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARVALID" *) input s_axi_ctrl_bus_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARREADY" *) output s_axi_ctrl_bus_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RDATA" *) output [31:0]s_axi_ctrl_bus_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RRESP" *) output [1:0]s_axi_ctrl_bus_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RVALID" *) output s_axi_ctrl_bus_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_bus, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_bus_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl_bus:INPUT_IMAGE:OUTPUT_IMAGE, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TVALID" *) input INPUT_IMAGE_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TREADY" *) output INPUT_IMAGE_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TDATA" *) input [7:0]INPUT_IMAGE_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TDEST" *) input [5:0]INPUT_IMAGE_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TKEEP" *) input [0:0]INPUT_IMAGE_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TSTRB" *) input [0:0]INPUT_IMAGE_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TUSER" *) input [1:0]INPUT_IMAGE_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TLAST" *) input [0:0]INPUT_IMAGE_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_IMAGE TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INPUT_IMAGE, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input [4:0]INPUT_IMAGE_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TVALID" *) output OUTPUT_IMAGE_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TREADY" *) input OUTPUT_IMAGE_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TDATA" *) output [7:0]OUTPUT_IMAGE_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TDEST" *) output [5:0]OUTPUT_IMAGE_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TKEEP" *) output [0:0]OUTPUT_IMAGE_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TSTRB" *) output [0:0]OUTPUT_IMAGE_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TUSER" *) output [1:0]OUTPUT_IMAGE_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TLAST" *) output [0:0]OUTPUT_IMAGE_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OUTPUT_IMAGE, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) output [4:0]OUTPUT_IMAGE_TID;

  wire [7:0]INPUT_IMAGE_TDATA;
  wire [5:0]INPUT_IMAGE_TDEST;
  wire [4:0]INPUT_IMAGE_TID;
  wire [0:0]INPUT_IMAGE_TKEEP;
  wire [0:0]INPUT_IMAGE_TLAST;
  wire INPUT_IMAGE_TREADY;
  wire [0:0]INPUT_IMAGE_TSTRB;
  wire [1:0]INPUT_IMAGE_TUSER;
  wire INPUT_IMAGE_TVALID;
  wire [7:0]OUTPUT_IMAGE_TDATA;
  wire [5:0]OUTPUT_IMAGE_TDEST;
  wire [4:0]OUTPUT_IMAGE_TID;
  wire [0:0]OUTPUT_IMAGE_TKEEP;
  wire [0:0]OUTPUT_IMAGE_TLAST;
  wire OUTPUT_IMAGE_TREADY;
  wire [0:0]OUTPUT_IMAGE_TSTRB;
  wire [1:0]OUTPUT_IMAGE_TUSER;
  wire OUTPUT_IMAGE_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]s_axi_ctrl_bus_ARADDR;
  wire s_axi_ctrl_bus_ARREADY;
  wire s_axi_ctrl_bus_ARVALID;
  wire [3:0]s_axi_ctrl_bus_AWADDR;
  wire s_axi_ctrl_bus_AWREADY;
  wire s_axi_ctrl_bus_AWVALID;
  wire s_axi_ctrl_bus_BREADY;
  wire [1:0]s_axi_ctrl_bus_BRESP;
  wire s_axi_ctrl_bus_BVALID;
  wire [31:0]s_axi_ctrl_bus_RDATA;
  wire s_axi_ctrl_bus_RREADY;
  wire [1:0]s_axi_ctrl_bus_RRESP;
  wire s_axi_ctrl_bus_RVALID;
  wire [31:0]s_axi_ctrl_bus_WDATA;
  wire s_axi_ctrl_bus_WREADY;
  wire [3:0]s_axi_ctrl_bus_WSTRB;
  wire s_axi_ctrl_bus_WVALID;

  (* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_state1 = "12'b000000000001" *) 
  (* ap_ST_fsm_state10 = "12'b001000000000" *) 
  (* ap_ST_fsm_state11 = "12'b010000000000" *) 
  (* ap_ST_fsm_state12 = "12'b100000000000" *) 
  (* ap_ST_fsm_state2 = "12'b000000000010" *) 
  (* ap_ST_fsm_state3 = "12'b000000000100" *) 
  (* ap_ST_fsm_state4 = "12'b000000001000" *) 
  (* ap_ST_fsm_state5 = "12'b000000010000" *) 
  (* ap_ST_fsm_state6 = "12'b000000100000" *) 
  (* ap_ST_fsm_state7 = "12'b000001000000" *) 
  (* ap_ST_fsm_state8 = "12'b000010000000" *) 
  (* ap_ST_fsm_state9 = "12'b000100000000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter inst
       (.INPUT_IMAGE_TDATA(INPUT_IMAGE_TDATA),
        .INPUT_IMAGE_TDEST(INPUT_IMAGE_TDEST),
        .INPUT_IMAGE_TID(INPUT_IMAGE_TID),
        .INPUT_IMAGE_TKEEP(INPUT_IMAGE_TKEEP),
        .INPUT_IMAGE_TLAST(INPUT_IMAGE_TLAST),
        .INPUT_IMAGE_TREADY(INPUT_IMAGE_TREADY),
        .INPUT_IMAGE_TSTRB(INPUT_IMAGE_TSTRB),
        .INPUT_IMAGE_TUSER(INPUT_IMAGE_TUSER),
        .INPUT_IMAGE_TVALID(INPUT_IMAGE_TVALID),
        .OUTPUT_IMAGE_TDATA(OUTPUT_IMAGE_TDATA),
        .OUTPUT_IMAGE_TDEST(OUTPUT_IMAGE_TDEST),
        .OUTPUT_IMAGE_TID(OUTPUT_IMAGE_TID),
        .OUTPUT_IMAGE_TKEEP(OUTPUT_IMAGE_TKEEP),
        .OUTPUT_IMAGE_TLAST(OUTPUT_IMAGE_TLAST),
        .OUTPUT_IMAGE_TREADY(OUTPUT_IMAGE_TREADY),
        .OUTPUT_IMAGE_TSTRB(OUTPUT_IMAGE_TSTRB),
        .OUTPUT_IMAGE_TUSER(OUTPUT_IMAGE_TUSER),
        .OUTPUT_IMAGE_TVALID(OUTPUT_IMAGE_TVALID),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_ctrl_bus_ARADDR(s_axi_ctrl_bus_ARADDR),
        .s_axi_ctrl_bus_ARREADY(s_axi_ctrl_bus_ARREADY),
        .s_axi_ctrl_bus_ARVALID(s_axi_ctrl_bus_ARVALID),
        .s_axi_ctrl_bus_AWADDR(s_axi_ctrl_bus_AWADDR),
        .s_axi_ctrl_bus_AWREADY(s_axi_ctrl_bus_AWREADY),
        .s_axi_ctrl_bus_AWVALID(s_axi_ctrl_bus_AWVALID),
        .s_axi_ctrl_bus_BREADY(s_axi_ctrl_bus_BREADY),
        .s_axi_ctrl_bus_BRESP(s_axi_ctrl_bus_BRESP),
        .s_axi_ctrl_bus_BVALID(s_axi_ctrl_bus_BVALID),
        .s_axi_ctrl_bus_RDATA(s_axi_ctrl_bus_RDATA),
        .s_axi_ctrl_bus_RREADY(s_axi_ctrl_bus_RREADY),
        .s_axi_ctrl_bus_RRESP(s_axi_ctrl_bus_RRESP),
        .s_axi_ctrl_bus_RVALID(s_axi_ctrl_bus_RVALID),
        .s_axi_ctrl_bus_WDATA(s_axi_ctrl_bus_WDATA),
        .s_axi_ctrl_bus_WREADY(s_axi_ctrl_bus_WREADY),
        .s_axi_ctrl_bus_WSTRB(s_axi_ctrl_bus_WSTRB),
        .s_axi_ctrl_bus_WVALID(s_axi_ctrl_bus_WVALID));
endmodule

(* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "12'b000000000001" *) 
(* ap_ST_fsm_state10 = "12'b001000000000" *) (* ap_ST_fsm_state11 = "12'b010000000000" *) (* ap_ST_fsm_state12 = "12'b100000000000" *) 
(* ap_ST_fsm_state2 = "12'b000000000010" *) (* ap_ST_fsm_state3 = "12'b000000000100" *) (* ap_ST_fsm_state4 = "12'b000000001000" *) 
(* ap_ST_fsm_state5 = "12'b000000010000" *) (* ap_ST_fsm_state6 = "12'b000000100000" *) (* ap_ST_fsm_state7 = "12'b000001000000" *) 
(* ap_ST_fsm_state8 = "12'b000010000000" *) (* ap_ST_fsm_state9 = "12'b000100000000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter
   (ap_clk,
    ap_rst_n,
    INPUT_IMAGE_TDATA,
    INPUT_IMAGE_TVALID,
    INPUT_IMAGE_TREADY,
    INPUT_IMAGE_TKEEP,
    INPUT_IMAGE_TSTRB,
    INPUT_IMAGE_TUSER,
    INPUT_IMAGE_TLAST,
    INPUT_IMAGE_TID,
    INPUT_IMAGE_TDEST,
    OUTPUT_IMAGE_TDATA,
    OUTPUT_IMAGE_TVALID,
    OUTPUT_IMAGE_TREADY,
    OUTPUT_IMAGE_TKEEP,
    OUTPUT_IMAGE_TSTRB,
    OUTPUT_IMAGE_TUSER,
    OUTPUT_IMAGE_TLAST,
    OUTPUT_IMAGE_TID,
    OUTPUT_IMAGE_TDEST,
    s_axi_ctrl_bus_AWVALID,
    s_axi_ctrl_bus_AWREADY,
    s_axi_ctrl_bus_AWADDR,
    s_axi_ctrl_bus_WVALID,
    s_axi_ctrl_bus_WREADY,
    s_axi_ctrl_bus_WDATA,
    s_axi_ctrl_bus_WSTRB,
    s_axi_ctrl_bus_ARVALID,
    s_axi_ctrl_bus_ARREADY,
    s_axi_ctrl_bus_ARADDR,
    s_axi_ctrl_bus_RVALID,
    s_axi_ctrl_bus_RREADY,
    s_axi_ctrl_bus_RDATA,
    s_axi_ctrl_bus_RRESP,
    s_axi_ctrl_bus_BVALID,
    s_axi_ctrl_bus_BREADY,
    s_axi_ctrl_bus_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [7:0]INPUT_IMAGE_TDATA;
  input INPUT_IMAGE_TVALID;
  output INPUT_IMAGE_TREADY;
  input [0:0]INPUT_IMAGE_TKEEP;
  input [0:0]INPUT_IMAGE_TSTRB;
  input [1:0]INPUT_IMAGE_TUSER;
  input [0:0]INPUT_IMAGE_TLAST;
  input [4:0]INPUT_IMAGE_TID;
  input [5:0]INPUT_IMAGE_TDEST;
  output [7:0]OUTPUT_IMAGE_TDATA;
  output OUTPUT_IMAGE_TVALID;
  input OUTPUT_IMAGE_TREADY;
  output [0:0]OUTPUT_IMAGE_TKEEP;
  output [0:0]OUTPUT_IMAGE_TSTRB;
  output [1:0]OUTPUT_IMAGE_TUSER;
  output [0:0]OUTPUT_IMAGE_TLAST;
  output [4:0]OUTPUT_IMAGE_TID;
  output [5:0]OUTPUT_IMAGE_TDEST;
  input s_axi_ctrl_bus_AWVALID;
  output s_axi_ctrl_bus_AWREADY;
  input [3:0]s_axi_ctrl_bus_AWADDR;
  input s_axi_ctrl_bus_WVALID;
  output s_axi_ctrl_bus_WREADY;
  input [31:0]s_axi_ctrl_bus_WDATA;
  input [3:0]s_axi_ctrl_bus_WSTRB;
  input s_axi_ctrl_bus_ARVALID;
  output s_axi_ctrl_bus_ARREADY;
  input [3:0]s_axi_ctrl_bus_ARADDR;
  output s_axi_ctrl_bus_RVALID;
  input s_axi_ctrl_bus_RREADY;
  output [31:0]s_axi_ctrl_bus_RDATA;
  output [1:0]s_axi_ctrl_bus_RRESP;
  output s_axi_ctrl_bus_BVALID;
  input s_axi_ctrl_bus_BREADY;
  output [1:0]s_axi_ctrl_bus_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [7:0]INPUT_IMAGE_TDATA;
  wire [5:0]INPUT_IMAGE_TDEST;
  wire [4:0]INPUT_IMAGE_TID;
  wire [0:0]INPUT_IMAGE_TKEEP;
  wire INPUT_IMAGE_TREADY;
  wire [0:0]INPUT_IMAGE_TSTRB;
  wire [1:0]INPUT_IMAGE_TUSER;
  wire INPUT_IMAGE_TVALID;
  wire INPUT_IMAGE_V_data_V_0_ack_in;
  wire [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  wire INPUT_IMAGE_V_data_V_0_load_A;
  wire INPUT_IMAGE_V_data_V_0_load_B;
  wire [7:0]INPUT_IMAGE_V_data_V_0_payload_A;
  wire [7:0]INPUT_IMAGE_V_data_V_0_payload_B;
  wire INPUT_IMAGE_V_data_V_0_sel;
  wire INPUT_IMAGE_V_data_V_0_sel_rd_i_1_n_3;
  wire INPUT_IMAGE_V_data_V_0_sel_wr;
  wire INPUT_IMAGE_V_data_V_0_sel_wr_i_1_n_3;
  wire [1:1]INPUT_IMAGE_V_data_V_0_state;
  wire \INPUT_IMAGE_V_data_V_0_state[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ;
  wire [5:0]INPUT_IMAGE_V_dest_V_0_data_out;
  wire INPUT_IMAGE_V_dest_V_0_load_A;
  wire INPUT_IMAGE_V_dest_V_0_load_B;
  wire [5:0]INPUT_IMAGE_V_dest_V_0_payload_A;
  wire [5:0]INPUT_IMAGE_V_dest_V_0_payload_B;
  wire INPUT_IMAGE_V_dest_V_0_sel;
  wire INPUT_IMAGE_V_dest_V_0_sel_rd_i_1_n_3;
  wire INPUT_IMAGE_V_dest_V_0_sel_wr;
  wire INPUT_IMAGE_V_dest_V_0_sel_wr_i_1_n_3;
  wire [1:1]INPUT_IMAGE_V_dest_V_0_state;
  wire \INPUT_IMAGE_V_dest_V_0_state[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ;
  wire \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ;
  wire INPUT_IMAGE_V_id_V_0_ack_in;
  wire [4:0]INPUT_IMAGE_V_id_V_0_data_out;
  wire INPUT_IMAGE_V_id_V_0_load_A;
  wire INPUT_IMAGE_V_id_V_0_load_B;
  wire [4:0]INPUT_IMAGE_V_id_V_0_payload_A;
  wire [4:0]INPUT_IMAGE_V_id_V_0_payload_B;
  wire INPUT_IMAGE_V_id_V_0_sel;
  wire INPUT_IMAGE_V_id_V_0_sel_rd_i_1_n_3;
  wire INPUT_IMAGE_V_id_V_0_sel_wr;
  wire INPUT_IMAGE_V_id_V_0_sel_wr_i_1_n_3;
  wire [1:1]INPUT_IMAGE_V_id_V_0_state;
  wire \INPUT_IMAGE_V_id_V_0_state[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ;
  wire INPUT_IMAGE_V_keep_V_0_ack_in;
  wire INPUT_IMAGE_V_keep_V_0_data_out;
  wire INPUT_IMAGE_V_keep_V_0_payload_A;
  wire \INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1_n_3 ;
  wire INPUT_IMAGE_V_keep_V_0_payload_B;
  wire \INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1_n_3 ;
  wire INPUT_IMAGE_V_keep_V_0_sel;
  wire INPUT_IMAGE_V_keep_V_0_sel_rd_i_1_n_3;
  wire INPUT_IMAGE_V_keep_V_0_sel_wr;
  wire INPUT_IMAGE_V_keep_V_0_sel_wr_i_1_n_3;
  wire [1:1]INPUT_IMAGE_V_keep_V_0_state;
  wire \INPUT_IMAGE_V_keep_V_0_state[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ;
  wire INPUT_IMAGE_V_strb_V_0_ack_in;
  wire INPUT_IMAGE_V_strb_V_0_data_out;
  wire INPUT_IMAGE_V_strb_V_0_payload_A;
  wire \INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1_n_3 ;
  wire INPUT_IMAGE_V_strb_V_0_payload_B;
  wire \INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1_n_3 ;
  wire INPUT_IMAGE_V_strb_V_0_sel;
  wire INPUT_IMAGE_V_strb_V_0_sel_rd_i_1_n_3;
  wire INPUT_IMAGE_V_strb_V_0_sel_wr;
  wire INPUT_IMAGE_V_strb_V_0_sel_wr_i_1_n_3;
  wire [1:1]INPUT_IMAGE_V_strb_V_0_state;
  wire \INPUT_IMAGE_V_strb_V_0_state[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ;
  wire INPUT_IMAGE_V_user_V_0_ack_in;
  wire [1:0]INPUT_IMAGE_V_user_V_0_data_out;
  wire [1:0]INPUT_IMAGE_V_user_V_0_payload_A;
  wire \INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1_n_3 ;
  wire [1:0]INPUT_IMAGE_V_user_V_0_payload_B;
  wire \INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1_n_3 ;
  wire INPUT_IMAGE_V_user_V_0_sel;
  wire INPUT_IMAGE_V_user_V_0_sel_rd_i_1_n_3;
  wire INPUT_IMAGE_V_user_V_0_sel_wr;
  wire INPUT_IMAGE_V_user_V_0_sel_wr_i_1_n_3;
  wire [1:1]INPUT_IMAGE_V_user_V_0_state;
  wire \INPUT_IMAGE_V_user_V_0_state[0]_i_1_n_3 ;
  wire \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ;
  wire [7:0]OUTPUT_IMAGE_TDATA;
  wire [5:0]OUTPUT_IMAGE_TDEST;
  wire [4:0]OUTPUT_IMAGE_TID;
  wire [0:0]OUTPUT_IMAGE_TKEEP;
  wire [0:0]OUTPUT_IMAGE_TLAST;
  wire OUTPUT_IMAGE_TREADY;
  wire [0:0]OUTPUT_IMAGE_TSTRB;
  wire [1:0]OUTPUT_IMAGE_TUSER;
  wire OUTPUT_IMAGE_TVALID;
  wire OUTPUT_IMAGE_V_data_V_1_ack_in;
  wire OUTPUT_IMAGE_V_data_V_1_load_A;
  wire OUTPUT_IMAGE_V_data_V_1_load_B;
  wire [7:0]OUTPUT_IMAGE_V_data_V_1_payload_A;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_10 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_7 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_8 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_9 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_10 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_7 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_8 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_9 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_6 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_4 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_5 ;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_6 ;
  wire [7:0]OUTPUT_IMAGE_V_data_V_1_payload_B;
  wire \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ;
  wire OUTPUT_IMAGE_V_data_V_1_sel;
  wire OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_data_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1_n_3;
  wire [1:1]OUTPUT_IMAGE_V_data_V_1_state;
  wire \OUTPUT_IMAGE_V_data_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ;
  wire OUTPUT_IMAGE_V_dest_V_1_ack_in;
  wire [5:0]OUTPUT_IMAGE_V_dest_V_1_data_in;
  wire OUTPUT_IMAGE_V_dest_V_1_load_A;
  wire OUTPUT_IMAGE_V_dest_V_1_load_B;
  wire [5:0]OUTPUT_IMAGE_V_dest_V_1_payload_A;
  wire [5:0]OUTPUT_IMAGE_V_dest_V_1_payload_B;
  wire OUTPUT_IMAGE_V_dest_V_1_sel;
  wire OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_dest_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1_n_3;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2_n_3 ;
  wire OUTPUT_IMAGE_V_id_V_1_ack_in;
  wire [4:0]OUTPUT_IMAGE_V_id_V_1_data_in;
  wire OUTPUT_IMAGE_V_id_V_1_load_A;
  wire OUTPUT_IMAGE_V_id_V_1_load_B;
  wire [4:0]OUTPUT_IMAGE_V_id_V_1_payload_A;
  wire [4:0]OUTPUT_IMAGE_V_id_V_1_payload_B;
  wire OUTPUT_IMAGE_V_id_V_1_sel;
  wire OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_id_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1_n_3;
  wire \OUTPUT_IMAGE_V_id_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_id_V_1_state[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_id_V_1_state[1]_i_3_n_3 ;
  wire \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ;
  wire OUTPUT_IMAGE_V_keep_V_1_ack_in;
  wire OUTPUT_IMAGE_V_keep_V_1_payload_A;
  wire \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3 ;
  wire OUTPUT_IMAGE_V_keep_V_1_payload_B;
  wire \OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1_n_3 ;
  wire OUTPUT_IMAGE_V_keep_V_1_sel;
  wire OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_keep_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1_n_3;
  wire \OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0] ;
  wire OUTPUT_IMAGE_V_last_V_1_ack_in;
  wire OUTPUT_IMAGE_V_last_V_1_payload_A;
  wire \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3_n_3 ;
  wire OUTPUT_IMAGE_V_last_V_1_payload_B;
  wire \OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1_n_3 ;
  wire OUTPUT_IMAGE_V_last_V_1_sel;
  wire OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_last_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1_n_3;
  wire \OUTPUT_IMAGE_V_last_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_last_V_1_state[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_last_V_1_state[1]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ;
  wire OUTPUT_IMAGE_V_strb_V_1_ack_in;
  wire OUTPUT_IMAGE_V_strb_V_1_payload_A;
  wire \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3 ;
  wire OUTPUT_IMAGE_V_strb_V_1_payload_B;
  wire \OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1_n_3 ;
  wire OUTPUT_IMAGE_V_strb_V_1_sel;
  wire OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_strb_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1_n_3;
  wire \OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ;
  wire OUTPUT_IMAGE_V_user_V_1_ack_in;
  wire [1:0]OUTPUT_IMAGE_V_user_V_1_payload_A;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6_n_3 ;
  wire [1:0]OUTPUT_IMAGE_V_user_V_1_payload_B;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1_n_3 ;
  wire OUTPUT_IMAGE_V_user_V_1_sel;
  wire OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1_n_3;
  wire OUTPUT_IMAGE_V_user_V_1_sel_wr;
  wire OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1_n_3;
  wire \OUTPUT_IMAGE_V_user_V_1_state[0]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_state[1]_i_1_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_state[1]_i_2_n_3 ;
  wire \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ;
  wire [20:0]add_ln34_1_fu_596_p2;
  wire [20:0]add_ln34_1_reg_1564;
  wire \add_ln34_1_reg_1564_reg[12]_i_1_n_3 ;
  wire \add_ln34_1_reg_1564_reg[12]_i_1_n_4 ;
  wire \add_ln34_1_reg_1564_reg[12]_i_1_n_5 ;
  wire \add_ln34_1_reg_1564_reg[12]_i_1_n_6 ;
  wire \add_ln34_1_reg_1564_reg[16]_i_1_n_3 ;
  wire \add_ln34_1_reg_1564_reg[16]_i_1_n_4 ;
  wire \add_ln34_1_reg_1564_reg[16]_i_1_n_5 ;
  wire \add_ln34_1_reg_1564_reg[16]_i_1_n_6 ;
  wire \add_ln34_1_reg_1564_reg[20]_i_1_n_4 ;
  wire \add_ln34_1_reg_1564_reg[20]_i_1_n_5 ;
  wire \add_ln34_1_reg_1564_reg[20]_i_1_n_6 ;
  wire \add_ln34_1_reg_1564_reg[4]_i_1_n_3 ;
  wire \add_ln34_1_reg_1564_reg[4]_i_1_n_4 ;
  wire \add_ln34_1_reg_1564_reg[4]_i_1_n_5 ;
  wire \add_ln34_1_reg_1564_reg[4]_i_1_n_6 ;
  wire \add_ln34_1_reg_1564_reg[8]_i_1_n_3 ;
  wire \add_ln34_1_reg_1564_reg[8]_i_1_n_4 ;
  wire \add_ln34_1_reg_1564_reg[8]_i_1_n_5 ;
  wire \add_ln34_1_reg_1564_reg[8]_i_1_n_6 ;
  wire [20:9]add_ln34_fu_507_p2;
  wire [20:0]add_ln34_reg_1500;
  wire \add_ln34_reg_1500[12]_i_2_n_3 ;
  wire \add_ln34_reg_1500_reg[12]_i_1_n_3 ;
  wire \add_ln34_reg_1500_reg[12]_i_1_n_4 ;
  wire \add_ln34_reg_1500_reg[12]_i_1_n_5 ;
  wire \add_ln34_reg_1500_reg[12]_i_1_n_6 ;
  wire \add_ln34_reg_1500_reg[16]_i_1_n_3 ;
  wire \add_ln34_reg_1500_reg[16]_i_1_n_4 ;
  wire \add_ln34_reg_1500_reg[16]_i_1_n_5 ;
  wire \add_ln34_reg_1500_reg[16]_i_1_n_6 ;
  wire \add_ln34_reg_1500_reg[20]_i_2_n_4 ;
  wire \add_ln34_reg_1500_reg[20]_i_2_n_5 ;
  wire \add_ln34_reg_1500_reg[20]_i_2_n_6 ;
  wire and_ln41_1_fu_564_p2;
  wire and_ln41_1_reg_1551;
  wire and_ln41_1_reg_15510;
  wire \and_ln41_1_reg_1551[0]_i_3_n_3 ;
  wire and_ln52_reg_1653;
  wire \ap_CS_fsm[10]_i_2_n_3 ;
  wire \ap_CS_fsm[5]_i_2_n_3 ;
  wire \ap_CS_fsm[8]_i_10_n_3 ;
  wire \ap_CS_fsm[8]_i_12_n_3 ;
  wire \ap_CS_fsm[8]_i_13_n_3 ;
  wire \ap_CS_fsm[8]_i_14_n_3 ;
  wire \ap_CS_fsm[8]_i_15_n_3 ;
  wire \ap_CS_fsm[8]_i_16_n_3 ;
  wire \ap_CS_fsm[8]_i_17_n_3 ;
  wire \ap_CS_fsm[8]_i_18_n_3 ;
  wire \ap_CS_fsm[8]_i_19_n_3 ;
  wire \ap_CS_fsm[8]_i_20_n_3 ;
  wire \ap_CS_fsm[8]_i_21_n_3 ;
  wire \ap_CS_fsm[8]_i_22_n_3 ;
  wire \ap_CS_fsm[8]_i_23_n_3 ;
  wire \ap_CS_fsm[8]_i_24_n_3 ;
  wire \ap_CS_fsm[8]_i_25_n_3 ;
  wire \ap_CS_fsm[8]_i_26_n_3 ;
  wire \ap_CS_fsm[8]_i_2_n_3 ;
  wire \ap_CS_fsm[8]_i_3_n_3 ;
  wire \ap_CS_fsm[8]_i_6_n_3 ;
  wire \ap_CS_fsm[8]_i_7_n_3 ;
  wire \ap_CS_fsm[8]_i_8_n_3 ;
  wire \ap_CS_fsm[8]_i_9_n_3 ;
  wire \ap_CS_fsm_reg[8]_i_11_n_3 ;
  wire \ap_CS_fsm_reg[8]_i_11_n_4 ;
  wire \ap_CS_fsm_reg[8]_i_11_n_5 ;
  wire \ap_CS_fsm_reg[8]_i_11_n_6 ;
  wire \ap_CS_fsm_reg[8]_i_4_n_5 ;
  wire \ap_CS_fsm_reg[8]_i_4_n_6 ;
  wire \ap_CS_fsm_reg[8]_i_5_n_3 ;
  wire \ap_CS_fsm_reg[8]_i_5_n_4 ;
  wire \ap_CS_fsm_reg[8]_i_5_n_5 ;
  wire \ap_CS_fsm_reg[8]_i_5_n_6 ;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [11:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm112_out;
  wire ap_NS_fsm113_out;
  wire ap_NS_fsm114_out;
  wire ap_NS_fsm115_out;
  wire ap_NS_fsm17_out;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \colOffset_0_reg_390_reg_n_3_[0] ;
  wire \colOffset_0_reg_390_reg_n_3_[1] ;
  wire \colOffset_0_reg_390_reg_n_3_[2] ;
  wire [2:0]colOffset_reg_1664;
  wire \colOffset_reg_1664[0]_i_1_n_3 ;
  wire \colOffset_reg_1664[1]_i_1_n_3 ;
  wire \colOffset_reg_1664[2]_i_1_n_3 ;
  wire col_assign_reg_367;
  wire col_assign_reg_3670;
  wire \col_assign_reg_367[10]_i_2_n_3 ;
  wire \col_assign_reg_367_reg_n_3_[0] ;
  wire counter_0_reg_333;
  wire \counter_0_reg_333[20]_i_3_n_3 ;
  wire \counter_0_reg_333_reg_n_3_[0] ;
  wire \counter_0_reg_333_reg_n_3_[10] ;
  wire \counter_0_reg_333_reg_n_3_[11] ;
  wire \counter_0_reg_333_reg_n_3_[12] ;
  wire \counter_0_reg_333_reg_n_3_[13] ;
  wire \counter_0_reg_333_reg_n_3_[14] ;
  wire \counter_0_reg_333_reg_n_3_[15] ;
  wire \counter_0_reg_333_reg_n_3_[16] ;
  wire \counter_0_reg_333_reg_n_3_[17] ;
  wire \counter_0_reg_333_reg_n_3_[18] ;
  wire \counter_0_reg_333_reg_n_3_[19] ;
  wire \counter_0_reg_333_reg_n_3_[1] ;
  wire \counter_0_reg_333_reg_n_3_[20] ;
  wire \counter_0_reg_333_reg_n_3_[2] ;
  wire \counter_0_reg_333_reg_n_3_[3] ;
  wire \counter_0_reg_333_reg_n_3_[4] ;
  wire \counter_0_reg_333_reg_n_3_[5] ;
  wire \counter_0_reg_333_reg_n_3_[6] ;
  wire \counter_0_reg_333_reg_n_3_[7] ;
  wire \counter_0_reg_333_reg_n_3_[8] ;
  wire \counter_0_reg_333_reg_n_3_[9] ;
  wire [20:0]counter_1_reg_345;
  wire counter_1_reg_3450;
  wire \counter_1_reg_345[0]_i_1_n_3 ;
  wire \counter_1_reg_345[10]_i_1_n_3 ;
  wire \counter_1_reg_345[11]_i_1_n_3 ;
  wire \counter_1_reg_345[12]_i_1_n_3 ;
  wire \counter_1_reg_345[13]_i_1_n_3 ;
  wire \counter_1_reg_345[14]_i_1_n_3 ;
  wire \counter_1_reg_345[15]_i_1_n_3 ;
  wire \counter_1_reg_345[16]_i_1_n_3 ;
  wire \counter_1_reg_345[17]_i_1_n_3 ;
  wire \counter_1_reg_345[18]_i_1_n_3 ;
  wire \counter_1_reg_345[19]_i_1_n_3 ;
  wire \counter_1_reg_345[1]_i_1_n_3 ;
  wire \counter_1_reg_345[20]_i_2_n_3 ;
  wire \counter_1_reg_345[2]_i_1_n_3 ;
  wire \counter_1_reg_345[3]_i_1_n_3 ;
  wire \counter_1_reg_345[4]_i_1_n_3 ;
  wire \counter_1_reg_345[5]_i_1_n_3 ;
  wire \counter_1_reg_345[6]_i_1_n_3 ;
  wire \counter_1_reg_345[7]_i_1_n_3 ;
  wire \counter_1_reg_345[8]_i_1_n_3 ;
  wire \counter_1_reg_345[9]_i_1_n_3 ;
  wire [20:0]counter_2_reg_379;
  wire \counter_2_reg_379[0]_i_1_n_3 ;
  wire \counter_2_reg_379[10]_i_1_n_3 ;
  wire \counter_2_reg_379[11]_i_1_n_3 ;
  wire \counter_2_reg_379[12]_i_1_n_3 ;
  wire \counter_2_reg_379[13]_i_1_n_3 ;
  wire \counter_2_reg_379[14]_i_1_n_3 ;
  wire \counter_2_reg_379[15]_i_1_n_3 ;
  wire \counter_2_reg_379[16]_i_1_n_3 ;
  wire \counter_2_reg_379[17]_i_1_n_3 ;
  wire \counter_2_reg_379[18]_i_1_n_3 ;
  wire \counter_2_reg_379[19]_i_1_n_3 ;
  wire \counter_2_reg_379[1]_i_1_n_3 ;
  wire \counter_2_reg_379[20]_i_1_n_3 ;
  wire \counter_2_reg_379[20]_i_2_n_3 ;
  wire \counter_2_reg_379[2]_i_1_n_3 ;
  wire \counter_2_reg_379[3]_i_1_n_3 ;
  wire \counter_2_reg_379[4]_i_1_n_3 ;
  wire \counter_2_reg_379[5]_i_1_n_3 ;
  wire \counter_2_reg_379[6]_i_1_n_3 ;
  wire \counter_2_reg_379[7]_i_1_n_3 ;
  wire \counter_2_reg_379[8]_i_1_n_3 ;
  wire \counter_2_reg_379[9]_i_1_n_3 ;
  wire [20:16]counter_fu_483_p2;
  wire [20:0]counter_reg_1482;
  wire \counter_reg_1482[19]_i_2_n_3 ;
  wire \counter_reg_1482_reg[19]_i_1_n_3 ;
  wire \counter_reg_1482_reg[19]_i_1_n_4 ;
  wire \counter_reg_1482_reg[19]_i_1_n_5 ;
  wire \counter_reg_1482_reg[19]_i_1_n_6 ;
  wire [3:0]i_0_reg_322;
  wire [10:0]i_1_reg_460;
  wire [3:0]i_2_fu_477_p2;
  wire [3:0]i_2_reg_1477;
  wire [10:0]i_fu_1341_p2;
  wire [10:0]i_reg_1720;
  wire i_reg_17200;
  wire \i_reg_1720[10]_i_3_n_3 ;
  wire \icmp_ln274_2_reg_1510[0]_i_1_n_3 ;
  wire \icmp_ln274_2_reg_1510_reg_n_3_[0] ;
  wire \icmp_ln274_3_reg_1520[0]_i_1_n_3 ;
  wire \icmp_ln274_3_reg_1520_reg_n_3_[0] ;
  wire icmp_ln41_1_fu_513_p2;
  wire icmp_ln41_1_reg_1505;
  wire \icmp_ln41_reg_1487[0]_i_1_n_3 ;
  wire \icmp_ln41_reg_1487_reg_n_3_[0] ;
  wire icmp_ln52_1_fu_1020_p2;
  wire icmp_ln52_fu_1014_p2;
  wire icmp_ln61_fu_1032_p2;
  wire icmp_ln61_reg_1657;
  wire \icmp_ln61_reg_1657[0]_i_1_n_3 ;
  wire icmp_ln82_fu_1140_p2;
  wire interrupt;
  wire [10:0]j_fu_541_p2;
  wire [10:0]j_reg_1536;
  wire \j_reg_1536[10]_i_2_n_3 ;
  wire [7:0]k_fu_501_p2;
  wire [7:0]k_reg_1495;
  wire \k_reg_1495[6]_i_2_n_3 ;
  wire \k_reg_1495[7]_i_2_n_3 ;
  wire p_0_in;
  wire p_0_in2_in;
  wire p_184_in;
  wire p_3_in;
  wire p_92_in;
  wire [9:0]pixelbuffer_val_1_address0;
  wire pixelbuffer_val_1_ce0;
  wire [9:0]pixelbuffer_val_2_a_reg_1546;
  wire [7:0]pixelbuffer_val_2_q0;
  wire ram_reg_i_13_n_5;
  wire ram_reg_i_13_n_6;
  wire ram_reg_i_14_n_5;
  wire ram_reg_i_14_n_6;
  wire ram_reg_i_15_n_3;
  wire ram_reg_i_15_n_4;
  wire ram_reg_i_15_n_5;
  wire ram_reg_i_15_n_6;
  wire ram_reg_i_16_n_3;
  wire ram_reg_i_17_n_3;
  wire ram_reg_i_18_n_3;
  wire ram_reg_i_19_n_3;
  wire ram_reg_i_20_n_3;
  wire ram_reg_i_21_n_3;
  wire ram_reg_i_21_n_4;
  wire ram_reg_i_21_n_5;
  wire ram_reg_i_21_n_6;
  wire ram_reg_i_22_n_3;
  wire ram_reg_i_23_n_3;
  wire ram_reg_i_24_n_3;
  wire ram_reg_i_25_n_3;
  wire ram_reg_i_25_n_4;
  wire ram_reg_i_25_n_5;
  wire ram_reg_i_25_n_6;
  wire ram_reg_i_26_n_3;
  wire ram_reg_i_27_n_3;
  wire ram_reg_i_28_n_3;
  wire ram_reg_i_29_n_3;
  wire ram_reg_i_30_n_3;
  wire ram_reg_i_31_n_3;
  wire ram_reg_i_32_n_3;
  wire ram_reg_i_33_n_3;
  wire ram_reg_i_33_n_4;
  wire ram_reg_i_33_n_5;
  wire ram_reg_i_33_n_6;
  wire ram_reg_i_34_n_3;
  wire ram_reg_i_35_n_3;
  wire ram_reg_i_36_n_3;
  wire ram_reg_i_37_n_3;
  wire ram_reg_i_38_n_3;
  wire ram_reg_i_39_n_3;
  wire ram_reg_i_40_n_3;
  wire ram_reg_i_41_n_3;
  wire ram_reg_i_42_n_3;
  wire ram_reg_i_43_n_3;
  wire ram_reg_i_44_n_3;
  wire ram_reg_i_45_n_3;
  wire ram_reg_i_46_n_3;
  wire ram_reg_i_47_n_3;
  wire ram_reg_i_48_n_3;
  wire ram_reg_i_49_n_3;
  wire ram_reg_i_50_n_3;
  wire ram_reg_i_51_n_3;
  wire \rowOffset_0_reg_425[0]_i_1_n_3 ;
  wire \rowOffset_0_reg_425[1]_i_1_n_3 ;
  wire \rowOffset_0_reg_425[2]_i_1_n_3 ;
  wire \rowOffset_0_reg_425_reg_n_3_[0] ;
  wire \rowOffset_0_reg_425_reg_n_3_[1] ;
  wire \rowOffset_0_reg_425_reg_n_3_[2] ;
  wire [2:0]rowOffset_reg_1687;
  wire rowOffset_reg_16870;
  wire \rowOffset_reg_1687[0]_i_1_n_3 ;
  wire \rowOffset_reg_1687[1]_i_1_n_3 ;
  wire \rowOffset_reg_1687[2]_i_1_n_3 ;
  wire row_assign_reg_356;
  wire \row_assign_reg_356[7]_i_3_n_3 ;
  wire \row_assign_reg_356[7]_i_4_n_3 ;
  wire \row_assign_reg_356_reg_n_3_[0] ;
  wire \row_assign_reg_356_reg_n_3_[1] ;
  wire \row_assign_reg_356_reg_n_3_[2] ;
  wire \row_assign_reg_356_reg_n_3_[3] ;
  wire \row_assign_reg_356_reg_n_3_[4] ;
  wire \row_assign_reg_356_reg_n_3_[5] ;
  wire \row_assign_reg_356_reg_n_3_[6] ;
  wire \row_assign_reg_356_reg_n_3_[7] ;
  wire [3:0]s_axi_ctrl_bus_ARADDR;
  wire s_axi_ctrl_bus_ARREADY;
  wire s_axi_ctrl_bus_ARVALID;
  wire [3:0]s_axi_ctrl_bus_AWADDR;
  wire s_axi_ctrl_bus_AWREADY;
  wire s_axi_ctrl_bus_AWVALID;
  wire s_axi_ctrl_bus_BREADY;
  wire s_axi_ctrl_bus_BVALID;
  wire [7:0]\^s_axi_ctrl_bus_RDATA ;
  wire s_axi_ctrl_bus_RREADY;
  wire s_axi_ctrl_bus_RVALID;
  wire [31:0]s_axi_ctrl_bus_WDATA;
  wire s_axi_ctrl_bus_WREADY;
  wire [3:0]s_axi_ctrl_bus_WSTRB;
  wire s_axi_ctrl_bus_WVALID;
  wire [3:1]sel;
  wire [7:0]select_ln41_2_fu_972_p3;
  wire [7:0]select_ln41_2_reg_1617;
  wire \select_ln41_2_reg_1617[7]_i_2_n_3 ;
  wire [7:0]select_ln41_3_fu_979_p3;
  wire [7:0]select_ln41_3_reg_1623;
  wire \select_ln41_3_reg_1623[7]_i_2_n_3 ;
  wire [7:0]select_ln41_5_fu_993_p3;
  wire [7:0]select_ln41_5_reg_1635;
  wire \select_ln41_5_reg_1635[7]_i_11_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_12_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_13_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_14_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_15_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_16_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_17_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_18_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_19_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_20_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_21_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_22_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_23_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_24_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_25_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_26_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_2_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_5_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_6_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_7_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_8_n_3 ;
  wire \select_ln41_5_reg_1635[7]_i_9_n_3 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_10_n_3 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_10_n_4 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_10_n_5 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_10_n_6 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_3_n_4 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_3_n_5 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_3_n_6 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_4_n_3 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_4_n_4 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_4_n_5 ;
  wire \select_ln41_5_reg_1635_reg[7]_i_4_n_6 ;
  wire [7:0]select_ln41_6_fu_1000_p3;
  wire [7:0]select_ln41_6_reg_1641;
  wire \select_ln41_6_reg_1641[7]_i_2_n_3 ;
  wire [7:0]select_ln41_fu_958_p3;
  wire [7:0]select_ln41_reg_1605;
  wire \select_ln41_reg_1605[7]_i_2_n_3 ;
  wire sobel_filter_ctrl_bus_s_axi_U_n_10;
  wire sobel_filter_ctrl_bus_s_axi_U_n_11;
  wire sobel_filter_ctrl_bus_s_axi_U_n_12;
  wire sobel_filter_ctrl_bus_s_axi_U_n_13;
  wire sobel_filter_ctrl_bus_s_axi_U_n_14;
  wire sobel_filter_ctrl_bus_s_axi_U_n_15;
  wire sobel_filter_ctrl_bus_s_axi_U_n_9;
  wire sobel_filter_mac_eOg_U2_n_10;
  wire sobel_filter_mac_eOg_U2_n_11;
  wire sobel_filter_mac_eOg_U2_n_12;
  wire sobel_filter_mac_eOg_U2_n_13;
  wire sobel_filter_mac_eOg_U2_n_14;
  wire sobel_filter_mac_eOg_U2_n_15;
  wire sobel_filter_mac_eOg_U2_n_16;
  wire sobel_filter_mac_eOg_U2_n_17;
  wire sobel_filter_mac_eOg_U2_n_18;
  wire sobel_filter_mac_eOg_U2_n_19;
  wire sobel_filter_mac_eOg_U2_n_20;
  wire sobel_filter_mac_eOg_U2_n_21;
  wire sobel_filter_mac_eOg_U2_n_22;
  wire sobel_filter_mac_eOg_U2_n_23;
  wire sobel_filter_mac_eOg_U2_n_24;
  wire sobel_filter_mac_eOg_U2_n_25;
  wire sobel_filter_mac_eOg_U2_n_26;
  wire sobel_filter_mac_eOg_U2_n_27;
  wire sobel_filter_mac_eOg_U2_n_28;
  wire sobel_filter_mac_eOg_U2_n_29;
  wire sobel_filter_mac_eOg_U2_n_3;
  wire sobel_filter_mac_eOg_U2_n_30;
  wire sobel_filter_mac_eOg_U2_n_31;
  wire sobel_filter_mac_eOg_U2_n_32;
  wire sobel_filter_mac_eOg_U2_n_33;
  wire sobel_filter_mac_eOg_U2_n_34;
  wire sobel_filter_mac_eOg_U2_n_4;
  wire sobel_filter_mac_eOg_U2_n_5;
  wire sobel_filter_mac_eOg_U2_n_6;
  wire sobel_filter_mac_eOg_U2_n_7;
  wire sobel_filter_mac_eOg_U2_n_8;
  wire sobel_filter_mac_eOg_U2_n_9;
  wire sobel_filter_mac_eOg_U3_n_10;
  wire sobel_filter_mac_eOg_U3_n_11;
  wire sobel_filter_mac_eOg_U3_n_12;
  wire sobel_filter_mac_eOg_U3_n_13;
  wire sobel_filter_mac_eOg_U3_n_14;
  wire sobel_filter_mac_eOg_U3_n_15;
  wire sobel_filter_mac_eOg_U3_n_16;
  wire sobel_filter_mac_eOg_U3_n_17;
  wire sobel_filter_mac_eOg_U3_n_18;
  wire sobel_filter_mac_eOg_U3_n_19;
  wire sobel_filter_mac_eOg_U3_n_20;
  wire sobel_filter_mac_eOg_U3_n_21;
  wire sobel_filter_mac_eOg_U3_n_22;
  wire sobel_filter_mac_eOg_U3_n_23;
  wire sobel_filter_mac_eOg_U3_n_24;
  wire sobel_filter_mac_eOg_U3_n_25;
  wire sobel_filter_mac_eOg_U3_n_26;
  wire sobel_filter_mac_eOg_U3_n_27;
  wire sobel_filter_mac_eOg_U3_n_28;
  wire sobel_filter_mac_eOg_U3_n_29;
  wire sobel_filter_mac_eOg_U3_n_3;
  wire sobel_filter_mac_eOg_U3_n_30;
  wire sobel_filter_mac_eOg_U3_n_31;
  wire sobel_filter_mac_eOg_U3_n_32;
  wire sobel_filter_mac_eOg_U3_n_33;
  wire sobel_filter_mac_eOg_U3_n_34;
  wire sobel_filter_mac_eOg_U3_n_35;
  wire sobel_filter_mac_eOg_U3_n_36;
  wire sobel_filter_mac_eOg_U3_n_4;
  wire sobel_filter_mac_eOg_U3_n_5;
  wire sobel_filter_mac_eOg_U3_n_6;
  wire sobel_filter_mac_eOg_U3_n_7;
  wire sobel_filter_mac_eOg_U3_n_8;
  wire sobel_filter_mac_eOg_U3_n_9;
  wire [7:0]tmp_1_fu_1253_p11;
  wire [9:0]tmp_2_fu_1114_p4;
  wire [23:0]tmp_4_fu_1130_p4;
  wire [5:0]tmp_dest_V_3_reg_1593;
  wire [5:0]tmp_dest_V_fu_162;
  wire [4:0]tmp_id_V_3_reg_1587;
  wire [4:0]tmp_id_V_fu_178;
  wire tmp_keep_V_3_reg_1569;
  wire tmp_keep_V_fu_166;
  wire tmp_strb_V_3_reg_1575;
  wire tmp_strb_V_fu_170;
  wire [1:0]tmp_user_V_3_reg_1581;
  wire [1:0]tmp_user_V_fu_174;
  wire [7:0]window_val_0_1_fu_190;
  wire [7:0]window_val_1_0_fu_198;
  wire [7:0]window_val_1_1_fu_202;
  wire [7:0]window_val_2_0_fu_210;
  wire [7:0]window_val_2_1_7_fu_951_p3;
  wire [7:0]window_val_2_1_7_reg_1599;
  wire \window_val_2_1_7_reg_1599[7]_i_2_n_3 ;
  wire [7:0]window_val_2_1_fu_214;
  wire [7:0]window_val_2_2_1_fu_182;
  wire [7:0]window_val_2_2_2_fu_186;
  wire [7:0]window_val_2_2_3_fu_194;
  wire [7:0]window_val_2_2_4_fu_206;
  wire [7:0]window_val_2_2_51_fu_965_p3;
  wire [7:0]window_val_2_2_51_reg_1611;
  wire \window_val_2_2_51_reg_1611[7]_i_2_n_3 ;
  wire [7:0]window_val_2_2_52_fu_986_p3;
  wire [7:0]window_val_2_2_52_reg_1629;
  wire \window_val_2_2_52_reg_1629[7]_i_2_n_3 ;
  wire [7:0]window_val_2_2_53_fu_1007_p3;
  wire [7:0]window_val_2_2_53_reg_1647;
  wire \window_val_2_2_53_reg_1647[7]_i_2_n_3 ;
  wire [31:0]x_dir_0_reg_401;
  wire [31:0]y_dir_0_reg_413;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_O_UNCONNECTED ;
  wire [3:3]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_CO_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_O_UNCONNECTED ;
  wire [3:0]\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln34_1_reg_1564_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_add_ln34_reg_1500_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[8]_i_11_O_UNCONNECTED ;
  wire [3:3]\NLW_ap_CS_fsm_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[8]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[8]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg_1482_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg_1482_reg[20]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_ram_reg_i_13_CO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_13_O_UNCONNECTED;
  wire [3:3]NLW_ram_reg_i_14_CO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_14_O_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_15_O_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_21_O_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_25_O_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_33_O_UNCONNECTED;
  wire [3:0]\NLW_select_ln41_5_reg_1635_reg[7]_i_10_O_UNCONNECTED ;
  wire [3:3]\NLW_select_ln41_5_reg_1635_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_select_ln41_5_reg_1635_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_select_ln41_5_reg_1635_reg[7]_i_4_O_UNCONNECTED ;

  assign s_axi_ctrl_bus_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_bus_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[9] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[7] = \^s_axi_ctrl_bus_RDATA [7];
  assign s_axi_ctrl_bus_RDATA[6] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[5] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[4] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[3:0] = \^s_axi_ctrl_bus_RDATA [3:0];
  assign s_axi_ctrl_bus_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_bus_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h45)) 
    \INPUT_IMAGE_V_data_V_0_payload_A[7]_i_1 
       (.I0(INPUT_IMAGE_V_data_V_0_sel_wr),
        .I1(INPUT_IMAGE_V_data_V_0_ack_in),
        .I2(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .O(INPUT_IMAGE_V_data_V_0_load_A));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[0]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[1]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[2]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[3]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[4]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[5]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[6]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_A),
        .D(INPUT_IMAGE_TDATA[7]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \INPUT_IMAGE_V_data_V_0_payload_B[7]_i_1 
       (.I0(INPUT_IMAGE_V_data_V_0_sel_wr),
        .I1(INPUT_IMAGE_V_data_V_0_ack_in),
        .I2(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .O(INPUT_IMAGE_V_data_V_0_load_B));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[0]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[1]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[2]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[3]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[4]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[5]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[6]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_data_V_0_load_B),
        .D(INPUT_IMAGE_TDATA[7]),
        .Q(INPUT_IMAGE_V_data_V_0_payload_B[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55D5FFFFAA2A0000)) 
    INPUT_IMAGE_V_data_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state5),
        .I1(icmp_ln52_fu_1014_p2),
        .I2(icmp_ln52_1_fu_1020_p2),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I4(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I5(INPUT_IMAGE_V_data_V_0_sel),
        .O(INPUT_IMAGE_V_data_V_0_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_data_V_0_sel_rd_i_1_n_3),
        .Q(INPUT_IMAGE_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    INPUT_IMAGE_V_data_V_0_sel_wr_i_1
       (.I0(INPUT_IMAGE_V_data_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(INPUT_IMAGE_V_data_V_0_sel_wr),
        .O(INPUT_IMAGE_V_data_V_0_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_data_V_0_sel_wr_i_1_n_3),
        .Q(INPUT_IMAGE_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \INPUT_IMAGE_V_data_V_0_state[0]_i_1 
       (.I0(INPUT_IMAGE_V_data_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(ap_rst_n),
        .O(\INPUT_IMAGE_V_data_V_0_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \INPUT_IMAGE_V_data_V_0_state[1]_i_1 
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_TVALID),
        .I3(INPUT_IMAGE_V_data_V_0_ack_in),
        .O(INPUT_IMAGE_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_data_V_0_state[0]_i_1_n_3 ),
        .Q(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_data_V_0_state),
        .Q(INPUT_IMAGE_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \INPUT_IMAGE_V_dest_V_0_payload_A[5]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_sel_wr),
        .I1(INPUT_IMAGE_TREADY),
        .I2(\INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ),
        .O(INPUT_IMAGE_V_dest_V_0_load_A));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_A),
        .D(INPUT_IMAGE_TDEST[0]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_A),
        .D(INPUT_IMAGE_TDEST[1]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_A),
        .D(INPUT_IMAGE_TDEST[2]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_A),
        .D(INPUT_IMAGE_TDEST[3]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_A),
        .D(INPUT_IMAGE_TDEST[4]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_A),
        .D(INPUT_IMAGE_TDEST[5]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_A[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \INPUT_IMAGE_V_dest_V_0_payload_B[5]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_sel_wr),
        .I1(INPUT_IMAGE_TREADY),
        .I2(\INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ),
        .O(INPUT_IMAGE_V_dest_V_0_load_B));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_B),
        .D(INPUT_IMAGE_TDEST[0]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_B),
        .D(INPUT_IMAGE_TDEST[1]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_B),
        .D(INPUT_IMAGE_TDEST[2]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_B),
        .D(INPUT_IMAGE_TDEST[3]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_B),
        .D(INPUT_IMAGE_TDEST[4]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_dest_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_dest_V_0_load_B),
        .D(INPUT_IMAGE_TDEST[5]),
        .Q(INPUT_IMAGE_V_dest_V_0_payload_B[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    INPUT_IMAGE_V_dest_V_0_sel_rd_i_1
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_V_dest_V_0_sel),
        .O(INPUT_IMAGE_V_dest_V_0_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_dest_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_dest_V_0_sel_rd_i_1_n_3),
        .Q(INPUT_IMAGE_V_dest_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    INPUT_IMAGE_V_dest_V_0_sel_wr_i_1
       (.I0(INPUT_IMAGE_TREADY),
        .I1(INPUT_IMAGE_TVALID),
        .I2(INPUT_IMAGE_V_dest_V_0_sel_wr),
        .O(INPUT_IMAGE_V_dest_V_0_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_dest_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_dest_V_0_sel_wr_i_1_n_3),
        .Q(INPUT_IMAGE_V_dest_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \INPUT_IMAGE_V_dest_V_0_state[0]_i_1 
       (.I0(INPUT_IMAGE_TREADY),
        .I1(INPUT_IMAGE_TVALID),
        .I2(\INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(ap_rst_n),
        .O(\INPUT_IMAGE_V_dest_V_0_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \INPUT_IMAGE_V_dest_V_0_state[1]_i_2 
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_TVALID),
        .I3(INPUT_IMAGE_TREADY),
        .O(INPUT_IMAGE_V_dest_V_0_state));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7555FFFF)) 
    \INPUT_IMAGE_V_dest_V_0_state[1]_i_3 
       (.I0(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(icmp_ln52_1_fu_1020_p2),
        .I3(icmp_ln52_fu_1014_p2),
        .I4(ap_CS_fsm_state5),
        .O(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_dest_V_0_state[0]_i_1_n_3 ),
        .Q(\INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_dest_V_0_state),
        .Q(INPUT_IMAGE_TREADY),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \INPUT_IMAGE_V_id_V_0_payload_A[4]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_sel_wr),
        .I1(INPUT_IMAGE_V_id_V_0_ack_in),
        .I2(\INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ),
        .O(INPUT_IMAGE_V_id_V_0_load_A));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_A),
        .D(INPUT_IMAGE_TID[0]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_A),
        .D(INPUT_IMAGE_TID[1]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_A),
        .D(INPUT_IMAGE_TID[2]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_A),
        .D(INPUT_IMAGE_TID[3]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_A),
        .D(INPUT_IMAGE_TID[4]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_A[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \INPUT_IMAGE_V_id_V_0_payload_B[4]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_sel_wr),
        .I1(INPUT_IMAGE_V_id_V_0_ack_in),
        .I2(\INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ),
        .O(INPUT_IMAGE_V_id_V_0_load_B));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_B),
        .D(INPUT_IMAGE_TID[0]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_B),
        .D(INPUT_IMAGE_TID[1]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_B),
        .D(INPUT_IMAGE_TID[2]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_B),
        .D(INPUT_IMAGE_TID[3]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_id_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(INPUT_IMAGE_V_id_V_0_load_B),
        .D(INPUT_IMAGE_TID[4]),
        .Q(INPUT_IMAGE_V_id_V_0_payload_B[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    INPUT_IMAGE_V_id_V_0_sel_rd_i_1
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_V_id_V_0_sel),
        .O(INPUT_IMAGE_V_id_V_0_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_id_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_id_V_0_sel_rd_i_1_n_3),
        .Q(INPUT_IMAGE_V_id_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    INPUT_IMAGE_V_id_V_0_sel_wr_i_1
       (.I0(INPUT_IMAGE_V_id_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(INPUT_IMAGE_V_id_V_0_sel_wr),
        .O(INPUT_IMAGE_V_id_V_0_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_id_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_id_V_0_sel_wr_i_1_n_3),
        .Q(INPUT_IMAGE_V_id_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \INPUT_IMAGE_V_id_V_0_state[0]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(\INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(ap_rst_n),
        .O(\INPUT_IMAGE_V_id_V_0_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \INPUT_IMAGE_V_id_V_0_state[1]_i_1 
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_TVALID),
        .I3(INPUT_IMAGE_V_id_V_0_ack_in),
        .O(INPUT_IMAGE_V_id_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_id_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_id_V_0_state[0]_i_1_n_3 ),
        .Q(\INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_id_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_id_V_0_state),
        .Q(INPUT_IMAGE_V_id_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1 
       (.I0(INPUT_IMAGE_TKEEP),
        .I1(INPUT_IMAGE_V_keep_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_keep_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_keep_V_0_payload_A),
        .O(\INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1_n_3 ));
  FDRE \INPUT_IMAGE_V_keep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_keep_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1 
       (.I0(INPUT_IMAGE_TKEEP),
        .I1(INPUT_IMAGE_V_keep_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_keep_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_keep_V_0_payload_B),
        .O(\INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1_n_3 ));
  FDRE \INPUT_IMAGE_V_keep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_keep_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    INPUT_IMAGE_V_keep_V_0_sel_rd_i_1
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_V_keep_V_0_sel),
        .O(INPUT_IMAGE_V_keep_V_0_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_keep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_keep_V_0_sel_rd_i_1_n_3),
        .Q(INPUT_IMAGE_V_keep_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    INPUT_IMAGE_V_keep_V_0_sel_wr_i_1
       (.I0(INPUT_IMAGE_V_keep_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(INPUT_IMAGE_V_keep_V_0_sel_wr),
        .O(INPUT_IMAGE_V_keep_V_0_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_keep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_keep_V_0_sel_wr_i_1_n_3),
        .Q(INPUT_IMAGE_V_keep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \INPUT_IMAGE_V_keep_V_0_state[0]_i_1 
       (.I0(INPUT_IMAGE_V_keep_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(\INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(ap_rst_n),
        .O(\INPUT_IMAGE_V_keep_V_0_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \INPUT_IMAGE_V_keep_V_0_state[1]_i_1 
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_TVALID),
        .I3(INPUT_IMAGE_V_keep_V_0_ack_in),
        .O(INPUT_IMAGE_V_keep_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_keep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_keep_V_0_state[0]_i_1_n_3 ),
        .Q(\INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_keep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_keep_V_0_state),
        .Q(INPUT_IMAGE_V_keep_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1 
       (.I0(INPUT_IMAGE_TSTRB),
        .I1(INPUT_IMAGE_V_strb_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_strb_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_strb_V_0_payload_A),
        .O(\INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1_n_3 ));
  FDRE \INPUT_IMAGE_V_strb_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_strb_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1 
       (.I0(INPUT_IMAGE_TSTRB),
        .I1(INPUT_IMAGE_V_strb_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_strb_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_strb_V_0_payload_B),
        .O(\INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1_n_3 ));
  FDRE \INPUT_IMAGE_V_strb_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_strb_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    INPUT_IMAGE_V_strb_V_0_sel_rd_i_1
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_V_strb_V_0_sel),
        .O(INPUT_IMAGE_V_strb_V_0_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_strb_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_strb_V_0_sel_rd_i_1_n_3),
        .Q(INPUT_IMAGE_V_strb_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    INPUT_IMAGE_V_strb_V_0_sel_wr_i_1
       (.I0(INPUT_IMAGE_V_strb_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(INPUT_IMAGE_V_strb_V_0_sel_wr),
        .O(INPUT_IMAGE_V_strb_V_0_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_strb_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_strb_V_0_sel_wr_i_1_n_3),
        .Q(INPUT_IMAGE_V_strb_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \INPUT_IMAGE_V_strb_V_0_state[0]_i_1 
       (.I0(INPUT_IMAGE_V_strb_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(\INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(ap_rst_n),
        .O(\INPUT_IMAGE_V_strb_V_0_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \INPUT_IMAGE_V_strb_V_0_state[1]_i_1 
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_TVALID),
        .I3(INPUT_IMAGE_V_strb_V_0_ack_in),
        .O(INPUT_IMAGE_V_strb_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_strb_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_strb_V_0_state[0]_i_1_n_3 ),
        .Q(\INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_strb_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_strb_V_0_state),
        .Q(INPUT_IMAGE_V_strb_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1 
       (.I0(INPUT_IMAGE_TUSER[0]),
        .I1(INPUT_IMAGE_V_user_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_user_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_user_V_0_payload_A[0]),
        .O(\INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1 
       (.I0(INPUT_IMAGE_TUSER[1]),
        .I1(INPUT_IMAGE_V_user_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_user_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_user_V_0_payload_A[1]),
        .O(\INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1_n_3 ));
  FDRE \INPUT_IMAGE_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_user_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_user_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_user_V_0_payload_A[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1 
       (.I0(INPUT_IMAGE_TUSER[0]),
        .I1(INPUT_IMAGE_V_user_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_user_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_user_V_0_payload_B[0]),
        .O(\INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1 
       (.I0(INPUT_IMAGE_TUSER[1]),
        .I1(INPUT_IMAGE_V_user_V_0_sel_wr),
        .I2(INPUT_IMAGE_V_user_V_0_ack_in),
        .I3(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I4(INPUT_IMAGE_V_user_V_0_payload_B[1]),
        .O(\INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1_n_3 ));
  FDRE \INPUT_IMAGE_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_user_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \INPUT_IMAGE_V_user_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1_n_3 ),
        .Q(INPUT_IMAGE_V_user_V_0_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    INPUT_IMAGE_V_user_V_0_sel_rd_i_1
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_V_user_V_0_sel),
        .O(INPUT_IMAGE_V_user_V_0_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_user_V_0_sel_rd_i_1_n_3),
        .Q(INPUT_IMAGE_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    INPUT_IMAGE_V_user_V_0_sel_wr_i_1
       (.I0(INPUT_IMAGE_V_user_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(INPUT_IMAGE_V_user_V_0_sel_wr),
        .O(INPUT_IMAGE_V_user_V_0_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    INPUT_IMAGE_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_user_V_0_sel_wr_i_1_n_3),
        .Q(INPUT_IMAGE_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \INPUT_IMAGE_V_user_V_0_state[0]_i_1 
       (.I0(INPUT_IMAGE_V_user_V_0_ack_in),
        .I1(INPUT_IMAGE_TVALID),
        .I2(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(ap_rst_n),
        .O(\INPUT_IMAGE_V_user_V_0_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \INPUT_IMAGE_V_user_V_0_state[1]_i_1 
       (.I0(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I1(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .I2(INPUT_IMAGE_TVALID),
        .I3(INPUT_IMAGE_V_user_V_0_ack_in),
        .O(INPUT_IMAGE_V_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\INPUT_IMAGE_V_user_V_0_state[0]_i_1_n_3 ),
        .Q(\INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \INPUT_IMAGE_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(INPUT_IMAGE_V_user_V_0_state),
        .Q(INPUT_IMAGE_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[0]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[0]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[1]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[1]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[1]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[2]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[2]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[2]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[3]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[3]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[3]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[4]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[4]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[4]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[5]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[5]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[5]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[6]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[6]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[6]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \OUTPUT_IMAGE_TDATA[7]_INST_0 
       (.I0(OUTPUT_IMAGE_V_data_V_1_payload_B[7]),
        .I1(OUTPUT_IMAGE_V_data_V_1_payload_A[7]),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TDEST[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_payload_B[0]),
        .I1(OUTPUT_IMAGE_V_dest_V_1_sel),
        .I2(OUTPUT_IMAGE_V_dest_V_1_payload_A[0]),
        .O(OUTPUT_IMAGE_TDEST[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TDEST[1]_INST_0 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_payload_B[1]),
        .I1(OUTPUT_IMAGE_V_dest_V_1_sel),
        .I2(OUTPUT_IMAGE_V_dest_V_1_payload_A[1]),
        .O(OUTPUT_IMAGE_TDEST[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TDEST[2]_INST_0 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_payload_B[2]),
        .I1(OUTPUT_IMAGE_V_dest_V_1_sel),
        .I2(OUTPUT_IMAGE_V_dest_V_1_payload_A[2]),
        .O(OUTPUT_IMAGE_TDEST[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TDEST[3]_INST_0 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_payload_B[3]),
        .I1(OUTPUT_IMAGE_V_dest_V_1_sel),
        .I2(OUTPUT_IMAGE_V_dest_V_1_payload_A[3]),
        .O(OUTPUT_IMAGE_TDEST[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TDEST[4]_INST_0 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_payload_B[4]),
        .I1(OUTPUT_IMAGE_V_dest_V_1_sel),
        .I2(OUTPUT_IMAGE_V_dest_V_1_payload_A[4]),
        .O(OUTPUT_IMAGE_TDEST[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TDEST[5]_INST_0 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_payload_B[5]),
        .I1(OUTPUT_IMAGE_V_dest_V_1_sel),
        .I2(OUTPUT_IMAGE_V_dest_V_1_payload_A[5]),
        .O(OUTPUT_IMAGE_TDEST[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TID[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_id_V_1_payload_B[0]),
        .I1(OUTPUT_IMAGE_V_id_V_1_sel),
        .I2(OUTPUT_IMAGE_V_id_V_1_payload_A[0]),
        .O(OUTPUT_IMAGE_TID[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TID[1]_INST_0 
       (.I0(OUTPUT_IMAGE_V_id_V_1_payload_B[1]),
        .I1(OUTPUT_IMAGE_V_id_V_1_sel),
        .I2(OUTPUT_IMAGE_V_id_V_1_payload_A[1]),
        .O(OUTPUT_IMAGE_TID[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TID[2]_INST_0 
       (.I0(OUTPUT_IMAGE_V_id_V_1_payload_B[2]),
        .I1(OUTPUT_IMAGE_V_id_V_1_sel),
        .I2(OUTPUT_IMAGE_V_id_V_1_payload_A[2]),
        .O(OUTPUT_IMAGE_TID[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TID[3]_INST_0 
       (.I0(OUTPUT_IMAGE_V_id_V_1_payload_B[3]),
        .I1(OUTPUT_IMAGE_V_id_V_1_sel),
        .I2(OUTPUT_IMAGE_V_id_V_1_payload_A[3]),
        .O(OUTPUT_IMAGE_TID[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TID[4]_INST_0 
       (.I0(OUTPUT_IMAGE_V_id_V_1_payload_B[4]),
        .I1(OUTPUT_IMAGE_V_id_V_1_sel),
        .I2(OUTPUT_IMAGE_V_id_V_1_payload_A[4]),
        .O(OUTPUT_IMAGE_TID[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TKEEP[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_keep_V_1_payload_B),
        .I1(OUTPUT_IMAGE_V_keep_V_1_sel),
        .I2(OUTPUT_IMAGE_V_keep_V_1_payload_A),
        .O(OUTPUT_IMAGE_TKEEP));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TLAST[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_last_V_1_payload_B),
        .I1(OUTPUT_IMAGE_V_last_V_1_sel),
        .I2(OUTPUT_IMAGE_V_last_V_1_payload_A),
        .O(OUTPUT_IMAGE_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TSTRB[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_strb_V_1_payload_B),
        .I1(OUTPUT_IMAGE_V_strb_V_1_sel),
        .I2(OUTPUT_IMAGE_V_strb_V_1_payload_A),
        .O(OUTPUT_IMAGE_TSTRB));
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TUSER[0]_INST_0 
       (.I0(OUTPUT_IMAGE_V_user_V_1_payload_B[0]),
        .I1(OUTPUT_IMAGE_V_user_V_1_sel),
        .I2(OUTPUT_IMAGE_V_user_V_1_payload_A[0]),
        .O(OUTPUT_IMAGE_TUSER[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_IMAGE_TUSER[1]_INST_0 
       (.I0(OUTPUT_IMAGE_V_user_V_1_payload_B[1]),
        .I1(OUTPUT_IMAGE_V_user_V_1_sel),
        .I2(OUTPUT_IMAGE_V_user_V_1_payload_A[1]),
        .O(OUTPUT_IMAGE_TUSER[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_10 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_9 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_8 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_7 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10 
       (.I0(x_dir_0_reg_401[0]),
        .I1(p_0_in),
        .I2(y_dir_0_reg_413[0]),
        .I3(p_3_in),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10_n_3 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[2]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[2]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[1]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[1]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5 
       (.I0(x_dir_0_reg_401[0]),
        .I1(p_0_in),
        .I2(y_dir_0_reg_413[0]),
        .I3(p_0_in2_in),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_6 
       (.I0(p_0_in),
        .O(p_3_in));
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[3]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[3]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7_n_3 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[2]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[2]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8_n_3 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[1]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[1]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_10 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_9 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_8 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h00008808)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1 
       (.I0(icmp_ln82_fu_1140_p2),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .I2(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I4(OUTPUT_IMAGE_V_data_V_1_sel_wr),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10 
       (.I0(tmp_4_fu_1130_p4[18]),
        .I1(tmp_4_fu_1130_p4[19]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100 
       (.I0(y_dir_0_reg_413[20]),
        .I1(y_dir_0_reg_413[21]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101 
       (.I0(y_dir_0_reg_413[18]),
        .I1(y_dir_0_reg_413[19]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102 
       (.I0(y_dir_0_reg_413[16]),
        .I1(y_dir_0_reg_413[17]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103 
       (.I0(y_dir_0_reg_413[23]),
        .I1(y_dir_0_reg_413[22]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104 
       (.I0(y_dir_0_reg_413[21]),
        .I1(y_dir_0_reg_413[20]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105 
       (.I0(y_dir_0_reg_413[19]),
        .I1(y_dir_0_reg_413[18]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106 
       (.I0(y_dir_0_reg_413[17]),
        .I1(y_dir_0_reg_413[16]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108 
       (.I0(x_dir_0_reg_401[22]),
        .I1(x_dir_0_reg_401[23]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109 
       (.I0(x_dir_0_reg_401[20]),
        .I1(x_dir_0_reg_401[21]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11 
       (.I0(tmp_4_fu_1130_p4[16]),
        .I1(tmp_4_fu_1130_p4[17]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110 
       (.I0(x_dir_0_reg_401[18]),
        .I1(x_dir_0_reg_401[19]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111 
       (.I0(x_dir_0_reg_401[16]),
        .I1(x_dir_0_reg_401[17]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112 
       (.I0(x_dir_0_reg_401[23]),
        .I1(x_dir_0_reg_401[22]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113 
       (.I0(x_dir_0_reg_401[21]),
        .I1(x_dir_0_reg_401[20]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114 
       (.I0(x_dir_0_reg_401[19]),
        .I1(x_dir_0_reg_401[18]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115 
       (.I0(x_dir_0_reg_401[17]),
        .I1(x_dir_0_reg_401[16]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115_n_3 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[14]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[14]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[13]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[13]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[12]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[12]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[11]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[11]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12 
       (.I0(tmp_4_fu_1130_p4[22]),
        .I1(tmp_4_fu_1130_p4[23]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12_n_3 ));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[15]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[15]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120_n_3 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[14]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[14]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121_n_3 ));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[13]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[13]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122_n_3 ));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[12]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[12]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123_n_3 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[10]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[10]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[9]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[9]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[8]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[8]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[7]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[7]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[11]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[11]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128_n_3 ));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[10]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[10]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13 
       (.I0(tmp_4_fu_1130_p4[21]),
        .I1(tmp_4_fu_1130_p4[20]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13_n_3 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[9]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[9]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130_n_3 ));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[8]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[8]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133 
       (.I0(y_dir_0_reg_413[14]),
        .I1(y_dir_0_reg_413[15]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134 
       (.I0(y_dir_0_reg_413[12]),
        .I1(y_dir_0_reg_413[13]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135 
       (.I0(y_dir_0_reg_413[10]),
        .I1(y_dir_0_reg_413[11]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136 
       (.I0(y_dir_0_reg_413[8]),
        .I1(y_dir_0_reg_413[9]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137 
       (.I0(y_dir_0_reg_413[15]),
        .I1(y_dir_0_reg_413[14]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138 
       (.I0(y_dir_0_reg_413[13]),
        .I1(y_dir_0_reg_413[12]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139 
       (.I0(y_dir_0_reg_413[11]),
        .I1(y_dir_0_reg_413[10]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14 
       (.I0(tmp_4_fu_1130_p4[19]),
        .I1(tmp_4_fu_1130_p4[18]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140 
       (.I0(y_dir_0_reg_413[9]),
        .I1(y_dir_0_reg_413[8]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142 
       (.I0(x_dir_0_reg_401[14]),
        .I1(x_dir_0_reg_401[15]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143 
       (.I0(x_dir_0_reg_401[12]),
        .I1(x_dir_0_reg_401[13]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144 
       (.I0(x_dir_0_reg_401[10]),
        .I1(x_dir_0_reg_401[11]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145 
       (.I0(x_dir_0_reg_401[8]),
        .I1(x_dir_0_reg_401[9]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146 
       (.I0(x_dir_0_reg_401[15]),
        .I1(x_dir_0_reg_401[14]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147 
       (.I0(x_dir_0_reg_401[13]),
        .I1(x_dir_0_reg_401[12]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148 
       (.I0(x_dir_0_reg_401[11]),
        .I1(x_dir_0_reg_401[10]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149 
       (.I0(x_dir_0_reg_401[9]),
        .I1(x_dir_0_reg_401[8]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15 
       (.I0(tmp_4_fu_1130_p4[17]),
        .I1(tmp_4_fu_1130_p4[16]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150 
       (.I0(y_dir_0_reg_413[6]),
        .I1(y_dir_0_reg_413[7]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151 
       (.I0(y_dir_0_reg_413[4]),
        .I1(y_dir_0_reg_413[5]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152 
       (.I0(y_dir_0_reg_413[2]),
        .I1(y_dir_0_reg_413[3]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153 
       (.I0(y_dir_0_reg_413[0]),
        .I1(y_dir_0_reg_413[1]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154 
       (.I0(y_dir_0_reg_413[7]),
        .I1(y_dir_0_reg_413[6]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155 
       (.I0(y_dir_0_reg_413[5]),
        .I1(y_dir_0_reg_413[4]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156 
       (.I0(y_dir_0_reg_413[3]),
        .I1(y_dir_0_reg_413[2]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157 
       (.I0(y_dir_0_reg_413[1]),
        .I1(y_dir_0_reg_413[0]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158 
       (.I0(x_dir_0_reg_401[6]),
        .I1(x_dir_0_reg_401[7]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159 
       (.I0(x_dir_0_reg_401[4]),
        .I1(x_dir_0_reg_401[5]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159_n_3 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[6]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[6]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160 
       (.I0(x_dir_0_reg_401[2]),
        .I1(x_dir_0_reg_401[3]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161 
       (.I0(x_dir_0_reg_401[0]),
        .I1(x_dir_0_reg_401[1]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162 
       (.I0(x_dir_0_reg_401[7]),
        .I1(x_dir_0_reg_401[6]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163 
       (.I0(x_dir_0_reg_401[5]),
        .I1(x_dir_0_reg_401[4]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164 
       (.I0(x_dir_0_reg_401[3]),
        .I1(x_dir_0_reg_401[2]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165 
       (.I0(x_dir_0_reg_401[1]),
        .I1(x_dir_0_reg_401[0]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165_n_3 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[5]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[5]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[4]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[4]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[3]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[3]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h45)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_2 
       (.I0(OUTPUT_IMAGE_V_data_V_1_sel_wr),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .O(OUTPUT_IMAGE_V_data_V_1_load_A));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[7]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[7]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20_n_3 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[6]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[6]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21_n_3 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[5]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[5]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22_n_3 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[4]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[4]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25 
       (.I0(tmp_4_fu_1130_p4[14]),
        .I1(tmp_4_fu_1130_p4[15]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26 
       (.I0(tmp_4_fu_1130_p4[12]),
        .I1(tmp_4_fu_1130_p4[13]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27 
       (.I0(tmp_4_fu_1130_p4[10]),
        .I1(tmp_4_fu_1130_p4[11]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28 
       (.I0(tmp_4_fu_1130_p4[8]),
        .I1(tmp_4_fu_1130_p4[9]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29 
       (.I0(tmp_4_fu_1130_p4[15]),
        .I1(tmp_4_fu_1130_p4[14]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_7 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30 
       (.I0(tmp_4_fu_1130_p4[13]),
        .I1(tmp_4_fu_1130_p4[12]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31 
       (.I0(tmp_4_fu_1130_p4[11]),
        .I1(tmp_4_fu_1130_p4[10]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32 
       (.I0(tmp_4_fu_1130_p4[9]),
        .I1(tmp_4_fu_1130_p4[8]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37 
       (.I0(tmp_4_fu_1130_p4[6]),
        .I1(tmp_4_fu_1130_p4[7]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38 
       (.I0(tmp_4_fu_1130_p4[4]),
        .I1(tmp_4_fu_1130_p4[5]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39 
       (.I0(tmp_4_fu_1130_p4[2]),
        .I1(tmp_4_fu_1130_p4[3]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40 
       (.I0(tmp_4_fu_1130_p4[0]),
        .I1(tmp_4_fu_1130_p4[1]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41 
       (.I0(tmp_4_fu_1130_p4[7]),
        .I1(tmp_4_fu_1130_p4[6]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42 
       (.I0(tmp_4_fu_1130_p4[5]),
        .I1(tmp_4_fu_1130_p4[4]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43 
       (.I0(tmp_4_fu_1130_p4[3]),
        .I1(tmp_4_fu_1130_p4[2]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44 
       (.I0(tmp_4_fu_1130_p4[1]),
        .I1(tmp_4_fu_1130_p4[0]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44_n_3 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[29]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[29]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[28]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[28]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[27]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[27]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5 
       (.I0(tmp_2_fu_1114_p4[9]),
        .I1(tmp_2_fu_1114_p4[8]),
        .I2(\row_assign_reg_356[7]_i_4_n_3 ),
        .I3(tmp_2_fu_1114_p4[0]),
        .I4(tmp_2_fu_1114_p4[1]),
        .I5(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hD21E87B42DE1784B)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50 
       (.I0(x_dir_0_reg_401[30]),
        .I1(y_dir_0_reg_413[30]),
        .I2(y_dir_0_reg_413[31]),
        .I3(p_0_in),
        .I4(p_0_in2_in),
        .I5(x_dir_0_reg_401[31]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50_n_3 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3 ),
        .I1(x_dir_0_reg_401[30]),
        .I2(p_0_in),
        .I3(y_dir_0_reg_413[30]),
        .I4(p_0_in2_in),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51_n_3 ));
  (* HLUTNM = "lutpair23" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[29]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[29]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52_n_3 ));
  (* HLUTNM = "lutpair22" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[28]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[28]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53_n_3 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[26]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[26]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[25]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[25]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[24]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[24]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[23]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[23]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3 ));
  (* HLUTNM = "lutpair21" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[27]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[27]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58_n_3 ));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[26]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[26]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59_n_3 ));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[25]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[25]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60_n_3 ));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[24]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[24]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63 
       (.I0(y_dir_0_reg_413[30]),
        .I1(y_dir_0_reg_413[31]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64 
       (.I0(y_dir_0_reg_413[28]),
        .I1(y_dir_0_reg_413[29]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65 
       (.I0(y_dir_0_reg_413[26]),
        .I1(y_dir_0_reg_413[27]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66 
       (.I0(y_dir_0_reg_413[24]),
        .I1(y_dir_0_reg_413[25]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67 
       (.I0(y_dir_0_reg_413[30]),
        .I1(y_dir_0_reg_413[31]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68 
       (.I0(y_dir_0_reg_413[29]),
        .I1(y_dir_0_reg_413[28]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69 
       (.I0(y_dir_0_reg_413[27]),
        .I1(y_dir_0_reg_413[26]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70 
       (.I0(y_dir_0_reg_413[25]),
        .I1(y_dir_0_reg_413[24]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72 
       (.I0(x_dir_0_reg_401[30]),
        .I1(x_dir_0_reg_401[31]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73 
       (.I0(x_dir_0_reg_401[28]),
        .I1(x_dir_0_reg_401[29]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74 
       (.I0(x_dir_0_reg_401[26]),
        .I1(x_dir_0_reg_401[27]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75 
       (.I0(x_dir_0_reg_401[24]),
        .I1(x_dir_0_reg_401[25]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76 
       (.I0(x_dir_0_reg_401[30]),
        .I1(x_dir_0_reg_401[31]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77 
       (.I0(x_dir_0_reg_401[29]),
        .I1(x_dir_0_reg_401[28]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78 
       (.I0(x_dir_0_reg_401[27]),
        .I1(x_dir_0_reg_401[26]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79 
       (.I0(x_dir_0_reg_401[25]),
        .I1(x_dir_0_reg_401[24]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8 
       (.I0(tmp_4_fu_1130_p4[22]),
        .I1(tmp_4_fu_1130_p4[23]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8_n_3 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[22]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[22]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[21]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[21]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[20]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[20]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[19]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[19]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3 ));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[23]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[23]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86_n_3 ));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[22]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[22]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87_n_3 ));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[21]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[21]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88_n_3 ));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[20]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[20]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9 
       (.I0(tmp_4_fu_1130_p4[20]),
        .I1(tmp_4_fu_1130_p4[21]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9_n_3 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[18]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[18]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[17]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[17]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[16]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[16]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[15]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[15]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3 ));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[19]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[19]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94_n_3 ));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[18]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[18]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95_n_3 ));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[17]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[17]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96_n_3 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97 
       (.I0(p_0_in2_in),
        .I1(y_dir_0_reg_413[16]),
        .I2(p_0_in),
        .I3(x_dir_0_reg_401[16]),
        .I4(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3 ),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99 
       (.I0(y_dir_0_reg_413[22]),
        .I1(y_dir_0_reg_413[23]),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[0]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[1]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[2]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[3]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3 ,p_3_in}),
        .O({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_7 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_8 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_9 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_10 }),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10_n_3 }));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[4]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[5]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[6]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_A),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_A[7]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3 ));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132 
       (.CI(1'b0),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141 
       (.CI(1'b0),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24 
       (.CI(1'b0),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_3 ),
        .CO({\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_CO_UNCONNECTED [3],\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3 }),
        .O(tmp_4_fu_1130_p4[23:20]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3 }),
        .O(tmp_4_fu_1130_p4[19:16]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_3 ),
        .CO({p_0_in2_in,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_3 ),
        .CO({p_0_in,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_3 ),
        .CO({icmp_ln82_fu_1140_p2,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3 }),
        .O(tmp_4_fu_1130_p4[15:12]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3 }),
        .O(tmp_4_fu_1130_p4[11:8]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3 }),
        .O({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_7 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_8 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_9 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_10 }),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3 }),
        .O(tmp_4_fu_1130_p4[7:4]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3 }),
        .O(tmp_4_fu_1130_p4[3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131_n_3 }));
  CARRY4 \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98 
       (.CI(\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_3 ),
        .CO({\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_4 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_5 ,\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_6 }),
        .CYINIT(1'b0),
        .DI({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136_n_3 }),
        .O(\NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_O_UNCONNECTED [3:0]),
        .S({\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139_n_3 ,\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140_n_3 }));
  LUT5 #(
    .INIT(32'h88080000)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1 
       (.I0(icmp_ln82_fu_1140_p2),
        .I1(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3 ),
        .I2(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I4(OUTPUT_IMAGE_V_data_V_1_sel_wr),
        .O(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_2 
       (.I0(OUTPUT_IMAGE_V_data_V_1_sel_wr),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .O(OUTPUT_IMAGE_V_data_V_1_load_B));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[0]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[1]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[2]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[3]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[4]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[5]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[6]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  FDSE \OUTPUT_IMAGE_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_data_V_1_load_B),
        .D(\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3 ),
        .Q(OUTPUT_IMAGE_V_data_V_1_payload_B[7]),
        .S(\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1
       (.I0(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_data_V_1_sel),
        .O(OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBBB03330444FCCCF)) 
    OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1
       (.I0(\ap_CS_fsm[5]_i_2_n_3 ),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(\ap_CS_fsm[8]_i_3_n_3 ),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I5(OUTPUT_IMAGE_V_data_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF2AFA00000000)) 
    \OUTPUT_IMAGE_V_data_V_1_state[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I5(ap_rst_n),
        .O(\OUTPUT_IMAGE_V_data_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hDDFDDDDDDDDDDDDD)) 
    \OUTPUT_IMAGE_V_data_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I3(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_data_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_data_V_1_state[0]_i_1_n_3 ),
        .Q(\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_data_V_1_state),
        .Q(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[0]_i_1 
       (.I0(tmp_dest_V_fu_162[0]),
        .I1(tmp_dest_V_3_reg_1593[0]),
        .I2(INPUT_IMAGE_V_dest_V_0_data_out[0]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_dest_V_1_data_in[0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[1]_i_1 
       (.I0(tmp_dest_V_fu_162[1]),
        .I1(tmp_dest_V_3_reg_1593[1]),
        .I2(INPUT_IMAGE_V_dest_V_0_data_out[1]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_dest_V_1_data_in[1]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[2]_i_1 
       (.I0(tmp_dest_V_fu_162[2]),
        .I1(tmp_dest_V_3_reg_1593[2]),
        .I2(INPUT_IMAGE_V_dest_V_0_data_out[2]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_dest_V_1_data_in[2]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[3]_i_1 
       (.I0(tmp_dest_V_fu_162[3]),
        .I1(tmp_dest_V_3_reg_1593[3]),
        .I2(INPUT_IMAGE_V_dest_V_0_data_out[3]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_dest_V_1_data_in[3]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[4]_i_1 
       (.I0(tmp_dest_V_fu_162[4]),
        .I1(tmp_dest_V_3_reg_1593[4]),
        .I2(INPUT_IMAGE_V_dest_V_0_data_out[4]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_dest_V_1_data_in[4]));
  LUT3 #(
    .INIT(8'h45)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[5]_i_1 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_sel_wr),
        .I1(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I2(OUTPUT_IMAGE_TVALID),
        .O(OUTPUT_IMAGE_V_dest_V_1_load_A));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_A[5]_i_2 
       (.I0(tmp_dest_V_fu_162[5]),
        .I1(tmp_dest_V_3_reg_1593[5]),
        .I2(INPUT_IMAGE_V_dest_V_0_data_out[5]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_dest_V_1_data_in[5]));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_A),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[0]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_A),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[1]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_A),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[2]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_A),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[3]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_A),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[4]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_A),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[5]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_A[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \OUTPUT_IMAGE_V_dest_V_1_payload_B[5]_i_1 
       (.I0(OUTPUT_IMAGE_V_dest_V_1_sel_wr),
        .I1(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I2(OUTPUT_IMAGE_TVALID),
        .O(OUTPUT_IMAGE_V_dest_V_1_load_B));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_B),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[0]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_B),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[1]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_B),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[2]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_B),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[3]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_B),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[4]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_dest_V_1_load_B),
        .D(OUTPUT_IMAGE_V_dest_V_1_data_in[5]),
        .Q(OUTPUT_IMAGE_V_dest_V_1_payload_B[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1
       (.I0(OUTPUT_IMAGE_TVALID),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_dest_V_1_sel),
        .O(OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_dest_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_dest_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2303FFFFDCFC0000)) 
    OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I5(OUTPUT_IMAGE_V_dest_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_dest_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_dest_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F2FF00FFF2FF00)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_TVALID),
        .I4(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I5(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 
       (.I0(ap_CS_fsm_state11),
        .I1(sobel_filter_ctrl_bus_s_axi_U_n_13),
        .I2(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I3(sobel_filter_ctrl_bus_s_axi_U_n_12),
        .I4(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3 ),
        .I5(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3 ),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hD555000055550000)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3 
       (.I0(\ap_CS_fsm[5]_i_2_n_3 ),
        .I1(icmp_ln52_fu_1014_p2),
        .I2(icmp_ln52_1_fu_1020_p2),
        .I3(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(ap_CS_fsm_state5),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5 
       (.I0(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h23030000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2 
       (.I0(OUTPUT_IMAGE_TVALID),
        .I1(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_TVALID),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_A[0]_i_1 
       (.I0(tmp_id_V_fu_178[0]),
        .I1(tmp_id_V_3_reg_1587[0]),
        .I2(INPUT_IMAGE_V_id_V_0_data_out[0]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_id_V_1_data_in[0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_A[1]_i_1 
       (.I0(tmp_id_V_fu_178[1]),
        .I1(tmp_id_V_3_reg_1587[1]),
        .I2(INPUT_IMAGE_V_id_V_0_data_out[1]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_id_V_1_data_in[1]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_A[2]_i_1 
       (.I0(tmp_id_V_fu_178[2]),
        .I1(tmp_id_V_3_reg_1587[2]),
        .I2(INPUT_IMAGE_V_id_V_0_data_out[2]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_id_V_1_data_in[2]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_A[3]_i_1 
       (.I0(tmp_id_V_fu_178[3]),
        .I1(tmp_id_V_3_reg_1587[3]),
        .I2(INPUT_IMAGE_V_id_V_0_data_out[3]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_id_V_1_data_in[3]));
  LUT3 #(
    .INIT(8'h45)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_A[4]_i_1 
       (.I0(OUTPUT_IMAGE_V_id_V_1_sel_wr),
        .I1(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .I2(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .O(OUTPUT_IMAGE_V_id_V_1_load_A));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_A[4]_i_2 
       (.I0(tmp_id_V_fu_178[4]),
        .I1(tmp_id_V_3_reg_1587[4]),
        .I2(INPUT_IMAGE_V_id_V_0_data_out[4]),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(OUTPUT_IMAGE_V_id_V_1_data_in[4]));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_A),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[0]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_A),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[1]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_A),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[2]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_A),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[3]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_A),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[4]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_A[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \OUTPUT_IMAGE_V_id_V_1_payload_B[4]_i_1 
       (.I0(OUTPUT_IMAGE_V_id_V_1_sel_wr),
        .I1(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .I2(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .O(OUTPUT_IMAGE_V_id_V_1_load_B));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_B),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[0]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_B),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[1]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_B),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[2]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_B),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[3]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_id_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(OUTPUT_IMAGE_V_id_V_1_load_B),
        .D(OUTPUT_IMAGE_V_id_V_1_data_in[4]),
        .Q(OUTPUT_IMAGE_V_id_V_1_payload_B[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1
       (.I0(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_id_V_1_sel),
        .O(OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_id_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_id_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2303FFFFDCFC0000)) 
    OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .I5(OUTPUT_IMAGE_V_id_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_id_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_id_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F2FF00FFF2FF00)) 
    \OUTPUT_IMAGE_V_id_V_1_state[0]_i_1 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I3(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .I4(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .I5(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_id_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h23030000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_id_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_3_n_3 ),
        .O(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2 
       (.I0(ap_CS_fsm_state5),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I3(icmp_ln52_1_fu_1020_p2),
        .I4(icmp_ln52_fu_1014_p2),
        .O(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_id_V_1_state[1]_i_3 
       (.I0(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_3_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_id_V_1_state[0]_i_1_n_3 ),
        .Q(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFEA000000EA)) 
    \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_keep_V_0_data_out),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_keep_V_1_sel_wr),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_10),
        .I5(OUTPUT_IMAGE_V_keep_V_1_payload_A),
        .O(\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h2222222F22222220)) 
    \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2 
       (.I0(tmp_keep_V_3_reg_1569),
        .I1(\ap_CS_fsm[5]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3 ),
        .I3(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_11),
        .I5(tmp_keep_V_fu_166),
        .O(\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3 ));
  FDRE \OUTPUT_IMAGE_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_keep_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEAFF0000EA00)) 
    \OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_keep_V_0_data_out),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_keep_V_1_sel_wr),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_10),
        .I5(OUTPUT_IMAGE_V_keep_V_1_payload_B),
        .O(\OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1_n_3 ));
  FDRE \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_keep_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1
       (.I0(\OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_keep_V_1_sel),
        .O(OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_keep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_keep_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2303FFFFDCFC0000)) 
    OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .I5(OUTPUT_IMAGE_V_keep_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F2FF00FFF2FF00)) 
    \OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I3(\OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0] ),
        .I4(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .I5(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h23030000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2 
       (.I0(\OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1_n_3 ),
        .Q(\OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2FFF2F202000202)) 
    \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_last_V_1_sel_wr),
        .I3(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .I4(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .I5(OUTPUT_IMAGE_V_last_V_1_payload_A),
        .O(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2 
       (.I0(i_1_reg_460[0]),
        .I1(i_1_reg_460[10]),
        .I2(i_1_reg_460[9]),
        .I3(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3_n_3 ),
        .O(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3 
       (.I0(i_1_reg_460[7]),
        .I1(i_1_reg_460[8]),
        .I2(i_1_reg_460[5]),
        .I3(i_1_reg_460[6]),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_14),
        .O(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3_n_3 ));
  FDRE \OUTPUT_IMAGE_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_last_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2FFF2F2F20002020)) 
    \OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_last_V_1_sel_wr),
        .I3(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .I4(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .I5(OUTPUT_IMAGE_V_last_V_1_payload_B),
        .O(\OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1_n_3 ));
  FDRE \OUTPUT_IMAGE_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1
       (.I0(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_last_V_1_sel),
        .O(OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2303FFFFDCFC0000)) 
    OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .I5(OUTPUT_IMAGE_V_last_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F2FF00FFF2FF00)) 
    \OUTPUT_IMAGE_V_last_V_1_state[0]_i_1 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I3(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .I4(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .I5(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_last_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h23030000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_last_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_last_V_1_state[1]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_last_V_1_state[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_last_V_1_state[1]_i_2 
       (.I0(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_last_V_1_state[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_last_V_1_state[0]_i_1_n_3 ),
        .Q(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_last_V_1_state[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFEA000000EA)) 
    \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_strb_V_0_data_out),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_strb_V_1_sel_wr),
        .I4(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3 ),
        .I5(OUTPUT_IMAGE_V_strb_V_1_payload_A),
        .O(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h2222222F22222220)) 
    \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2 
       (.I0(tmp_strb_V_3_reg_1575),
        .I1(\ap_CS_fsm[5]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3 ),
        .I3(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_11),
        .I5(tmp_strb_V_fu_170),
        .O(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3 
       (.I0(\OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .O(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3 ));
  FDRE \OUTPUT_IMAGE_V_strb_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_strb_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEAFF0000EA00)) 
    \OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_strb_V_0_data_out),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_strb_V_1_sel_wr),
        .I4(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3 ),
        .I5(OUTPUT_IMAGE_V_strb_V_1_payload_B),
        .O(\OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1_n_3 ));
  FDRE \OUTPUT_IMAGE_V_strb_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_strb_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1
       (.I0(\OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_strb_V_1_sel),
        .O(OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_strb_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_strb_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2303FFFFDCFC0000)) 
    OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .I5(OUTPUT_IMAGE_V_strb_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_strb_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_strb_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F2FF00FFF2FF00)) 
    \OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I3(\OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ),
        .I4(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .I5(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h23030000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2 
       (.I0(\OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1_n_3 ),
        .Q(\OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFEA000000EA)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_user_V_0_data_out[0]),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_user_V_1_sel_wr),
        .I4(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3 ),
        .I5(OUTPUT_IMAGE_V_user_V_1_payload_A[0]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h2222222F22222220)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2 
       (.I0(tmp_user_V_3_reg_1581[0]),
        .I1(\ap_CS_fsm[5]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3 ),
        .I3(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_11),
        .I5(tmp_user_V_fu_174[0]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFEA000000EA)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_user_V_0_data_out[1]),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_user_V_1_sel_wr),
        .I4(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3 ),
        .I5(OUTPUT_IMAGE_V_user_V_1_payload_A[1]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h2222222F22222220)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2 
       (.I0(tmp_user_V_3_reg_1581[1]),
        .I1(\ap_CS_fsm[5]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3 ),
        .I3(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I4(sobel_filter_ctrl_bus_s_axi_U_n_11),
        .I5(tmp_user_V_fu_174[1]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3 
       (.I0(sobel_filter_ctrl_bus_s_axi_U_n_11),
        .I1(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I2(sobel_filter_ctrl_bus_s_axi_U_n_13),
        .I3(ap_CS_fsm_state11),
        .I4(\ap_CS_fsm[5]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4 
       (.I0(\OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5 
       (.I0(sobel_filter_ctrl_bus_s_axi_U_n_15),
        .I1(sobel_filter_ctrl_bus_s_axi_U_n_14),
        .I2(i_1_reg_460[1]),
        .I3(i_1_reg_460[0]),
        .I4(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6_n_3 ),
        .I5(ap_CS_fsm_state11),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6 
       (.I0(i_1_reg_460[10]),
        .I1(i_1_reg_460[9]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6_n_3 ));
  FDRE \OUTPUT_IMAGE_V_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_user_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_user_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_user_V_1_payload_A[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEAFF0000EA00)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1 
       (.I0(\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_user_V_0_data_out[0]),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_user_V_1_sel_wr),
        .I4(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3 ),
        .I5(OUTPUT_IMAGE_V_user_V_1_payload_B[0]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFEAFF0000EA00)) 
    \OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3 ),
        .I1(INPUT_IMAGE_V_user_V_0_data_out[1]),
        .I2(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3 ),
        .I3(OUTPUT_IMAGE_V_user_V_1_sel_wr),
        .I4(\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3 ),
        .I5(OUTPUT_IMAGE_V_user_V_1_payload_B[1]),
        .O(\OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1_n_3 ));
  FDRE \OUTPUT_IMAGE_V_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_user_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \OUTPUT_IMAGE_V_user_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_user_V_1_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h78)) 
    OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1
       (.I0(\OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .I2(OUTPUT_IMAGE_V_user_V_1_sel),
        .O(OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_user_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2303FFFFDCFC0000)) 
    OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .I5(OUTPUT_IMAGE_V_user_V_1_sel_wr),
        .O(OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    OUTPUT_IMAGE_V_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1_n_3),
        .Q(OUTPUT_IMAGE_V_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F2FF00FFF2FF00)) 
    \OUTPUT_IMAGE_V_user_V_1_state[0]_i_1 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3 ),
        .I3(\OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ),
        .I4(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .I5(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_user_V_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h23030000FFFFFFFF)) 
    \OUTPUT_IMAGE_V_user_V_1_state[1]_i_1 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .I1(\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3 ),
        .I2(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm[5]_i_2_n_3 ),
        .I4(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_user_V_1_state[1]_i_2_n_3 ),
        .O(\OUTPUT_IMAGE_V_user_V_1_state[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_user_V_1_state[1]_i_2 
       (.I0(\OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ),
        .I1(OUTPUT_IMAGE_TREADY),
        .O(\OUTPUT_IMAGE_V_user_V_1_state[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_user_V_1_state[0]_i_1_n_3 ),
        .Q(\OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \OUTPUT_IMAGE_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\OUTPUT_IMAGE_V_user_V_1_state[1]_i_1_n_3 ),
        .Q(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln34_1_reg_1564[0]_i_1 
       (.I0(counter_2_reg_379[0]),
        .O(add_ln34_1_fu_596_p2[0]));
  FDRE \add_ln34_1_reg_1564_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[0]),
        .Q(add_ln34_1_reg_1564[0]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[10] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[10]),
        .Q(add_ln34_1_reg_1564[10]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[11] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[11]),
        .Q(add_ln34_1_reg_1564[11]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[12] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[12]),
        .Q(add_ln34_1_reg_1564[12]),
        .R(1'b0));
  CARRY4 \add_ln34_1_reg_1564_reg[12]_i_1 
       (.CI(\add_ln34_1_reg_1564_reg[8]_i_1_n_3 ),
        .CO({\add_ln34_1_reg_1564_reg[12]_i_1_n_3 ,\add_ln34_1_reg_1564_reg[12]_i_1_n_4 ,\add_ln34_1_reg_1564_reg[12]_i_1_n_5 ,\add_ln34_1_reg_1564_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_1_fu_596_p2[12:9]),
        .S(counter_2_reg_379[12:9]));
  FDRE \add_ln34_1_reg_1564_reg[13] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[13]),
        .Q(add_ln34_1_reg_1564[13]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[14] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[14]),
        .Q(add_ln34_1_reg_1564[14]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[15] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[15]),
        .Q(add_ln34_1_reg_1564[15]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[16] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[16]),
        .Q(add_ln34_1_reg_1564[16]),
        .R(1'b0));
  CARRY4 \add_ln34_1_reg_1564_reg[16]_i_1 
       (.CI(\add_ln34_1_reg_1564_reg[12]_i_1_n_3 ),
        .CO({\add_ln34_1_reg_1564_reg[16]_i_1_n_3 ,\add_ln34_1_reg_1564_reg[16]_i_1_n_4 ,\add_ln34_1_reg_1564_reg[16]_i_1_n_5 ,\add_ln34_1_reg_1564_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_1_fu_596_p2[16:13]),
        .S(counter_2_reg_379[16:13]));
  FDRE \add_ln34_1_reg_1564_reg[17] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[17]),
        .Q(add_ln34_1_reg_1564[17]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[18] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[18]),
        .Q(add_ln34_1_reg_1564[18]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[19] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[19]),
        .Q(add_ln34_1_reg_1564[19]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[1]),
        .Q(add_ln34_1_reg_1564[1]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[20] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[20]),
        .Q(add_ln34_1_reg_1564[20]),
        .R(1'b0));
  CARRY4 \add_ln34_1_reg_1564_reg[20]_i_1 
       (.CI(\add_ln34_1_reg_1564_reg[16]_i_1_n_3 ),
        .CO({\NLW_add_ln34_1_reg_1564_reg[20]_i_1_CO_UNCONNECTED [3],\add_ln34_1_reg_1564_reg[20]_i_1_n_4 ,\add_ln34_1_reg_1564_reg[20]_i_1_n_5 ,\add_ln34_1_reg_1564_reg[20]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_1_fu_596_p2[20:17]),
        .S(counter_2_reg_379[20:17]));
  FDRE \add_ln34_1_reg_1564_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[2]),
        .Q(add_ln34_1_reg_1564[2]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[3]),
        .Q(add_ln34_1_reg_1564[3]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[4]),
        .Q(add_ln34_1_reg_1564[4]),
        .R(1'b0));
  CARRY4 \add_ln34_1_reg_1564_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\add_ln34_1_reg_1564_reg[4]_i_1_n_3 ,\add_ln34_1_reg_1564_reg[4]_i_1_n_4 ,\add_ln34_1_reg_1564_reg[4]_i_1_n_5 ,\add_ln34_1_reg_1564_reg[4]_i_1_n_6 }),
        .CYINIT(counter_2_reg_379[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_1_fu_596_p2[4:1]),
        .S(counter_2_reg_379[4:1]));
  FDRE \add_ln34_1_reg_1564_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[5]),
        .Q(add_ln34_1_reg_1564[5]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[6]),
        .Q(add_ln34_1_reg_1564[6]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[7]),
        .Q(add_ln34_1_reg_1564[7]),
        .R(1'b0));
  FDRE \add_ln34_1_reg_1564_reg[8] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[8]),
        .Q(add_ln34_1_reg_1564[8]),
        .R(1'b0));
  CARRY4 \add_ln34_1_reg_1564_reg[8]_i_1 
       (.CI(\add_ln34_1_reg_1564_reg[4]_i_1_n_3 ),
        .CO({\add_ln34_1_reg_1564_reg[8]_i_1_n_3 ,\add_ln34_1_reg_1564_reg[8]_i_1_n_4 ,\add_ln34_1_reg_1564_reg[8]_i_1_n_5 ,\add_ln34_1_reg_1564_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_1_fu_596_p2[8:5]),
        .S(counter_2_reg_379[8:5]));
  FDRE \add_ln34_1_reg_1564_reg[9] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(add_ln34_1_fu_596_p2[9]),
        .Q(add_ln34_1_reg_1564[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln34_reg_1500[12]_i_2 
       (.I0(counter_1_reg_345[10]),
        .O(\add_ln34_reg_1500[12]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAAAA)) 
    \add_ln34_reg_1500[20]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\row_assign_reg_356_reg_n_3_[6] ),
        .I2(\row_assign_reg_356_reg_n_3_[7] ),
        .I3(\row_assign_reg_356_reg_n_3_[1] ),
        .I4(\row_assign_reg_356_reg_n_3_[0] ),
        .I5(\counter_0_reg_333[20]_i_3_n_3 ),
        .O(col_assign_reg_3670));
  FDRE \add_ln34_reg_1500_reg[0] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[0]),
        .Q(add_ln34_reg_1500[0]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[10] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[10]),
        .Q(add_ln34_reg_1500[10]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[11] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[11]),
        .Q(add_ln34_reg_1500[11]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[12] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[12]),
        .Q(add_ln34_reg_1500[12]),
        .R(1'b0));
  CARRY4 \add_ln34_reg_1500_reg[12]_i_1 
       (.CI(1'b0),
        .CO({\add_ln34_reg_1500_reg[12]_i_1_n_3 ,\add_ln34_reg_1500_reg[12]_i_1_n_4 ,\add_ln34_reg_1500_reg[12]_i_1_n_5 ,\add_ln34_reg_1500_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_1_reg_345[10],1'b0}),
        .O(add_ln34_fu_507_p2[12:9]),
        .S({counter_1_reg_345[12:11],\add_ln34_reg_1500[12]_i_2_n_3 ,counter_1_reg_345[9]}));
  FDRE \add_ln34_reg_1500_reg[13] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[13]),
        .Q(add_ln34_reg_1500[13]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[14] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[14]),
        .Q(add_ln34_reg_1500[14]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[15] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[15]),
        .Q(add_ln34_reg_1500[15]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[16] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[16]),
        .Q(add_ln34_reg_1500[16]),
        .R(1'b0));
  CARRY4 \add_ln34_reg_1500_reg[16]_i_1 
       (.CI(\add_ln34_reg_1500_reg[12]_i_1_n_3 ),
        .CO({\add_ln34_reg_1500_reg[16]_i_1_n_3 ,\add_ln34_reg_1500_reg[16]_i_1_n_4 ,\add_ln34_reg_1500_reg[16]_i_1_n_5 ,\add_ln34_reg_1500_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_fu_507_p2[16:13]),
        .S(counter_1_reg_345[16:13]));
  FDRE \add_ln34_reg_1500_reg[17] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[17]),
        .Q(add_ln34_reg_1500[17]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[18] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[18]),
        .Q(add_ln34_reg_1500[18]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[19] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[19]),
        .Q(add_ln34_reg_1500[19]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[1] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[1]),
        .Q(add_ln34_reg_1500[1]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[20] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[20]),
        .Q(add_ln34_reg_1500[20]),
        .R(1'b0));
  CARRY4 \add_ln34_reg_1500_reg[20]_i_2 
       (.CI(\add_ln34_reg_1500_reg[16]_i_1_n_3 ),
        .CO({\NLW_add_ln34_reg_1500_reg[20]_i_2_CO_UNCONNECTED [3],\add_ln34_reg_1500_reg[20]_i_2_n_4 ,\add_ln34_reg_1500_reg[20]_i_2_n_5 ,\add_ln34_reg_1500_reg[20]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln34_fu_507_p2[20:17]),
        .S(counter_1_reg_345[20:17]));
  FDRE \add_ln34_reg_1500_reg[2] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[2]),
        .Q(add_ln34_reg_1500[2]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[3] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[3]),
        .Q(add_ln34_reg_1500[3]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[4] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[4]),
        .Q(add_ln34_reg_1500[4]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[5] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[5]),
        .Q(add_ln34_reg_1500[5]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[6] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[6]),
        .Q(add_ln34_reg_1500[6]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[7] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[7]),
        .Q(add_ln34_reg_1500[7]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[8] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(counter_1_reg_345[8]),
        .Q(add_ln34_reg_1500[8]),
        .R(1'b0));
  FDRE \add_ln34_reg_1500_reg[9] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(add_ln34_fu_507_p2[9]),
        .Q(add_ln34_reg_1500[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \and_ln41_1_reg_1551[0]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(\row_assign_reg_356[7]_i_3_n_3 ),
        .O(and_ln41_1_reg_15510));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \and_ln41_1_reg_1551[0]_i_2 
       (.I0(\col_assign_reg_367_reg_n_3_[0] ),
        .I1(tmp_2_fu_1114_p4[0]),
        .I2(tmp_2_fu_1114_p4[1]),
        .I3(icmp_ln41_1_reg_1505),
        .I4(\icmp_ln41_reg_1487_reg_n_3_[0] ),
        .I5(\and_ln41_1_reg_1551[0]_i_3_n_3 ),
        .O(and_ln41_1_fu_564_p2));
  LUT3 #(
    .INIT(8'h10)) 
    \and_ln41_1_reg_1551[0]_i_3 
       (.I0(tmp_2_fu_1114_p4[9]),
        .I1(tmp_2_fu_1114_p4[8]),
        .I2(\row_assign_reg_356[7]_i_4_n_3 ),
        .O(\and_ln41_1_reg_1551[0]_i_3_n_3 ));
  FDRE \and_ln41_1_reg_1551_reg[0] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(and_ln41_1_fu_564_p2),
        .Q(and_ln41_1_reg_1551),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \and_ln52_reg_1653[0]_i_1 
       (.I0(icmp_ln52_1_fu_1020_p2),
        .I1(icmp_ln52_fu_1014_p2),
        .O(p_92_in));
  FDRE \and_ln52_reg_1653_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(p_92_in),
        .Q(and_ln52_reg_1653),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(\ap_CS_fsm[10]_i_2_n_3 ),
        .I1(ap_CS_fsm_state11),
        .I2(ap_NS_fsm115_out),
        .I3(ap_CS_fsm_state12),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .O(ap_NS_fsm[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \ap_CS_fsm[10]_i_2 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(sobel_filter_ctrl_bus_s_axi_U_n_13),
        .I2(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .I3(sobel_filter_ctrl_bus_s_axi_U_n_12),
        .I4(\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3 ),
        .I5(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3 ),
        .O(\ap_CS_fsm[10]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(ap_CS_fsm_state12),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3 ),
        .O(ap_NS_fsm[11]));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAAAAAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(and_ln41_1_reg_15510),
        .I1(icmp_ln52_fu_1014_p2),
        .I2(icmp_ln52_1_fu_1020_p2),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I4(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I5(ap_CS_fsm_state5),
        .O(ap_NS_fsm[4]));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\ap_CS_fsm[5]_i_2_n_3 ),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(ap_NS_fsm17_out),
        .I3(ap_NS_fsm112_out),
        .O(ap_NS_fsm[5]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(\colOffset_0_reg_390_reg_n_3_[2] ),
        .I1(\colOffset_0_reg_390_reg_n_3_[0] ),
        .I2(\colOffset_0_reg_390_reg_n_3_[1] ),
        .I3(ap_CS_fsm_state6),
        .O(\ap_CS_fsm[5]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFAABAAABAAABA)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(\ap_CS_fsm[8]_i_2_n_3 ),
        .I1(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I2(\ap_CS_fsm[8]_i_3_n_3 ),
        .I3(icmp_ln61_fu_1032_p2),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(ap_CS_fsm_state10),
        .O(ap_NS_fsm[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_10 
       (.I0(add_ln34_1_fu_596_p2[17]),
        .I1(add_ln34_1_fu_596_p2[16]),
        .O(\ap_CS_fsm[8]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_12 
       (.I0(add_ln34_1_fu_596_p2[14]),
        .I1(add_ln34_1_fu_596_p2[15]),
        .O(\ap_CS_fsm[8]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_13 
       (.I0(add_ln34_1_fu_596_p2[12]),
        .I1(add_ln34_1_fu_596_p2[13]),
        .O(\ap_CS_fsm[8]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[8]_i_14 
       (.I0(add_ln34_1_fu_596_p2[10]),
        .I1(add_ln34_1_fu_596_p2[11]),
        .O(\ap_CS_fsm[8]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_15 
       (.I0(add_ln34_1_fu_596_p2[8]),
        .I1(add_ln34_1_fu_596_p2[9]),
        .O(\ap_CS_fsm[8]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_16 
       (.I0(add_ln34_1_fu_596_p2[15]),
        .I1(add_ln34_1_fu_596_p2[14]),
        .O(\ap_CS_fsm[8]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_17 
       (.I0(add_ln34_1_fu_596_p2[13]),
        .I1(add_ln34_1_fu_596_p2[12]),
        .O(\ap_CS_fsm[8]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[8]_i_18 
       (.I0(add_ln34_1_fu_596_p2[11]),
        .I1(add_ln34_1_fu_596_p2[10]),
        .O(\ap_CS_fsm[8]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_19 
       (.I0(add_ln34_1_fu_596_p2[9]),
        .I1(add_ln34_1_fu_596_p2[8]),
        .O(\ap_CS_fsm[8]_i_19_n_3 ));
  LUT5 #(
    .INIT(32'h44744444)) 
    \ap_CS_fsm[8]_i_2 
       (.I0(\ap_CS_fsm[5]_i_2_n_3 ),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(icmp_ln61_reg_1657),
        .I3(and_ln52_reg_1653),
        .I4(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[8]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_20 
       (.I0(add_ln34_1_fu_596_p2[6]),
        .I1(add_ln34_1_fu_596_p2[7]),
        .O(\ap_CS_fsm[8]_i_20_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_21 
       (.I0(add_ln34_1_fu_596_p2[4]),
        .I1(add_ln34_1_fu_596_p2[5]),
        .O(\ap_CS_fsm[8]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_22 
       (.I0(add_ln34_1_fu_596_p2[2]),
        .I1(add_ln34_1_fu_596_p2[3]),
        .O(\ap_CS_fsm[8]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_23 
       (.I0(add_ln34_1_fu_596_p2[7]),
        .I1(add_ln34_1_fu_596_p2[6]),
        .O(\ap_CS_fsm[8]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_24 
       (.I0(add_ln34_1_fu_596_p2[5]),
        .I1(add_ln34_1_fu_596_p2[4]),
        .O(\ap_CS_fsm[8]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_25 
       (.I0(add_ln34_1_fu_596_p2[3]),
        .I1(add_ln34_1_fu_596_p2[2]),
        .O(\ap_CS_fsm[8]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_26 
       (.I0(counter_2_reg_379[0]),
        .I1(add_ln34_1_fu_596_p2[1]),
        .O(\ap_CS_fsm[8]_i_26_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[8]_i_3 
       (.I0(icmp_ln52_fu_1014_p2),
        .I1(icmp_ln52_1_fu_1020_p2),
        .O(\ap_CS_fsm[8]_i_3_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_6 
       (.I0(add_ln34_1_fu_596_p2[18]),
        .I1(add_ln34_1_fu_596_p2[19]),
        .O(\ap_CS_fsm[8]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[8]_i_7 
       (.I0(add_ln34_1_fu_596_p2[16]),
        .I1(add_ln34_1_fu_596_p2[17]),
        .O(\ap_CS_fsm[8]_i_7_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_CS_fsm[8]_i_8 
       (.I0(add_ln34_1_fu_596_p2[20]),
        .O(\ap_CS_fsm[8]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[8]_i_9 
       (.I0(add_ln34_1_fu_596_p2[19]),
        .I1(add_ln34_1_fu_596_p2[18]),
        .O(\ap_CS_fsm[8]_i_9_n_3 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(icmp_ln52_fu_1014_p2),
        .I1(icmp_ln52_1_fu_1020_p2),
        .I2(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .I3(ap_CS_fsm_state5),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(ap_CS_fsm_state10),
        .O(ap_NS_fsm[9]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(ap_CS_fsm_state12),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\counter_2_reg_379[20]_i_1_n_3 ),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rowOffset_reg_16870),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  CARRY4 \ap_CS_fsm_reg[8]_i_11 
       (.CI(1'b0),
        .CO({\ap_CS_fsm_reg[8]_i_11_n_3 ,\ap_CS_fsm_reg[8]_i_11_n_4 ,\ap_CS_fsm_reg[8]_i_11_n_5 ,\ap_CS_fsm_reg[8]_i_11_n_6 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[8]_i_20_n_3 ,\ap_CS_fsm[8]_i_21_n_3 ,\ap_CS_fsm[8]_i_22_n_3 ,add_ln34_1_fu_596_p2[1]}),
        .O(\NLW_ap_CS_fsm_reg[8]_i_11_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[8]_i_23_n_3 ,\ap_CS_fsm[8]_i_24_n_3 ,\ap_CS_fsm[8]_i_25_n_3 ,\ap_CS_fsm[8]_i_26_n_3 }));
  CARRY4 \ap_CS_fsm_reg[8]_i_4 
       (.CI(\ap_CS_fsm_reg[8]_i_5_n_3 ),
        .CO({\NLW_ap_CS_fsm_reg[8]_i_4_CO_UNCONNECTED [3],icmp_ln61_fu_1032_p2,\ap_CS_fsm_reg[8]_i_4_n_5 ,\ap_CS_fsm_reg[8]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ap_CS_fsm[8]_i_6_n_3 ,\ap_CS_fsm[8]_i_7_n_3 }),
        .O(\NLW_ap_CS_fsm_reg[8]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\ap_CS_fsm[8]_i_8_n_3 ,\ap_CS_fsm[8]_i_9_n_3 ,\ap_CS_fsm[8]_i_10_n_3 }));
  CARRY4 \ap_CS_fsm_reg[8]_i_5 
       (.CI(\ap_CS_fsm_reg[8]_i_11_n_3 ),
        .CO({\ap_CS_fsm_reg[8]_i_5_n_3 ,\ap_CS_fsm_reg[8]_i_5_n_4 ,\ap_CS_fsm_reg[8]_i_5_n_5 ,\ap_CS_fsm_reg[8]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[8]_i_12_n_3 ,\ap_CS_fsm[8]_i_13_n_3 ,\ap_CS_fsm[8]_i_14_n_3 ,\ap_CS_fsm[8]_i_15_n_3 }),
        .O(\NLW_ap_CS_fsm_reg[8]_i_5_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[8]_i_16_n_3 ,\ap_CS_fsm[8]_i_17_n_3 ,\ap_CS_fsm[8]_i_18_n_3 ,\ap_CS_fsm[8]_i_19_n_3 }));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  FDSE \colOffset_0_reg_390_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(colOffset_reg_1664[0]),
        .Q(\colOffset_0_reg_390_reg_n_3_[0] ),
        .S(ap_NS_fsm112_out));
  FDSE \colOffset_0_reg_390_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(colOffset_reg_1664[1]),
        .Q(\colOffset_0_reg_390_reg_n_3_[1] ),
        .S(ap_NS_fsm112_out));
  FDSE \colOffset_0_reg_390_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(colOffset_reg_1664[2]),
        .Q(\colOffset_0_reg_390_reg_n_3_[2] ),
        .S(ap_NS_fsm112_out));
  LUT5 #(
    .INIT(32'h33FF2300)) 
    \colOffset_reg_1664[0]_i_1 
       (.I0(\colOffset_0_reg_390_reg_n_3_[2] ),
        .I1(\colOffset_0_reg_390_reg_n_3_[0] ),
        .I2(\colOffset_0_reg_390_reg_n_3_[1] ),
        .I3(ap_CS_fsm_state6),
        .I4(colOffset_reg_1664[0]),
        .O(\colOffset_reg_1664[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h3CFF2C00)) 
    \colOffset_reg_1664[1]_i_1 
       (.I0(\colOffset_0_reg_390_reg_n_3_[2] ),
        .I1(\colOffset_0_reg_390_reg_n_3_[0] ),
        .I2(\colOffset_0_reg_390_reg_n_3_[1] ),
        .I3(ap_CS_fsm_state6),
        .I4(colOffset_reg_1664[1]),
        .O(\colOffset_reg_1664[1]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h7AFF6A00)) 
    \colOffset_reg_1664[2]_i_1 
       (.I0(\colOffset_0_reg_390_reg_n_3_[2] ),
        .I1(\colOffset_0_reg_390_reg_n_3_[0] ),
        .I2(\colOffset_0_reg_390_reg_n_3_[1] ),
        .I3(ap_CS_fsm_state6),
        .I4(colOffset_reg_1664[2]),
        .O(\colOffset_reg_1664[2]_i_1_n_3 ));
  FDRE \colOffset_reg_1664_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\colOffset_reg_1664[0]_i_1_n_3 ),
        .Q(colOffset_reg_1664[0]),
        .R(1'b0));
  FDRE \colOffset_reg_1664_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\colOffset_reg_1664[1]_i_1_n_3 ),
        .Q(colOffset_reg_1664[1]),
        .R(1'b0));
  FDRE \colOffset_reg_1664_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\colOffset_reg_1664[2]_i_1_n_3 ),
        .Q(colOffset_reg_1664[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \col_assign_reg_367[10]_i_1 
       (.I0(col_assign_reg_3670),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(icmp_ln61_reg_1657),
        .I3(and_ln52_reg_1653),
        .I4(ap_CS_fsm_state9),
        .O(col_assign_reg_367));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \col_assign_reg_367[10]_i_2 
       (.I0(ap_CS_fsm_state9),
        .I1(and_ln52_reg_1653),
        .I2(icmp_ln61_reg_1657),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .O(\col_assign_reg_367[10]_i_2_n_3 ));
  FDRE \col_assign_reg_367_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[0]),
        .Q(\col_assign_reg_367_reg_n_3_[0] ),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[10] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[10]),
        .Q(tmp_2_fu_1114_p4[9]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[1]),
        .Q(tmp_2_fu_1114_p4[0]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[2]),
        .Q(tmp_2_fu_1114_p4[1]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[3]),
        .Q(tmp_2_fu_1114_p4[2]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[4]),
        .Q(tmp_2_fu_1114_p4[3]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[5]),
        .Q(tmp_2_fu_1114_p4[4]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[6]),
        .Q(tmp_2_fu_1114_p4[5]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[7]),
        .Q(tmp_2_fu_1114_p4[6]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[8] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[8]),
        .Q(tmp_2_fu_1114_p4[7]),
        .R(col_assign_reg_367));
  FDRE \col_assign_reg_367_reg[9] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(j_reg_1536[9]),
        .Q(tmp_2_fu_1114_p4[8]),
        .R(col_assign_reg_367));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \counter_0_reg_333[20]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(\row_assign_reg_356_reg_n_3_[6] ),
        .I2(\row_assign_reg_356_reg_n_3_[7] ),
        .I3(\row_assign_reg_356_reg_n_3_[1] ),
        .I4(\row_assign_reg_356_reg_n_3_[0] ),
        .I5(\counter_0_reg_333[20]_i_3_n_3 ),
        .O(ap_NS_fsm114_out));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter_0_reg_333[20]_i_3 
       (.I0(\row_assign_reg_356_reg_n_3_[3] ),
        .I1(\row_assign_reg_356_reg_n_3_[2] ),
        .I2(\row_assign_reg_356_reg_n_3_[5] ),
        .I3(\row_assign_reg_356_reg_n_3_[4] ),
        .O(\counter_0_reg_333[20]_i_3_n_3 ));
  FDSE \counter_0_reg_333_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[0]),
        .Q(\counter_0_reg_333_reg_n_3_[0] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[10]),
        .Q(\counter_0_reg_333_reg_n_3_[10] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[11]),
        .Q(\counter_0_reg_333_reg_n_3_[11] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[12]),
        .Q(\counter_0_reg_333_reg_n_3_[12] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[13]),
        .Q(\counter_0_reg_333_reg_n_3_[13] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[14]),
        .Q(\counter_0_reg_333_reg_n_3_[14] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[15]),
        .Q(\counter_0_reg_333_reg_n_3_[15] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[16]),
        .Q(\counter_0_reg_333_reg_n_3_[16] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[17]),
        .Q(\counter_0_reg_333_reg_n_3_[17] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[18]),
        .Q(\counter_0_reg_333_reg_n_3_[18] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[19]),
        .Q(\counter_0_reg_333_reg_n_3_[19] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[1]),
        .Q(\counter_0_reg_333_reg_n_3_[1] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[20]),
        .Q(\counter_0_reg_333_reg_n_3_[20] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[2]),
        .Q(\counter_0_reg_333_reg_n_3_[2] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[3]),
        .Q(\counter_0_reg_333_reg_n_3_[3] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[4]),
        .Q(\counter_0_reg_333_reg_n_3_[4] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[5]),
        .Q(\counter_0_reg_333_reg_n_3_[5] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[6]),
        .Q(\counter_0_reg_333_reg_n_3_[6] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[7]),
        .Q(\counter_0_reg_333_reg_n_3_[7] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[8]),
        .Q(\counter_0_reg_333_reg_n_3_[8] ),
        .S(counter_0_reg_333));
  FDSE \counter_0_reg_333_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(counter_reg_1482[9]),
        .Q(\counter_0_reg_333_reg_n_3_[9] ),
        .S(counter_0_reg_333));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[0]_i_1 
       (.I0(add_ln34_reg_1500[0]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[0] ),
        .O(\counter_1_reg_345[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[10]_i_1 
       (.I0(add_ln34_reg_1500[10]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[10] ),
        .O(\counter_1_reg_345[10]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[11]_i_1 
       (.I0(add_ln34_reg_1500[11]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[11] ),
        .O(\counter_1_reg_345[11]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[12]_i_1 
       (.I0(add_ln34_reg_1500[12]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[12] ),
        .O(\counter_1_reg_345[12]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[13]_i_1 
       (.I0(add_ln34_reg_1500[13]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[13] ),
        .O(\counter_1_reg_345[13]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[14]_i_1 
       (.I0(add_ln34_reg_1500[14]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[14] ),
        .O(\counter_1_reg_345[14]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[15]_i_1 
       (.I0(add_ln34_reg_1500[15]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[15] ),
        .O(\counter_1_reg_345[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[16]_i_1 
       (.I0(add_ln34_reg_1500[16]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[16] ),
        .O(\counter_1_reg_345[16]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[17]_i_1 
       (.I0(add_ln34_reg_1500[17]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[17] ),
        .O(\counter_1_reg_345[17]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[18]_i_1 
       (.I0(add_ln34_reg_1500[18]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[18] ),
        .O(\counter_1_reg_345[18]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[19]_i_1 
       (.I0(add_ln34_reg_1500[19]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[19] ),
        .O(\counter_1_reg_345[19]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[1]_i_1 
       (.I0(add_ln34_reg_1500[1]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[1] ),
        .O(\counter_1_reg_345[1]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEF0000)) 
    \counter_1_reg_345[20]_i_1 
       (.I0(i_0_reg_322[1]),
        .I1(i_0_reg_322[0]),
        .I2(i_0_reg_322[3]),
        .I3(i_0_reg_322[2]),
        .I4(ap_CS_fsm_state2),
        .I5(ap_NS_fsm113_out),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[20]_i_2 
       (.I0(add_ln34_reg_1500[20]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[20] ),
        .O(\counter_1_reg_345[20]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[2]_i_1 
       (.I0(add_ln34_reg_1500[2]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[2] ),
        .O(\counter_1_reg_345[2]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[3]_i_1 
       (.I0(add_ln34_reg_1500[3]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[3] ),
        .O(\counter_1_reg_345[3]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[4]_i_1 
       (.I0(add_ln34_reg_1500[4]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[4] ),
        .O(\counter_1_reg_345[4]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[5]_i_1 
       (.I0(add_ln34_reg_1500[5]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[5] ),
        .O(\counter_1_reg_345[5]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[6]_i_1 
       (.I0(add_ln34_reg_1500[6]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[6] ),
        .O(\counter_1_reg_345[6]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[7]_i_1 
       (.I0(add_ln34_reg_1500[7]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[7] ),
        .O(\counter_1_reg_345[7]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[8]_i_1 
       (.I0(add_ln34_reg_1500[8]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[8] ),
        .O(\counter_1_reg_345[8]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1_reg_345[9]_i_1 
       (.I0(add_ln34_reg_1500[9]),
        .I1(ap_NS_fsm113_out),
        .I2(\counter_0_reg_333_reg_n_3_[9] ),
        .O(\counter_1_reg_345[9]_i_1_n_3 ));
  FDRE \counter_1_reg_345_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[0]_i_1_n_3 ),
        .Q(counter_1_reg_345[0]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[10]_i_1_n_3 ),
        .Q(counter_1_reg_345[10]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[11]_i_1_n_3 ),
        .Q(counter_1_reg_345[11]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[12]_i_1_n_3 ),
        .Q(counter_1_reg_345[12]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[13]_i_1_n_3 ),
        .Q(counter_1_reg_345[13]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[14]_i_1_n_3 ),
        .Q(counter_1_reg_345[14]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[15]_i_1_n_3 ),
        .Q(counter_1_reg_345[15]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[16]_i_1_n_3 ),
        .Q(counter_1_reg_345[16]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[17]_i_1_n_3 ),
        .Q(counter_1_reg_345[17]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[18]_i_1_n_3 ),
        .Q(counter_1_reg_345[18]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[19]_i_1_n_3 ),
        .Q(counter_1_reg_345[19]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[1]_i_1_n_3 ),
        .Q(counter_1_reg_345[1]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[20]_i_2_n_3 ),
        .Q(counter_1_reg_345[20]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[2]_i_1_n_3 ),
        .Q(counter_1_reg_345[2]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[3]_i_1_n_3 ),
        .Q(counter_1_reg_345[3]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[4]_i_1_n_3 ),
        .Q(counter_1_reg_345[4]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[5]_i_1_n_3 ),
        .Q(counter_1_reg_345[5]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[6]_i_1_n_3 ),
        .Q(counter_1_reg_345[6]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[7]_i_1_n_3 ),
        .Q(counter_1_reg_345[7]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[8]_i_1_n_3 ),
        .Q(counter_1_reg_345[8]),
        .R(1'b0));
  FDRE \counter_1_reg_345_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\counter_1_reg_345[9]_i_1_n_3 ),
        .Q(counter_1_reg_345[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[0]_i_1 
       (.I0(add_ln34_1_reg_1564[0]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[0]),
        .O(\counter_2_reg_379[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[10]_i_1 
       (.I0(add_ln34_1_reg_1564[10]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[10]),
        .O(\counter_2_reg_379[10]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[11]_i_1 
       (.I0(add_ln34_1_reg_1564[11]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[11]),
        .O(\counter_2_reg_379[11]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[12]_i_1 
       (.I0(add_ln34_1_reg_1564[12]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[12]),
        .O(\counter_2_reg_379[12]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[13]_i_1 
       (.I0(add_ln34_1_reg_1564[13]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[13]),
        .O(\counter_2_reg_379[13]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[14]_i_1 
       (.I0(add_ln34_1_reg_1564[14]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[14]),
        .O(\counter_2_reg_379[14]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[15]_i_1 
       (.I0(add_ln34_1_reg_1564[15]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[15]),
        .O(\counter_2_reg_379[15]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[16]_i_1 
       (.I0(add_ln34_1_reg_1564[16]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[16]),
        .O(\counter_2_reg_379[16]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[17]_i_1 
       (.I0(add_ln34_1_reg_1564[17]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[17]),
        .O(\counter_2_reg_379[17]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[18]_i_1 
       (.I0(add_ln34_1_reg_1564[18]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[18]),
        .O(\counter_2_reg_379[18]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[19]_i_1 
       (.I0(add_ln34_1_reg_1564[19]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[19]),
        .O(\counter_2_reg_379[19]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[1]_i_1 
       (.I0(add_ln34_1_reg_1564[1]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[1]),
        .O(\counter_2_reg_379[1]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \counter_2_reg_379[20]_i_1 
       (.I0(col_assign_reg_3670),
        .I1(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I2(icmp_ln61_reg_1657),
        .I3(and_ln52_reg_1653),
        .I4(ap_CS_fsm_state9),
        .O(\counter_2_reg_379[20]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[20]_i_2 
       (.I0(add_ln34_1_reg_1564[20]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[20]),
        .O(\counter_2_reg_379[20]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[2]_i_1 
       (.I0(add_ln34_1_reg_1564[2]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[2]),
        .O(\counter_2_reg_379[2]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[3]_i_1 
       (.I0(add_ln34_1_reg_1564[3]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[3]),
        .O(\counter_2_reg_379[3]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[4]_i_1 
       (.I0(add_ln34_1_reg_1564[4]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[4]),
        .O(\counter_2_reg_379[4]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[5]_i_1 
       (.I0(add_ln34_1_reg_1564[5]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[5]),
        .O(\counter_2_reg_379[5]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[6]_i_1 
       (.I0(add_ln34_1_reg_1564[6]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[6]),
        .O(\counter_2_reg_379[6]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[7]_i_1 
       (.I0(add_ln34_1_reg_1564[7]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[7]),
        .O(\counter_2_reg_379[7]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[8]_i_1 
       (.I0(add_ln34_1_reg_1564[8]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[8]),
        .O(\counter_2_reg_379[8]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \counter_2_reg_379[9]_i_1 
       (.I0(add_ln34_1_reg_1564[9]),
        .I1(ap_CS_fsm_state9),
        .I2(and_ln52_reg_1653),
        .I3(icmp_ln61_reg_1657),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(counter_1_reg_345[9]),
        .O(\counter_2_reg_379[9]_i_1_n_3 ));
  FDRE \counter_2_reg_379_reg[0] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[0]_i_1_n_3 ),
        .Q(counter_2_reg_379[0]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[10] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[10]_i_1_n_3 ),
        .Q(counter_2_reg_379[10]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[11] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[11]_i_1_n_3 ),
        .Q(counter_2_reg_379[11]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[12] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[12]_i_1_n_3 ),
        .Q(counter_2_reg_379[12]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[13] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[13]_i_1_n_3 ),
        .Q(counter_2_reg_379[13]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[14] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[14]_i_1_n_3 ),
        .Q(counter_2_reg_379[14]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[15] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[15]_i_1_n_3 ),
        .Q(counter_2_reg_379[15]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[16] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[16]_i_1_n_3 ),
        .Q(counter_2_reg_379[16]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[17] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[17]_i_1_n_3 ),
        .Q(counter_2_reg_379[17]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[18] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[18]_i_1_n_3 ),
        .Q(counter_2_reg_379[18]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[19] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[19]_i_1_n_3 ),
        .Q(counter_2_reg_379[19]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[1] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[1]_i_1_n_3 ),
        .Q(counter_2_reg_379[1]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[20] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[20]_i_2_n_3 ),
        .Q(counter_2_reg_379[20]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[2] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[2]_i_1_n_3 ),
        .Q(counter_2_reg_379[2]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[3] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[3]_i_1_n_3 ),
        .Q(counter_2_reg_379[3]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[4] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[4]_i_1_n_3 ),
        .Q(counter_2_reg_379[4]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[5] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[5]_i_1_n_3 ),
        .Q(counter_2_reg_379[5]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[6] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[6]_i_1_n_3 ),
        .Q(counter_2_reg_379[6]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[7] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[7]_i_1_n_3 ),
        .Q(counter_2_reg_379[7]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[8] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[8]_i_1_n_3 ),
        .Q(counter_2_reg_379[8]),
        .R(1'b0));
  FDRE \counter_2_reg_379_reg[9] 
       (.C(ap_clk),
        .CE(\counter_2_reg_379[20]_i_1_n_3 ),
        .D(\counter_2_reg_379[9]_i_1_n_3 ),
        .Q(counter_2_reg_379[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_reg_1482[19]_i_2 
       (.I0(\counter_0_reg_333_reg_n_3_[17] ),
        .O(\counter_reg_1482[19]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \counter_reg_1482[20]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_322[2]),
        .I2(i_0_reg_322[3]),
        .I3(i_0_reg_322[0]),
        .I4(i_0_reg_322[1]),
        .O(counter_1_reg_3450));
  FDRE \counter_reg_1482_reg[0] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[0] ),
        .Q(counter_reg_1482[0]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[10] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[10] ),
        .Q(counter_reg_1482[10]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[11] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[11] ),
        .Q(counter_reg_1482[11]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[12] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[12] ),
        .Q(counter_reg_1482[12]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[13] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[13] ),
        .Q(counter_reg_1482[13]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[14] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[14] ),
        .Q(counter_reg_1482[14]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[15] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[15] ),
        .Q(counter_reg_1482[15]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[16] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(counter_fu_483_p2[16]),
        .Q(counter_reg_1482[16]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[17] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(counter_fu_483_p2[17]),
        .Q(counter_reg_1482[17]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[18] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(counter_fu_483_p2[18]),
        .Q(counter_reg_1482[18]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[19] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(counter_fu_483_p2[19]),
        .Q(counter_reg_1482[19]),
        .R(1'b0));
  CARRY4 \counter_reg_1482_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg_1482_reg[19]_i_1_n_3 ,\counter_reg_1482_reg[19]_i_1_n_4 ,\counter_reg_1482_reg[19]_i_1_n_5 ,\counter_reg_1482_reg[19]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\counter_0_reg_333_reg_n_3_[17] ,1'b0}),
        .O(counter_fu_483_p2[19:16]),
        .S({\counter_0_reg_333_reg_n_3_[19] ,\counter_0_reg_333_reg_n_3_[18] ,\counter_reg_1482[19]_i_2_n_3 ,\counter_0_reg_333_reg_n_3_[16] }));
  FDRE \counter_reg_1482_reg[1] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[1] ),
        .Q(counter_reg_1482[1]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[20] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(counter_fu_483_p2[20]),
        .Q(counter_reg_1482[20]),
        .R(1'b0));
  CARRY4 \counter_reg_1482_reg[20]_i_2 
       (.CI(\counter_reg_1482_reg[19]_i_1_n_3 ),
        .CO(\NLW_counter_reg_1482_reg[20]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg_1482_reg[20]_i_2_O_UNCONNECTED [3:1],counter_fu_483_p2[20]}),
        .S({1'b0,1'b0,1'b0,\counter_0_reg_333_reg_n_3_[20] }));
  FDRE \counter_reg_1482_reg[2] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[2] ),
        .Q(counter_reg_1482[2]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[3] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[3] ),
        .Q(counter_reg_1482[3]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[4] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[4] ),
        .Q(counter_reg_1482[4]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[5] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[5] ),
        .Q(counter_reg_1482[5]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[6] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[6] ),
        .Q(counter_reg_1482[6]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[7] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[7] ),
        .Q(counter_reg_1482[7]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[8] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[8] ),
        .Q(counter_reg_1482[8]),
        .R(1'b0));
  FDRE \counter_reg_1482_reg[9] 
       (.C(ap_clk),
        .CE(counter_1_reg_3450),
        .D(\counter_0_reg_333_reg_n_3_[9] ),
        .Q(counter_reg_1482[9]),
        .R(1'b0));
  FDRE \i_0_reg_322_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(i_2_reg_1477[0]),
        .Q(i_0_reg_322[0]),
        .R(counter_0_reg_333));
  FDRE \i_0_reg_322_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(i_2_reg_1477[1]),
        .Q(i_0_reg_322[1]),
        .R(counter_0_reg_333));
  FDRE \i_0_reg_322_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(i_2_reg_1477[2]),
        .Q(i_0_reg_322[2]),
        .R(counter_0_reg_333));
  FDRE \i_0_reg_322_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm114_out),
        .D(i_2_reg_1477[3]),
        .Q(i_0_reg_322[3]),
        .R(counter_0_reg_333));
  LUT5 #(
    .INIT(32'h00000020)) 
    \i_1_reg_460[10]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_322[2]),
        .I2(i_0_reg_322[3]),
        .I3(i_0_reg_322[0]),
        .I4(i_0_reg_322[1]),
        .O(ap_NS_fsm115_out));
  LUT2 #(
    .INIT(4'h8)) 
    \i_1_reg_460[10]_i_2 
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state12),
        .O(ap_NS_fsm1));
  FDRE \i_1_reg_460_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[0]),
        .Q(i_1_reg_460[0]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[10]),
        .Q(i_1_reg_460[10]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[1]),
        .Q(i_1_reg_460[1]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[2]),
        .Q(i_1_reg_460[2]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[3]),
        .Q(i_1_reg_460[3]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[4]),
        .Q(i_1_reg_460[4]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[5]),
        .Q(i_1_reg_460[5]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[6]),
        .Q(i_1_reg_460[6]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[7]),
        .Q(i_1_reg_460[7]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[8]),
        .Q(i_1_reg_460[8]),
        .R(ap_NS_fsm115_out));
  FDRE \i_1_reg_460_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_1720[9]),
        .Q(i_1_reg_460[9]),
        .R(ap_NS_fsm115_out));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_2_reg_1477[0]_i_1 
       (.I0(i_0_reg_322[0]),
        .O(i_2_fu_477_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_2_reg_1477[1]_i_1 
       (.I0(i_0_reg_322[0]),
        .I1(i_0_reg_322[1]),
        .O(i_2_fu_477_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_2_reg_1477[2]_i_1 
       (.I0(i_0_reg_322[2]),
        .I1(i_0_reg_322[1]),
        .I2(i_0_reg_322[0]),
        .O(i_2_fu_477_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_2_reg_1477[3]_i_1 
       (.I0(i_0_reg_322[3]),
        .I1(i_0_reg_322[0]),
        .I2(i_0_reg_322[1]),
        .I3(i_0_reg_322[2]),
        .O(i_2_fu_477_p2[3]));
  FDRE \i_2_reg_1477_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_2_fu_477_p2[0]),
        .Q(i_2_reg_1477[0]),
        .R(1'b0));
  FDRE \i_2_reg_1477_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_2_fu_477_p2[1]),
        .Q(i_2_reg_1477[1]),
        .R(1'b0));
  FDRE \i_2_reg_1477_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_2_fu_477_p2[2]),
        .Q(i_2_reg_1477[2]),
        .R(1'b0));
  FDRE \i_2_reg_1477_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_2_fu_477_p2[3]),
        .Q(i_2_reg_1477[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_1720[0]_i_1 
       (.I0(i_1_reg_460[0]),
        .O(i_fu_1341_p2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \i_reg_1720[10]_i_1 
       (.I0(ap_CS_fsm_state11),
        .I1(\ap_CS_fsm[10]_i_2_n_3 ),
        .O(i_reg_17200));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \i_reg_1720[10]_i_2 
       (.I0(i_1_reg_460[10]),
        .I1(i_1_reg_460[8]),
        .I2(\i_reg_1720[10]_i_3_n_3 ),
        .I3(i_1_reg_460[6]),
        .I4(i_1_reg_460[7]),
        .I5(i_1_reg_460[9]),
        .O(i_fu_1341_p2[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \i_reg_1720[10]_i_3 
       (.I0(i_1_reg_460[4]),
        .I1(i_1_reg_460[2]),
        .I2(i_1_reg_460[0]),
        .I3(i_1_reg_460[1]),
        .I4(i_1_reg_460[3]),
        .I5(i_1_reg_460[5]),
        .O(\i_reg_1720[10]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_1720[1]_i_1 
       (.I0(i_1_reg_460[0]),
        .I1(i_1_reg_460[1]),
        .O(i_fu_1341_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_1720[2]_i_1 
       (.I0(i_1_reg_460[2]),
        .I1(i_1_reg_460[1]),
        .I2(i_1_reg_460[0]),
        .O(i_fu_1341_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_1720[3]_i_1 
       (.I0(i_1_reg_460[3]),
        .I1(i_1_reg_460[2]),
        .I2(i_1_reg_460[0]),
        .I3(i_1_reg_460[1]),
        .O(i_fu_1341_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_1720[4]_i_1 
       (.I0(i_1_reg_460[4]),
        .I1(i_1_reg_460[3]),
        .I2(i_1_reg_460[1]),
        .I3(i_1_reg_460[0]),
        .I4(i_1_reg_460[2]),
        .O(i_fu_1341_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_reg_1720[5]_i_1 
       (.I0(i_1_reg_460[5]),
        .I1(i_1_reg_460[4]),
        .I2(i_1_reg_460[2]),
        .I3(i_1_reg_460[0]),
        .I4(i_1_reg_460[1]),
        .I5(i_1_reg_460[3]),
        .O(i_fu_1341_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i_reg_1720[6]_i_1 
       (.I0(i_1_reg_460[6]),
        .I1(\i_reg_1720[10]_i_3_n_3 ),
        .O(i_fu_1341_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \i_reg_1720[7]_i_1 
       (.I0(\i_reg_1720[10]_i_3_n_3 ),
        .I1(i_1_reg_460[6]),
        .I2(i_1_reg_460[7]),
        .O(i_fu_1341_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \i_reg_1720[8]_i_1 
       (.I0(i_1_reg_460[8]),
        .I1(\i_reg_1720[10]_i_3_n_3 ),
        .I2(i_1_reg_460[6]),
        .I3(i_1_reg_460[7]),
        .O(i_fu_1341_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \i_reg_1720[9]_i_1 
       (.I0(i_1_reg_460[9]),
        .I1(i_1_reg_460[7]),
        .I2(i_1_reg_460[6]),
        .I3(\i_reg_1720[10]_i_3_n_3 ),
        .I4(i_1_reg_460[8]),
        .O(i_fu_1341_p2[9]));
  FDRE \i_reg_1720_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[0]),
        .Q(i_reg_1720[0]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[10] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[10]),
        .Q(i_reg_1720[10]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[1]),
        .Q(i_reg_1720[1]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[2]),
        .Q(i_reg_1720[2]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[3]),
        .Q(i_reg_1720[3]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[4]),
        .Q(i_reg_1720[4]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[5]),
        .Q(i_reg_1720[5]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[6]),
        .Q(i_reg_1720[6]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[7]),
        .Q(i_reg_1720[7]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[8]),
        .Q(i_reg_1720[8]),
        .R(1'b0));
  FDRE \i_reg_1720_reg[9] 
       (.C(ap_clk),
        .CE(i_reg_17200),
        .D(i_fu_1341_p2[9]),
        .Q(i_reg_1720[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \icmp_ln274_2_reg_1510[0]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[0] ),
        .I1(\row_assign_reg_356_reg_n_3_[1] ),
        .I2(col_assign_reg_3670),
        .I3(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .O(\icmp_ln274_2_reg_1510[0]_i_1_n_3 ));
  FDRE \icmp_ln274_2_reg_1510_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln274_2_reg_1510[0]_i_1_n_3 ),
        .Q(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1F10)) 
    \icmp_ln274_3_reg_1520[0]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[0] ),
        .I1(\row_assign_reg_356_reg_n_3_[1] ),
        .I2(col_assign_reg_3670),
        .I3(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\icmp_ln274_3_reg_1520[0]_i_1_n_3 ));
  FDRE \icmp_ln274_3_reg_1520_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln274_3_reg_1520[0]_i_1_n_3 ),
        .Q(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00070000)) 
    \icmp_ln41_1_reg_1505[0]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[0] ),
        .I1(\row_assign_reg_356_reg_n_3_[1] ),
        .I2(\row_assign_reg_356_reg_n_3_[6] ),
        .I3(\row_assign_reg_356_reg_n_3_[7] ),
        .I4(\counter_0_reg_333[20]_i_3_n_3 ),
        .O(icmp_ln41_1_fu_513_p2));
  FDRE \icmp_ln41_1_reg_1505_reg[0] 
       (.C(ap_clk),
        .CE(col_assign_reg_3670),
        .D(icmp_ln41_1_fu_513_p2),
        .Q(icmp_ln41_1_reg_1505),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555557700000002)) 
    \icmp_ln41_reg_1487[0]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_322[2]),
        .I2(i_0_reg_322[3]),
        .I3(i_0_reg_322[0]),
        .I4(i_0_reg_322[1]),
        .I5(\icmp_ln41_reg_1487_reg_n_3_[0] ),
        .O(\icmp_ln41_reg_1487[0]_i_1_n_3 ));
  FDRE \icmp_ln41_reg_1487_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln41_reg_1487[0]_i_1_n_3 ),
        .Q(\icmp_ln41_reg_1487_reg_n_3_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFEA002A)) 
    \icmp_ln61_reg_1657[0]_i_1 
       (.I0(icmp_ln61_fu_1032_p2),
        .I1(icmp_ln52_1_fu_1020_p2),
        .I2(icmp_ln52_fu_1014_p2),
        .I3(\INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3 ),
        .I4(icmp_ln61_reg_1657),
        .O(\icmp_ln61_reg_1657[0]_i_1_n_3 ));
  FDRE \icmp_ln61_reg_1657_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln61_reg_1657[0]_i_1_n_3 ),
        .Q(icmp_ln61_reg_1657),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \j_reg_1536[0]_i_1 
       (.I0(\col_assign_reg_367_reg_n_3_[0] ),
        .O(j_fu_541_p2[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \j_reg_1536[10]_i_1 
       (.I0(tmp_2_fu_1114_p4[9]),
        .I1(tmp_2_fu_1114_p4[7]),
        .I2(\j_reg_1536[10]_i_2_n_3 ),
        .I3(tmp_2_fu_1114_p4[5]),
        .I4(tmp_2_fu_1114_p4[6]),
        .I5(tmp_2_fu_1114_p4[8]),
        .O(j_fu_541_p2[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \j_reg_1536[10]_i_2 
       (.I0(tmp_2_fu_1114_p4[3]),
        .I1(tmp_2_fu_1114_p4[1]),
        .I2(tmp_2_fu_1114_p4[2]),
        .I3(tmp_2_fu_1114_p4[0]),
        .I4(\col_assign_reg_367_reg_n_3_[0] ),
        .I5(tmp_2_fu_1114_p4[4]),
        .O(\j_reg_1536[10]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_reg_1536[1]_i_1 
       (.I0(\col_assign_reg_367_reg_n_3_[0] ),
        .I1(tmp_2_fu_1114_p4[0]),
        .O(j_fu_541_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j_reg_1536[2]_i_1 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(tmp_2_fu_1114_p4[1]),
        .O(j_fu_541_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_reg_1536[3]_i_1 
       (.I0(tmp_2_fu_1114_p4[2]),
        .I1(tmp_2_fu_1114_p4[1]),
        .I2(tmp_2_fu_1114_p4[0]),
        .I3(\col_assign_reg_367_reg_n_3_[0] ),
        .O(j_fu_541_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_reg_1536[4]_i_1 
       (.I0(tmp_2_fu_1114_p4[3]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(tmp_2_fu_1114_p4[0]),
        .I3(tmp_2_fu_1114_p4[2]),
        .I4(tmp_2_fu_1114_p4[1]),
        .O(j_fu_541_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_reg_1536[5]_i_1 
       (.I0(tmp_2_fu_1114_p4[4]),
        .I1(tmp_2_fu_1114_p4[3]),
        .I2(tmp_2_fu_1114_p4[1]),
        .I3(tmp_2_fu_1114_p4[2]),
        .I4(tmp_2_fu_1114_p4[0]),
        .I5(\col_assign_reg_367_reg_n_3_[0] ),
        .O(j_fu_541_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \j_reg_1536[6]_i_1 
       (.I0(tmp_2_fu_1114_p4[5]),
        .I1(\j_reg_1536[10]_i_2_n_3 ),
        .O(j_fu_541_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \j_reg_1536[7]_i_1 
       (.I0(\j_reg_1536[10]_i_2_n_3 ),
        .I1(tmp_2_fu_1114_p4[5]),
        .I2(tmp_2_fu_1114_p4[6]),
        .O(j_fu_541_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \j_reg_1536[8]_i_1 
       (.I0(tmp_2_fu_1114_p4[7]),
        .I1(\j_reg_1536[10]_i_2_n_3 ),
        .I2(tmp_2_fu_1114_p4[5]),
        .I3(tmp_2_fu_1114_p4[6]),
        .O(j_fu_541_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \j_reg_1536[9]_i_1 
       (.I0(tmp_2_fu_1114_p4[8]),
        .I1(tmp_2_fu_1114_p4[6]),
        .I2(tmp_2_fu_1114_p4[5]),
        .I3(\j_reg_1536[10]_i_2_n_3 ),
        .I4(tmp_2_fu_1114_p4[7]),
        .O(j_fu_541_p2[9]));
  FDRE \j_reg_1536_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[0]),
        .Q(j_reg_1536[0]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[10]),
        .Q(j_reg_1536[10]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[1]),
        .Q(j_reg_1536[1]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[2]),
        .Q(j_reg_1536[2]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[3]),
        .Q(j_reg_1536[3]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[4]),
        .Q(j_reg_1536[4]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[5]),
        .Q(j_reg_1536[5]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[6]),
        .Q(j_reg_1536[6]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[7]),
        .Q(j_reg_1536[7]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[8]),
        .Q(j_reg_1536[8]),
        .R(1'b0));
  FDRE \j_reg_1536_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_fu_541_p2[9]),
        .Q(j_reg_1536[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \k_reg_1495[0]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[0] ),
        .O(k_fu_501_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \k_reg_1495[1]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[0] ),
        .I1(\row_assign_reg_356_reg_n_3_[1] ),
        .O(k_fu_501_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \k_reg_1495[2]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[2] ),
        .I1(\row_assign_reg_356_reg_n_3_[1] ),
        .I2(\row_assign_reg_356_reg_n_3_[0] ),
        .O(k_fu_501_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \k_reg_1495[3]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[3] ),
        .I1(\row_assign_reg_356_reg_n_3_[0] ),
        .I2(\row_assign_reg_356_reg_n_3_[1] ),
        .I3(\row_assign_reg_356_reg_n_3_[2] ),
        .O(k_fu_501_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \k_reg_1495[4]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[4] ),
        .I1(\row_assign_reg_356_reg_n_3_[2] ),
        .I2(\row_assign_reg_356_reg_n_3_[1] ),
        .I3(\row_assign_reg_356_reg_n_3_[0] ),
        .I4(\row_assign_reg_356_reg_n_3_[3] ),
        .O(k_fu_501_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \k_reg_1495[5]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[5] ),
        .I1(\row_assign_reg_356_reg_n_3_[3] ),
        .I2(\row_assign_reg_356_reg_n_3_[0] ),
        .I3(\row_assign_reg_356_reg_n_3_[1] ),
        .I4(\row_assign_reg_356_reg_n_3_[2] ),
        .I5(\row_assign_reg_356_reg_n_3_[4] ),
        .O(k_fu_501_p2[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \k_reg_1495[6]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[6] ),
        .I1(\row_assign_reg_356_reg_n_3_[4] ),
        .I2(\row_assign_reg_356_reg_n_3_[2] ),
        .I3(\k_reg_1495[6]_i_2_n_3 ),
        .I4(\row_assign_reg_356_reg_n_3_[3] ),
        .I5(\row_assign_reg_356_reg_n_3_[5] ),
        .O(k_fu_501_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k_reg_1495[6]_i_2 
       (.I0(\row_assign_reg_356_reg_n_3_[0] ),
        .I1(\row_assign_reg_356_reg_n_3_[1] ),
        .O(\k_reg_1495[6]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \k_reg_1495[7]_i_1 
       (.I0(\row_assign_reg_356_reg_n_3_[7] ),
        .I1(\k_reg_1495[7]_i_2_n_3 ),
        .I2(\row_assign_reg_356_reg_n_3_[6] ),
        .O(k_fu_501_p2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \k_reg_1495[7]_i_2 
       (.I0(\row_assign_reg_356_reg_n_3_[5] ),
        .I1(\row_assign_reg_356_reg_n_3_[3] ),
        .I2(\row_assign_reg_356_reg_n_3_[0] ),
        .I3(\row_assign_reg_356_reg_n_3_[1] ),
        .I4(\row_assign_reg_356_reg_n_3_[2] ),
        .I5(\row_assign_reg_356_reg_n_3_[4] ),
        .O(\k_reg_1495[7]_i_2_n_3 ));
  FDRE \k_reg_1495_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[0]),
        .Q(k_reg_1495[0]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[1]),
        .Q(k_reg_1495[1]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[2]),
        .Q(k_reg_1495[2]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[3]),
        .Q(k_reg_1495[3]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[4]),
        .Q(k_reg_1495[4]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[5]),
        .Q(k_reg_1495[5]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[6]),
        .Q(k_reg_1495[6]),
        .R(1'b0));
  FDRE \k_reg_1495_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(k_fu_501_p2[7]),
        .Q(k_reg_1495[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb pixelbuffer_val_1_U
       (.ADDRARDADDR(pixelbuffer_val_1_address0),
        .CO(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .D(select_ln41_5_fu_993_p3),
        .DOADO(pixelbuffer_val_2_q0),
        .INPUT_IMAGE_V_data_V_0_data_out(INPUT_IMAGE_V_data_V_0_data_out),
        .Q(window_val_0_1_fu_190),
        .WEA(p_184_in),
        .and_ln41_1_reg_1551(and_ln41_1_reg_1551),
        .ap_clk(ap_clk),
        .pixelbuffer_val_1_ce0(pixelbuffer_val_1_ce0),
        .\select_ln41_5_reg_1635_reg[0] (\select_ln41_5_reg_1635[7]_i_2_n_3 ));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[0] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(\col_assign_reg_367_reg_n_3_[0] ),
        .Q(pixelbuffer_val_2_a_reg_1546[0]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[1] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[0]),
        .Q(pixelbuffer_val_2_a_reg_1546[1]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[2] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[1]),
        .Q(pixelbuffer_val_2_a_reg_1546[2]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[3] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[2]),
        .Q(pixelbuffer_val_2_a_reg_1546[3]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[4] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[3]),
        .Q(pixelbuffer_val_2_a_reg_1546[4]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[5] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[4]),
        .Q(pixelbuffer_val_2_a_reg_1546[5]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[6] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[5]),
        .Q(pixelbuffer_val_2_a_reg_1546[6]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[7] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[6]),
        .Q(pixelbuffer_val_2_a_reg_1546[7]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[8] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[7]),
        .Q(pixelbuffer_val_2_a_reg_1546[8]),
        .R(1'b0));
  FDRE \pixelbuffer_val_1_a_reg_1541_reg[9] 
       (.C(ap_clk),
        .CE(and_ln41_1_reg_15510),
        .D(tmp_2_fu_1114_p4[8]),
        .Q(pixelbuffer_val_2_a_reg_1546[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0 pixelbuffer_val_2_U
       (.ADDRARDADDR(pixelbuffer_val_1_address0),
        .CO(icmp_ln52_fu_1014_p2),
        .D(select_ln41_2_fu_972_p3),
        .DOADO(pixelbuffer_val_2_q0),
        .INPUT_IMAGE_V_data_V_0_data_out(INPUT_IMAGE_V_data_V_0_data_out),
        .INPUT_IMAGE_V_data_V_0_sel(INPUT_IMAGE_V_data_V_0_sel),
        .OUTPUT_IMAGE_V_data_V_1_ack_in(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .WEA(p_184_in),
        .and_ln41_1_reg_1551(and_ln41_1_reg_1551),
        .ap_clk(ap_clk),
        .pixelbuffer_val_1_ce0(pixelbuffer_val_1_ce0),
        .ram_reg(icmp_ln52_1_fu_1020_p2),
        .ram_reg_0(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .ram_reg_1(INPUT_IMAGE_V_data_V_0_payload_B),
        .ram_reg_2(INPUT_IMAGE_V_data_V_0_payload_A),
        .ram_reg_3(pixelbuffer_val_2_a_reg_1546),
        .ram_reg_4({tmp_2_fu_1114_p4[8:0],\col_assign_reg_367_reg_n_3_[0] }),
        .\select_ln41_2_reg_1617_reg[0] (\select_ln41_2_reg_1617[7]_i_2_n_3 ),
        .\select_ln41_2_reg_1617_reg[0]_0 (\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .\select_ln41_2_reg_1617_reg[7] (window_val_1_1_fu_202));
  CARRY4 ram_reg_i_13
       (.CI(ram_reg_i_15_n_3),
        .CO({NLW_ram_reg_i_13_CO_UNCONNECTED[3],icmp_ln52_fu_1014_p2,ram_reg_i_13_n_5,ram_reg_i_13_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ram_reg_i_16_n_3,ram_reg_i_17_n_3}),
        .O(NLW_ram_reg_i_13_O_UNCONNECTED[3:0]),
        .S({1'b0,ram_reg_i_18_n_3,ram_reg_i_19_n_3,ram_reg_i_20_n_3}));
  CARRY4 ram_reg_i_14
       (.CI(ram_reg_i_21_n_3),
        .CO({NLW_ram_reg_i_14_CO_UNCONNECTED[3],icmp_ln52_1_fu_1020_p2,ram_reg_i_14_n_5,ram_reg_i_14_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,add_ln34_1_fu_596_p2[20],1'b0,1'b0}),
        .O(NLW_ram_reg_i_14_O_UNCONNECTED[3:0]),
        .S({1'b0,ram_reg_i_22_n_3,ram_reg_i_23_n_3,ram_reg_i_24_n_3}));
  CARRY4 ram_reg_i_15
       (.CI(ram_reg_i_25_n_3),
        .CO({ram_reg_i_15_n_3,ram_reg_i_15_n_4,ram_reg_i_15_n_5,ram_reg_i_15_n_6}),
        .CYINIT(1'b0),
        .DI({ram_reg_i_26_n_3,ram_reg_i_27_n_3,add_ln34_1_fu_596_p2[11],ram_reg_i_28_n_3}),
        .O(NLW_ram_reg_i_15_O_UNCONNECTED[3:0]),
        .S({ram_reg_i_29_n_3,ram_reg_i_30_n_3,ram_reg_i_31_n_3,ram_reg_i_32_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_16
       (.I0(add_ln34_1_fu_596_p2[18]),
        .I1(add_ln34_1_fu_596_p2[19]),
        .O(ram_reg_i_16_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_17
       (.I0(add_ln34_1_fu_596_p2[16]),
        .I1(add_ln34_1_fu_596_p2[17]),
        .O(ram_reg_i_17_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_18
       (.I0(add_ln34_1_fu_596_p2[20]),
        .O(ram_reg_i_18_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_19
       (.I0(add_ln34_1_fu_596_p2[19]),
        .I1(add_ln34_1_fu_596_p2[18]),
        .O(ram_reg_i_19_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_20
       (.I0(add_ln34_1_fu_596_p2[17]),
        .I1(add_ln34_1_fu_596_p2[16]),
        .O(ram_reg_i_20_n_3));
  CARRY4 ram_reg_i_21
       (.CI(ram_reg_i_33_n_3),
        .CO({ram_reg_i_21_n_3,ram_reg_i_21_n_4,ram_reg_i_21_n_5,ram_reg_i_21_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ram_reg_i_34_n_3,1'b0}),
        .O(NLW_ram_reg_i_21_O_UNCONNECTED[3:0]),
        .S({ram_reg_i_35_n_3,ram_reg_i_36_n_3,ram_reg_i_37_n_3,ram_reg_i_38_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_22
       (.I0(add_ln34_1_fu_596_p2[20]),
        .O(ram_reg_i_22_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_23
       (.I0(add_ln34_1_fu_596_p2[19]),
        .I1(add_ln34_1_fu_596_p2[18]),
        .O(ram_reg_i_23_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_24
       (.I0(add_ln34_1_fu_596_p2[17]),
        .I1(add_ln34_1_fu_596_p2[16]),
        .O(ram_reg_i_24_n_3));
  CARRY4 ram_reg_i_25
       (.CI(1'b0),
        .CO({ram_reg_i_25_n_3,ram_reg_i_25_n_4,ram_reg_i_25_n_5,ram_reg_i_25_n_6}),
        .CYINIT(1'b0),
        .DI({ram_reg_i_39_n_3,ram_reg_i_40_n_3,ram_reg_i_41_n_3,ram_reg_i_42_n_3}),
        .O(NLW_ram_reg_i_25_O_UNCONNECTED[3:0]),
        .S({ram_reg_i_43_n_3,ram_reg_i_44_n_3,ram_reg_i_45_n_3,ram_reg_i_46_n_3}));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_26
       (.I0(add_ln34_1_fu_596_p2[14]),
        .I1(add_ln34_1_fu_596_p2[15]),
        .O(ram_reg_i_26_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_27
       (.I0(add_ln34_1_fu_596_p2[12]),
        .I1(add_ln34_1_fu_596_p2[13]),
        .O(ram_reg_i_27_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_28
       (.I0(add_ln34_1_fu_596_p2[8]),
        .I1(add_ln34_1_fu_596_p2[9]),
        .O(ram_reg_i_28_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_29
       (.I0(add_ln34_1_fu_596_p2[15]),
        .I1(add_ln34_1_fu_596_p2[14]),
        .O(ram_reg_i_29_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_30
       (.I0(add_ln34_1_fu_596_p2[13]),
        .I1(add_ln34_1_fu_596_p2[12]),
        .O(ram_reg_i_30_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_31
       (.I0(add_ln34_1_fu_596_p2[10]),
        .I1(add_ln34_1_fu_596_p2[11]),
        .O(ram_reg_i_31_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_32
       (.I0(add_ln34_1_fu_596_p2[9]),
        .I1(add_ln34_1_fu_596_p2[8]),
        .O(ram_reg_i_32_n_3));
  CARRY4 ram_reg_i_33
       (.CI(1'b0),
        .CO({ram_reg_i_33_n_3,ram_reg_i_33_n_4,ram_reg_i_33_n_5,ram_reg_i_33_n_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ram_reg_i_47_n_3}),
        .O(NLW_ram_reg_i_33_O_UNCONNECTED[3:0]),
        .S({ram_reg_i_48_n_3,ram_reg_i_49_n_3,ram_reg_i_50_n_3,ram_reg_i_51_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_34
       (.I0(add_ln34_1_fu_596_p2[11]),
        .O(ram_reg_i_34_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_35
       (.I0(add_ln34_1_fu_596_p2[15]),
        .I1(add_ln34_1_fu_596_p2[14]),
        .O(ram_reg_i_35_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_36
       (.I0(add_ln34_1_fu_596_p2[13]),
        .I1(add_ln34_1_fu_596_p2[12]),
        .O(ram_reg_i_36_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_37
       (.I0(add_ln34_1_fu_596_p2[11]),
        .I1(add_ln34_1_fu_596_p2[10]),
        .O(ram_reg_i_37_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_38
       (.I0(add_ln34_1_fu_596_p2[9]),
        .I1(add_ln34_1_fu_596_p2[8]),
        .O(ram_reg_i_38_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_39
       (.I0(add_ln34_1_fu_596_p2[6]),
        .I1(add_ln34_1_fu_596_p2[7]),
        .O(ram_reg_i_39_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_40
       (.I0(add_ln34_1_fu_596_p2[4]),
        .I1(add_ln34_1_fu_596_p2[5]),
        .O(ram_reg_i_40_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_41
       (.I0(add_ln34_1_fu_596_p2[2]),
        .I1(add_ln34_1_fu_596_p2[3]),
        .O(ram_reg_i_41_n_3));
  LUT2 #(
    .INIT(4'hB)) 
    ram_reg_i_42
       (.I0(add_ln34_1_fu_596_p2[1]),
        .I1(counter_2_reg_379[0]),
        .O(ram_reg_i_42_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_43
       (.I0(add_ln34_1_fu_596_p2[7]),
        .I1(add_ln34_1_fu_596_p2[6]),
        .O(ram_reg_i_43_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_44
       (.I0(add_ln34_1_fu_596_p2[5]),
        .I1(add_ln34_1_fu_596_p2[4]),
        .O(ram_reg_i_44_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_45
       (.I0(add_ln34_1_fu_596_p2[3]),
        .I1(add_ln34_1_fu_596_p2[2]),
        .O(ram_reg_i_45_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_46
       (.I0(counter_2_reg_379[0]),
        .I1(add_ln34_1_fu_596_p2[1]),
        .O(ram_reg_i_46_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_47
       (.I0(add_ln34_1_fu_596_p2[1]),
        .O(ram_reg_i_47_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_48
       (.I0(add_ln34_1_fu_596_p2[7]),
        .I1(add_ln34_1_fu_596_p2[6]),
        .O(ram_reg_i_48_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_49
       (.I0(add_ln34_1_fu_596_p2[5]),
        .I1(add_ln34_1_fu_596_p2[4]),
        .O(ram_reg_i_49_n_3));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_i_50
       (.I0(add_ln34_1_fu_596_p2[3]),
        .I1(add_ln34_1_fu_596_p2[2]),
        .O(ram_reg_i_50_n_3));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_51
       (.I0(counter_2_reg_379[0]),
        .I1(add_ln34_1_fu_596_p2[1]),
        .O(ram_reg_i_51_n_3));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \rowOffset_0_reg_425[0]_i_1 
       (.I0(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .I1(ap_CS_fsm_state8),
        .I2(rowOffset_reg_1687[0]),
        .I3(ap_NS_fsm18_out),
        .O(\rowOffset_0_reg_425[0]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \rowOffset_0_reg_425[1]_i_1 
       (.I0(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .I1(ap_CS_fsm_state8),
        .I2(rowOffset_reg_1687[1]),
        .I3(ap_NS_fsm18_out),
        .O(\rowOffset_0_reg_425[1]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \rowOffset_0_reg_425[2]_i_1 
       (.I0(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .I1(ap_CS_fsm_state8),
        .I2(rowOffset_reg_1687[2]),
        .I3(ap_NS_fsm18_out),
        .O(\rowOffset_0_reg_425[2]_i_1_n_3 ));
  FDRE \rowOffset_0_reg_425_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rowOffset_0_reg_425[0]_i_1_n_3 ),
        .Q(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \rowOffset_0_reg_425_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rowOffset_0_reg_425[1]_i_1_n_3 ),
        .Q(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \rowOffset_0_reg_425_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rowOffset_0_reg_425[2]_i_1_n_3 ),
        .Q(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h77772202)) 
    \rowOffset_reg_1687[0]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .I2(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .I3(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .I4(rowOffset_reg_1687[0]),
        .O(\rowOffset_reg_1687[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h7D7D2808)) 
    \rowOffset_reg_1687[1]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .I2(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .I3(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .I4(rowOffset_reg_1687[1]),
        .O(\rowOffset_reg_1687[1]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h7FF52A80)) 
    \rowOffset_reg_1687[2]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .I2(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .I3(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .I4(rowOffset_reg_1687[2]),
        .O(\rowOffset_reg_1687[2]_i_1_n_3 ));
  FDRE \rowOffset_reg_1687_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rowOffset_reg_1687[0]_i_1_n_3 ),
        .Q(rowOffset_reg_1687[0]),
        .R(1'b0));
  FDRE \rowOffset_reg_1687_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rowOffset_reg_1687[1]_i_1_n_3 ),
        .Q(rowOffset_reg_1687[1]),
        .R(1'b0));
  FDRE \rowOffset_reg_1687_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rowOffset_reg_1687[2]_i_1_n_3 ),
        .Q(rowOffset_reg_1687[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFEF0000)) 
    \row_assign_reg_356[7]_i_1 
       (.I0(i_0_reg_322[1]),
        .I1(i_0_reg_322[0]),
        .I2(i_0_reg_322[3]),
        .I3(i_0_reg_322[2]),
        .I4(ap_CS_fsm_state2),
        .I5(ap_NS_fsm113_out),
        .O(row_assign_reg_356));
  LUT2 #(
    .INIT(4'h2)) 
    \row_assign_reg_356[7]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(\row_assign_reg_356[7]_i_3_n_3 ),
        .O(ap_NS_fsm113_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \row_assign_reg_356[7]_i_3 
       (.I0(\row_assign_reg_356[7]_i_4_n_3 ),
        .I1(tmp_2_fu_1114_p4[8]),
        .I2(tmp_2_fu_1114_p4[9]),
        .I3(\col_assign_reg_367_reg_n_3_[0] ),
        .I4(tmp_2_fu_1114_p4[0]),
        .I5(tmp_2_fu_1114_p4[1]),
        .O(\row_assign_reg_356[7]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \row_assign_reg_356[7]_i_4 
       (.I0(tmp_2_fu_1114_p4[4]),
        .I1(tmp_2_fu_1114_p4[5]),
        .I2(tmp_2_fu_1114_p4[2]),
        .I3(tmp_2_fu_1114_p4[3]),
        .I4(tmp_2_fu_1114_p4[7]),
        .I5(tmp_2_fu_1114_p4[6]),
        .O(\row_assign_reg_356[7]_i_4_n_3 ));
  FDRE \row_assign_reg_356_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[0]),
        .Q(\row_assign_reg_356_reg_n_3_[0] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[1]),
        .Q(\row_assign_reg_356_reg_n_3_[1] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[2]),
        .Q(\row_assign_reg_356_reg_n_3_[2] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[3]),
        .Q(\row_assign_reg_356_reg_n_3_[3] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[4]),
        .Q(\row_assign_reg_356_reg_n_3_[4] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[5]),
        .Q(\row_assign_reg_356_reg_n_3_[5] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[6]),
        .Q(\row_assign_reg_356_reg_n_3_[6] ),
        .R(row_assign_reg_356));
  FDRE \row_assign_reg_356_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(k_reg_1495[7]),
        .Q(\row_assign_reg_356_reg_n_3_[7] ),
        .R(row_assign_reg_356));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \select_ln41_2_reg_1617[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .I2(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\select_ln41_2_reg_1617[7]_i_2_n_3 ));
  FDRE \select_ln41_2_reg_1617_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[0]),
        .Q(select_ln41_2_reg_1617[0]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[1]),
        .Q(select_ln41_2_reg_1617[1]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[2]),
        .Q(select_ln41_2_reg_1617[2]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[3]),
        .Q(select_ln41_2_reg_1617[3]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[4]),
        .Q(select_ln41_2_reg_1617[4]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[5]),
        .Q(select_ln41_2_reg_1617[5]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[6]),
        .Q(select_ln41_2_reg_1617[6]),
        .R(1'b0));
  FDRE \select_ln41_2_reg_1617_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_2_fu_972_p3[7]),
        .Q(select_ln41_2_reg_1617[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[0]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[0]),
        .O(select_ln41_3_fu_979_p3[0]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[1]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[1]),
        .O(select_ln41_3_fu_979_p3[1]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[2]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[2]),
        .O(select_ln41_3_fu_979_p3[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[3]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[3]),
        .O(select_ln41_3_fu_979_p3[3]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[4]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[4]),
        .O(select_ln41_3_fu_979_p3[4]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[5]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[5]),
        .O(select_ln41_3_fu_979_p3[5]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[6]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[6]),
        .O(select_ln41_3_fu_979_p3[6]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_3_reg_1623[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_1_0_fu_198[7]),
        .I2(\select_ln41_3_reg_1623[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_1_fu_202[7]),
        .O(select_ln41_3_fu_979_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \select_ln41_3_reg_1623[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .I3(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\select_ln41_3_reg_1623[7]_i_2_n_3 ));
  FDRE \select_ln41_3_reg_1623_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[0]),
        .Q(select_ln41_3_reg_1623[0]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[1]),
        .Q(select_ln41_3_reg_1623[1]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[2]),
        .Q(select_ln41_3_reg_1623[2]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[3]),
        .Q(select_ln41_3_reg_1623[3]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[4]),
        .Q(select_ln41_3_reg_1623[4]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[5]),
        .Q(select_ln41_3_reg_1623[5]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[6]),
        .Q(select_ln41_3_reg_1623[6]),
        .R(1'b0));
  FDRE \select_ln41_3_reg_1623_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_3_fu_979_p3[7]),
        .Q(select_ln41_3_reg_1623[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_11 
       (.I0(add_ln34_1_fu_596_p2[14]),
        .I1(add_ln34_1_fu_596_p2[15]),
        .O(\select_ln41_5_reg_1635[7]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_12 
       (.I0(add_ln34_1_fu_596_p2[12]),
        .I1(add_ln34_1_fu_596_p2[13]),
        .O(\select_ln41_5_reg_1635[7]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \select_ln41_5_reg_1635[7]_i_13 
       (.I0(add_ln34_1_fu_596_p2[10]),
        .I1(add_ln34_1_fu_596_p2[11]),
        .O(\select_ln41_5_reg_1635[7]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_14 
       (.I0(add_ln34_1_fu_596_p2[8]),
        .I1(add_ln34_1_fu_596_p2[9]),
        .O(\select_ln41_5_reg_1635[7]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_15 
       (.I0(add_ln34_1_fu_596_p2[15]),
        .I1(add_ln34_1_fu_596_p2[14]),
        .O(\select_ln41_5_reg_1635[7]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_16 
       (.I0(add_ln34_1_fu_596_p2[13]),
        .I1(add_ln34_1_fu_596_p2[12]),
        .O(\select_ln41_5_reg_1635[7]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \select_ln41_5_reg_1635[7]_i_17 
       (.I0(add_ln34_1_fu_596_p2[11]),
        .I1(add_ln34_1_fu_596_p2[10]),
        .O(\select_ln41_5_reg_1635[7]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_18 
       (.I0(add_ln34_1_fu_596_p2[9]),
        .I1(add_ln34_1_fu_596_p2[8]),
        .O(\select_ln41_5_reg_1635[7]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_19 
       (.I0(add_ln34_1_fu_596_p2[6]),
        .I1(add_ln34_1_fu_596_p2[7]),
        .O(\select_ln41_5_reg_1635[7]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \select_ln41_5_reg_1635[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\select_ln41_5_reg_1635[7]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_20 
       (.I0(add_ln34_1_fu_596_p2[4]),
        .I1(add_ln34_1_fu_596_p2[5]),
        .O(\select_ln41_5_reg_1635[7]_i_20_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_21 
       (.I0(add_ln34_1_fu_596_p2[2]),
        .I1(add_ln34_1_fu_596_p2[3]),
        .O(\select_ln41_5_reg_1635[7]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    \select_ln41_5_reg_1635[7]_i_22 
       (.I0(add_ln34_1_fu_596_p2[1]),
        .I1(counter_2_reg_379[0]),
        .O(\select_ln41_5_reg_1635[7]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_23 
       (.I0(add_ln34_1_fu_596_p2[7]),
        .I1(add_ln34_1_fu_596_p2[6]),
        .O(\select_ln41_5_reg_1635[7]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_24 
       (.I0(add_ln34_1_fu_596_p2[5]),
        .I1(add_ln34_1_fu_596_p2[4]),
        .O(\select_ln41_5_reg_1635[7]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_25 
       (.I0(add_ln34_1_fu_596_p2[3]),
        .I1(add_ln34_1_fu_596_p2[2]),
        .O(\select_ln41_5_reg_1635[7]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \select_ln41_5_reg_1635[7]_i_26 
       (.I0(counter_2_reg_379[0]),
        .I1(add_ln34_1_fu_596_p2[1]),
        .O(\select_ln41_5_reg_1635[7]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_5 
       (.I0(add_ln34_1_fu_596_p2[18]),
        .I1(add_ln34_1_fu_596_p2[19]),
        .O(\select_ln41_5_reg_1635[7]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \select_ln41_5_reg_1635[7]_i_6 
       (.I0(add_ln34_1_fu_596_p2[16]),
        .I1(add_ln34_1_fu_596_p2[17]),
        .O(\select_ln41_5_reg_1635[7]_i_6_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \select_ln41_5_reg_1635[7]_i_7 
       (.I0(add_ln34_1_fu_596_p2[20]),
        .O(\select_ln41_5_reg_1635[7]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_8 
       (.I0(add_ln34_1_fu_596_p2[19]),
        .I1(add_ln34_1_fu_596_p2[18]),
        .O(\select_ln41_5_reg_1635[7]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln41_5_reg_1635[7]_i_9 
       (.I0(add_ln34_1_fu_596_p2[17]),
        .I1(add_ln34_1_fu_596_p2[16]),
        .O(\select_ln41_5_reg_1635[7]_i_9_n_3 ));
  FDRE \select_ln41_5_reg_1635_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[0]),
        .Q(select_ln41_5_reg_1635[0]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[1]),
        .Q(select_ln41_5_reg_1635[1]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[2]),
        .Q(select_ln41_5_reg_1635[2]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[3]),
        .Q(select_ln41_5_reg_1635[3]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[4]),
        .Q(select_ln41_5_reg_1635[4]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[5]),
        .Q(select_ln41_5_reg_1635[5]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[6]),
        .Q(select_ln41_5_reg_1635[6]),
        .R(1'b0));
  FDRE \select_ln41_5_reg_1635_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_5_fu_993_p3[7]),
        .Q(select_ln41_5_reg_1635[7]),
        .R(1'b0));
  CARRY4 \select_ln41_5_reg_1635_reg[7]_i_10 
       (.CI(1'b0),
        .CO({\select_ln41_5_reg_1635_reg[7]_i_10_n_3 ,\select_ln41_5_reg_1635_reg[7]_i_10_n_4 ,\select_ln41_5_reg_1635_reg[7]_i_10_n_5 ,\select_ln41_5_reg_1635_reg[7]_i_10_n_6 }),
        .CYINIT(1'b0),
        .DI({\select_ln41_5_reg_1635[7]_i_19_n_3 ,\select_ln41_5_reg_1635[7]_i_20_n_3 ,\select_ln41_5_reg_1635[7]_i_21_n_3 ,\select_ln41_5_reg_1635[7]_i_22_n_3 }),
        .O(\NLW_select_ln41_5_reg_1635_reg[7]_i_10_O_UNCONNECTED [3:0]),
        .S({\select_ln41_5_reg_1635[7]_i_23_n_3 ,\select_ln41_5_reg_1635[7]_i_24_n_3 ,\select_ln41_5_reg_1635[7]_i_25_n_3 ,\select_ln41_5_reg_1635[7]_i_26_n_3 }));
  CARRY4 \select_ln41_5_reg_1635_reg[7]_i_3 
       (.CI(\select_ln41_5_reg_1635_reg[7]_i_4_n_3 ),
        .CO({\NLW_select_ln41_5_reg_1635_reg[7]_i_3_CO_UNCONNECTED [3],\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ,\select_ln41_5_reg_1635_reg[7]_i_3_n_5 ,\select_ln41_5_reg_1635_reg[7]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\select_ln41_5_reg_1635[7]_i_5_n_3 ,\select_ln41_5_reg_1635[7]_i_6_n_3 }),
        .O(\NLW_select_ln41_5_reg_1635_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\select_ln41_5_reg_1635[7]_i_7_n_3 ,\select_ln41_5_reg_1635[7]_i_8_n_3 ,\select_ln41_5_reg_1635[7]_i_9_n_3 }));
  CARRY4 \select_ln41_5_reg_1635_reg[7]_i_4 
       (.CI(\select_ln41_5_reg_1635_reg[7]_i_10_n_3 ),
        .CO({\select_ln41_5_reg_1635_reg[7]_i_4_n_3 ,\select_ln41_5_reg_1635_reg[7]_i_4_n_4 ,\select_ln41_5_reg_1635_reg[7]_i_4_n_5 ,\select_ln41_5_reg_1635_reg[7]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\select_ln41_5_reg_1635[7]_i_11_n_3 ,\select_ln41_5_reg_1635[7]_i_12_n_3 ,\select_ln41_5_reg_1635[7]_i_13_n_3 ,\select_ln41_5_reg_1635[7]_i_14_n_3 }),
        .O(\NLW_select_ln41_5_reg_1635_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\select_ln41_5_reg_1635[7]_i_15_n_3 ,\select_ln41_5_reg_1635[7]_i_16_n_3 ,\select_ln41_5_reg_1635[7]_i_17_n_3 ,\select_ln41_5_reg_1635[7]_i_18_n_3 }));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[0]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[0]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[0]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .O(select_ln41_6_fu_1000_p3[0]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[1]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[1]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[1]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .O(select_ln41_6_fu_1000_p3[1]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[2]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[2]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[2]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .O(select_ln41_6_fu_1000_p3[2]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[3]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[3]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[3]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .O(select_ln41_6_fu_1000_p3[3]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[4]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[4]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[4]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .O(select_ln41_6_fu_1000_p3[4]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[5]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[5]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[5]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .O(select_ln41_6_fu_1000_p3[5]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[6]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[6]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[6]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .O(select_ln41_6_fu_1000_p3[6]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \select_ln41_6_reg_1641[7]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_0_1_fu_190[7]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_2_fu_186[7]),
        .I4(\select_ln41_6_reg_1641[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .O(select_ln41_6_fu_1000_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \select_ln41_6_reg_1641[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\select_ln41_6_reg_1641[7]_i_2_n_3 ));
  FDRE \select_ln41_6_reg_1641_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[0]),
        .Q(select_ln41_6_reg_1641[0]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[1]),
        .Q(select_ln41_6_reg_1641[1]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[2]),
        .Q(select_ln41_6_reg_1641[2]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[3]),
        .Q(select_ln41_6_reg_1641[3]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[4]),
        .Q(select_ln41_6_reg_1641[4]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[5]),
        .Q(select_ln41_6_reg_1641[5]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[6]),
        .Q(select_ln41_6_reg_1641[6]),
        .R(1'b0));
  FDRE \select_ln41_6_reg_1641_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_6_fu_1000_p3[7]),
        .Q(select_ln41_6_reg_1641[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[0]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[0]),
        .O(select_ln41_fu_958_p3[0]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[1]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[1]),
        .O(select_ln41_fu_958_p3[1]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[2]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[2]),
        .O(select_ln41_fu_958_p3[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[3]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[3]),
        .O(select_ln41_fu_958_p3[3]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[4]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[4]),
        .O(select_ln41_fu_958_p3[4]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[5]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[5]),
        .O(select_ln41_fu_958_p3[5]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[6]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[6]),
        .O(select_ln41_fu_958_p3[6]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_reg_1605[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_0_fu_210[7]),
        .I2(\select_ln41_reg_1605[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_1_fu_214[7]),
        .O(select_ln41_fu_958_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \select_ln41_reg_1605[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .I3(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\select_ln41_reg_1605[7]_i_2_n_3 ));
  FDRE \select_ln41_reg_1605_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[0]),
        .Q(select_ln41_reg_1605[0]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[1]),
        .Q(select_ln41_reg_1605[1]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[2]),
        .Q(select_ln41_reg_1605[2]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[3]),
        .Q(select_ln41_reg_1605[3]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[4]),
        .Q(select_ln41_reg_1605[4]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[5]),
        .Q(select_ln41_reg_1605[5]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[6]),
        .Q(select_ln41_reg_1605[6]),
        .R(1'b0));
  FDRE \select_ln41_reg_1605_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(select_ln41_fu_958_p3[7]),
        .Q(select_ln41_reg_1605[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_ctrl_bus_s_axi sobel_filter_ctrl_bus_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .E(ap_NS_fsm114_out),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_ctrl_bus_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_ctrl_bus_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_ctrl_bus_WREADY),
        .OUTPUT_IMAGE_TREADY(OUTPUT_IMAGE_TREADY),
        .OUTPUT_IMAGE_TREADY_0(sobel_filter_ctrl_bus_s_axi_U_n_9),
        .OUTPUT_IMAGE_V_data_V_1_ack_in(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .OUTPUT_IMAGE_V_dest_V_1_ack_in(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 (\OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0] ),
        .\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0 (OUTPUT_IMAGE_TVALID),
        .\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1 (\OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0] ),
        .\OUTPUT_IMAGE_V_dest_V_1_state_reg[0] (sobel_filter_ctrl_bus_s_axi_U_n_12),
        .OUTPUT_IMAGE_V_id_V_1_ack_in(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .OUTPUT_IMAGE_V_keep_V_1_ack_in(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .\OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] (\OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0] ),
        .\OUTPUT_IMAGE_V_keep_V_1_state_reg[0] (sobel_filter_ctrl_bus_s_axi_U_n_10),
        .OUTPUT_IMAGE_V_last_V_1_ack_in(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .OUTPUT_IMAGE_V_strb_V_1_ack_in(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .\OUTPUT_IMAGE_V_strb_V_1_state_reg[0] (sobel_filter_ctrl_bus_s_axi_U_n_11),
        .OUTPUT_IMAGE_V_user_V_1_ack_in(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .Q({ap_CS_fsm_state11,\ap_CS_fsm_reg_n_3_[0] }),
        .SR(counter_0_reg_333),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\i_1_reg_460_reg[10] (sobel_filter_ctrl_bus_s_axi_U_n_13),
        .\i_1_reg_460_reg[4] (sobel_filter_ctrl_bus_s_axi_U_n_14),
        .\i_1_reg_460_reg[6] (sobel_filter_ctrl_bus_s_axi_U_n_15),
        .int_ap_ready_i_3_0(\OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0] ),
        .int_ap_ready_reg_0(\OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0] ),
        .int_ap_ready_reg_1(\OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0] ),
        .int_ap_ready_reg_2(i_1_reg_460),
        .interrupt(interrupt),
        .s_axi_ctrl_bus_ARADDR(s_axi_ctrl_bus_ARADDR),
        .s_axi_ctrl_bus_ARVALID(s_axi_ctrl_bus_ARVALID),
        .s_axi_ctrl_bus_AWADDR(s_axi_ctrl_bus_AWADDR),
        .s_axi_ctrl_bus_AWVALID(s_axi_ctrl_bus_AWVALID),
        .s_axi_ctrl_bus_BREADY(s_axi_ctrl_bus_BREADY),
        .s_axi_ctrl_bus_BVALID(s_axi_ctrl_bus_BVALID),
        .s_axi_ctrl_bus_RDATA({\^s_axi_ctrl_bus_RDATA [7],\^s_axi_ctrl_bus_RDATA [3:0]}),
        .s_axi_ctrl_bus_RREADY(s_axi_ctrl_bus_RREADY),
        .s_axi_ctrl_bus_RVALID(s_axi_ctrl_bus_RVALID),
        .s_axi_ctrl_bus_WDATA({s_axi_ctrl_bus_WDATA[7],s_axi_ctrl_bus_WDATA[1:0]}),
        .s_axi_ctrl_bus_WSTRB(s_axi_ctrl_bus_WSTRB[0]),
        .s_axi_ctrl_bus_WVALID(s_axi_ctrl_bus_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg sobel_filter_mac_eOg_U2
       (.A(tmp_1_fu_1253_p11),
        .B(sobel_filter_mac_eOg_U3_n_35),
        .CO(icmp_ln61_fu_1032_p2),
        .D({sobel_filter_mac_eOg_U2_n_3,sobel_filter_mac_eOg_U2_n_4,sobel_filter_mac_eOg_U2_n_5,sobel_filter_mac_eOg_U2_n_6,sobel_filter_mac_eOg_U2_n_7,sobel_filter_mac_eOg_U2_n_8,sobel_filter_mac_eOg_U2_n_9,sobel_filter_mac_eOg_U2_n_10,sobel_filter_mac_eOg_U2_n_11,sobel_filter_mac_eOg_U2_n_12,sobel_filter_mac_eOg_U2_n_13,sobel_filter_mac_eOg_U2_n_14,sobel_filter_mac_eOg_U2_n_15,sobel_filter_mac_eOg_U2_n_16,sobel_filter_mac_eOg_U2_n_17,sobel_filter_mac_eOg_U2_n_18,sobel_filter_mac_eOg_U2_n_19,sobel_filter_mac_eOg_U2_n_20,sobel_filter_mac_eOg_U2_n_21,sobel_filter_mac_eOg_U2_n_22,sobel_filter_mac_eOg_U2_n_23,sobel_filter_mac_eOg_U2_n_24,sobel_filter_mac_eOg_U2_n_25,sobel_filter_mac_eOg_U2_n_26,sobel_filter_mac_eOg_U2_n_27,sobel_filter_mac_eOg_U2_n_28,sobel_filter_mac_eOg_U2_n_29,sobel_filter_mac_eOg_U2_n_30,sobel_filter_mac_eOg_U2_n_31,sobel_filter_mac_eOg_U2_n_32,sobel_filter_mac_eOg_U2_n_33,sobel_filter_mac_eOg_U2_n_34}),
        .OPMODE(sobel_filter_mac_eOg_U3_n_36),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state5}),
        .\ap_CS_fsm_reg[6] ({rowOffset_reg_16870,ap_NS_fsm[6]}),
        .ap_NS_fsm112_out(ap_NS_fsm112_out),
        .ap_NS_fsm17_out(ap_NS_fsm17_out),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .colOffset_reg_1664(colOffset_reg_1664[1:0]),
        .p({\colOffset_0_reg_390_reg_n_3_[2] ,\colOffset_0_reg_390_reg_n_3_[1] ,\colOffset_0_reg_390_reg_n_3_[0] }),
        .p_0(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .p_1(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .p_10(select_ln41_reg_1605),
        .p_11(select_ln41_2_reg_1617),
        .p_12(\INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0] ),
        .p_13(icmp_ln52_1_fu_1020_p2),
        .p_14(icmp_ln52_fu_1014_p2),
        .p_2(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .p_3(window_val_2_1_7_reg_1599),
        .p_4(select_ln41_5_reg_1635),
        .p_5(window_val_2_2_53_reg_1647),
        .p_6(window_val_2_2_52_reg_1629),
        .p_7(select_ln41_6_reg_1641),
        .p_8(window_val_2_2_51_reg_1611),
        .p_9(select_ln41_3_reg_1623),
        .sel(sel));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1 sobel_filter_mac_eOg_U3
       (.A(tmp_1_fu_1253_p11),
        .B(sobel_filter_mac_eOg_U3_n_35),
        .D({sobel_filter_mac_eOg_U3_n_3,sobel_filter_mac_eOg_U3_n_4,sobel_filter_mac_eOg_U3_n_5,sobel_filter_mac_eOg_U3_n_6,sobel_filter_mac_eOg_U3_n_7,sobel_filter_mac_eOg_U3_n_8,sobel_filter_mac_eOg_U3_n_9,sobel_filter_mac_eOg_U3_n_10,sobel_filter_mac_eOg_U3_n_11,sobel_filter_mac_eOg_U3_n_12,sobel_filter_mac_eOg_U3_n_13,sobel_filter_mac_eOg_U3_n_14,sobel_filter_mac_eOg_U3_n_15,sobel_filter_mac_eOg_U3_n_16,sobel_filter_mac_eOg_U3_n_17,sobel_filter_mac_eOg_U3_n_18,sobel_filter_mac_eOg_U3_n_19,sobel_filter_mac_eOg_U3_n_20,sobel_filter_mac_eOg_U3_n_21,sobel_filter_mac_eOg_U3_n_22,sobel_filter_mac_eOg_U3_n_23,sobel_filter_mac_eOg_U3_n_24,sobel_filter_mac_eOg_U3_n_25,sobel_filter_mac_eOg_U3_n_26,sobel_filter_mac_eOg_U3_n_27,sobel_filter_mac_eOg_U3_n_28,sobel_filter_mac_eOg_U3_n_29,sobel_filter_mac_eOg_U3_n_30,sobel_filter_mac_eOg_U3_n_31,sobel_filter_mac_eOg_U3_n_32,sobel_filter_mac_eOg_U3_n_33,sobel_filter_mac_eOg_U3_n_34}),
        .E(ap_NS_fsm17_out),
        .OPMODE(sobel_filter_mac_eOg_U3_n_36),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .SR(ap_NS_fsm112_out),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .colOffset_reg_1664(colOffset_reg_1664),
        .p({rowOffset_reg_16870,ap_NS_fsm[6]}),
        .p_0(\rowOffset_0_reg_425_reg_n_3_[0] ),
        .p_1(\rowOffset_0_reg_425_reg_n_3_[1] ),
        .p_2(\rowOffset_0_reg_425_reg_n_3_[2] ),
        .p_3({\colOffset_0_reg_390_reg_n_3_[2] ,\colOffset_0_reg_390_reg_n_3_[1] ,\colOffset_0_reg_390_reg_n_3_[0] }),
        .sel(sel));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_3_reg_1593[0]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_payload_B[0]),
        .I1(INPUT_IMAGE_V_dest_V_0_sel),
        .I2(INPUT_IMAGE_V_dest_V_0_payload_A[0]),
        .O(INPUT_IMAGE_V_dest_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_3_reg_1593[1]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_payload_B[1]),
        .I1(INPUT_IMAGE_V_dest_V_0_sel),
        .I2(INPUT_IMAGE_V_dest_V_0_payload_A[1]),
        .O(INPUT_IMAGE_V_dest_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_3_reg_1593[2]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_payload_B[2]),
        .I1(INPUT_IMAGE_V_dest_V_0_sel),
        .I2(INPUT_IMAGE_V_dest_V_0_payload_A[2]),
        .O(INPUT_IMAGE_V_dest_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_3_reg_1593[3]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_payload_B[3]),
        .I1(INPUT_IMAGE_V_dest_V_0_sel),
        .I2(INPUT_IMAGE_V_dest_V_0_payload_A[3]),
        .O(INPUT_IMAGE_V_dest_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_3_reg_1593[4]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_payload_B[4]),
        .I1(INPUT_IMAGE_V_dest_V_0_sel),
        .I2(INPUT_IMAGE_V_dest_V_0_payload_A[4]),
        .O(INPUT_IMAGE_V_dest_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_3_reg_1593[5]_i_1 
       (.I0(INPUT_IMAGE_V_dest_V_0_payload_B[5]),
        .I1(INPUT_IMAGE_V_dest_V_0_sel),
        .I2(INPUT_IMAGE_V_dest_V_0_payload_A[5]),
        .O(INPUT_IMAGE_V_dest_V_0_data_out[5]));
  FDRE \tmp_dest_V_3_reg_1593_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_dest_V_0_data_out[0]),
        .Q(tmp_dest_V_3_reg_1593[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_3_reg_1593_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_dest_V_0_data_out[1]),
        .Q(tmp_dest_V_3_reg_1593[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_3_reg_1593_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_dest_V_0_data_out[2]),
        .Q(tmp_dest_V_3_reg_1593[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_3_reg_1593_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_dest_V_0_data_out[3]),
        .Q(tmp_dest_V_3_reg_1593[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_3_reg_1593_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_dest_V_0_data_out[4]),
        .Q(tmp_dest_V_3_reg_1593[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_3_reg_1593_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_dest_V_0_data_out[5]),
        .Q(tmp_dest_V_3_reg_1593[5]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_162_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_dest_V_3_reg_1593[0]),
        .Q(tmp_dest_V_fu_162[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_162_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_dest_V_3_reg_1593[1]),
        .Q(tmp_dest_V_fu_162[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_162_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_dest_V_3_reg_1593[2]),
        .Q(tmp_dest_V_fu_162[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_162_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_dest_V_3_reg_1593[3]),
        .Q(tmp_dest_V_fu_162[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_162_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_dest_V_3_reg_1593[4]),
        .Q(tmp_dest_V_fu_162[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_162_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_dest_V_3_reg_1593[5]),
        .Q(tmp_dest_V_fu_162[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_3_reg_1587[0]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_payload_B[0]),
        .I1(INPUT_IMAGE_V_id_V_0_sel),
        .I2(INPUT_IMAGE_V_id_V_0_payload_A[0]),
        .O(INPUT_IMAGE_V_id_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_3_reg_1587[1]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_payload_B[1]),
        .I1(INPUT_IMAGE_V_id_V_0_sel),
        .I2(INPUT_IMAGE_V_id_V_0_payload_A[1]),
        .O(INPUT_IMAGE_V_id_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_3_reg_1587[2]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_payload_B[2]),
        .I1(INPUT_IMAGE_V_id_V_0_sel),
        .I2(INPUT_IMAGE_V_id_V_0_payload_A[2]),
        .O(INPUT_IMAGE_V_id_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_3_reg_1587[3]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_payload_B[3]),
        .I1(INPUT_IMAGE_V_id_V_0_sel),
        .I2(INPUT_IMAGE_V_id_V_0_payload_A[3]),
        .O(INPUT_IMAGE_V_id_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_3_reg_1587[4]_i_1 
       (.I0(INPUT_IMAGE_V_id_V_0_payload_B[4]),
        .I1(INPUT_IMAGE_V_id_V_0_sel),
        .I2(INPUT_IMAGE_V_id_V_0_payload_A[4]),
        .O(INPUT_IMAGE_V_id_V_0_data_out[4]));
  FDRE \tmp_id_V_3_reg_1587_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_id_V_0_data_out[0]),
        .Q(tmp_id_V_3_reg_1587[0]),
        .R(1'b0));
  FDRE \tmp_id_V_3_reg_1587_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_id_V_0_data_out[1]),
        .Q(tmp_id_V_3_reg_1587[1]),
        .R(1'b0));
  FDRE \tmp_id_V_3_reg_1587_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_id_V_0_data_out[2]),
        .Q(tmp_id_V_3_reg_1587[2]),
        .R(1'b0));
  FDRE \tmp_id_V_3_reg_1587_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_id_V_0_data_out[3]),
        .Q(tmp_id_V_3_reg_1587[3]),
        .R(1'b0));
  FDRE \tmp_id_V_3_reg_1587_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_id_V_0_data_out[4]),
        .Q(tmp_id_V_3_reg_1587[4]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_178_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_id_V_3_reg_1587[0]),
        .Q(tmp_id_V_fu_178[0]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_178_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_id_V_3_reg_1587[1]),
        .Q(tmp_id_V_fu_178[1]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_178_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_id_V_3_reg_1587[2]),
        .Q(tmp_id_V_fu_178[2]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_178_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_id_V_3_reg_1587[3]),
        .Q(tmp_id_V_fu_178[3]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_178_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_id_V_3_reg_1587[4]),
        .Q(tmp_id_V_fu_178[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_keep_V_3_reg_1569[0]_i_1 
       (.I0(INPUT_IMAGE_V_keep_V_0_payload_B),
        .I1(INPUT_IMAGE_V_keep_V_0_sel),
        .I2(INPUT_IMAGE_V_keep_V_0_payload_A),
        .O(INPUT_IMAGE_V_keep_V_0_data_out));
  FDRE \tmp_keep_V_3_reg_1569_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_keep_V_0_data_out),
        .Q(tmp_keep_V_3_reg_1569),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_166_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_keep_V_3_reg_1569),
        .Q(tmp_keep_V_fu_166),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_strb_V_3_reg_1575[0]_i_1 
       (.I0(INPUT_IMAGE_V_strb_V_0_payload_B),
        .I1(INPUT_IMAGE_V_strb_V_0_sel),
        .I2(INPUT_IMAGE_V_strb_V_0_payload_A),
        .O(INPUT_IMAGE_V_strb_V_0_data_out));
  FDRE \tmp_strb_V_3_reg_1575_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_strb_V_0_data_out),
        .Q(tmp_strb_V_3_reg_1575),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_170_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_strb_V_3_reg_1575),
        .Q(tmp_strb_V_fu_170),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_3_reg_1581[0]_i_1 
       (.I0(INPUT_IMAGE_V_user_V_0_payload_B[0]),
        .I1(INPUT_IMAGE_V_user_V_0_sel),
        .I2(INPUT_IMAGE_V_user_V_0_payload_A[0]),
        .O(INPUT_IMAGE_V_user_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_3_reg_1581[1]_i_1 
       (.I0(INPUT_IMAGE_V_user_V_0_payload_B[1]),
        .I1(INPUT_IMAGE_V_user_V_0_sel),
        .I2(INPUT_IMAGE_V_user_V_0_payload_A[1]),
        .O(INPUT_IMAGE_V_user_V_0_data_out[1]));
  FDRE \tmp_user_V_3_reg_1581_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_user_V_0_data_out[0]),
        .Q(tmp_user_V_3_reg_1581[0]),
        .R(1'b0));
  FDRE \tmp_user_V_3_reg_1581_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(INPUT_IMAGE_V_user_V_0_data_out[1]),
        .Q(tmp_user_V_3_reg_1581[1]),
        .R(1'b0));
  FDRE \tmp_user_V_fu_174_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_user_V_3_reg_1581[0]),
        .Q(tmp_user_V_fu_174[0]),
        .R(1'b0));
  FDRE \tmp_user_V_fu_174_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(tmp_user_V_3_reg_1581[1]),
        .Q(tmp_user_V_fu_174[1]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[0]),
        .Q(window_val_0_1_fu_190[0]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[1]),
        .Q(window_val_0_1_fu_190[1]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[2]),
        .Q(window_val_0_1_fu_190[2]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[3]),
        .Q(window_val_0_1_fu_190[3]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[4]),
        .Q(window_val_0_1_fu_190[4]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[5]),
        .Q(window_val_0_1_fu_190[5]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[6]),
        .Q(window_val_0_1_fu_190[6]),
        .R(1'b0));
  FDRE \window_val_0_1_fu_190_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_5_reg_1635[7]),
        .Q(window_val_0_1_fu_190[7]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[0]),
        .Q(window_val_1_0_fu_198[0]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[1]),
        .Q(window_val_1_0_fu_198[1]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[2]),
        .Q(window_val_1_0_fu_198[2]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[3]),
        .Q(window_val_1_0_fu_198[3]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[4]),
        .Q(window_val_1_0_fu_198[4]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[5]),
        .Q(window_val_1_0_fu_198[5]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[6]),
        .Q(window_val_1_0_fu_198[6]),
        .R(1'b0));
  FDRE \window_val_1_0_fu_198_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_3_reg_1623[7]),
        .Q(window_val_1_0_fu_198[7]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[0]),
        .Q(window_val_1_1_fu_202[0]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[1]),
        .Q(window_val_1_1_fu_202[1]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[2]),
        .Q(window_val_1_1_fu_202[2]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[3]),
        .Q(window_val_1_1_fu_202[3]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[4]),
        .Q(window_val_1_1_fu_202[4]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[5]),
        .Q(window_val_1_1_fu_202[5]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[6]),
        .Q(window_val_1_1_fu_202[6]),
        .R(1'b0));
  FDRE \window_val_1_1_fu_202_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_2_reg_1617[7]),
        .Q(window_val_1_1_fu_202[7]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[0]),
        .Q(window_val_2_0_fu_210[0]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[1]),
        .Q(window_val_2_0_fu_210[1]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[2]),
        .Q(window_val_2_0_fu_210[2]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[3]),
        .Q(window_val_2_0_fu_210[3]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[4]),
        .Q(window_val_2_0_fu_210[4]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[5]),
        .Q(window_val_2_0_fu_210[5]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[6]),
        .Q(window_val_2_0_fu_210[6]),
        .R(1'b0));
  FDRE \window_val_2_0_fu_210_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_reg_1605[7]),
        .Q(window_val_2_0_fu_210[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFD08EC4C)) 
    \window_val_2_1_7_reg_1599[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[0]),
        .I2(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .O(window_val_2_1_7_fu_951_p3[0]));
  LUT5 #(
    .INIT(32'hFE04DC8C)) 
    \window_val_2_1_7_reg_1599[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[1]),
        .I2(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .O(window_val_2_1_7_fu_951_p3[1]));
  LUT5 #(
    .INIT(32'hFE04DC8C)) 
    \window_val_2_1_7_reg_1599[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[2]),
        .I2(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .O(window_val_2_1_7_fu_951_p3[2]));
  LUT5 #(
    .INIT(32'hFE04DC8C)) 
    \window_val_2_1_7_reg_1599[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[3]),
        .I2(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .O(window_val_2_1_7_fu_951_p3[3]));
  LUT5 #(
    .INIT(32'hFD08EC4C)) 
    \window_val_2_1_7_reg_1599[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[4]),
        .I2(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .O(window_val_2_1_7_fu_951_p3[4]));
  LUT5 #(
    .INIT(32'hFD08EC4C)) 
    \window_val_2_1_7_reg_1599[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[5]),
        .I2(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .O(window_val_2_1_7_fu_951_p3[5]));
  LUT5 #(
    .INIT(32'hFD08EC4C)) 
    \window_val_2_1_7_reg_1599[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[6]),
        .I2(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .O(window_val_2_1_7_fu_951_p3[6]));
  LUT5 #(
    .INIT(32'hFE04DC8C)) 
    \window_val_2_1_7_reg_1599[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_1_fu_214[7]),
        .I2(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ),
        .O(window_val_2_1_7_fu_951_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \window_val_2_1_7_reg_1599[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .I2(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\window_val_2_1_7_reg_1599[7]_i_2_n_3 ));
  FDRE \window_val_2_1_7_reg_1599_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[0]),
        .Q(window_val_2_1_7_reg_1599[0]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[1]),
        .Q(window_val_2_1_7_reg_1599[1]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[2]),
        .Q(window_val_2_1_7_reg_1599[2]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[3]),
        .Q(window_val_2_1_7_reg_1599[3]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[4]),
        .Q(window_val_2_1_7_reg_1599[4]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[5]),
        .Q(window_val_2_1_7_reg_1599[5]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[6]),
        .Q(window_val_2_1_7_reg_1599[6]),
        .R(1'b0));
  FDRE \window_val_2_1_7_reg_1599_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_1_7_fu_951_p3[7]),
        .Q(window_val_2_1_7_reg_1599[7]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[0]),
        .Q(window_val_2_1_fu_214[0]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[1]),
        .Q(window_val_2_1_fu_214[1]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[2]),
        .Q(window_val_2_1_fu_214[2]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[3]),
        .Q(window_val_2_1_fu_214[3]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[4]),
        .Q(window_val_2_1_fu_214[4]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[5]),
        .Q(window_val_2_1_fu_214[5]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[6]),
        .Q(window_val_2_1_fu_214[6]),
        .R(1'b0));
  FDRE \window_val_2_1_fu_214_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_1_7_reg_1599[7]),
        .Q(window_val_2_1_fu_214[7]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[0]),
        .Q(window_val_2_2_1_fu_182[0]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[1]),
        .Q(window_val_2_2_1_fu_182[1]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[2]),
        .Q(window_val_2_2_1_fu_182[2]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[3]),
        .Q(window_val_2_2_1_fu_182[3]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[4]),
        .Q(window_val_2_2_1_fu_182[4]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[5]),
        .Q(window_val_2_2_1_fu_182[5]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[6]),
        .Q(window_val_2_2_1_fu_182[6]),
        .R(1'b0));
  FDRE \window_val_2_2_1_fu_182_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_53_reg_1647[7]),
        .Q(window_val_2_2_1_fu_182[7]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[0]),
        .Q(window_val_2_2_2_fu_186[0]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[1]),
        .Q(window_val_2_2_2_fu_186[1]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[2]),
        .Q(window_val_2_2_2_fu_186[2]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[3]),
        .Q(window_val_2_2_2_fu_186[3]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[4]),
        .Q(window_val_2_2_2_fu_186[4]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[5]),
        .Q(window_val_2_2_2_fu_186[5]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[6]),
        .Q(window_val_2_2_2_fu_186[6]),
        .R(1'b0));
  FDRE \window_val_2_2_2_fu_186_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(select_ln41_6_reg_1641[7]),
        .Q(window_val_2_2_2_fu_186[7]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[0]),
        .Q(window_val_2_2_3_fu_194[0]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[1]),
        .Q(window_val_2_2_3_fu_194[1]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[2]),
        .Q(window_val_2_2_3_fu_194[2]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[3]),
        .Q(window_val_2_2_3_fu_194[3]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[4]),
        .Q(window_val_2_2_3_fu_194[4]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[5]),
        .Q(window_val_2_2_3_fu_194[5]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[6]),
        .Q(window_val_2_2_3_fu_194[6]),
        .R(1'b0));
  FDRE \window_val_2_2_3_fu_194_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_52_reg_1629[7]),
        .Q(window_val_2_2_3_fu_194[7]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[0] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[0]),
        .Q(window_val_2_2_4_fu_206[0]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[1] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[1]),
        .Q(window_val_2_2_4_fu_206[1]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[2] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[2]),
        .Q(window_val_2_2_4_fu_206[2]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[3] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[3]),
        .Q(window_val_2_2_4_fu_206[3]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[4] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[4]),
        .Q(window_val_2_2_4_fu_206[4]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[5] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[5]),
        .Q(window_val_2_2_4_fu_206[5]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[6] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[6]),
        .Q(window_val_2_2_4_fu_206[6]),
        .R(1'b0));
  FDRE \window_val_2_2_4_fu_206_reg[7] 
       (.C(ap_clk),
        .CE(\col_assign_reg_367[10]_i_2_n_3 ),
        .D(window_val_2_2_51_reg_1611[7]),
        .Q(window_val_2_2_4_fu_206[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[0]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[0]),
        .O(window_val_2_2_51_fu_965_p3[0]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[1]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[1]),
        .O(window_val_2_2_51_fu_965_p3[1]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[2]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[2]),
        .O(window_val_2_2_51_fu_965_p3[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[3]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[3]),
        .O(window_val_2_2_51_fu_965_p3[3]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[4]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[4]),
        .O(window_val_2_2_51_fu_965_p3[4]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[5]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[5]),
        .O(window_val_2_2_51_fu_965_p3[5]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[6]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[6]),
        .O(window_val_2_2_51_fu_965_p3[6]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_51_reg_1611[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_4_fu_206[7]),
        .I2(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_2_0_fu_210[7]),
        .O(window_val_2_2_51_fu_965_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \window_val_2_2_51_reg_1611[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .I3(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\window_val_2_2_51_reg_1611[7]_i_2_n_3 ));
  FDRE \window_val_2_2_51_reg_1611_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[0]),
        .Q(window_val_2_2_51_reg_1611[0]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[1]),
        .Q(window_val_2_2_51_reg_1611[1]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[2]),
        .Q(window_val_2_2_51_reg_1611[2]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[3]),
        .Q(window_val_2_2_51_reg_1611[3]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[4]),
        .Q(window_val_2_2_51_reg_1611[4]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[5]),
        .Q(window_val_2_2_51_reg_1611[5]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[6]),
        .Q(window_val_2_2_51_reg_1611[6]),
        .R(1'b0));
  FDRE \window_val_2_2_51_reg_1611_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_51_fu_965_p3[7]),
        .Q(window_val_2_2_51_reg_1611[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[0]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[0]),
        .O(window_val_2_2_52_fu_986_p3[0]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[1]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[1]),
        .O(window_val_2_2_52_fu_986_p3[1]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[2]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[2]),
        .O(window_val_2_2_52_fu_986_p3[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[3]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[3]),
        .O(window_val_2_2_52_fu_986_p3[3]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[4]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[4]),
        .O(window_val_2_2_52_fu_986_p3[4]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[5]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[5]),
        .O(window_val_2_2_52_fu_986_p3[5]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[6]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[6]),
        .O(window_val_2_2_52_fu_986_p3[6]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \window_val_2_2_52_reg_1629[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(window_val_2_2_3_fu_194[7]),
        .I2(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I5(window_val_1_0_fu_198[7]),
        .O(window_val_2_2_52_fu_986_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \window_val_2_2_52_reg_1629[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(\icmp_ln274_2_reg_1510_reg_n_3_[0] ),
        .I3(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\window_val_2_2_52_reg_1629[7]_i_2_n_3 ));
  FDRE \window_val_2_2_52_reg_1629_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[0]),
        .Q(window_val_2_2_52_reg_1629[0]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[1]),
        .Q(window_val_2_2_52_reg_1629[1]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[2]),
        .Q(window_val_2_2_52_reg_1629[2]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[3]),
        .Q(window_val_2_2_52_reg_1629[3]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[4]),
        .Q(window_val_2_2_52_reg_1629[4]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[5]),
        .Q(window_val_2_2_52_reg_1629[5]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[6]),
        .Q(window_val_2_2_52_reg_1629[6]),
        .R(1'b0));
  FDRE \window_val_2_2_52_reg_1629_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_52_fu_986_p3[7]),
        .Q(window_val_2_2_52_reg_1629[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[0]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[0]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[0]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .O(window_val_2_2_53_fu_1007_p3[0]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[1]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[1]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[1]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .O(window_val_2_2_53_fu_1007_p3[1]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[2]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[2]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[2]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .O(window_val_2_2_53_fu_1007_p3[2]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[3]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[3]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[3]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .O(window_val_2_2_53_fu_1007_p3[3]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[4]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[4]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[4]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .O(window_val_2_2_53_fu_1007_p3[4]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[5]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[5]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[5]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .O(window_val_2_2_53_fu_1007_p3[5]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[6]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[6]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[6]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .O(window_val_2_2_53_fu_1007_p3[6]));
  LUT6 #(
    .INIT(64'hFD08FDF8FD080D08)) 
    \window_val_2_2_53_reg_1647[7]_i_1 
       (.I0(\select_ln41_5_reg_1635_reg[7]_i_3_n_4 ),
        .I1(window_val_2_2_2_fu_186[7]),
        .I2(and_ln41_1_reg_1551),
        .I3(window_val_2_2_1_fu_182[7]),
        .I4(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ),
        .I5(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .O(window_val_2_2_53_fu_1007_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \window_val_2_2_53_reg_1647[7]_i_2 
       (.I0(tmp_2_fu_1114_p4[0]),
        .I1(\col_assign_reg_367_reg_n_3_[0] ),
        .I2(\icmp_ln274_3_reg_1520_reg_n_3_[0] ),
        .O(\window_val_2_2_53_reg_1647[7]_i_2_n_3 ));
  FDRE \window_val_2_2_53_reg_1647_reg[0] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[0]),
        .Q(window_val_2_2_53_reg_1647[0]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[1] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[1]),
        .Q(window_val_2_2_53_reg_1647[1]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[2] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[2]),
        .Q(window_val_2_2_53_reg_1647[2]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[3] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[3]),
        .Q(window_val_2_2_53_reg_1647[3]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[4] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[4]),
        .Q(window_val_2_2_53_reg_1647[4]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[5] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[5]),
        .Q(window_val_2_2_53_reg_1647[5]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[6] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[6]),
        .Q(window_val_2_2_53_reg_1647[6]),
        .R(1'b0));
  FDRE \window_val_2_2_53_reg_1647_reg[7] 
       (.C(ap_clk),
        .CE(p_184_in),
        .D(window_val_2_2_53_fu_1007_p3[7]),
        .Q(window_val_2_2_53_reg_1647[7]),
        .R(1'b0));
  FDRE \x_dir_0_reg_401_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_34),
        .Q(x_dir_0_reg_401[0]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_24),
        .Q(x_dir_0_reg_401[10]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_23),
        .Q(x_dir_0_reg_401[11]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_22),
        .Q(x_dir_0_reg_401[12]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_21),
        .Q(x_dir_0_reg_401[13]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_20),
        .Q(x_dir_0_reg_401[14]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_19),
        .Q(x_dir_0_reg_401[15]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_18),
        .Q(x_dir_0_reg_401[16]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_17),
        .Q(x_dir_0_reg_401[17]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_16),
        .Q(x_dir_0_reg_401[18]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_15),
        .Q(x_dir_0_reg_401[19]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_33),
        .Q(x_dir_0_reg_401[1]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_14),
        .Q(x_dir_0_reg_401[20]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_13),
        .Q(x_dir_0_reg_401[21]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_12),
        .Q(x_dir_0_reg_401[22]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_11),
        .Q(x_dir_0_reg_401[23]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_10),
        .Q(x_dir_0_reg_401[24]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_9),
        .Q(x_dir_0_reg_401[25]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_8),
        .Q(x_dir_0_reg_401[26]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_7),
        .Q(x_dir_0_reg_401[27]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_6),
        .Q(x_dir_0_reg_401[28]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_5),
        .Q(x_dir_0_reg_401[29]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_32),
        .Q(x_dir_0_reg_401[2]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_4),
        .Q(x_dir_0_reg_401[30]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_3),
        .Q(x_dir_0_reg_401[31]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_31),
        .Q(x_dir_0_reg_401[3]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_30),
        .Q(x_dir_0_reg_401[4]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_29),
        .Q(x_dir_0_reg_401[5]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_28),
        .Q(x_dir_0_reg_401[6]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_27),
        .Q(x_dir_0_reg_401[7]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_26),
        .Q(x_dir_0_reg_401[8]),
        .R(ap_NS_fsm112_out));
  FDRE \x_dir_0_reg_401_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U2_n_25),
        .Q(x_dir_0_reg_401[9]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_34),
        .Q(y_dir_0_reg_413[0]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_24),
        .Q(y_dir_0_reg_413[10]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_23),
        .Q(y_dir_0_reg_413[11]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_22),
        .Q(y_dir_0_reg_413[12]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_21),
        .Q(y_dir_0_reg_413[13]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_20),
        .Q(y_dir_0_reg_413[14]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_19),
        .Q(y_dir_0_reg_413[15]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_18),
        .Q(y_dir_0_reg_413[16]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_17),
        .Q(y_dir_0_reg_413[17]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_16),
        .Q(y_dir_0_reg_413[18]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_15),
        .Q(y_dir_0_reg_413[19]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_33),
        .Q(y_dir_0_reg_413[1]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_14),
        .Q(y_dir_0_reg_413[20]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_13),
        .Q(y_dir_0_reg_413[21]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_12),
        .Q(y_dir_0_reg_413[22]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_11),
        .Q(y_dir_0_reg_413[23]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_10),
        .Q(y_dir_0_reg_413[24]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_9),
        .Q(y_dir_0_reg_413[25]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_8),
        .Q(y_dir_0_reg_413[26]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_7),
        .Q(y_dir_0_reg_413[27]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_6),
        .Q(y_dir_0_reg_413[28]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_5),
        .Q(y_dir_0_reg_413[29]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_32),
        .Q(y_dir_0_reg_413[2]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_4),
        .Q(y_dir_0_reg_413[30]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_3),
        .Q(y_dir_0_reg_413[31]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_31),
        .Q(y_dir_0_reg_413[3]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_30),
        .Q(y_dir_0_reg_413[4]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_29),
        .Q(y_dir_0_reg_413[5]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_28),
        .Q(y_dir_0_reg_413[6]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_27),
        .Q(y_dir_0_reg_413[7]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_26),
        .Q(y_dir_0_reg_413[8]),
        .R(ap_NS_fsm112_out));
  FDRE \y_dir_0_reg_413_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm17_out),
        .D(sobel_filter_mac_eOg_U3_n_25),
        .Q(y_dir_0_reg_413[9]),
        .R(ap_NS_fsm112_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_ctrl_bus_s_axi
   (ap_rst_n_inv,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_ctrl_bus_BVALID,
    D,
    OUTPUT_IMAGE_TREADY_0,
    \OUTPUT_IMAGE_V_keep_V_1_state_reg[0] ,
    \OUTPUT_IMAGE_V_strb_V_1_state_reg[0] ,
    \OUTPUT_IMAGE_V_dest_V_1_state_reg[0] ,
    \i_1_reg_460_reg[10] ,
    \i_1_reg_460_reg[4] ,
    \i_1_reg_460_reg[6] ,
    s_axi_ctrl_bus_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    interrupt,
    SR,
    s_axi_ctrl_bus_RDATA,
    ap_clk,
    s_axi_ctrl_bus_WVALID,
    s_axi_ctrl_bus_AWVALID,
    s_axi_ctrl_bus_BREADY,
    s_axi_ctrl_bus_WDATA,
    s_axi_ctrl_bus_WSTRB,
    Q,
    OUTPUT_IMAGE_TREADY,
    OUTPUT_IMAGE_V_data_V_1_ack_in,
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 ,
    int_ap_ready_reg_0,
    OUTPUT_IMAGE_V_last_V_1_ack_in,
    OUTPUT_IMAGE_V_id_V_1_ack_in,
    int_ap_ready_i_3_0,
    OUTPUT_IMAGE_V_keep_V_1_ack_in,
    \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] ,
    OUTPUT_IMAGE_V_dest_V_1_ack_in,
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0 ,
    OUTPUT_IMAGE_V_strb_V_1_ack_in,
    int_ap_ready_reg_1,
    OUTPUT_IMAGE_V_user_V_1_ack_in,
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1 ,
    int_ap_ready_reg_2,
    s_axi_ctrl_bus_ARADDR,
    s_axi_ctrl_bus_RREADY,
    s_axi_ctrl_bus_ARVALID,
    E,
    ap_rst_n,
    s_axi_ctrl_bus_AWADDR);
  output ap_rst_n_inv;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_ctrl_bus_BVALID;
  output [1:0]D;
  output OUTPUT_IMAGE_TREADY_0;
  output \OUTPUT_IMAGE_V_keep_V_1_state_reg[0] ;
  output \OUTPUT_IMAGE_V_strb_V_1_state_reg[0] ;
  output \OUTPUT_IMAGE_V_dest_V_1_state_reg[0] ;
  output \i_1_reg_460_reg[10] ;
  output \i_1_reg_460_reg[4] ;
  output \i_1_reg_460_reg[6] ;
  output s_axi_ctrl_bus_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output interrupt;
  output [0:0]SR;
  output [4:0]s_axi_ctrl_bus_RDATA;
  input ap_clk;
  input s_axi_ctrl_bus_WVALID;
  input s_axi_ctrl_bus_AWVALID;
  input s_axi_ctrl_bus_BREADY;
  input [2:0]s_axi_ctrl_bus_WDATA;
  input [0:0]s_axi_ctrl_bus_WSTRB;
  input [1:0]Q;
  input OUTPUT_IMAGE_TREADY;
  input OUTPUT_IMAGE_V_data_V_1_ack_in;
  input \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 ;
  input int_ap_ready_reg_0;
  input OUTPUT_IMAGE_V_last_V_1_ack_in;
  input OUTPUT_IMAGE_V_id_V_1_ack_in;
  input int_ap_ready_i_3_0;
  input OUTPUT_IMAGE_V_keep_V_1_ack_in;
  input \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] ;
  input OUTPUT_IMAGE_V_dest_V_1_ack_in;
  input \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0 ;
  input OUTPUT_IMAGE_V_strb_V_1_ack_in;
  input int_ap_ready_reg_1;
  input OUTPUT_IMAGE_V_user_V_1_ack_in;
  input \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1 ;
  input [10:0]int_ap_ready_reg_2;
  input [3:0]s_axi_ctrl_bus_ARADDR;
  input s_axi_ctrl_bus_RREADY;
  input s_axi_ctrl_bus_ARVALID;
  input [0:0]E;
  input ap_rst_n;
  input [3:0]s_axi_ctrl_bus_AWADDR;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_3 ;
  wire \FSM_onehot_rstate[2]_i_1_n_3 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_3 ;
  wire \FSM_onehot_wstate[2]_i_1_n_3 ;
  wire \FSM_onehot_wstate[3]_i_1_n_3 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire OUTPUT_IMAGE_TREADY;
  wire OUTPUT_IMAGE_TREADY_0;
  wire OUTPUT_IMAGE_V_data_V_1_ack_in;
  wire OUTPUT_IMAGE_V_dest_V_1_ack_in;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1 ;
  wire \OUTPUT_IMAGE_V_dest_V_1_state_reg[0] ;
  wire OUTPUT_IMAGE_V_id_V_1_ack_in;
  wire OUTPUT_IMAGE_V_keep_V_1_ack_in;
  wire \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] ;
  wire \OUTPUT_IMAGE_V_keep_V_1_state_reg[0] ;
  wire OUTPUT_IMAGE_V_last_V_1_ack_in;
  wire OUTPUT_IMAGE_V_strb_V_1_ack_in;
  wire \OUTPUT_IMAGE_V_strb_V_1_state_reg[0] ;
  wire OUTPUT_IMAGE_V_user_V_1_ack_in;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire [7:1]data0;
  wire \i_1_reg_460_reg[10] ;
  wire \i_1_reg_460_reg[4] ;
  wire \i_1_reg_460_reg[6] ;
  wire int_ap_done_i_1_n_3;
  wire int_ap_done_i_2_n_3;
  wire int_ap_ready_i_3_0;
  wire int_ap_ready_i_5_n_3;
  wire int_ap_ready_i_6_n_3;
  wire int_ap_ready_i_7_n_3;
  wire int_ap_ready_i_8_n_3;
  wire int_ap_ready_reg_0;
  wire int_ap_ready_reg_1;
  wire [10:0]int_ap_ready_reg_2;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_3;
  wire int_auto_restart_i_1_n_3;
  wire int_gie_i_1_n_3;
  wire int_gie_reg_n_3;
  wire \int_ier[0]_i_1_n_3 ;
  wire \int_ier[1]_i_1_n_3 ;
  wire \int_ier[1]_i_2_n_3 ;
  wire \int_ier_reg_n_3_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_3 ;
  wire \int_isr[1]_i_1_n_3 ;
  wire \int_isr_reg_n_3_[0] ;
  wire interrupt;
  wire p_0_in__0;
  wire p_1_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_3 ;
  wire \rdata[1]_i_2_n_3 ;
  wire [3:0]s_axi_ctrl_bus_ARADDR;
  wire s_axi_ctrl_bus_ARVALID;
  wire [3:0]s_axi_ctrl_bus_AWADDR;
  wire s_axi_ctrl_bus_AWVALID;
  wire s_axi_ctrl_bus_BREADY;
  wire s_axi_ctrl_bus_BVALID;
  wire [4:0]s_axi_ctrl_bus_RDATA;
  wire s_axi_ctrl_bus_RREADY;
  wire s_axi_ctrl_bus_RVALID;
  wire [2:0]s_axi_ctrl_bus_WDATA;
  wire [0:0]s_axi_ctrl_bus_WSTRB;
  wire s_axi_ctrl_bus_WVALID;
  wire waddr;
  wire \waddr_reg_n_3_[0] ;
  wire \waddr_reg_n_3_[1] ;
  wire \waddr_reg_n_3_[2] ;
  wire \waddr_reg_n_3_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8FDD)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_ctrl_bus_RVALID),
        .I1(s_axi_ctrl_bus_RREADY),
        .I2(s_axi_ctrl_bus_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_ctrl_bus_RREADY),
        .I1(s_axi_ctrl_bus_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_ctrl_bus_ARVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_3 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_3 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_3 ),
        .Q(s_axi_ctrl_bus_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF353035)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_ctrl_bus_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_ctrl_bus_BVALID),
        .I4(s_axi_ctrl_bus_BREADY),
        .O(\FSM_onehot_wstate[1]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_ctrl_bus_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_ctrl_bus_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_ctrl_bus_WVALID),
        .I2(s_axi_ctrl_bus_BREADY),
        .I3(s_axi_ctrl_bus_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_3 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_3 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_3 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_3 ),
        .Q(s_axi_ctrl_bus_BVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \INPUT_IMAGE_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_4 
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0 ),
        .I1(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I2(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 ),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I4(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .I5(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1 ),
        .O(\OUTPUT_IMAGE_V_dest_V_1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_3 
       (.I0(\OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] ),
        .I1(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .O(\OUTPUT_IMAGE_V_keep_V_1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_done),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(E),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter_0_reg_333[20]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(E),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    int_ap_done_i_1
       (.I0(int_ap_done_i_2_n_3),
        .I1(s_axi_ctrl_bus_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(ap_done),
        .I4(data0[1]),
        .O(int_ap_done_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_done_i_2
       (.I0(s_axi_ctrl_bus_ARADDR[2]),
        .I1(s_axi_ctrl_bus_ARADDR[3]),
        .I2(s_axi_ctrl_bus_ARADDR[1]),
        .I3(s_axi_ctrl_bus_ARADDR[0]),
        .O(int_ap_done_i_2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_3),
        .Q(data0[1]),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(data0[2]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h0200)) 
    int_ap_ready_i_1
       (.I0(Q[1]),
        .I1(\OUTPUT_IMAGE_V_strb_V_1_state_reg[0] ),
        .I2(OUTPUT_IMAGE_TREADY_0),
        .I3(\i_1_reg_460_reg[10] ),
        .O(ap_done));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_ready_i_10
       (.I0(int_ap_ready_reg_2[6]),
        .I1(int_ap_ready_reg_2[5]),
        .I2(int_ap_ready_reg_2[8]),
        .I3(int_ap_ready_reg_2[7]),
        .O(\i_1_reg_460_reg[6] ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    int_ap_ready_i_2
       (.I0(\OUTPUT_IMAGE_V_dest_V_1_state_reg[0] ),
        .I1(int_ap_ready_reg_1),
        .I2(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .I3(int_ap_ready_reg_0),
        .I4(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .O(\OUTPUT_IMAGE_V_strb_V_1_state_reg[0] ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEE)) 
    int_ap_ready_i_3
       (.I0(\OUTPUT_IMAGE_V_keep_V_1_state_reg[0] ),
        .I1(int_ap_ready_i_5_n_3),
        .I2(OUTPUT_IMAGE_TREADY),
        .I3(int_ap_ready_i_6_n_3),
        .I4(int_ap_ready_i_7_n_3),
        .I5(int_ap_ready_i_8_n_3),
        .O(OUTPUT_IMAGE_TREADY_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    int_ap_ready_i_4
       (.I0(int_ap_ready_reg_2[10]),
        .I1(int_ap_ready_reg_2[9]),
        .I2(int_ap_ready_reg_2[0]),
        .I3(int_ap_ready_reg_2[1]),
        .I4(\i_1_reg_460_reg[4] ),
        .I5(\i_1_reg_460_reg[6] ),
        .O(\i_1_reg_460_reg[10] ));
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_ready_i_5
       (.I0(int_ap_ready_i_3_0),
        .I1(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .O(int_ap_ready_i_5_n_3));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    int_ap_ready_i_6
       (.I0(OUTPUT_IMAGE_V_keep_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0] ),
        .I2(OUTPUT_IMAGE_V_dest_V_1_ack_in),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0 ),
        .O(int_ap_ready_i_6_n_3));
  LUT4 #(
    .INIT(16'hF888)) 
    int_ap_ready_i_7
       (.I0(OUTPUT_IMAGE_V_strb_V_1_ack_in),
        .I1(int_ap_ready_reg_1),
        .I2(OUTPUT_IMAGE_V_user_V_1_ack_in),
        .I3(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1 ),
        .O(int_ap_ready_i_7_n_3));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    int_ap_ready_i_8
       (.I0(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I1(\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2 ),
        .I2(int_ap_ready_reg_0),
        .I3(OUTPUT_IMAGE_V_last_V_1_ack_in),
        .I4(OUTPUT_IMAGE_V_id_V_1_ack_in),
        .I5(int_ap_ready_i_3_0),
        .O(int_ap_ready_i_8_n_3));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_ready_i_9
       (.I0(int_ap_ready_reg_2[4]),
        .I1(int_ap_ready_reg_2[3]),
        .I2(int_ap_ready_reg_2[2]),
        .I3(int_ap_ready_reg_2[1]),
        .O(\i_1_reg_460_reg[4] ));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done),
        .Q(data0[3]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(data0[7]),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_ap_start_i_2
       (.I0(s_axi_ctrl_bus_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_3 ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(\waddr_reg_n_3_[3] ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_3),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_ctrl_bus_WDATA[2]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(\int_ier[1]_i_2_n_3 ),
        .I4(data0[7]),
        .O(int_auto_restart_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_3),
        .Q(data0[7]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_ctrl_bus_WDATA[0]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(\int_ier[1]_i_2_n_3 ),
        .I4(int_gie_reg_n_3),
        .O(int_gie_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_3),
        .Q(int_gie_reg_n_3),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[0]),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(\int_ier[1]_i_2_n_3 ),
        .I4(\int_ier_reg_n_3_[0] ),
        .O(\int_ier[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[1]),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\waddr_reg_n_3_[3] ),
        .I3(\int_ier[1]_i_2_n_3 ),
        .I4(p_0_in__0),
        .O(\int_ier[1]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_ctrl_bus_WSTRB),
        .I1(s_axi_ctrl_bus_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_3_[0] ),
        .I4(\waddr_reg_n_3_[1] ),
        .O(\int_ier[1]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_3 ),
        .Q(\int_ier_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_3 ),
        .Q(p_0_in__0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[0]),
        .I1(int_isr6_out),
        .I2(ap_done),
        .I3(\int_ier_reg_n_3_[0] ),
        .I4(\int_isr_reg_n_3_[0] ),
        .O(\int_isr[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\int_ier[1]_i_2_n_3 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[1]),
        .I1(int_isr6_out),
        .I2(ap_done),
        .I3(p_0_in__0),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_3 ),
        .Q(p_1_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_3_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_3),
        .O(interrupt));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_3 ),
        .I1(s_axi_ctrl_bus_ARADDR[1]),
        .I2(s_axi_ctrl_bus_ARADDR[0]),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_3_[0] ),
        .I1(\int_isr_reg_n_3_[0] ),
        .I2(ap_start),
        .I3(s_axi_ctrl_bus_ARADDR[2]),
        .I4(s_axi_ctrl_bus_ARADDR[3]),
        .I5(int_gie_reg_n_3),
        .O(\rdata[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h000000008F838C80)) 
    \rdata[1]_i_1 
       (.I0(p_1_in),
        .I1(s_axi_ctrl_bus_ARADDR[3]),
        .I2(s_axi_ctrl_bus_ARADDR[2]),
        .I3(p_0_in__0),
        .I4(data0[1]),
        .I5(\rdata[1]_i_2_n_3 ),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_ctrl_bus_ARADDR[0]),
        .I1(s_axi_ctrl_bus_ARADDR[1]),
        .O(\rdata[1]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[2]_i_1 
       (.I0(data0[2]),
        .I1(s_axi_ctrl_bus_ARADDR[0]),
        .I2(s_axi_ctrl_bus_ARADDR[1]),
        .I3(s_axi_ctrl_bus_ARADDR[3]),
        .I4(s_axi_ctrl_bus_ARADDR[2]),
        .O(rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[3]_i_1 
       (.I0(data0[3]),
        .I1(s_axi_ctrl_bus_ARADDR[0]),
        .I2(s_axi_ctrl_bus_ARADDR[1]),
        .I3(s_axi_ctrl_bus_ARADDR[3]),
        .I4(s_axi_ctrl_bus_ARADDR[2]),
        .O(rdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_1 
       (.I0(s_axi_ctrl_bus_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[7]_i_2 
       (.I0(data0[7]),
        .I1(s_axi_ctrl_bus_ARADDR[0]),
        .I2(s_axi_ctrl_bus_ARADDR[1]),
        .I3(s_axi_ctrl_bus_ARADDR[3]),
        .I4(s_axi_ctrl_bus_ARADDR[2]),
        .O(rdata[7]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_ctrl_bus_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_ctrl_bus_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_ctrl_bus_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_ctrl_bus_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_ctrl_bus_RDATA[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_ctrl_bus_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[0]),
        .Q(\waddr_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[1]),
        .Q(\waddr_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[2]),
        .Q(\waddr_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[3]),
        .Q(\waddr_reg_n_3_[3] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg
   (D,
    \ap_CS_fsm_reg[6] ,
    ap_NS_fsm17_out,
    ap_NS_fsm112_out,
    A,
    ap_NS_fsm18_out,
    Q,
    ap_clk,
    B,
    OPMODE,
    p,
    p_0,
    p_1,
    p_2,
    p_3,
    colOffset_reg_1664,
    p_4,
    p_5,
    p_6,
    p_7,
    p_8,
    p_9,
    p_10,
    p_11,
    CO,
    p_12,
    p_13,
    p_14,
    sel);
  output [31:0]D;
  output [1:0]\ap_CS_fsm_reg[6] ;
  output ap_NS_fsm17_out;
  output ap_NS_fsm112_out;
  output [7:0]A;
  output ap_NS_fsm18_out;
  input [3:0]Q;
  input ap_clk;
  input [0:0]B;
  input [0:0]OPMODE;
  input [2:0]p;
  input p_0;
  input p_1;
  input p_2;
  input [7:0]p_3;
  input [1:0]colOffset_reg_1664;
  input [7:0]p_4;
  input [7:0]p_5;
  input [7:0]p_6;
  input [7:0]p_7;
  input [7:0]p_8;
  input [7:0]p_9;
  input [7:0]p_10;
  input [7:0]p_11;
  input [0:0]CO;
  input p_12;
  input [0:0]p_13;
  input [0:0]p_14;
  input [2:0]sel;

  wire [7:0]A;
  wire [0:0]B;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]OPMODE;
  wire [3:0]Q;
  wire [1:0]\ap_CS_fsm_reg[6] ;
  wire ap_NS_fsm112_out;
  wire ap_NS_fsm17_out;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire [1:0]colOffset_reg_1664;
  wire [2:0]p;
  wire p_0;
  wire p_1;
  wire [7:0]p_10;
  wire [7:0]p_11;
  wire p_12;
  wire [0:0]p_13;
  wire [0:0]p_14;
  wire p_2;
  wire [7:0]p_3;
  wire [7:0]p_4;
  wire [7:0]p_5;
  wire [7:0]p_6;
  wire [7:0]p_7;
  wire [7:0]p_8;
  wire [7:0]p_9;
  wire [2:0]sel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2 sobel_filter_mac_eOg_DSP48_0_U
       (.A(A),
        .B(B),
        .CO(CO),
        .D(D),
        .OPMODE(OPMODE),
        .Q(Q),
        .\ap_CS_fsm_reg[6] (\ap_CS_fsm_reg[6] ),
        .ap_NS_fsm112_out(ap_NS_fsm112_out),
        .ap_NS_fsm17_out(ap_NS_fsm17_out),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .colOffset_reg_1664(colOffset_reg_1664),
        .p_0(p),
        .p_1(p_0),
        .p_10(p_9),
        .p_11(p_10),
        .p_12(p_11),
        .p_13(p_12),
        .p_14(p_13),
        .p_15(p_14),
        .p_2(p_1),
        .p_3(p_2),
        .p_4(p_3),
        .p_5(p_4),
        .p_6(p_5),
        .p_7(p_6),
        .p_8(p_7),
        .p_9(p_8),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "sobel_filter_mac_eOg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1
   (D,
    B,
    OPMODE,
    sel,
    p,
    Q,
    E,
    ap_clk,
    SR,
    A,
    ap_NS_fsm18_out,
    colOffset_reg_1664,
    p_0,
    p_1,
    p_2,
    p_3);
  output [31:0]D;
  output [0:0]B;
  output [0:0]OPMODE;
  output [2:0]sel;
  input [1:0]p;
  input [1:0]Q;
  input [0:0]E;
  input ap_clk;
  input [0:0]SR;
  input [7:0]A;
  input ap_NS_fsm18_out;
  input [2:0]colOffset_reg_1664;
  input p_0;
  input p_1;
  input p_2;
  input [2:0]p_3;

  wire [7:0]A;
  wire [0:0]B;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]OPMODE;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire [2:0]colOffset_reg_1664;
  wire [1:0]p;
  wire p_0;
  wire p_1;
  wire p_2;
  wire [2:0]p_3;
  wire [2:0]sel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0 sobel_filter_mac_eOg_DSP48_0_U
       (.A(A),
        .B(B),
        .D(D),
        .E(E),
        .OPMODE(OPMODE),
        .Q(Q),
        .SR(SR),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .colOffset_reg_1664(colOffset_reg_1664),
        .\colOffset_reg_1664_reg[0] (sel[2]),
        .\colOffset_reg_1664_reg[1] (sel[1]),
        .\colOffset_reg_1664_reg[1]_0 (sel[0]),
        .p_0(p),
        .p_1(p_0),
        .p_2(p_1),
        .p_3(p_2),
        .p_4(p_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0
   (D,
    B,
    OPMODE,
    \colOffset_reg_1664_reg[0] ,
    \colOffset_reg_1664_reg[1] ,
    \colOffset_reg_1664_reg[1]_0 ,
    p_0,
    Q,
    E,
    ap_clk,
    SR,
    A,
    ap_NS_fsm18_out,
    colOffset_reg_1664,
    p_1,
    p_2,
    p_3,
    p_4);
  output [31:0]D;
  output [0:0]B;
  output [0:0]OPMODE;
  output \colOffset_reg_1664_reg[0] ;
  output \colOffset_reg_1664_reg[1] ;
  output \colOffset_reg_1664_reg[1]_0 ;
  input [1:0]p_0;
  input [1:0]Q;
  input [0:0]E;
  input ap_clk;
  input [0:0]SR;
  input [7:0]A;
  input ap_NS_fsm18_out;
  input [2:0]colOffset_reg_1664;
  input p_1;
  input p_2;
  input p_3;
  input [2:0]p_4;

  wire [7:0]A;
  wire [0:0]B;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]OPMODE;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire [2:0]colOffset_reg_1664;
  wire \colOffset_reg_1664_reg[0] ;
  wire \colOffset_reg_1664_reg[1] ;
  wire \colOffset_reg_1664_reg[1]_0 ;
  wire g0_b1__0_n_3;
  wire g0_b2__0_n_3;
  wire [1:0]p_0;
  wire p_1;
  wire p_2;
  wire p_3;
  wire [2:0]p_4;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00066066)) 
    g0_b0
       (.I0(colOffset_reg_1664[0]),
        .I1(p_1),
        .I2(\colOffset_reg_1664_reg[1]_0 ),
        .I3(\colOffset_reg_1664_reg[1] ),
        .I4(\colOffset_reg_1664_reg[0] ),
        .O(B));
  LUT5 #(
    .INIT(32'h0006F009)) 
    g0_b1__0
       (.I0(colOffset_reg_1664[0]),
        .I1(p_1),
        .I2(\colOffset_reg_1664_reg[1]_0 ),
        .I3(\colOffset_reg_1664_reg[1] ),
        .I4(\colOffset_reg_1664_reg[0] ),
        .O(g0_b1__0_n_3));
  LUT5 #(
    .INIT(32'h0006F000)) 
    g0_b2__0
       (.I0(colOffset_reg_1664[0]),
        .I1(p_1),
        .I2(\colOffset_reg_1664_reg[1]_0 ),
        .I3(\colOffset_reg_1664_reg[1] ),
        .I4(\colOffset_reg_1664_reg[0] ),
        .O(g0_b2__0_n_3));
  LUT4 #(
    .INIT(16'h9A65)) 
    g0_b2_i_1
       (.I0(colOffset_reg_1664[1]),
        .I1(p_1),
        .I2(colOffset_reg_1664[0]),
        .I3(p_2),
        .O(\colOffset_reg_1664_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF05A87E10FA5781E)) 
    g0_b2_i_2
       (.I0(colOffset_reg_1664[1]),
        .I1(colOffset_reg_1664[0]),
        .I2(p_3),
        .I3(p_2),
        .I4(p_1),
        .I5(colOffset_reg_1664[2]),
        .O(\colOffset_reg_1664_reg[1] ));
  LUT6 #(
    .INIT(64'h00F8C0010F7FFCE0)) 
    g0_b2_i_3
       (.I0(colOffset_reg_1664[0]),
        .I1(colOffset_reg_1664[1]),
        .I2(colOffset_reg_1664[2]),
        .I3(p_1),
        .I4(p_2),
        .I5(p_3),
        .O(\colOffset_reg_1664_reg[0] ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b2__0_n_3,g0_b1__0_n_3,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_0[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(E),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0[0]),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,ap_NS_fsm18_out,1'b0,OPMODE,1'b0,OPMODE}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:32],D}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(SR),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h555D)) 
    p_i_10
       (.I0(Q[0]),
        .I1(p_4[1]),
        .I2(p_4[0]),
        .I3(p_4[2]),
        .O(OPMODE));
endmodule

(* ORIG_REF_NAME = "sobel_filter_mac_eOg_DSP48_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2
   (D,
    \ap_CS_fsm_reg[6] ,
    ap_NS_fsm17_out,
    ap_NS_fsm112_out,
    A,
    ap_NS_fsm18_out,
    Q,
    ap_clk,
    B,
    OPMODE,
    p_0,
    p_1,
    p_2,
    p_3,
    p_4,
    colOffset_reg_1664,
    p_5,
    p_6,
    p_7,
    p_8,
    p_9,
    p_10,
    p_11,
    p_12,
    CO,
    p_13,
    p_14,
    p_15,
    sel);
  output [31:0]D;
  output [1:0]\ap_CS_fsm_reg[6] ;
  output ap_NS_fsm17_out;
  output ap_NS_fsm112_out;
  output [7:0]A;
  output ap_NS_fsm18_out;
  input [3:0]Q;
  input ap_clk;
  input [0:0]B;
  input [0:0]OPMODE;
  input [2:0]p_0;
  input p_1;
  input p_2;
  input p_3;
  input [7:0]p_4;
  input [1:0]colOffset_reg_1664;
  input [7:0]p_5;
  input [7:0]p_6;
  input [7:0]p_7;
  input [7:0]p_8;
  input [7:0]p_9;
  input [7:0]p_10;
  input [7:0]p_11;
  input [7:0]p_12;
  input [0:0]CO;
  input p_13;
  input [0:0]p_14;
  input [0:0]p_15;
  input [2:0]sel;

  wire [7:0]A;
  wire [0:0]B;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]OPMODE;
  wire [3:0]Q;
  wire [1:0]\ap_CS_fsm_reg[6] ;
  wire ap_NS_fsm112_out;
  wire ap_NS_fsm17_out;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire [1:0]colOffset_reg_1664;
  wire g0_b1_n_3;
  wire g0_b2_n_3;
  wire [2:0]p_0;
  wire p_1;
  wire [7:0]p_10;
  wire [7:0]p_11;
  wire [7:0]p_12;
  wire p_13;
  wire [0:0]p_14;
  wire [0:0]p_15;
  wire p_2;
  wire p_3;
  wire [7:0]p_4;
  wire [7:0]p_5;
  wire [7:0]p_6;
  wire [7:0]p_7;
  wire [7:0]p_8;
  wire [7:0]p_9;
  wire p_i_11_n_3;
  wire p_i_12_n_3;
  wire p_i_13_n_3;
  wire p_i_14_n_3;
  wire p_i_15_n_3;
  wire p_i_16_n_3;
  wire p_i_17_n_3;
  wire p_i_18_n_3;
  wire p_i_19_n_3;
  wire p_i_20_n_3;
  wire p_i_21_n_3;
  wire p_i_22_n_3;
  wire p_i_23_n_3;
  wire p_i_24_n_3;
  wire p_i_25_n_3;
  wire p_i_26_n_3;
  wire p_i_27_n_3;
  wire p_i_28_n_3;
  wire p_i_29_n_3;
  wire [2:0]sel;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFAAA2)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[1]),
        .I1(p_0[1]),
        .I2(p_0[0]),
        .I3(p_0[2]),
        .I4(Q[3]),
        .O(\ap_CS_fsm_reg[6] [0]));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(Q[2]),
        .I1(p_1),
        .I2(p_2),
        .I3(p_3),
        .O(\ap_CS_fsm_reg[6] [1]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \colOffset_0_reg_390[2]_i_1 
       (.I0(CO),
        .I1(p_13),
        .I2(p_14),
        .I3(p_15),
        .I4(Q[0]),
        .O(ap_NS_fsm112_out));
  LUT4 #(
    .INIT(16'h0020)) 
    \colOffset_0_reg_390[2]_i_2 
       (.I0(Q[2]),
        .I1(p_1),
        .I2(p_2),
        .I3(p_3),
        .O(ap_NS_fsm17_out));
  LUT5 #(
    .INIT(32'h00006996)) 
    g0_b1
       (.I0(colOffset_reg_1664[0]),
        .I1(p_1),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g0_b1_n_3));
  LUT5 #(
    .INIT(32'h00006096)) 
    g0_b2
       (.I0(colOffset_reg_1664[0]),
        .I1(p_1),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g0_b2_n_3));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b2_n_3,g0_b1_n_3,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(\ap_CS_fsm_reg[6] [1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[2]),
        .CEC(ap_NS_fsm17_out),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(\ap_CS_fsm_reg[6] [0]),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,ap_NS_fsm18_out,1'b0,OPMODE,1'b0,OPMODE}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:32],D}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(ap_NS_fsm112_out),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_1
       (.I0(p_i_11_n_3),
        .I1(p_i_12_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_11
       (.I0(p_9[7]),
        .I1(p_10[7]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[7]),
        .I5(p_12[7]),
        .O(p_i_11_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_12
       (.I0(p_5[7]),
        .I1(p_6[7]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[7]),
        .I5(p_8[7]),
        .O(p_i_12_n_3));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFDA4)) 
    p_i_13
       (.I0(p_2),
        .I1(colOffset_reg_1664[0]),
        .I2(p_1),
        .I3(colOffset_reg_1664[1]),
        .O(p_i_13_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_14
       (.I0(p_9[6]),
        .I1(p_10[6]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[6]),
        .I5(p_12[6]),
        .O(p_i_14_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_15
       (.I0(p_5[6]),
        .I1(p_6[6]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[6]),
        .I5(p_8[6]),
        .O(p_i_15_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_16
       (.I0(p_9[5]),
        .I1(p_10[5]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[5]),
        .I5(p_12[5]),
        .O(p_i_16_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_17
       (.I0(p_5[5]),
        .I1(p_6[5]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[5]),
        .I5(p_8[5]),
        .O(p_i_17_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_18
       (.I0(p_9[4]),
        .I1(p_10[4]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[4]),
        .I5(p_12[4]),
        .O(p_i_18_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_19
       (.I0(p_5[4]),
        .I1(p_6[4]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[4]),
        .I5(p_8[4]),
        .O(p_i_19_n_3));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_2
       (.I0(p_i_14_n_3),
        .I1(p_i_15_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_20
       (.I0(p_9[3]),
        .I1(p_10[3]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[3]),
        .I5(p_12[3]),
        .O(p_i_20_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_21
       (.I0(p_5[3]),
        .I1(p_6[3]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[3]),
        .I5(p_8[3]),
        .O(p_i_21_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_22
       (.I0(p_9[2]),
        .I1(p_10[2]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[2]),
        .I5(p_12[2]),
        .O(p_i_22_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_23
       (.I0(p_5[2]),
        .I1(p_6[2]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[2]),
        .I5(p_8[2]),
        .O(p_i_23_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_24
       (.I0(p_9[1]),
        .I1(p_10[1]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[1]),
        .I5(p_12[1]),
        .O(p_i_24_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_25
       (.I0(p_5[1]),
        .I1(p_6[1]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[1]),
        .I5(p_8[1]),
        .O(p_i_25_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_26
       (.I0(p_9[0]),
        .I1(p_10[0]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_11[0]),
        .I5(p_12[0]),
        .O(p_i_26_n_3));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    p_i_27
       (.I0(p_5[0]),
        .I1(p_6[0]),
        .I2(p_i_28_n_3),
        .I3(p_i_29_n_3),
        .I4(p_7[0]),
        .I5(p_8[0]),
        .O(p_i_27_n_3));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h59A6)) 
    p_i_28
       (.I0(p_2),
        .I1(colOffset_reg_1664[0]),
        .I2(p_1),
        .I3(colOffset_reg_1664[1]),
        .O(p_i_28_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    p_i_29
       (.I0(p_1),
        .I1(colOffset_reg_1664[0]),
        .O(p_i_29_n_3));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_3
       (.I0(p_i_16_n_3),
        .I1(p_i_17_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_4
       (.I0(p_i_18_n_3),
        .I1(p_i_19_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[4]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_5
       (.I0(p_i_20_n_3),
        .I1(p_i_21_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_6
       (.I0(p_i_22_n_3),
        .I1(p_i_23_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_7
       (.I0(p_i_24_n_3),
        .I1(p_i_25_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hCAFAFFACCA0A00AC)) 
    p_i_8
       (.I0(p_i_26_n_3),
        .I1(p_i_27_n_3),
        .I2(p_i_13_n_3),
        .I3(p_2),
        .I4(p_1),
        .I5(p_4[0]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'hEF00)) 
    p_i_9
       (.I0(p_0[2]),
        .I1(p_0[0]),
        .I2(p_0[1]),
        .I3(Q[1]),
        .O(ap_NS_fsm18_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb
   (D,
    ap_clk,
    pixelbuffer_val_1_ce0,
    ADDRARDADDR,
    DOADO,
    WEA,
    and_ln41_1_reg_1551,
    Q,
    \select_ln41_5_reg_1635_reg[0] ,
    INPUT_IMAGE_V_data_V_0_data_out,
    CO);
  output [7:0]D;
  input ap_clk;
  input pixelbuffer_val_1_ce0;
  input [9:0]ADDRARDADDR;
  input [7:0]DOADO;
  input [0:0]WEA;
  input and_ln41_1_reg_1551;
  input [7:0]Q;
  input \select_ln41_5_reg_1635_reg[0] ;
  input [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  input [0:0]CO;

  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [7:0]DOADO;
  wire [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire and_ln41_1_reg_1551;
  wire ap_clk;
  wire pixelbuffer_val_1_ce0;
  wire \select_ln41_5_reg_1635_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3 sobel_filter_pixebkb_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(CO),
        .D(D),
        .DOADO(DOADO),
        .INPUT_IMAGE_V_data_V_0_data_out(INPUT_IMAGE_V_data_V_0_data_out),
        .Q(Q),
        .WEA(WEA),
        .and_ln41_1_reg_1551(and_ln41_1_reg_1551),
        .ap_clk(ap_clk),
        .pixelbuffer_val_1_ce0(pixelbuffer_val_1_ce0),
        .\select_ln41_5_reg_1635_reg[0] (\select_ln41_5_reg_1635_reg[0] ));
endmodule

(* ORIG_REF_NAME = "sobel_filter_pixebkb" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0
   (DOADO,
    pixelbuffer_val_1_ce0,
    ADDRARDADDR,
    INPUT_IMAGE_V_data_V_0_data_out,
    WEA,
    D,
    ap_clk,
    Q,
    CO,
    ram_reg,
    OUTPUT_IMAGE_V_data_V_1_ack_in,
    ram_reg_0,
    and_ln41_1_reg_1551,
    \select_ln41_2_reg_1617_reg[7] ,
    \select_ln41_2_reg_1617_reg[0] ,
    \select_ln41_2_reg_1617_reg[0]_0 ,
    ram_reg_1,
    INPUT_IMAGE_V_data_V_0_sel,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4);
  output [7:0]DOADO;
  output pixelbuffer_val_1_ce0;
  output [9:0]ADDRARDADDR;
  output [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  output [0:0]WEA;
  output [7:0]D;
  input ap_clk;
  input [1:0]Q;
  input [0:0]CO;
  input [0:0]ram_reg;
  input OUTPUT_IMAGE_V_data_V_1_ack_in;
  input ram_reg_0;
  input and_ln41_1_reg_1551;
  input [7:0]\select_ln41_2_reg_1617_reg[7] ;
  input \select_ln41_2_reg_1617_reg[0] ;
  input [0:0]\select_ln41_2_reg_1617_reg[0]_0 ;
  input [7:0]ram_reg_1;
  input INPUT_IMAGE_V_data_V_0_sel;
  input [7:0]ram_reg_2;
  input [9:0]ram_reg_3;
  input [9:0]ram_reg_4;

  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [7:0]DOADO;
  wire [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  wire INPUT_IMAGE_V_data_V_0_sel;
  wire OUTPUT_IMAGE_V_data_V_1_ack_in;
  wire [1:0]Q;
  wire [0:0]WEA;
  wire and_ln41_1_reg_1551;
  wire ap_clk;
  wire pixelbuffer_val_1_ce0;
  wire [0:0]ram_reg;
  wire ram_reg_0;
  wire [7:0]ram_reg_1;
  wire [7:0]ram_reg_2;
  wire [9:0]ram_reg_3;
  wire [9:0]ram_reg_4;
  wire \select_ln41_2_reg_1617_reg[0] ;
  wire [0:0]\select_ln41_2_reg_1617_reg[0]_0 ;
  wire [7:0]\select_ln41_2_reg_1617_reg[7] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram sobel_filter_pixebkb_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(CO),
        .D(D),
        .DOADO(DOADO),
        .INPUT_IMAGE_V_data_V_0_data_out(INPUT_IMAGE_V_data_V_0_data_out),
        .INPUT_IMAGE_V_data_V_0_sel(INPUT_IMAGE_V_data_V_0_sel),
        .OUTPUT_IMAGE_V_data_V_1_ack_in(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .Q(Q),
        .WEA(WEA),
        .and_ln41_1_reg_1551(and_ln41_1_reg_1551),
        .ap_clk(ap_clk),
        .pixelbuffer_val_1_ce0(pixelbuffer_val_1_ce0),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .ram_reg_4(ram_reg_3),
        .ram_reg_5(ram_reg_4),
        .\select_ln41_2_reg_1617_reg[0] (\select_ln41_2_reg_1617_reg[0] ),
        .\select_ln41_2_reg_1617_reg[0]_0 (\select_ln41_2_reg_1617_reg[0]_0 ),
        .\select_ln41_2_reg_1617_reg[7] (\select_ln41_2_reg_1617_reg[7] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram
   (DOADO,
    pixelbuffer_val_1_ce0,
    ADDRARDADDR,
    INPUT_IMAGE_V_data_V_0_data_out,
    WEA,
    D,
    ap_clk,
    Q,
    CO,
    ram_reg_0,
    OUTPUT_IMAGE_V_data_V_1_ack_in,
    ram_reg_1,
    and_ln41_1_reg_1551,
    \select_ln41_2_reg_1617_reg[7] ,
    \select_ln41_2_reg_1617_reg[0] ,
    \select_ln41_2_reg_1617_reg[0]_0 ,
    ram_reg_2,
    INPUT_IMAGE_V_data_V_0_sel,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5);
  output [7:0]DOADO;
  output pixelbuffer_val_1_ce0;
  output [9:0]ADDRARDADDR;
  output [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  output [0:0]WEA;
  output [7:0]D;
  input ap_clk;
  input [1:0]Q;
  input [0:0]CO;
  input [0:0]ram_reg_0;
  input OUTPUT_IMAGE_V_data_V_1_ack_in;
  input ram_reg_1;
  input and_ln41_1_reg_1551;
  input [7:0]\select_ln41_2_reg_1617_reg[7] ;
  input \select_ln41_2_reg_1617_reg[0] ;
  input [0:0]\select_ln41_2_reg_1617_reg[0]_0 ;
  input [7:0]ram_reg_2;
  input INPUT_IMAGE_V_data_V_0_sel;
  input [7:0]ram_reg_3;
  input [9:0]ram_reg_4;
  input [9:0]ram_reg_5;

  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [7:0]DOADO;
  wire [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  wire INPUT_IMAGE_V_data_V_0_sel;
  wire OUTPUT_IMAGE_V_data_V_1_ack_in;
  wire [1:0]Q;
  wire [0:0]WEA;
  wire and_ln41_1_reg_1551;
  wire ap_clk;
  wire pixelbuffer_val_1_ce0;
  wire [0:0]ram_reg_0;
  wire ram_reg_1;
  wire [7:0]ram_reg_2;
  wire [7:0]ram_reg_3;
  wire [9:0]ram_reg_4;
  wire [9:0]ram_reg_5;
  wire \select_ln41_2_reg_1617_reg[0] ;
  wire [0:0]\select_ln41_2_reg_1617_reg[0]_0 ;
  wire [7:0]\select_ln41_2_reg_1617_reg[7] ;
  wire [15:8]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,INPUT_IMAGE_V_data_V_0_data_out}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:8],DOADO}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(pixelbuffer_val_1_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hEEEEAEEEAAAAAAAA)) 
    ram_reg_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(CO),
        .I3(ram_reg_0),
        .I4(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I5(ram_reg_1),
        .O(pixelbuffer_val_1_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10
       (.I0(ram_reg_4[1]),
        .I1(Q[1]),
        .I2(ram_reg_5[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11
       (.I0(ram_reg_4[0]),
        .I1(Q[1]),
        .I2(ram_reg_5[0]),
        .O(ADDRARDADDR[0]));
  LUT5 #(
    .INIT(32'hAA2A0000)) 
    ram_reg_i_12
       (.I0(Q[1]),
        .I1(CO),
        .I2(ram_reg_0),
        .I3(OUTPUT_IMAGE_V_data_V_1_ack_in),
        .I4(ram_reg_1),
        .O(WEA));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_1__0
       (.I0(ram_reg_2[7]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[7]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2
       (.I0(ram_reg_2[6]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[6]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__0
       (.I0(ram_reg_4[9]),
        .I1(Q[1]),
        .I2(ram_reg_5[9]),
        .O(ADDRARDADDR[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3
       (.I0(ram_reg_2[5]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[5]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__0
       (.I0(ram_reg_4[8]),
        .I1(Q[1]),
        .I2(ram_reg_5[8]),
        .O(ADDRARDADDR[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4
       (.I0(ram_reg_2[4]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[4]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__0
       (.I0(ram_reg_4[7]),
        .I1(Q[1]),
        .I2(ram_reg_5[7]),
        .O(ADDRARDADDR[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5
       (.I0(ram_reg_2[3]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[3]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__0
       (.I0(ram_reg_4[6]),
        .I1(Q[1]),
        .I2(ram_reg_5[6]),
        .O(ADDRARDADDR[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6
       (.I0(ram_reg_2[2]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[2]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__0
       (.I0(ram_reg_4[5]),
        .I1(Q[1]),
        .I2(ram_reg_5[5]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7
       (.I0(ram_reg_2[1]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[1]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__0
       (.I0(ram_reg_4[4]),
        .I1(Q[1]),
        .I2(ram_reg_5[4]),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8
       (.I0(ram_reg_2[0]),
        .I1(INPUT_IMAGE_V_data_V_0_sel),
        .I2(ram_reg_3[0]),
        .O(INPUT_IMAGE_V_data_V_0_data_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__0
       (.I0(ram_reg_4[3]),
        .I1(Q[1]),
        .I2(ram_reg_5[3]),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9
       (.I0(ram_reg_4[2]),
        .I1(Q[1]),
        .I2(ram_reg_5[2]),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [0]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [1]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [2]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [3]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [4]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [5]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [6]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_2_reg_1617[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(\select_ln41_2_reg_1617_reg[7] [7]),
        .I2(\select_ln41_2_reg_1617_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(\select_ln41_2_reg_1617_reg[0]_0 ),
        .I5(DOADO[7]),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "sobel_filter_pixebkb_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3
   (D,
    ap_clk,
    pixelbuffer_val_1_ce0,
    ADDRARDADDR,
    DOADO,
    WEA,
    and_ln41_1_reg_1551,
    Q,
    \select_ln41_5_reg_1635_reg[0] ,
    INPUT_IMAGE_V_data_V_0_data_out,
    CO);
  output [7:0]D;
  input ap_clk;
  input pixelbuffer_val_1_ce0;
  input [9:0]ADDRARDADDR;
  input [7:0]DOADO;
  input [0:0]WEA;
  input and_ln41_1_reg_1551;
  input [7:0]Q;
  input \select_ln41_5_reg_1635_reg[0] ;
  input [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  input [0:0]CO;

  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [7:0]DOADO;
  wire [7:0]INPUT_IMAGE_V_data_V_0_data_out;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire and_ln41_1_reg_1551;
  wire ap_clk;
  wire pixelbuffer_val_1_ce0;
  wire [7:0]pixelbuffer_val_1_q0;
  wire \select_ln41_5_reg_1635_reg[0] ;
  wire [15:8]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DOADO}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:8],pixelbuffer_val_1_q0}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(pixelbuffer_val_1_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[0]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[0]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[0]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[1]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[1]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[1]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[2]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[2]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[2]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[3]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[3]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[3]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[4]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[4]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[4]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[5]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[5]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[5]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[6]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[6]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[6]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFD5DEC4CA808EC4C)) 
    \select_ln41_5_reg_1635[7]_i_1 
       (.I0(and_ln41_1_reg_1551),
        .I1(Q[7]),
        .I2(\select_ln41_5_reg_1635_reg[0] ),
        .I3(INPUT_IMAGE_V_data_V_0_data_out[7]),
        .I4(CO),
        .I5(pixelbuffer_val_1_q0[7]),
        .O(D[7]));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
