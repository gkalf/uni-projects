-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 26 18:46:39 2020
-- Host        : DESKTOP-KE3UBO5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab3_simple_sobel_filter_1_1_stub.vhdl
-- Design      : lab3_simple_sobel_filter_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_ctrl_bus_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_AWVALID : in STD_LOGIC;
    s_axi_ctrl_bus_AWREADY : out STD_LOGIC;
    s_axi_ctrl_bus_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_WVALID : in STD_LOGIC;
    s_axi_ctrl_bus_WREADY : out STD_LOGIC;
    s_axi_ctrl_bus_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bus_BVALID : out STD_LOGIC;
    s_axi_ctrl_bus_BREADY : in STD_LOGIC;
    s_axi_ctrl_bus_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_ARVALID : in STD_LOGIC;
    s_axi_ctrl_bus_ARREADY : out STD_LOGIC;
    s_axi_ctrl_bus_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bus_RVALID : out STD_LOGIC;
    s_axi_ctrl_bus_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    INPUT_IMAGE_TVALID : in STD_LOGIC;
    INPUT_IMAGE_TREADY : out STD_LOGIC;
    INPUT_IMAGE_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INPUT_IMAGE_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    INPUT_IMAGE_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_IMAGE_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_IMAGE_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    INPUT_IMAGE_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_IMAGE_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    OUTPUT_IMAGE_TVALID : out STD_LOGIC;
    OUTPUT_IMAGE_TREADY : in STD_LOGIC;
    OUTPUT_IMAGE_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OUTPUT_IMAGE_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    OUTPUT_IMAGE_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OUTPUT_IMAGE_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_TID : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_ctrl_bus_AWADDR[3:0],s_axi_ctrl_bus_AWVALID,s_axi_ctrl_bus_AWREADY,s_axi_ctrl_bus_WDATA[31:0],s_axi_ctrl_bus_WSTRB[3:0],s_axi_ctrl_bus_WVALID,s_axi_ctrl_bus_WREADY,s_axi_ctrl_bus_BRESP[1:0],s_axi_ctrl_bus_BVALID,s_axi_ctrl_bus_BREADY,s_axi_ctrl_bus_ARADDR[3:0],s_axi_ctrl_bus_ARVALID,s_axi_ctrl_bus_ARREADY,s_axi_ctrl_bus_RDATA[31:0],s_axi_ctrl_bus_RRESP[1:0],s_axi_ctrl_bus_RVALID,s_axi_ctrl_bus_RREADY,ap_clk,ap_rst_n,interrupt,INPUT_IMAGE_TVALID,INPUT_IMAGE_TREADY,INPUT_IMAGE_TDATA[7:0],INPUT_IMAGE_TDEST[5:0],INPUT_IMAGE_TKEEP[0:0],INPUT_IMAGE_TSTRB[0:0],INPUT_IMAGE_TUSER[1:0],INPUT_IMAGE_TLAST[0:0],INPUT_IMAGE_TID[4:0],OUTPUT_IMAGE_TVALID,OUTPUT_IMAGE_TREADY,OUTPUT_IMAGE_TDATA[7:0],OUTPUT_IMAGE_TDEST[5:0],OUTPUT_IMAGE_TKEEP[0:0],OUTPUT_IMAGE_TSTRB[0:0],OUTPUT_IMAGE_TUSER[1:0],OUTPUT_IMAGE_TLAST[0:0],OUTPUT_IMAGE_TID[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sobel_filter,Vivado 2019.1";
begin
end;
