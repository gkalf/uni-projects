// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Fri Mar 31 15:29:40 2017
// Host        : gkmikros-K56CB running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/gkmikros/Dropbox/CE435/Lab3/lab3_graycounter/lab3_graycounter.srcs/sources_1/bd/lab3_simple/ip/lab3_simple_Gray_counter_ip_0_1/lab3_simple_Gray_counter_ip_0_1_sim_netlist.v
// Design      : lab3_simple_Gray_counter_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab3_simple_Gray_counter_ip_0_1,Gray_counter_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Gray_counter_ip_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module lab3_simple_Gray_counter_ip_0_1
   (LED,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [7:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [7:0]LED;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  lab3_simple_Gray_counter_ip_0_1_Gray_counter_ip_v1_0 inst
       (.LED({LED[7:6],LED[2:0]}),
        .\LED[5] (LED[5]),
        .\LED_3__s_port_] (LED[3]),
        .\LED_4__s_port_] (LED[4]),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "GrayCounter_System" *) 
module lab3_simple_Gray_counter_ip_0_1_GrayCounter_System
   (SR,
    \LED_1__s_port_] ,
    \LED_0__s_port_] ,
    \LED[2] ,
    D,
    \LED[3] ,
    \LED[4] ,
    \LED[5] ,
    LED,
    button_2_reg_0,
    s00_axi_aclk,
    Q,
    axi_araddr,
    \slv_reg1_reg[7] ,
    \slv_reg0_reg[7] ,
    p_0_in_0,
    axi_wready_reg,
    axi_awready_reg,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_wdata);
  output [0:0]SR;
  output \LED_1__s_port_] ;
  output \LED_0__s_port_] ;
  output \LED[2] ;
  output [7:0]D;
  output \LED[3] ;
  output \LED[4] ;
  output \LED[5] ;
  output [1:0]LED;
  output button_2_reg_0;
  input s00_axi_aclk;
  input [7:0]Q;
  input [1:0]axi_araddr;
  input [7:0]\slv_reg1_reg[7] ;
  input [7:0]\slv_reg0_reg[7] ;
  input [1:0]p_0_in_0;
  input axi_wready_reg;
  input axi_awready_reg;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;

  wire [7:0]D;
  wire [1:0]LED;
  wire \LED[2] ;
  wire \LED[3] ;
  wire \LED[4] ;
  wire \LED[5] ;
  wire LED_0__s_net_1;
  wire LED_1__s_net_1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire button_2;
  wire button_2_i_1_n_0;
  wire button_2_reg_0;
  wire button_i_1_n_0;
  wire button_i_2_n_0;
  wire button_i_3_n_0;
  wire button_i_4_n_0;
  wire button_i_5_n_0;
  wire button_i_6_n_0;
  wire button_i_7_n_0;
  wire button_i_8_n_0;
  wire button_i_9_n_0;
  wire button_reg_n_0;
  wire clk_en_reg03_out;
  wire delay_reg;
  wire delay_reg_reg_i_1_n_0;
  wire delay_reg_reg_i_2_n_0;
  wire gray_counter_n_8;
  wire [1:0]p_0_in_0;
  wire progressive_debounceButton_n_0;
  wire reset_reg;
  wire reset_reg_reg_i_2_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_awvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [7:0]\slv_reg0_reg[7] ;
  wire [7:0]\slv_reg1_reg[7] ;
  wire start_count;

  assign \LED_0__s_port_]  = LED_0__s_net_1;
  assign \LED_1__s_port_]  = LED_1__s_net_1;
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFF7FF0000A000)) 
    button_2_i_1
       (.I0(button_2_reg_0),
        .I1(s00_axi_wdata[3]),
        .I2(s00_axi_wdata[2]),
        .I3(s00_axi_aresetn),
        .I4(button_i_2_n_0),
        .I5(button_2),
        .O(button_2_i_1_n_0));
  FDRE button_2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(button_2_i_1_n_0),
        .Q(button_2),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFDFFF00008800)) 
    button_i_1
       (.I0(button_2_reg_0),
        .I1(s00_axi_wdata[3]),
        .I2(s00_axi_wdata[2]),
        .I3(s00_axi_aresetn),
        .I4(button_i_2_n_0),
        .I5(button_reg_n_0),
        .O(button_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    button_i_2
       (.I0(button_i_3_n_0),
        .I1(button_i_4_n_0),
        .I2(button_i_5_n_0),
        .O(button_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    button_i_3
       (.I0(s00_axi_wdata[14]),
        .I1(s00_axi_wdata[15]),
        .I2(s00_axi_wdata[12]),
        .I3(s00_axi_wdata[13]),
        .I4(button_i_6_n_0),
        .O(button_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    button_i_4
       (.I0(s00_axi_wdata[6]),
        .I1(s00_axi_wdata[7]),
        .I2(s00_axi_wdata[4]),
        .I3(s00_axi_wdata[5]),
        .I4(button_i_7_n_0),
        .O(button_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    button_i_5
       (.I0(button_i_8_n_0),
        .I1(s00_axi_wdata[21]),
        .I2(s00_axi_wdata[20]),
        .I3(s00_axi_wdata[23]),
        .I4(s00_axi_wdata[22]),
        .I5(button_i_9_n_0),
        .O(button_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    button_i_6
       (.I0(s00_axi_wdata[17]),
        .I1(s00_axi_wdata[16]),
        .I2(s00_axi_wdata[19]),
        .I3(s00_axi_wdata[18]),
        .O(button_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    button_i_7
       (.I0(s00_axi_wdata[9]),
        .I1(s00_axi_wdata[8]),
        .I2(s00_axi_wdata[11]),
        .I3(s00_axi_wdata[10]),
        .O(button_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    button_i_8
       (.I0(s00_axi_wdata[25]),
        .I1(s00_axi_wdata[24]),
        .I2(s00_axi_wdata[27]),
        .I3(s00_axi_wdata[26]),
        .O(button_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    button_i_9
       (.I0(s00_axi_wdata[30]),
        .I1(s00_axi_wdata[31]),
        .I2(s00_axi_wdata[28]),
        .I3(s00_axi_wdata[29]),
        .I4(s00_axi_wdata[1]),
        .I5(s00_axi_wdata[0]),
        .O(button_i_9_n_0));
  FDRE button_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(button_i_1_n_0),
        .Q(button_reg_n_0),
        .R(SR));
  LDCP delay_reg_reg
       (.CLR(delay_reg_reg_i_1_n_0),
        .D(1'b0),
        .G(clk_en_reg03_out),
        .PRE(delay_reg_reg_i_2_n_0),
        .Q(delay_reg));
  LUT2 #(
    .INIT(4'h2)) 
    delay_reg_reg_i_1
       (.I0(button_reg_n_0),
        .I1(button_2),
        .O(delay_reg_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    delay_reg_reg_i_2
       (.I0(button_2),
        .I1(button_reg_n_0),
        .O(delay_reg_reg_i_2_n_0));
  lab3_simple_Gray_counter_ip_0_1_gray_Nbits gray_counter
       (.D(D),
        .LED(LED),
        .\LED[2] (\LED[2] ),
        .\LED[3] (\LED[3] ),
        .\LED[4] (\LED[4] ),
        .\LED[5] (\LED[5] ),
        .LED_0__s_port_(LED_0__s_net_1),
        .LED_1__s_port_(LED_1__s_net_1),
        .Q(Q),
        .axi_araddr(axi_araddr),
        .buttout_reg(progressive_debounceButton_n_0),
        .reset_reg(reset_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[7] (\slv_reg0_reg[7] ),
        .\slv_reg1_reg[7] (\slv_reg1_reg[7] ),
        .start_count(start_count),
        .\state_reg[4]_0 (gray_counter_n_8));
  lab3_simple_Gray_counter_ip_0_1_progressive_debounceButton progressive_debounceButton
       (.buttin(delay_reg),
        .reset_reg(reset_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .start_count(start_count),
        .\state_reg[0] (progressive_debounceButton_n_0),
        .\state_reg[0]_0 (gray_counter_n_8));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_reg_reg
       (.CLR(reset_reg_reg_i_2_n_0),
        .D(clk_en_reg03_out),
        .G(clk_en_reg03_out),
        .GE(1'b1),
        .Q(reset_reg));
  LUT2 #(
    .INIT(4'h8)) 
    reset_reg_reg_i_1
       (.I0(button_2),
        .I1(button_reg_n_0),
        .O(clk_en_reg03_out));
  LUT2 #(
    .INIT(4'h6)) 
    reset_reg_reg_i_2
       (.I0(button_reg_n_0),
        .I1(button_2),
        .O(reset_reg_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg0[31]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(p_0_in_0[1]),
        .O(button_2_reg_0));
endmodule

(* ORIG_REF_NAME = "Gray_counter_ip_v1_0" *) 
module lab3_simple_Gray_counter_ip_0_1_Gray_counter_ip_v1_0
   (S_AXI_ARREADY,
    \LED[5] ,
    \LED_4__s_port_] ,
    \LED_3__s_port_] ,
    LED,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_araddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_ARREADY;
  output \LED[5] ;
  output \LED_4__s_port_] ;
  output \LED_3__s_port_] ;
  output [4:0]LED;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [1:0]s00_axi_araddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [4:0]LED;
  wire \LED[5] ;
  wire LED_3__s_net_1;
  wire LED_4__s_net_1;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign \LED_3__s_port_]  = LED_3__s_net_1;
  assign \LED_4__s_port_]  = LED_4__s_net_1;
  lab3_simple_Gray_counter_ip_0_1_Gray_counter_ip_v1_0_S00_AXI Gray_counter_ip_v1_0_S00_AXI_inst
       (.LED(LED),
        .\LED[5] (\LED[5] ),
        .\LED_3__s_port_] (LED_3__s_net_1),
        .\LED_4__s_port_] (LED_4__s_net_1),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Gray_counter_ip_v1_0_S00_AXI" *) 
module lab3_simple_Gray_counter_ip_0_1_Gray_counter_ip_v1_0_S00_AXI
   (S_AXI_ARREADY,
    \LED[5] ,
    \LED_4__s_port_] ,
    \LED_3__s_port_] ,
    LED,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_araddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_ARREADY;
  output \LED[5] ;
  output \LED_4__s_port_] ;
  output \LED_3__s_port_] ;
  output [4:0]LED;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [1:0]s00_axi_araddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [4:0]LED;
  wire \LED[5] ;
  wire LED_3__s_net_1;
  wire LED_4__s_net_1;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire U1_n_17;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire slv_reg_rden__0;

  assign \LED_3__s_port_]  = LED_3__s_net_1;
  assign \LED_4__s_port_]  = LED_4__s_net_1;
  lab3_simple_Gray_counter_ip_0_1_GrayCounter_System U1
       (.D(reg_data_out[7:0]),
        .LED(LED[4:3]),
        .\LED[2] (LED[2]),
        .\LED[3] (LED_3__s_net_1),
        .\LED[4] (LED_4__s_net_1),
        .\LED[5] (\LED[5] ),
        .\LED_0__s_port_] (LED[0]),
        .\LED_1__s_port_] (LED[1]),
        .Q(slv_reg2[7:0]),
        .SR(p_0_in),
        .axi_araddr(axi_araddr),
        .axi_awready_reg(S_AXI_AWREADY),
        .axi_wready_reg(S_AXI_WREADY),
        .button_2_reg_0(U1_n_17),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[7] (slv_reg0[7:0]),
        .\slv_reg1_reg[7] (slv_reg1[7:0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(slv_reg1[10]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(slv_reg1[11]),
        .I2(slv_reg2[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg1[12]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg1[13]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg0[14]),
        .I1(slv_reg1[14]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg1[15]),
        .I2(slv_reg2[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg1[16]),
        .I2(slv_reg2[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(slv_reg1[17]),
        .I2(slv_reg2[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(slv_reg1[18]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(slv_reg1[19]),
        .I2(slv_reg2[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(slv_reg1[20]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(slv_reg1[21]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(slv_reg1[22]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg1[23]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(slv_reg1[24]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(slv_reg1[25]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(slv_reg1[26]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(slv_reg1[27]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(slv_reg1[28]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(slv_reg1[29]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(slv_reg1[30]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg0[31]),
        .I1(slv_reg1[31]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(slv_reg1[8]),
        .I2(slv_reg2[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg1[9]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[15]_i_1 
       (.I0(U1_n_17),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[23]_i_1 
       (.I0(U1_n_17),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[31]_i_1 
       (.I0(U1_n_17),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[7]_i_1 
       (.I0(U1_n_17),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg1[31]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(S_AXI_WREADY),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg2[31]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(p_0_in_0[1]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "gray_Nbits" *) 
module lab3_simple_Gray_counter_ip_0_1_gray_Nbits
   (LED,
    \LED[5] ,
    \LED[4] ,
    \LED[3] ,
    \LED[2] ,
    LED_1__s_port_,
    LED_0__s_port_,
    \state_reg[4]_0 ,
    D,
    s00_axi_aclk,
    reset_reg,
    buttout_reg,
    start_count,
    Q,
    axi_araddr,
    \slv_reg1_reg[7] ,
    \slv_reg0_reg[7] );
  output [1:0]LED;
  output \LED[5] ;
  output \LED[4] ;
  output \LED[3] ;
  output \LED[2] ;
  output LED_1__s_port_;
  output LED_0__s_port_;
  output \state_reg[4]_0 ;
  output [7:0]D;
  input s00_axi_aclk;
  input reset_reg;
  input buttout_reg;
  input start_count;
  input [7:0]Q;
  input [1:0]axi_araddr;
  input [7:0]\slv_reg1_reg[7] ;
  input [7:0]\slv_reg0_reg[7] ;

  wire [7:0]D;
  wire [1:0]LED;
  wire \LED[2] ;
  wire \LED[3] ;
  wire \LED[4] ;
  wire \LED[5] ;
  wire LED_0__s_net_1;
  wire LED_1__s_net_1;
  wire [7:0]Q;
  wire [1:0]axi_araddr;
  wire buttout_reg;
  wire reset_reg;
  wire s00_axi_aclk;
  wire [7:0]\slv_reg0_reg[7] ;
  wire [7:0]\slv_reg1_reg[7] ;
  wire start_count;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[8]_i_1_n_0 ;
  wire \state[8]_i_2_n_0 ;
  wire \state_reg[4]_0 ;

  assign LED_0__s_port_ = LED_0__s_net_1;
  assign LED_1__s_port_ = LED_1__s_net_1;
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [0]),
        .I4(\slv_reg0_reg[7] [0]),
        .I5(LED_0__s_net_1),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [1]),
        .I4(\slv_reg0_reg[7] [1]),
        .I5(LED_1__s_net_1),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [2]),
        .I4(\slv_reg0_reg[7] [2]),
        .I5(\LED[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [3]),
        .I4(\slv_reg0_reg[7] [3]),
        .I5(\LED[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [4]),
        .I4(\slv_reg0_reg[7] [4]),
        .I5(\LED[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [5]),
        .I4(\slv_reg0_reg[7] [5]),
        .I5(\LED[5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [6]),
        .I4(\slv_reg0_reg[7] [6]),
        .I5(LED[0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg1_reg[7] [7]),
        .I4(\slv_reg0_reg[7] [7]),
        .I5(LED[1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \state[1]_i_1 
       (.I0(\state_reg[4]_0 ),
        .I1(start_count),
        .I2(LED_0__s_net_1),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \state[2]_i_1 
       (.I0(LED_0__s_net_1),
        .I1(start_count),
        .I2(\state_reg[4]_0 ),
        .I3(LED_1__s_net_1),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \state[3]_i_1 
       (.I0(LED_1__s_net_1),
        .I1(\state_reg[4]_0 ),
        .I2(start_count),
        .I3(LED_0__s_net_1),
        .I4(\LED[2] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000020)) 
    \state[4]_i_1 
       (.I0(\LED[2] ),
        .I1(LED_0__s_net_1),
        .I2(start_count),
        .I3(\state_reg[4]_0 ),
        .I4(LED_1__s_net_1),
        .I5(\LED[3] ),
        .O(\state[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \state[5]_i_1 
       (.I0(\LED[3] ),
        .I1(\state[8]_i_2_n_0 ),
        .I2(\LED[4] ),
        .O(\state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \state[6]_i_1 
       (.I0(\state[8]_i_2_n_0 ),
        .I1(\LED[4] ),
        .I2(\LED[3] ),
        .I3(\LED[5] ),
        .O(\state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \state[7]_i_1 
       (.I0(\state[8]_i_2_n_0 ),
        .I1(\LED[4] ),
        .I2(\LED[5] ),
        .I3(\LED[3] ),
        .I4(LED[0]),
        .O(\state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0002)) 
    \state[8]_i_1 
       (.I0(\state[8]_i_2_n_0 ),
        .I1(\LED[5] ),
        .I2(\LED[4] ),
        .I3(\LED[3] ),
        .I4(LED[1]),
        .O(\state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \state[8]_i_2 
       (.I0(LED_1__s_net_1),
        .I1(\state_reg[4]_0 ),
        .I2(start_count),
        .I3(LED_0__s_net_1),
        .I4(\LED[2] ),
        .O(\state[8]_i_2_n_0 ));
  FDCE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(buttout_reg),
        .Q(\state_reg[4]_0 ));
  FDCE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[1]_i_1_n_0 ),
        .Q(LED_0__s_net_1));
  FDCE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[2]_i_1_n_0 ),
        .Q(LED_1__s_net_1));
  FDCE \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[3]_i_1_n_0 ),
        .Q(\LED[2] ));
  FDCE \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[4]_i_1_n_0 ),
        .Q(\LED[3] ));
  FDCE \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[5]_i_1_n_0 ),
        .Q(\LED[4] ));
  FDCE \state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[6]_i_1_n_0 ),
        .Q(\LED[5] ));
  FDCE \state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(reset_reg),
        .D(\state[7]_i_1_n_0 ),
        .Q(LED[0]));
  FDPE \state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[8]_i_1_n_0 ),
        .PRE(reset_reg),
        .Q(LED[1]));
endmodule

(* ORIG_REF_NAME = "progressive_debounceButton" *) 
module lab3_simple_Gray_counter_ip_0_1_progressive_debounceButton
   (\state_reg[0] ,
    start_count,
    reset_reg,
    \state_reg[0]_0 ,
    buttin,
    s00_axi_aclk);
  output \state_reg[0] ;
  output start_count;
  input reset_reg;
  input \state_reg[0]_0 ;
  input buttin;
  input s00_axi_aclk;

  wire buttin;
  wire buttout_i_1_n_0;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[10]_i_2_n_0 ;
  wire \cnt[10]_i_4_n_0 ;
  wire \cnt[10]_i_5_n_0 ;
  wire \cnt[10]_i_6_n_0 ;
  wire \cnt[9]_i_2_n_0 ;
  wire [10:0]cnt_reg__0;
  wire counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[28]_i_2_n_0 ;
  wire \counter[28]_i_3_n_0 ;
  wire \counter[28]_i_4_n_0 ;
  wire \counter[28]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire \counter_max1_inferred__0/i__carry__0_n_0 ;
  wire \counter_max1_inferred__0/i__carry__0_n_1 ;
  wire \counter_max1_inferred__0/i__carry__0_n_2 ;
  wire \counter_max1_inferred__0/i__carry__0_n_3 ;
  wire \counter_max1_inferred__0/i__carry__1_n_1 ;
  wire \counter_max1_inferred__0/i__carry__1_n_2 ;
  wire \counter_max1_inferred__0/i__carry__1_n_3 ;
  wire \counter_max1_inferred__0/i__carry_n_0 ;
  wire \counter_max1_inferred__0/i__carry_n_1 ;
  wire \counter_max1_inferred__0/i__carry_n_2 ;
  wire \counter_max1_inferred__0/i__carry_n_3 ;
  wire [25:7]counter_max1_out;
  wire \counter_max[11]_i_1_n_0 ;
  wire \counter_max[17]_i_2_n_0 ;
  wire \counter_max[17]_i_3_n_0 ;
  wire \counter_max[18]_i_2_n_0 ;
  wire \counter_max[18]_i_3_n_0 ;
  wire \counter_max[18]_i_4_n_0 ;
  wire \counter_max[18]_i_5_n_0 ;
  wire \counter_max[18]_i_6_n_0 ;
  wire \counter_max[18]_i_7_n_0 ;
  wire \counter_max[18]_i_8_n_0 ;
  wire \counter_max[18]_i_9_n_0 ;
  wire \counter_max[24]_i_2_n_0 ;
  wire \counter_max[24]_i_3_n_0 ;
  wire \counter_max[25]_i_1_n_0 ;
  wire \counter_max[25]_i_3_n_0 ;
  wire \counter_max[25]_i_4_n_0 ;
  wire \counter_max[25]_i_5_n_0 ;
  wire \counter_max[25]_i_6_n_0 ;
  wire \counter_max[26]_i_1_n_0 ;
  wire \counter_max[8]_i_2_n_0 ;
  wire \counter_max[8]_i_3_n_0 ;
  wire \counter_max_reg_n_0_[0] ;
  wire \counter_max_reg_n_0_[10] ;
  wire \counter_max_reg_n_0_[11] ;
  wire \counter_max_reg_n_0_[12] ;
  wire \counter_max_reg_n_0_[13] ;
  wire \counter_max_reg_n_0_[14] ;
  wire \counter_max_reg_n_0_[15] ;
  wire \counter_max_reg_n_0_[16] ;
  wire \counter_max_reg_n_0_[17] ;
  wire \counter_max_reg_n_0_[18] ;
  wire \counter_max_reg_n_0_[19] ;
  wire \counter_max_reg_n_0_[1] ;
  wire \counter_max_reg_n_0_[20] ;
  wire \counter_max_reg_n_0_[21] ;
  wire \counter_max_reg_n_0_[22] ;
  wire \counter_max_reg_n_0_[23] ;
  wire \counter_max_reg_n_0_[24] ;
  wire \counter_max_reg_n_0_[25] ;
  wire \counter_max_reg_n_0_[26] ;
  wire \counter_max_reg_n_0_[2] ;
  wire \counter_max_reg_n_0_[3] ;
  wire \counter_max_reg_n_0_[4] ;
  wire \counter_max_reg_n_0_[5] ;
  wire \counter_max_reg_n_0_[6] ;
  wire \counter_max_reg_n_0_[7] ;
  wire \counter_max_reg_n_0_[8] ;
  wire \counter_max_reg_n_0_[9] ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_3_n_0 ;
  wire \counter_reg[0]_i_3_n_1 ;
  wire \counter_reg[0]_i_3_n_2 ;
  wire \counter_reg[0]_i_3_n_3 ;
  wire \counter_reg[0]_i_3_n_4 ;
  wire \counter_reg[0]_i_3_n_5 ;
  wire \counter_reg[0]_i_3_n_6 ;
  wire \counter_reg[0]_i_3_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire ff1;
  wire ff2;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [10:0]p_0_in;
  wire reset_reg;
  wire s00_axi_aclk;
  wire start_count;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [3:0]\NLW_counter_max1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_max1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_counter_max1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_max1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    buttout_i_1
       (.I0(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .I1(start_count),
        .I2(reset_reg),
        .I3(ff2),
        .O(buttout_i_1_n_0));
  FDRE buttout_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(buttout_i_1_n_0),
        .Q(start_count),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[10]_i_1 
       (.I0(\counter_max[25]_i_3_n_0 ),
        .I1(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .I2(ff2),
        .I3(reset_reg),
        .O(\cnt[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[10]_i_2 
       (.I0(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .I1(ff2),
        .O(\cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400073334000)) 
    \cnt[10]_i_3 
       (.I0(\cnt[10]_i_4_n_0 ),
        .I1(cnt_reg__0[9]),
        .I2(cnt_reg__0[1]),
        .I3(\cnt[10]_i_5_n_0 ),
        .I4(cnt_reg__0[10]),
        .I5(\cnt[10]_i_6_n_0 ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \cnt[10]_i_4 
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[10]),
        .O(\cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[10]_i_5 
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .I2(cnt_reg__0[3]),
        .I3(cnt_reg__0[4]),
        .I4(cnt_reg__0[8]),
        .I5(cnt_reg__0[7]),
        .O(\cnt[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[10]_i_6 
       (.I0(cnt_reg__0[7]),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(cnt_reg__0[6]),
        .I3(cnt_reg__0[8]),
        .O(\cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg__0[4]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(cnt_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[6]_i_1 
       (.I0(\cnt[9]_i_2_n_0 ),
        .I1(cnt_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg__0[6]),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(cnt_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \cnt[8]_i_1 
       (.I0(cnt_reg__0[7]),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(cnt_reg__0[6]),
        .I3(cnt_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \cnt[9]_i_1 
       (.I0(cnt_reg__0[8]),
        .I1(cnt_reg__0[6]),
        .I2(\cnt[9]_i_2_n_0 ),
        .I3(cnt_reg__0[7]),
        .I4(cnt_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt[9]_i_2 
       (.I0(cnt_reg__0[4]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(cnt_reg__0[5]),
        .O(\cnt[9]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(cnt_reg__0[0]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(cnt_reg__0[10]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(cnt_reg__0[1]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(cnt_reg__0[4]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(cnt_reg__0[5]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(cnt_reg__0[6]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(cnt_reg__0[7]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(cnt_reg__0[8]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cnt[10]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(cnt_reg__0[9]),
        .R(\cnt[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \counter[0]_i_1 
       (.I0(ff2),
        .I1(reset_reg),
        .I2(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .O(counter));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(reset_reg),
        .O(\counter[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[3]),
        .O(\counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .O(\counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[1]),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .O(\counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .O(\counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .O(\counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .O(\counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .O(\counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .O(\counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .O(\counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .O(\counter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[27]),
        .O(\counter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[26]),
        .O(\counter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[24]_i_4 
       (.I0(counter_reg[25]),
        .O(\counter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[24]_i_5 
       (.I0(counter_reg[24]),
        .O(\counter[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[28]_i_2 
       (.I0(counter_reg[31]),
        .O(\counter[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[28]_i_3 
       (.I0(counter_reg[30]),
        .O(\counter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[28]_i_4 
       (.I0(counter_reg[29]),
        .O(\counter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[28]_i_5 
       (.I0(counter_reg[28]),
        .O(\counter[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  CARRY4 \counter_max1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counter_max1_inferred__0/i__carry_n_0 ,\counter_max1_inferred__0/i__carry_n_1 ,\counter_max1_inferred__0/i__carry_n_2 ,\counter_max1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_max1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \counter_max1_inferred__0/i__carry__0 
       (.CI(\counter_max1_inferred__0/i__carry_n_0 ),
        .CO({\counter_max1_inferred__0/i__carry__0_n_0 ,\counter_max1_inferred__0/i__carry__0_n_1 ,\counter_max1_inferred__0/i__carry__0_n_2 ,\counter_max1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_max1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \counter_max1_inferred__0/i__carry__1 
       (.CI(\counter_max1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_counter_max1_inferred__0/i__carry__1_CO_UNCONNECTED [3],\counter_max1_inferred__0/i__carry__1_n_1 ,\counter_max1_inferred__0/i__carry__1_n_2 ,\counter_max1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_max1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'hDFDD0000)) 
    \counter_max[11]_i_1 
       (.I0(ff2),
        .I1(reset_reg),
        .I2(\counter_max[25]_i_3_n_0 ),
        .I3(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .I4(\counter_max[25]_i_5_n_0 ),
        .O(\counter_max[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000EF00)) 
    \counter_max[12]_i_1 
       (.I0(\counter_max[17]_i_2_n_0 ),
        .I1(\counter_max[17]_i_3_n_0 ),
        .I2(\counter_max_reg_n_0_[18] ),
        .I3(\counter_max_reg_n_0_[13] ),
        .I4(\counter_max[25]_i_5_n_0 ),
        .O(counter_max1_out[12]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \counter_max[16]_i_1 
       (.I0(\counter_max[25]_i_5_n_0 ),
        .I1(\counter_max_reg_n_0_[17] ),
        .I2(\counter_max[24]_i_2_n_0 ),
        .I3(\counter_max_reg_n_0_[8] ),
        .I4(\counter_max_reg_n_0_[24] ),
        .I5(\counter_max_reg_n_0_[25] ),
        .O(counter_max1_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000EF00)) 
    \counter_max[17]_i_1 
       (.I0(\counter_max[17]_i_2_n_0 ),
        .I1(\counter_max[17]_i_3_n_0 ),
        .I2(\counter_max_reg_n_0_[13] ),
        .I3(\counter_max_reg_n_0_[18] ),
        .I4(\counter_max[25]_i_5_n_0 ),
        .O(counter_max1_out[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \counter_max[17]_i_2 
       (.I0(\counter_max_reg_n_0_[26] ),
        .I1(\counter_max_reg_n_0_[20] ),
        .I2(\counter_max_reg_n_0_[9] ),
        .I3(\counter_max_reg_n_0_[10] ),
        .I4(\counter_max[18]_i_5_n_0 ),
        .I5(\counter_max_reg_n_0_[19] ),
        .O(\counter_max[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter_max[17]_i_3 
       (.I0(\counter_max_reg_n_0_[17] ),
        .I1(\counter_max_reg_n_0_[25] ),
        .I2(\counter_max_reg_n_0_[24] ),
        .I3(\counter_max_reg_n_0_[8] ),
        .O(\counter_max[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \counter_max[18]_i_1 
       (.I0(\counter_max[25]_i_5_n_0 ),
        .I1(\counter_max_reg_n_0_[19] ),
        .I2(\counter_max[18]_i_2_n_0 ),
        .I3(\counter_max[18]_i_3_n_0 ),
        .I4(\counter_max[18]_i_4_n_0 ),
        .I5(\counter_max[18]_i_5_n_0 ),
        .O(counter_max1_out[18]));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \counter_max[18]_i_2 
       (.I0(\counter_max_reg_n_0_[8] ),
        .I1(\counter_max_reg_n_0_[24] ),
        .I2(\counter_max_reg_n_0_[25] ),
        .I3(\counter_max_reg_n_0_[17] ),
        .I4(\counter_max_reg_n_0_[18] ),
        .I5(\counter_max_reg_n_0_[13] ),
        .O(\counter_max[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter_max[18]_i_3 
       (.I0(\counter_max_reg_n_0_[9] ),
        .I1(\counter_max_reg_n_0_[10] ),
        .O(\counter_max[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter_max[18]_i_4 
       (.I0(\counter_max_reg_n_0_[20] ),
        .I1(\counter_max_reg_n_0_[26] ),
        .O(\counter_max[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \counter_max[18]_i_5 
       (.I0(\counter_max_reg_n_0_[23] ),
        .I1(\counter_max_reg_n_0_[14] ),
        .I2(\counter_max[18]_i_6_n_0 ),
        .I3(\counter_max[18]_i_7_n_0 ),
        .I4(\counter_max[18]_i_8_n_0 ),
        .I5(\counter_max[18]_i_9_n_0 ),
        .O(\counter_max[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter_max[18]_i_6 
       (.I0(\counter_max_reg_n_0_[0] ),
        .I1(\counter_max_reg_n_0_[1] ),
        .O(\counter_max[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_max[18]_i_7 
       (.I0(\counter_max_reg_n_0_[5] ),
        .I1(\counter_max_reg_n_0_[2] ),
        .I2(\counter_max_reg_n_0_[12] ),
        .I3(\counter_max_reg_n_0_[11] ),
        .O(\counter_max[18]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_max[18]_i_8 
       (.I0(\counter_max_reg_n_0_[16] ),
        .I1(\counter_max_reg_n_0_[15] ),
        .I2(\counter_max_reg_n_0_[22] ),
        .I3(\counter_max_reg_n_0_[21] ),
        .O(\counter_max[18]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_max[18]_i_9 
       (.I0(\counter_max_reg_n_0_[4] ),
        .I1(\counter_max_reg_n_0_[3] ),
        .I2(\counter_max_reg_n_0_[7] ),
        .I3(\counter_max_reg_n_0_[6] ),
        .O(\counter_max[18]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \counter_max[19]_i_1 
       (.I0(\counter_max[25]_i_4_n_0 ),
        .I1(\counter_max_reg_n_0_[26] ),
        .I2(\counter_max_reg_n_0_[20] ),
        .I3(\counter_max[25]_i_5_n_0 ),
        .O(counter_max1_out[19]));
  LUT6 #(
    .INIT(64'hEEEFEEEEEEEEEEEE)) 
    \counter_max[24]_i_1 
       (.I0(\counter_max[25]_i_5_n_0 ),
        .I1(\counter_max_reg_n_0_[25] ),
        .I2(\counter_max[24]_i_2_n_0 ),
        .I3(\counter_max_reg_n_0_[17] ),
        .I4(\counter_max_reg_n_0_[24] ),
        .I5(\counter_max_reg_n_0_[8] ),
        .O(counter_max1_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \counter_max[24]_i_2 
       (.I0(\counter_max[24]_i_3_n_0 ),
        .I1(\counter_max_reg_n_0_[20] ),
        .I2(\counter_max_reg_n_0_[26] ),
        .I3(\counter_max_reg_n_0_[18] ),
        .I4(\counter_max_reg_n_0_[13] ),
        .O(\counter_max[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter_max[24]_i_3 
       (.I0(\counter_max_reg_n_0_[19] ),
        .I1(\counter_max[8]_i_3_n_0 ),
        .I2(\counter_max[18]_i_7_n_0 ),
        .I3(\counter_max[18]_i_8_n_0 ),
        .I4(\counter_max[18]_i_9_n_0 ),
        .I5(\counter_max[18]_i_3_n_0 ),
        .O(\counter_max[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \counter_max[25]_i_1 
       (.I0(ff2),
        .I1(reset_reg),
        .I2(\counter_max[25]_i_3_n_0 ),
        .I3(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .O(\counter_max[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \counter_max[25]_i_2 
       (.I0(\counter_max[25]_i_4_n_0 ),
        .I1(\counter_max_reg_n_0_[20] ),
        .I2(\counter_max_reg_n_0_[26] ),
        .I3(\counter_max[25]_i_5_n_0 ),
        .O(counter_max1_out[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter_max[25]_i_3 
       (.I0(\cnt[10]_i_4_n_0 ),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[6]),
        .I3(cnt_reg__0[9]),
        .I4(cnt_reg__0[8]),
        .I5(\counter_max[25]_i_6_n_0 ),
        .O(\counter_max[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_max[25]_i_4 
       (.I0(\counter_max[18]_i_2_n_0 ),
        .I1(\counter_max_reg_n_0_[9] ),
        .I2(\counter_max_reg_n_0_[10] ),
        .I3(\counter_max[18]_i_5_n_0 ),
        .I4(\counter_max_reg_n_0_[19] ),
        .O(\counter_max[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter_max[25]_i_5 
       (.I0(ff2),
        .I1(\counter_max1_inferred__0/i__carry__1_n_1 ),
        .I2(\counter_max[25]_i_3_n_0 ),
        .I3(reset_reg),
        .O(\counter_max[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_max[25]_i_6 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[5]),
        .I3(cnt_reg__0[4]),
        .O(\counter_max[25]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_max[26]_i_1 
       (.I0(\counter_max[18]_i_2_n_0 ),
        .I1(\counter_max[17]_i_2_n_0 ),
        .O(\counter_max[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C0C0C080C)) 
    \counter_max[7]_i_1 
       (.I0(\counter_max[24]_i_2_n_0 ),
        .I1(\counter_max_reg_n_0_[8] ),
        .I2(\counter_max[25]_i_5_n_0 ),
        .I3(\counter_max_reg_n_0_[24] ),
        .I4(\counter_max_reg_n_0_[25] ),
        .I5(\counter_max_reg_n_0_[17] ),
        .O(counter_max1_out[7]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \counter_max[8]_i_1 
       (.I0(\counter_max[25]_i_5_n_0 ),
        .I1(\counter_max_reg_n_0_[9] ),
        .I2(\counter_max[8]_i_2_n_0 ),
        .I3(\counter_max_reg_n_0_[10] ),
        .I4(\counter_max[18]_i_4_n_0 ),
        .I5(\counter_max[18]_i_2_n_0 ),
        .O(counter_max1_out[8]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_max[8]_i_2 
       (.I0(\counter_max[18]_i_9_n_0 ),
        .I1(\counter_max[18]_i_8_n_0 ),
        .I2(\counter_max[18]_i_7_n_0 ),
        .I3(\counter_max[8]_i_3_n_0 ),
        .I4(\counter_max_reg_n_0_[19] ),
        .O(\counter_max[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter_max[8]_i_3 
       (.I0(\counter_max_reg_n_0_[23] ),
        .I1(\counter_max_reg_n_0_[14] ),
        .I2(\counter_max_reg_n_0_[1] ),
        .I3(\counter_max_reg_n_0_[0] ),
        .O(\counter_max[8]_i_3_n_0 ));
  FDRE \counter_max_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[1] ),
        .Q(\counter_max_reg_n_0_[0] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[11] ),
        .Q(\counter_max_reg_n_0_[10] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[12] ),
        .Q(\counter_max_reg_n_0_[11] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[12]),
        .Q(\counter_max_reg_n_0_[12] ),
        .R(1'b0));
  FDSE \counter_max_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[14] ),
        .Q(\counter_max_reg_n_0_[13] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDSE \counter_max_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[15] ),
        .Q(\counter_max_reg_n_0_[14] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDSE \counter_max_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[16] ),
        .Q(\counter_max_reg_n_0_[15] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[16]),
        .Q(\counter_max_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \counter_max_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[17]),
        .Q(\counter_max_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \counter_max_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[18]),
        .Q(\counter_max_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \counter_max_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[19]),
        .Q(\counter_max_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \counter_max_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[2] ),
        .Q(\counter_max_reg_n_0_[1] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDSE \counter_max_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[21] ),
        .Q(\counter_max_reg_n_0_[20] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDSE \counter_max_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[22] ),
        .Q(\counter_max_reg_n_0_[21] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDSE \counter_max_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[23] ),
        .Q(\counter_max_reg_n_0_[22] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDSE \counter_max_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[24] ),
        .Q(\counter_max_reg_n_0_[23] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[24]),
        .Q(\counter_max_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \counter_max_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[25]),
        .Q(\counter_max_reg_n_0_[25] ),
        .R(1'b0));
  FDSE \counter_max_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max[26]_i_1_n_0 ),
        .Q(\counter_max_reg_n_0_[26] ),
        .S(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[3] ),
        .Q(\counter_max_reg_n_0_[2] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[4] ),
        .Q(\counter_max_reg_n_0_[3] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[5] ),
        .Q(\counter_max_reg_n_0_[4] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[6] ),
        .Q(\counter_max_reg_n_0_[5] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[7] ),
        .Q(\counter_max_reg_n_0_[6] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_max_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[7]),
        .Q(\counter_max_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \counter_max_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(counter_max1_out[8]),
        .Q(\counter_max_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \counter_max_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\counter_max[25]_i_1_n_0 ),
        .D(\counter_max_reg_n_0_[10] ),
        .Q(\counter_max_reg_n_0_[9] ),
        .R(\counter_max[11]_i_1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[0]_i_3_n_7 ),
        .Q(counter_reg[0]),
        .R(counter));
  CARRY4 \counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3_n_0 ,\counter_reg[0]_i_3_n_1 ,\counter_reg[0]_i_3_n_2 ,\counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3_n_4 ,\counter_reg[0]_i_3_n_5 ,\counter_reg[0]_i_3_n_6 ,\counter_reg[0]_i_3_n_7 }),
        .S({\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 }));
  FDRE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(counter));
  FDRE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(counter));
  FDRE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(counter));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(counter));
  FDRE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(counter));
  FDRE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(counter));
  FDRE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(counter));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDRE \counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(counter));
  FDRE \counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(counter));
  FDRE \counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(counter));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[0]_i_3_n_6 ),
        .Q(counter_reg[1]),
        .R(counter));
  FDRE \counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(counter));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDRE \counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(counter));
  FDRE \counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(counter));
  FDRE \counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(counter));
  FDRE \counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(counter));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 ,\counter[24]_i_5_n_0 }));
  FDRE \counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(counter));
  FDRE \counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(counter));
  FDRE \counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(counter));
  FDRE \counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(counter));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S({\counter[28]_i_2_n_0 ,\counter[28]_i_3_n_0 ,\counter[28]_i_4_n_0 ,\counter[28]_i_5_n_0 }));
  FDRE \counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(counter));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[0]_i_3_n_5 ),
        .Q(counter_reg[2]),
        .R(counter));
  FDRE \counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(counter));
  FDRE \counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(counter));
  FDRE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[0]_i_3_n_4 ),
        .Q(counter_reg[3]),
        .R(counter));
  FDRE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(counter));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_3_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(counter));
  FDRE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(counter));
  FDRE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(counter));
  FDRE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(counter));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\counter[0]_i_2_n_0 ),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(counter));
  FDRE ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(buttin),
        .Q(ff1),
        .R(1'b0));
  FDRE ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ff1),
        .Q(ff2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8200008241000041)) 
    i__carry__0_i_1
       (.I0(\counter_max_reg_n_0_[21] ),
        .I1(\counter_max_reg_n_0_[22] ),
        .I2(counter_reg[22]),
        .I3(counter_reg[23]),
        .I4(\counter_max_reg_n_0_[23] ),
        .I5(counter_reg[21]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(\counter_max_reg_n_0_[20] ),
        .I1(counter_reg[20]),
        .I2(\counter_max_reg_n_0_[19] ),
        .I3(counter_reg[19]),
        .I4(counter_reg[18]),
        .I5(\counter_max_reg_n_0_[18] ),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8200008241000041)) 
    i__carry__0_i_3
       (.I0(\counter_max_reg_n_0_[15] ),
        .I1(\counter_max_reg_n_0_[16] ),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(\counter_max_reg_n_0_[17] ),
        .I5(counter_reg[15]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(\counter_max_reg_n_0_[14] ),
        .I1(counter_reg[14]),
        .I2(\counter_max_reg_n_0_[13] ),
        .I3(counter_reg[13]),
        .I4(counter_reg[12]),
        .I5(\counter_max_reg_n_0_[12] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2
       (.I0(counter_reg[29]),
        .I1(counter_reg[28]),
        .I2(counter_reg[27]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(\counter_max_reg_n_0_[26] ),
        .I1(counter_reg[26]),
        .I2(\counter_max_reg_n_0_[24] ),
        .I3(counter_reg[24]),
        .I4(counter_reg[25]),
        .I5(\counter_max_reg_n_0_[25] ),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h8400008421000021)) 
    i__carry_i_1
       (.I0(counter_reg[10]),
        .I1(\counter_max_reg_n_0_[9] ),
        .I2(\counter_max_reg_n_0_[10] ),
        .I3(counter_reg[11]),
        .I4(\counter_max_reg_n_0_[11] ),
        .I5(counter_reg[9]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8400008421000021)) 
    i__carry_i_2
       (.I0(counter_reg[7]),
        .I1(\counter_max_reg_n_0_[6] ),
        .I2(\counter_max_reg_n_0_[7] ),
        .I3(counter_reg[8]),
        .I4(\counter_max_reg_n_0_[8] ),
        .I5(counter_reg[6]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8400008421000021)) 
    i__carry_i_3
       (.I0(counter_reg[4]),
        .I1(\counter_max_reg_n_0_[3] ),
        .I2(\counter_max_reg_n_0_[4] ),
        .I3(counter_reg[5]),
        .I4(\counter_max_reg_n_0_[5] ),
        .I5(counter_reg[3]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8400008421000021)) 
    i__carry_i_4
       (.I0(counter_reg[1]),
        .I1(\counter_max_reg_n_0_[0] ),
        .I2(\counter_max_reg_n_0_[1] ),
        .I3(counter_reg[2]),
        .I4(\counter_max_reg_n_0_[2] ),
        .I5(counter_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \state[0]_i_1 
       (.I0(start_count),
        .I1(\state_reg[0]_0 ),
        .O(\state_reg[0] ));
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
