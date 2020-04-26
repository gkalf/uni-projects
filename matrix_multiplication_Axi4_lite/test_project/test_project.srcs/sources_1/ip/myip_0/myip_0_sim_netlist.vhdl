-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Tue Apr 25 17:04:57 2017
-- Host        : gkmikros-K56CB running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/gkmikros/Dropbox/CE435/lab4/test_project/test_project.srcs/sources_1/ip/myip_0/myip_0_sim_netlist.vhdl
-- Design      : myip_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity myip_0_myip_v1_0_S00_AXI is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of myip_0_myip_v1_0_S00_AXI : entity is "myip_v1_0_S00_AXI";
end myip_0_myip_v1_0_S00_AXI;

architecture STRUCTURE of myip_0_myip_v1_0_S00_AXI is
  signal ar_wrap_en : STD_LOGIC;
  signal \ar_wrap_en__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \ar_wrap_en__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \ar_wrap_en__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \ar_wrap_en__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \ar_wrap_en__0_carry_n_1\ : STD_LOGIC;
  signal \ar_wrap_en__0_carry_n_2\ : STD_LOGIC;
  signal \ar_wrap_en__0_carry_n_3\ : STD_LOGIC;
  signal aw_wrap_en : STD_LOGIC;
  signal \aw_wrap_en__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \aw_wrap_en__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \aw_wrap_en__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \aw_wrap_en__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \aw_wrap_en__0_carry_n_1\ : STD_LOGIC;
  signal \aw_wrap_en__0_carry_n_2\ : STD_LOGIC;
  signal \aw_wrap_en__0_carry_n_3\ : STD_LOGIC;
  signal axi_araddr0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \axi_araddr0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal axi_araddr1 : STD_LOGIC;
  signal axi_araddr3 : STD_LOGIC;
  signal axi_araddr3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_7_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_8_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_n_1 : STD_LOGIC;
  signal axi_araddr3_carry_n_2 : STD_LOGIC;
  signal axi_araddr3_carry_n_3 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_arlen[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_arlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_arready1__0\ : STD_LOGIC;
  signal \axi_arready2__14\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_arready_i_4_n_0 : STD_LOGIC;
  signal axi_arready_i_5_n_0 : STD_LOGIC;
  signal axi_arv_arr_flag : STD_LOGIC;
  signal axi_arv_arr_flag_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \axi_awaddr0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal axi_awaddr1 : STD_LOGIC;
  signal axi_awaddr3 : STD_LOGIC;
  signal axi_awaddr3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_7_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_8_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_n_1 : STD_LOGIC;
  signal axi_awaddr3_carry_n_2 : STD_LOGIC;
  signal axi_awaddr3_carry_n_3 : STD_LOGIC;
  signal \axi_awaddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_awlen_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_awlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_awv_awr_flag : STD_LOGIC;
  signal axi_awv_awr_flag_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rlast0 : STD_LOGIC;
  signal axi_rlast_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal mem_address : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mem_data_out[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mem_wren : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_20_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rlast\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_ar_wrap_en__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_aw_wrap_en__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_araddr0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_axi_araddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_awaddr0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_axi_awaddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is "BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\ : label is 7;
  attribute CLOCK_DOMAINS of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is 2048;
  attribute RTL_RAM_NAME of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is "BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram";
  attribute bram_addr_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is 0;
  attribute bram_addr_end of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is 1023;
  attribute bram_slice_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is 0;
  attribute bram_slice_end of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\ : label is 7;
  attribute CLOCK_DOMAINS of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is 2048;
  attribute RTL_RAM_NAME of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is "BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram";
  attribute bram_addr_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is 0;
  attribute bram_addr_end of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is 1023;
  attribute bram_slice_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is 0;
  attribute bram_slice_end of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\ : label is 7;
  attribute CLOCK_DOMAINS of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is 2048;
  attribute RTL_RAM_NAME of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is "BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram";
  attribute bram_addr_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is 0;
  attribute bram_addr_end of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is 1023;
  attribute bram_slice_begin of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is 0;
  attribute bram_slice_end of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\ : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_araddr[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_arv_arr_flag_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_awaddr[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair19";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rlast <= \^s00_axi_rlast\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => s00_axi_wdata(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => \mem_data_out[0]_0\(7 downto 0),
      DOPADOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => mem_wren,
      ENBWREN => axi_arv_arr_flag,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => s00_axi_wstrb(0),
      WEA(0) => s00_axi_wstrb(0),
      WEBWE(3 downto 0) => B"0000"
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_wready\,
      O => mem_wren
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[9]\,
      O => mem_address(7)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[8]\,
      O => mem_address(6)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[7]\,
      O => mem_address(5)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      O => mem_address(4)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      O => mem_address(3)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      O => mem_address(2)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      O => mem_address(1)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => mem_address(0)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => s00_axi_wdata(15 downto 8),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => \mem_data_out[0]_0\(15 downto 8),
      DOPADOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => mem_wren,
      ENBWREN => axi_arv_arr_flag,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => s00_axi_wstrb(1),
      WEA(0) => s00_axi_wstrb(1),
      WEBWE(3 downto 0) => B"0000"
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => s00_axi_wdata(23 downto 16),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => \mem_data_out[0]_0\(23 downto 16),
      DOPADOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => mem_wren,
      ENBWREN => axi_arv_arr_flag,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => s00_axi_wstrb(2),
      WEA(0) => s00_axi_wstrb(2),
      WEBWE(3 downto 0) => B"0000"
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 4) => mem_address(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => s00_axi_wdata(31 downto 24),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => \mem_data_out[0]_0\(31 downto 24),
      DOPADOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => mem_wren,
      ENBWREN => axi_arv_arr_flag,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => s00_axi_wstrb(3),
      WEA(0) => s00_axi_wstrb(3),
      WEBWE(3 downto 0) => B"0000"
    );
\ar_wrap_en__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ar_wrap_en,
      CO(2) => \ar_wrap_en__0_carry_n_1\,
      CO(1) => \ar_wrap_en__0_carry_n_2\,
      CO(0) => \ar_wrap_en__0_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ar_wrap_en__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \ar_wrap_en__0_carry_i_1_n_0\,
      S(2) => \ar_wrap_en__0_carry_i_2_n_0\,
      S(1) => \ar_wrap_en__0_carry_i_3_n_0\,
      S(0) => \ar_wrap_en__0_carry_i_4_n_0\
    );
\ar_wrap_en__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => p_0_in_0(7),
      O => \ar_wrap_en__0_carry_i_1_n_0\
    );
\ar_wrap_en__0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => \axi_arlen_reg_n_0_[4]\,
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => p_0_in_0(6),
      I4 => \axi_arlen_reg_n_0_[5]\,
      I5 => p_0_in_0(5),
      O => \ar_wrap_en__0_carry_i_2_n_0\
    );
\ar_wrap_en__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      I2 => \axi_arlen_reg_n_0_[3]\,
      I3 => p_0_in_0(3),
      I4 => \axi_arlen_reg_n_0_[2]\,
      I5 => p_0_in_0(2),
      O => \ar_wrap_en__0_carry_i_3_n_0\
    );
\ar_wrap_en__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[0]\,
      I1 => p_0_in_0(0),
      O => \ar_wrap_en__0_carry_i_4_n_0\
    );
\aw_wrap_en__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => aw_wrap_en,
      CO(2) => \aw_wrap_en__0_carry_n_1\,
      CO(1) => \aw_wrap_en__0_carry_n_2\,
      CO(0) => \aw_wrap_en__0_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_aw_wrap_en__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \aw_wrap_en__0_carry_i_1_n_0\,
      S(2) => \aw_wrap_en__0_carry_i_2_n_0\,
      S(1) => \aw_wrap_en__0_carry_i_3_n_0\,
      S(0) => \aw_wrap_en__0_carry_i_4_n_0\
    );
\aw_wrap_en__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[7]\,
      I1 => \axi_awaddr_reg_n_0_[9]\,
      O => \aw_wrap_en__0_carry_i_1_n_0\
    );
\aw_wrap_en__0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => \axi_awlen_reg_n_0_[4]\,
      I2 => \axi_awlen_reg_n_0_[6]\,
      I3 => \axi_awaddr_reg_n_0_[8]\,
      I4 => \axi_awlen_reg_n_0_[5]\,
      I5 => \axi_awaddr_reg_n_0_[7]\,
      O => \aw_wrap_en__0_carry_i_2_n_0\
    );
\aw_wrap_en__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awlen_reg_n_0_[1]\,
      I2 => \axi_awlen_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      I4 => \axi_awlen_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \aw_wrap_en__0_carry_i_3_n_0\
    );
\aw_wrap_en__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[0]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      O => \aw_wrap_en__0_carry_i_4_n_0\
    );
\axi_araddr0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr0_inferred__0/i__carry_n_0\,
      CO(2) => \axi_araddr0_inferred__0/i__carry_n_1\,
      CO(1) => \axi_araddr0_inferred__0/i__carry_n_2\,
      CO(0) => \axi_araddr0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => '0',
      O(3) => \axi_araddr0_inferred__0/i__carry_n_4\,
      O(2) => \axi_araddr0_inferred__0/i__carry_n_5\,
      O(1) => \axi_araddr0_inferred__0/i__carry_n_6\,
      O(0) => \axi_araddr0_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_4__0_n_0\,
      S(2) => \i__carry_i_5__0_n_0\,
      S(1) => \i__carry_i_6__0_n_0\,
      S(0) => \i__carry_i_7__0_n_0\
    );
\axi_araddr0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr0_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_axi_araddr0_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \axi_araddr0_inferred__0/i__carry__0_n_1\,
      CO(1) => \axi_araddr0_inferred__0/i__carry__0_n_2\,
      CO(0) => \axi_araddr0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_2__0_n_0\,
      DI(0) => \i__carry__0_i_3__0_n_0\,
      O(3) => \axi_araddr0_inferred__0/i__carry__0_n_4\,
      O(2) => \axi_araddr0_inferred__0/i__carry__0_n_5\,
      O(1) => \axi_araddr0_inferred__0/i__carry__0_n_6\,
      O(0) => \axi_araddr0_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_4__0_n_0\,
      S(2) => \i__carry__0_i_5__0_n_0\,
      S(1) => \i__carry__0_i_6__0_n_0\,
      S(0) => \i__carry__0_i_7__0_n_0\
    );
axi_araddr3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axi_araddr3,
      CO(2) => axi_araddr3_carry_n_1,
      CO(1) => axi_araddr3_carry_n_2,
      CO(0) => axi_araddr3_carry_n_3,
      CYINIT => '1',
      DI(3) => axi_araddr3_carry_i_1_n_0,
      DI(2) => axi_araddr3_carry_i_2_n_0,
      DI(1) => axi_araddr3_carry_i_3_n_0,
      DI(0) => axi_araddr3_carry_i_4_n_0,
      O(3 downto 0) => NLW_axi_araddr3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axi_araddr3_carry_i_5_n_0,
      S(2) => axi_araddr3_carry_i_6_n_0,
      S(1) => axi_araddr3_carry_i_7_n_0,
      S(0) => axi_araddr3_carry_i_8_n_0
    );
axi_araddr3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[6]\,
      I1 => \axi_arlen_cntr_reg__0\(6),
      I2 => \axi_arlen_cntr_reg__0\(7),
      I3 => \axi_arlen_reg_n_0_[7]\,
      O => axi_araddr3_carry_i_1_n_0
    );
axi_araddr3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[4]\,
      I1 => \axi_arlen_cntr_reg__0\(4),
      I2 => \axi_arlen_cntr_reg__0\(5),
      I3 => \axi_arlen_reg_n_0_[5]\,
      O => axi_araddr3_carry_i_2_n_0
    );
axi_araddr3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[2]\,
      I1 => \axi_arlen_cntr_reg__0\(2),
      I2 => \axi_arlen_cntr_reg__0\(3),
      I3 => \axi_arlen_reg_n_0_[3]\,
      O => axi_araddr3_carry_i_3_n_0
    );
axi_araddr3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[0]\,
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_cntr_reg__0\(1),
      I3 => \axi_arlen_reg_n_0_[1]\,
      O => axi_araddr3_carry_i_4_n_0
    );
axi_araddr3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[6]\,
      I1 => \axi_arlen_cntr_reg__0\(6),
      I2 => \axi_arlen_reg_n_0_[7]\,
      I3 => \axi_arlen_cntr_reg__0\(7),
      O => axi_araddr3_carry_i_5_n_0
    );
axi_araddr3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[4]\,
      I1 => \axi_arlen_cntr_reg__0\(4),
      I2 => \axi_arlen_reg_n_0_[5]\,
      I3 => \axi_arlen_cntr_reg__0\(5),
      O => axi_araddr3_carry_i_6_n_0
    );
axi_araddr3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[2]\,
      I1 => \axi_arlen_cntr_reg__0\(2),
      I2 => \axi_arlen_reg_n_0_[3]\,
      I3 => \axi_arlen_cntr_reg__0\(3),
      O => axi_araddr3_carry_i_7_n_0
    );
axi_araddr3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[0]\,
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_reg_n_0_[1]\,
      I3 => \axi_arlen_cntr_reg__0\(1),
      O => axi_araddr3_carry_i_8_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF055"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => s00_axi_araddr(0),
      I2 => \axi_araddr[2]_i_2_n_0\,
      I3 => axi_arburst(1),
      I4 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666CCCCF000F0FF"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(2),
      I2 => \axi_araddr0_inferred__0/i__carry_n_7\,
      I3 => ar_wrap_en,
      I4 => p_0_in_0(0),
      I5 => axi_arburst(0),
      O => \axi_araddr[2]_i_2_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF006666"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => s00_axi_araddr(1),
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_arburst(1),
      I5 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAC0CFCFC0"
    )
        port map (
      I0 => axi_araddr0(3),
      I1 => \axi_araddr0_inferred__0/i__carry_n_6\,
      I2 => ar_wrap_en,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => axi_arburst(0),
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => axi_araddr0(2),
      I1 => s00_axi_araddr(2),
      I2 => \axi_araddr[4]_i_3_n_0\,
      I3 => axi_arburst(1),
      I4 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      O => axi_araddr0(2)
    );
\axi_araddr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => axi_araddr0(4),
      I1 => \axi_araddr0_inferred__0/i__carry_n_5\,
      I2 => ar_wrap_en,
      I3 => axi_araddr0(2),
      I4 => axi_arburst(0),
      O => \axi_araddr[4]_i_3_n_0\
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => axi_araddr0(3),
      I1 => s00_axi_araddr(3),
      I2 => \axi_araddr[5]_i_3_n_0\,
      I3 => axi_arburst(1),
      I4 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[5]_i_1_n_0\
    );
\axi_araddr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      O => axi_araddr0(3)
    );
\axi_araddr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => axi_araddr0(5),
      I1 => \axi_araddr0_inferred__0/i__carry_n_4\,
      I2 => ar_wrap_en,
      I3 => axi_araddr0(3),
      I4 => axi_arburst(0),
      O => \axi_araddr[5]_i_3_n_0\
    );
\axi_araddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => axi_araddr0(4),
      I1 => s00_axi_araddr(4),
      I2 => \axi_araddr[6]_i_3_n_0\,
      I3 => axi_arburst(1),
      I4 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[6]_i_1_n_0\
    );
\axi_araddr[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(4),
      O => axi_araddr0(4)
    );
\axi_araddr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666666F0FFF000"
    )
        port map (
      I0 => \axi_araddr[8]_i_2_n_0\,
      I1 => p_0_in_0(6),
      I2 => \axi_araddr0_inferred__0/i__carry__0_n_7\,
      I3 => ar_wrap_en,
      I4 => axi_araddr0(4),
      I5 => axi_arburst(0),
      O => \axi_araddr[6]_i_3_n_0\
    );
\axi_araddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => axi_araddr0(5),
      I1 => s00_axi_araddr(5),
      I2 => \axi_araddr[7]_i_3_n_0\,
      I3 => axi_arburst(1),
      I4 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[7]_i_1_n_0\
    );
\axi_araddr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(4),
      I5 => p_0_in_0(5),
      O => axi_araddr0(5)
    );
\axi_araddr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => axi_araddr0(7),
      I1 => \axi_araddr0_inferred__0/i__carry__0_n_6\,
      I2 => ar_wrap_en,
      I3 => axi_araddr0(5),
      I4 => axi_arburst(0),
      O => \axi_araddr[7]_i_3_n_0\
    );
\axi_araddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF006666"
    )
        port map (
      I0 => \axi_araddr[8]_i_2_n_0\,
      I1 => p_0_in_0(6),
      I2 => s00_axi_araddr(6),
      I3 => \axi_araddr[8]_i_3_n_0\,
      I4 => axi_arburst(1),
      I5 => \axi_arlen[7]_i_1_n_0\,
      O => \axi_araddr[8]_i_1_n_0\
    );
\axi_araddr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(4),
      O => \axi_araddr[8]_i_2_n_0\
    );
\axi_araddr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000C0CFCFC0"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => \axi_araddr0_inferred__0/i__carry__0_n_5\,
      I2 => ar_wrap_en,
      I3 => \axi_araddr[8]_i_2_n_0\,
      I4 => p_0_in_0(6),
      I5 => axi_arburst(0),
      O => \axi_araddr[8]_i_3_n_0\
    );
\axi_araddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \axi_arlen[7]_i_1_n_0\,
      I1 => axi_arburst(0),
      I2 => axi_arburst(1),
      I3 => s00_axi_rready,
      I4 => \^s00_axi_rvalid\,
      I5 => axi_araddr3,
      O => \axi_araddr[9]_i_1_n_0\
    );
\axi_araddr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCACC"
    )
        port map (
      I0 => s00_axi_araddr(7),
      I1 => \axi_araddr[9]_i_3_n_0\,
      I2 => \^s00_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => axi_arv_arr_flag,
      O => \axi_araddr[9]_i_2_n_0\
    );
\axi_araddr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050DCF0"
    )
        port map (
      I0 => axi_arburst(1),
      I1 => \axi_araddr0_inferred__0/i__carry__0_n_4\,
      I2 => axi_araddr0(7),
      I3 => ar_wrap_en,
      I4 => axi_arburst(0),
      O => \axi_araddr[9]_i_3_n_0\
    );
\axi_araddr[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_araddr[8]_i_2_n_0\,
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(7),
      O => axi_araddr0(7)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[5]_i_1_n_0\,
      Q => p_0_in_0(3),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[6]_i_1_n_0\,
      Q => p_0_in_0(4),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[7]_i_1_n_0\,
      Q => p_0_in_0(5),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[8]_i_1_n_0\,
      Q => p_0_in_0(6),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[9]_i_1_n_0\,
      D => \axi_araddr[9]_i_2_n_0\,
      Q => p_0_in_0(7),
      R => axi_awready_i_1_n_0
    );
\axi_arburst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arburst(0),
      Q => axi_arburst(0),
      R => axi_awready_i_1_n_0
    );
\axi_arburst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arburst(1),
      Q => axi_arburst(1),
      R => axi_awready_i_1_n_0
    );
\axi_arlen[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => axi_arv_arr_flag,
      O => \axi_arlen[7]_i_1_n_0\
    );
\axi_arlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\axi_arlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      I1 => \axi_arlen_cntr_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\axi_arlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\axi_arlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(1),
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_cntr_reg__0\(2),
      I3 => \axi_arlen_cntr_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\axi_arlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(2),
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_cntr_reg__0\(1),
      I3 => \axi_arlen_cntr_reg__0\(3),
      I4 => \axi_arlen_cntr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\axi_arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(3),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(0),
      I3 => \axi_arlen_cntr_reg__0\(2),
      I4 => \axi_arlen_cntr_reg__0\(4),
      I5 => \axi_arlen_cntr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\axi_arlen_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_arlen_cntr[7]_i_4_n_0\,
      I1 => \axi_arlen_cntr_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\axi_arlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => s00_axi_aresetn,
      O => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_rvalid\,
      I2 => axi_araddr3,
      O => axi_araddr1
    );
\axi_arlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_arlen_cntr[7]_i_4_n_0\,
      I1 => \axi_arlen_cntr_reg__0\(6),
      I2 => \axi_arlen_cntr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\axi_arlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(5),
      I1 => \axi_arlen_cntr_reg__0\(3),
      I2 => \axi_arlen_cntr_reg__0\(1),
      I3 => \axi_arlen_cntr_reg__0\(0),
      I4 => \axi_arlen_cntr_reg__0\(2),
      I5 => \axi_arlen_cntr_reg__0\(4),
      O => \axi_arlen_cntr[7]_i_4_n_0\
    );
\axi_arlen_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(0),
      Q => \axi_arlen_cntr_reg__0\(0),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(1),
      Q => \axi_arlen_cntr_reg__0\(1),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(2),
      Q => \axi_arlen_cntr_reg__0\(2),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(3),
      Q => \axi_arlen_cntr_reg__0\(3),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(4),
      Q => \axi_arlen_cntr_reg__0\(4),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(5),
      Q => \axi_arlen_cntr_reg__0\(5),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(6),
      Q => \axi_arlen_cntr_reg__0\(6),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => \p_0_in__0\(7),
      Q => \axi_arlen_cntr_reg__0\(7),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(0),
      Q => \axi_arlen_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(1),
      Q => \axi_arlen_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(2),
      Q => \axi_arlen_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(3),
      Q => \axi_arlen_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(4),
      Q => \axi_arlen_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(5),
      Q => \axi_arlen_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(6),
      Q => \axi_arlen_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\axi_arlen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arlen[7]_i_1_n_0\,
      D => s00_axi_arlen(7),
      Q => \axi_arlen_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDC0010"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => \^s00_axi_arready\,
      I2 => s00_axi_arvalid,
      I3 => axi_arv_arr_flag,
      I4 => \axi_arready1__0\,
      O => axi_arready_i_1_n_0
    );
axi_arready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_rvalid\,
      I2 => \axi_arready2__14\,
      O => \axi_arready1__0\
    );
axi_arready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => \axi_arlen_cntr_reg__0\(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => \axi_arlen_cntr_reg__0\(6),
      I4 => axi_arready_i_4_n_0,
      I5 => axi_arready_i_5_n_0,
      O => \axi_arready2__14\
    );
axi_arready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      I2 => \axi_arlen_reg_n_0_[5]\,
      I3 => \axi_arlen_cntr_reg__0\(5),
      I4 => \axi_arlen_reg_n_0_[4]\,
      I5 => \axi_arlen_cntr_reg__0\(4),
      O => axi_arready_i_4_n_0
    );
axi_arready_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      I1 => \axi_arlen_reg_n_0_[0]\,
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => \axi_arlen_cntr_reg__0\(2),
      I4 => \axi_arlen_reg_n_0_[1]\,
      I5 => \axi_arlen_cntr_reg__0\(1),
      O => axi_arready_i_5_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => axi_awready_i_1_n_0
    );
axi_arv_arr_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FF10"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => \^s00_axi_arready\,
      I2 => s00_axi_arvalid,
      I3 => axi_arv_arr_flag,
      I4 => \axi_arready1__0\,
      O => axi_arv_arr_flag_i_1_n_0
    );
axi_arv_arr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arv_arr_flag_i_1_n_0,
      Q => axi_arv_arr_flag,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_awaddr0_inferred__0/i__carry_n_0\,
      CO(2) => \axi_awaddr0_inferred__0/i__carry_n_1\,
      CO(1) => \axi_awaddr0_inferred__0/i__carry_n_2\,
      CO(0) => \axi_awaddr0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \axi_awaddr0_inferred__0/i__carry_n_4\,
      O(2) => \axi_awaddr0_inferred__0/i__carry_n_5\,
      O(1) => \axi_awaddr0_inferred__0/i__carry_n_6\,
      O(0) => \axi_awaddr0_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_4_n_0\,
      S(2) => \i__carry_i_5_n_0\,
      S(1) => \i__carry_i_6_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\axi_awaddr0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr0_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_axi_awaddr0_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \axi_awaddr0_inferred__0/i__carry__0_n_1\,
      CO(1) => \axi_awaddr0_inferred__0/i__carry__0_n_2\,
      CO(0) => \axi_awaddr0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1_n_0\,
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3) => \axi_awaddr0_inferred__0/i__carry__0_n_4\,
      O(2) => \axi_awaddr0_inferred__0/i__carry__0_n_5\,
      O(1) => \axi_awaddr0_inferred__0/i__carry__0_n_6\,
      O(0) => \axi_awaddr0_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
axi_awaddr3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axi_awaddr3,
      CO(2) => axi_awaddr3_carry_n_1,
      CO(1) => axi_awaddr3_carry_n_2,
      CO(0) => axi_awaddr3_carry_n_3,
      CYINIT => '1',
      DI(3) => axi_awaddr3_carry_i_1_n_0,
      DI(2) => axi_awaddr3_carry_i_2_n_0,
      DI(1) => axi_awaddr3_carry_i_3_n_0,
      DI(0) => axi_awaddr3_carry_i_4_n_0,
      O(3 downto 0) => NLW_axi_awaddr3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axi_awaddr3_carry_i_5_n_0,
      S(2) => axi_awaddr3_carry_i_6_n_0,
      S(1) => axi_awaddr3_carry_i_7_n_0,
      S(0) => axi_awaddr3_carry_i_8_n_0
    );
axi_awaddr3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[6]\,
      I1 => \axi_awlen_cntr_reg__0\(6),
      I2 => \axi_awlen_cntr_reg__0\(7),
      I3 => \axi_awlen_reg_n_0_[7]\,
      O => axi_awaddr3_carry_i_1_n_0
    );
axi_awaddr3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[4]\,
      I1 => \axi_awlen_cntr_reg__0\(4),
      I2 => \axi_awlen_cntr_reg__0\(5),
      I3 => \axi_awlen_reg_n_0_[5]\,
      O => axi_awaddr3_carry_i_2_n_0
    );
axi_awaddr3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[2]\,
      I1 => \axi_awlen_cntr_reg__0\(2),
      I2 => \axi_awlen_cntr_reg__0\(3),
      I3 => \axi_awlen_reg_n_0_[3]\,
      O => axi_awaddr3_carry_i_3_n_0
    );
axi_awaddr3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[0]\,
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_cntr_reg__0\(1),
      I3 => \axi_awlen_reg_n_0_[1]\,
      O => axi_awaddr3_carry_i_4_n_0
    );
axi_awaddr3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[6]\,
      I1 => \axi_awlen_cntr_reg__0\(6),
      I2 => \axi_awlen_reg_n_0_[7]\,
      I3 => \axi_awlen_cntr_reg__0\(7),
      O => axi_awaddr3_carry_i_5_n_0
    );
axi_awaddr3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[4]\,
      I1 => \axi_awlen_cntr_reg__0\(4),
      I2 => \axi_awlen_reg_n_0_[5]\,
      I3 => \axi_awlen_cntr_reg__0\(5),
      O => axi_awaddr3_carry_i_6_n_0
    );
axi_awaddr3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[2]\,
      I1 => \axi_awlen_cntr_reg__0\(2),
      I2 => \axi_awlen_reg_n_0_[3]\,
      I3 => \axi_awlen_cntr_reg__0\(3),
      O => axi_awaddr3_carry_i_7_n_0
    );
axi_awaddr3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[0]\,
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_reg_n_0_[1]\,
      I3 => \axi_awlen_cntr_reg__0\(1),
      O => axi_awaddr3_carry_i_8_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF055"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr[2]_i_2_n_0\,
      I3 => axi_awburst(1),
      I4 => p_20_in,
      O => p_2_in(2)
    );
\axi_awaddr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666CCCCF000F0FF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => \axi_awaddr0_inferred__0/i__carry_n_7\,
      I3 => aw_wrap_en,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => axi_awburst(0),
      O => \axi_awaddr[2]_i_2_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF006666"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awaddr(1),
      I3 => \axi_awaddr[3]_i_2_n_0\,
      I4 => axi_awburst(1),
      I5 => p_20_in,
      O => p_2_in(3)
    );
\axi_awaddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAC0CFCFC0"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \axi_awaddr0_inferred__0/i__carry_n_6\,
      I2 => aw_wrap_en,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => axi_awburst(0),
      O => \axi_awaddr[3]_i_2_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => p_0_in(4),
      I1 => s00_axi_awaddr(2),
      I2 => \axi_awaddr[4]_i_3_n_0\,
      I3 => axi_awburst(1),
      I4 => p_20_in,
      O => p_2_in(4)
    );
\axi_awaddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\axi_awaddr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \axi_awaddr0_inferred__0/i__carry_n_5\,
      I2 => aw_wrap_en,
      I3 => p_0_in(4),
      I4 => axi_awburst(0),
      O => \axi_awaddr[4]_i_3_n_0\
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => p_0_in(5),
      I1 => s00_axi_awaddr(3),
      I2 => \axi_awaddr[5]_i_3_n_0\,
      I3 => axi_awburst(1),
      I4 => p_20_in,
      O => p_2_in(5)
    );
\axi_awaddr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\axi_awaddr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \axi_awaddr0_inferred__0/i__carry_n_4\,
      I2 => aw_wrap_en,
      I3 => p_0_in(5),
      I4 => axi_awburst(0),
      O => \axi_awaddr[5]_i_3_n_0\
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => p_0_in(6),
      I1 => s00_axi_awaddr(4),
      I2 => \axi_awaddr[6]_i_3_n_0\,
      I3 => axi_awburst(1),
      I4 => p_20_in,
      O => p_2_in(6)
    );
\axi_awaddr[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      I4 => \axi_awaddr_reg_n_0_[6]\,
      O => p_0_in(6)
    );
\axi_awaddr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666666F0FFF000"
    )
        port map (
      I0 => \axi_awaddr[8]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[8]\,
      I2 => \axi_awaddr0_inferred__0/i__carry__0_n_7\,
      I3 => aw_wrap_en,
      I4 => p_0_in(6),
      I5 => axi_awburst(0),
      O => \axi_awaddr[6]_i_3_n_0\
    );
\axi_awaddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => s00_axi_awaddr(5),
      I2 => \axi_awaddr[7]_i_3_n_0\,
      I3 => axi_awburst(1),
      I4 => p_20_in,
      O => p_2_in(7)
    );
\axi_awaddr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[5]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[6]\,
      I5 => \axi_awaddr_reg_n_0_[7]\,
      O => p_0_in(7)
    );
\axi_awaddr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \axi_awaddr0_inferred__0/i__carry__0_n_6\,
      I2 => aw_wrap_en,
      I3 => p_0_in(7),
      I4 => axi_awburst(0),
      O => \axi_awaddr[7]_i_3_n_0\
    );
\axi_awaddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF006666"
    )
        port map (
      I0 => \axi_awaddr[8]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[8]\,
      I2 => s00_axi_awaddr(6),
      I3 => \axi_awaddr[8]_i_3_n_0\,
      I4 => axi_awburst(1),
      I5 => p_20_in,
      O => p_2_in(8)
    );
\axi_awaddr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[7]\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \axi_awaddr_reg_n_0_[6]\,
      O => \axi_awaddr[8]_i_2_n_0\
    );
\axi_awaddr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000C0CFCFC0"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[9]\,
      I1 => \axi_awaddr0_inferred__0/i__carry__0_n_5\,
      I2 => aw_wrap_en,
      I3 => \axi_awaddr[8]_i_2_n_0\,
      I4 => \axi_awaddr_reg_n_0_[8]\,
      I5 => axi_awburst(0),
      O => \axi_awaddr[8]_i_3_n_0\
    );
\axi_awaddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_20_in,
      I1 => axi_awburst(0),
      I2 => axi_awburst(1),
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_wvalid,
      I5 => axi_awaddr3,
      O => \axi_awaddr[9]_i_1_n_0\
    );
\axi_awaddr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCACC"
    )
        port map (
      I0 => s00_axi_awaddr(7),
      I1 => \axi_awaddr[9]_i_3_n_0\,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => axi_awv_awr_flag,
      O => p_2_in(9)
    );
\axi_awaddr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050DCF0"
    )
        port map (
      I0 => axi_awburst(1),
      I1 => \axi_awaddr0_inferred__0/i__carry__0_n_4\,
      I2 => p_0_in(9),
      I3 => aw_wrap_en,
      I4 => axi_awburst(0),
      O => \axi_awaddr[9]_i_3_n_0\
    );
\axi_awaddr[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_awaddr[8]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[8]\,
      I2 => \axi_awaddr_reg_n_0_[9]\,
      O => p_0_in(9)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(2),
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(3),
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(4),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(5),
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(6),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(7),
      Q => \axi_awaddr_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(8),
      Q => \axi_awaddr_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[9]_i_1_n_0\,
      D => p_2_in(9),
      Q => \axi_awaddr_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\axi_awburst[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => axi_awv_awr_flag,
      O => p_20_in
    );
\axi_awburst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awburst(0),
      Q => axi_awburst(0),
      R => axi_awready_i_1_n_0
    );
\axi_awburst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awburst(1),
      Q => axi_awburst(1),
      R => axi_awready_i_1_n_0
    );
\axi_awlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      O => \axi_awlen_cntr[0]_i_1_n_0\
    );
\axi_awlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      I1 => \axi_awlen_cntr_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\axi_awlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => \axi_awlen_cntr_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\axi_awlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(1),
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_cntr_reg__0\(2),
      I3 => \axi_awlen_cntr_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\axi_awlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(2),
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_cntr_reg__0\(1),
      I3 => \axi_awlen_cntr_reg__0\(3),
      I4 => \axi_awlen_cntr_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\axi_awlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(3),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => \axi_awlen_cntr_reg__0\(0),
      I3 => \axi_awlen_cntr_reg__0\(2),
      I4 => \axi_awlen_cntr_reg__0\(4),
      I5 => \axi_awlen_cntr_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\axi_awlen_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_awlen_cntr[7]_i_4_n_0\,
      I1 => \axi_awlen_cntr_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\axi_awlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_aresetn,
      O => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => axi_awaddr3,
      O => axi_awaddr1
    );
\axi_awlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_awlen_cntr[7]_i_4_n_0\,
      I1 => \axi_awlen_cntr_reg__0\(6),
      I2 => \axi_awlen_cntr_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\axi_awlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(5),
      I1 => \axi_awlen_cntr_reg__0\(3),
      I2 => \axi_awlen_cntr_reg__0\(1),
      I3 => \axi_awlen_cntr_reg__0\(0),
      I4 => \axi_awlen_cntr_reg__0\(2),
      I5 => \axi_awlen_cntr_reg__0\(4),
      O => \axi_awlen_cntr[7]_i_4_n_0\
    );
\axi_awlen_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \axi_awlen_cntr[0]_i_1_n_0\,
      Q => \axi_awlen_cntr_reg__0\(0),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(1),
      Q => \axi_awlen_cntr_reg__0\(1),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(2),
      Q => \axi_awlen_cntr_reg__0\(2),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(3),
      Q => \axi_awlen_cntr_reg__0\(3),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(4),
      Q => \axi_awlen_cntr_reg__0\(4),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(5),
      Q => \axi_awlen_cntr_reg__0\(5),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(6),
      Q => \axi_awlen_cntr_reg__0\(6),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__1\(7),
      Q => \axi_awlen_cntr_reg__0\(7),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(0),
      Q => \axi_awlen_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(1),
      Q => \axi_awlen_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(2),
      Q => \axi_awlen_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(3),
      Q => \axi_awlen_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(4),
      Q => \axi_awlen_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(5),
      Q => \axi_awlen_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(6),
      Q => \axi_awlen_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\axi_awlen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_20_in,
      D => s00_axi_awlen(7),
      Q => \axi_awlen_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDC001000100010"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => axi_awv_awr_flag,
      I4 => \^s00_axi_wready\,
      I5 => s00_axi_wlast,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s00_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_awv_awr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FF10FF10FF10"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => axi_awv_awr_flag,
      I4 => \^s00_axi_wready\,
      I5 => s00_axi_wlast,
      O => axi_awv_awr_flag_i_1_n_0
    );
axi_awv_awr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awv_awr_flag_i_1_n_0,
      Q => axi_awv_awr_flag,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFF8000"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wlast,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F200000000"
    )
        port map (
      I0 => \^s00_axi_rlast\,
      I1 => s00_axi_rready,
      I2 => axi_rlast0,
      I3 => \axi_arlen[7]_i_1_n_0\,
      I4 => axi_araddr1,
      I5 => s00_axi_aresetn,
      O => axi_rlast_i_1_n_0
    );
axi_rlast_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rlast\,
      I1 => \axi_arready2__14\,
      I2 => axi_arv_arr_flag,
      O => axi_rlast0
    );
axi_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rlast_i_1_n_0,
      Q => \^s00_axi_rlast\,
      R => '0'
    );
axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s00_axi_rready,
      I2 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => axi_awv_awr_flag,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wlast,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[7]\,
      I1 => \axi_awlen_reg_n_0_[5]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => \axi_arlen_reg_n_0_[5]\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => \axi_awlen_reg_n_0_[4]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => \axi_arlen_reg_n_0_[4]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[5]\,
      I1 => \axi_awlen_reg_n_0_[3]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[6]\,
      I1 => \axi_awaddr_reg_n_0_[8]\,
      I2 => \axi_awlen_reg_n_0_[7]\,
      I3 => \axi_awaddr_reg_n_0_[9]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[6]\,
      I1 => p_0_in_0(6),
      I2 => \axi_arlen_reg_n_0_[7]\,
      I3 => p_0_in_0(7),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[5]\,
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => \axi_awlen_reg_n_0_[6]\,
      I3 => \axi_awaddr_reg_n_0_[8]\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => p_0_in_0(5),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => p_0_in_0(6),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[4]\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => \axi_awlen_reg_n_0_[5]\,
      I3 => \axi_awaddr_reg_n_0_[7]\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[4]\,
      I1 => p_0_in_0(4),
      I2 => \axi_arlen_reg_n_0_[5]\,
      I3 => p_0_in_0(5),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awlen_reg_n_0_[4]\,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => p_0_in_0(3),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => p_0_in_0(4),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => \axi_awlen_reg_n_0_[2]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \axi_arlen_reg_n_0_[2]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awlen_reg_n_0_[1]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => \axi_awlen_reg_n_0_[0]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \axi_arlen_reg_n_0_[0]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[2]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => \axi_awlen_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[2]\,
      I1 => p_0_in_0(2),
      I2 => \axi_arlen_reg_n_0_[3]\,
      I3 => p_0_in_0(3),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[1]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awlen_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => p_0_in_0(1),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => p_0_in_0(2),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[0]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awlen_reg_n_0_[1]\,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[0]\,
      I1 => p_0_in_0(0),
      I2 => \axi_arlen_reg_n_0_[1]\,
      I3 => p_0_in_0(1),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => \axi_awlen_reg_n_0_[0]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \axi_arlen_reg_n_0_[0]\,
      O => \i__carry_i_7__0_n_0\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(17),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(21),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(23),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(27),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(28),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(29),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(30),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(31),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \mem_data_out[0]_0\(9),
      O => s00_axi_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity myip_0_myip_v1_0_S_AXI_INTR is
  port (
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of myip_0_myip_v1_0_S_AXI_INTR : entity is "myip_v1_0_S_AXI_INTR";
end myip_0_myip_v1_0_S_AXI_INTR;

architecture STRUCTURE of myip_0_myip_v1_0_S_AXI_INTR is
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arready_i_1__0_n_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awready_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_awready_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_wready_i_1__0_n_0\ : STD_LOGIC;
  signal det_intr : STD_LOGIC;
  signal \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intrall[0].intr_ack_all_i_1_n_0\ : STD_LOGIC;
  signal \gen_intrall[0].intr_all_i_1_n_0\ : STD_LOGIC;
  signal \intr__0\ : STD_LOGIC;
  signal intr_ack_all : STD_LOGIC;
  signal intr_ack_all_ff : STD_LOGIC;
  signal intr_all : STD_LOGIC;
  signal intr_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \intr_counter0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intr_counter0_n_0 : STD_LOGIC;
  signal \intr_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \intr_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \intr_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal intr_n_0 : STD_LOGIC;
  signal \^irq\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal reg_data_out : STD_LOGIC;
  signal reg_global_intr_en : STD_LOGIC;
  signal reg_intr_ack : STD_LOGIC;
  signal reg_intr_en : STD_LOGIC;
  signal reg_intr_pending : STD_LOGIC;
  signal reg_intr_sts : STD_LOGIC;
  signal \^s_axi_intr_arready\ : STD_LOGIC;
  signal \^s_axi_intr_awready\ : STD_LOGIC;
  signal \^s_axi_intr_bvalid\ : STD_LOGIC;
  signal \^s_axi_intr_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_intr_rvalid\ : STD_LOGIC;
  signal \^s_axi_intr_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_arready_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_awready_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_wready_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_intr_reg[0].reg_global_intr_en[0]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \intr_counter[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \intr_counter[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \intr_counter[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \intr_counter[3]_i_1\ : label is "soft_lutpair28";
begin
  irq <= \^irq\;
  s_axi_intr_arready <= \^s_axi_intr_arready\;
  s_axi_intr_awready <= \^s_axi_intr_awready\;
  s_axi_intr_bvalid <= \^s_axi_intr_bvalid\;
  s_axi_intr_rdata(0) <= \^s_axi_intr_rdata\(0);
  s_axi_intr_rvalid <= \^s_axi_intr_rvalid\;
  s_axi_intr_wready <= \^s_axi_intr_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(0),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(1),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(2),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_arready_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_intr_arvalid,
      I1 => \^s_axi_intr_arready\,
      O => \axi_arready_i_1__0_n_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_arready_i_1__0_n_0\,
      Q => \^s_axi_intr_arready\,
      R => \axi_awready_i_1__0_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_intr_awaddr(0),
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_intr_awaddr(1),
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_intr_awaddr(2),
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      I4 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_awready_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_intr_aresetn,
      O => \axi_awready_i_1__0_n_0\
    );
\axi_awready_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_awready\,
      O => \axi_awready_i_2__0_n_0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awready_i_2__0_n_0\,
      Q => \^s_axi_intr_awready\,
      R => \axi_awready_i_1__0_n_0\
    );
\axi_bvalid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_wready\,
      I3 => \^s_axi_intr_awready\,
      I4 => s_axi_intr_bready,
      I5 => \^s_axi_intr_bvalid\,
      O => \axi_bvalid_i_1__0_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_bvalid_i_1__0_n_0\,
      Q => \^s_axi_intr_bvalid\,
      R => \axi_awready_i_1__0_n_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => reg_data_out,
      I1 => \^s_axi_intr_rvalid\,
      I2 => \^s_axi_intr_arready\,
      I3 => s_axi_intr_arvalid,
      I4 => \^s_axi_intr_rdata\(0),
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[0]_i_3_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => reg_intr_pending,
      I4 => sel0(0),
      O => reg_data_out
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_intr_ack,
      I1 => reg_intr_sts,
      I2 => sel0(1),
      I3 => reg_intr_en,
      I4 => sel0(0),
      I5 => reg_global_intr_en,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_rdata[0]_i_1_n_0\,
      Q => \^s_axi_intr_rdata\(0),
      R => \axi_awready_i_1__0_n_0\
    );
\axi_rvalid_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_intr_arvalid,
      I1 => \^s_axi_intr_arready\,
      I2 => \^s_axi_intr_rvalid\,
      I3 => s_axi_intr_rready,
      O => \axi_rvalid_i_1__0_n_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_rvalid_i_1__0_n_0\,
      Q => \^s_axi_intr_rvalid\,
      R => \axi_awready_i_1__0_n_0\
    );
\axi_wready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_wready\,
      O => \axi_wready_i_1__0_n_0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_wready_i_1__0_n_0\,
      Q => \^s_axi_intr_wready\,
      R => \axi_awready_i_1__0_n_0\
    );
\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \intr__0\,
      I1 => det_intr,
      O => \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0\
    );
\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0\,
      Q => det_intr,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => \^irq\,
      I1 => reg_global_intr_en,
      I2 => intr_all,
      I3 => s_axi_intr_aresetn,
      I4 => intr_ack_all,
      O => \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\
    );
\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\,
      Q => \^irq\,
      R => '0'
    );
\gen_intr_reg[0].reg_global_intr_en[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(4),
      I3 => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\,
      I4 => axi_awaddr(3),
      I5 => reg_global_intr_en,
      O => \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_global_intr_en[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_wready\,
      I3 => \^s_axi_intr_awready\,
      O => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\
    );
\gen_intr_reg[0].reg_global_intr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\,
      Q => reg_global_intr_en,
      R => \axi_awready_i_1__0_n_0\
    );
\gen_intr_reg[0].reg_intr_ack[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\,
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      I5 => reg_intr_ack,
      O => \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_ack_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\,
      Q => reg_intr_ack,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_en[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(2),
      I4 => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\,
      I5 => reg_intr_en,
      O => \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\,
      Q => reg_intr_en,
      R => \axi_awready_i_1__0_n_0\
    );
\gen_intr_reg[0].reg_intr_pending[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_intr_en,
      I1 => reg_intr_sts,
      O => p_1_out
    );
\gen_intr_reg[0].reg_intr_pending_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => p_1_out,
      Q => reg_intr_pending,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_sts[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reg_intr_ack,
      I1 => s_axi_intr_aresetn,
      O => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_sts_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => det_intr,
      Q => reg_intr_sts,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intrall[0].intr_ack_all_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => intr_ack_all,
      I1 => reg_intr_ack,
      I2 => s_axi_intr_aresetn,
      I3 => intr_ack_all_ff,
      O => \gen_intrall[0].intr_ack_all_i_1_n_0\
    );
\gen_intrall[0].intr_ack_all_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intrall[0].intr_ack_all_i_1_n_0\,
      Q => intr_ack_all,
      R => '0'
    );
\gen_intrall[0].intr_all_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => intr_all,
      I1 => reg_intr_pending,
      I2 => s_axi_intr_aresetn,
      I3 => intr_ack_all_ff,
      O => \gen_intrall[0].intr_all_i_1_n_0\
    );
\gen_intrall[0].intr_all_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intrall[0].intr_all_i_1_n_0\,
      Q => intr_all,
      R => '0'
    );
intr: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => intr_counter(0),
      I1 => intr_counter(2),
      I2 => intr_counter(1),
      I3 => intr_counter(3),
      O => intr_n_0
    );
intr_ack_all_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => intr_ack_all,
      Q => intr_ack_all_ff,
      R => \axi_awready_i_1__0_n_0\
    );
intr_counter0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => intr_counter(1),
      I1 => intr_counter(0),
      I2 => intr_counter(2),
      I3 => intr_counter(3),
      O => intr_counter0_n_0
    );
\intr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => intr_counter(0),
      O => \intr_counter0__0\(0)
    );
\intr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => intr_counter(0),
      I1 => intr_counter(1),
      O => \intr_counter[1]_i_1_n_0\
    );
\intr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => intr_counter(1),
      I1 => intr_counter(0),
      I2 => intr_counter(2),
      O => \intr_counter[2]_i_1_n_0\
    );
\intr_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => intr_counter(0),
      I1 => intr_counter(1),
      I2 => intr_counter(2),
      I3 => intr_counter(3),
      O => \intr_counter[3]_i_1_n_0\
    );
\intr_counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => intr_counter0_n_0,
      D => \intr_counter0__0\(0),
      Q => intr_counter(0),
      S => \axi_awready_i_1__0_n_0\
    );
\intr_counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => intr_counter0_n_0,
      D => \intr_counter[1]_i_1_n_0\,
      Q => intr_counter(1),
      S => \axi_awready_i_1__0_n_0\
    );
\intr_counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => intr_counter0_n_0,
      D => \intr_counter[2]_i_1_n_0\,
      Q => intr_counter(2),
      S => \axi_awready_i_1__0_n_0\
    );
\intr_counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => intr_counter0_n_0,
      D => \intr_counter[3]_i_1_n_0\,
      Q => intr_counter(3),
      S => \axi_awready_i_1__0_n_0\
    );
\intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => intr_n_0,
      Q => \intr__0\,
      R => \axi_awready_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity myip_0_myip_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of myip_0_myip_v1_0 : entity is "myip_v1_0";
end myip_0_myip_v1_0;

architecture STRUCTURE of myip_0_myip_v1_0 is
begin
myip_v1_0_S00_AXI_inst: entity work.myip_0_myip_v1_0_S00_AXI
     port map (
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(7 downto 0),
      s00_axi_arburst(1 downto 0) => s00_axi_arburst(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arlen(7 downto 0) => s00_axi_arlen(7 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(7 downto 0),
      s00_axi_awburst(1 downto 0) => s00_axi_awburst(1 downto 0),
      s00_axi_awlen(7 downto 0) => s00_axi_awlen(7 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
myip_v1_0_S_AXI_INTR_inst: entity work.myip_0_myip_v1_0_S_AXI_INTR
     port map (
      irq => irq,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_araddr(2 downto 0) => s_axi_intr_araddr(2 downto 0),
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_awaddr(2 downto 0) => s_axi_intr_awaddr(2 downto 0),
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_rdata(0) => s_axi_intr_rdata(0),
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_wdata(0) => s_axi_intr_wdata(0),
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_wvalid => s_axi_intr_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity myip_0 is
  port (
    irq : out STD_LOGIC;
    s00_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awlock : in STD_LOGIC;
    s00_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arlock : in STD_LOGIC;
    s00_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of myip_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of myip_0 : entity is "myip_0,myip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of myip_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of myip_0 : entity is "myip_v1_0,Vivado 2016.4";
end myip_0;

architecture STRUCTURE of myip_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_arid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axi_awid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_intr_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^s00_axi_arid\(0) <= s00_axi_arid(0);
  \^s00_axi_awid\(0) <= s00_axi_awid(0);
  s00_axi_bid(0) <= \^s00_axi_awid\(0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_buser(0) <= \<const0>\;
  s00_axi_rid(0) <= \^s00_axi_arid\(0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s_axi_intr_bresp(1) <= \<const0>\;
  s_axi_intr_bresp(0) <= \<const0>\;
  s_axi_intr_rdata(31) <= \<const0>\;
  s_axi_intr_rdata(30) <= \<const0>\;
  s_axi_intr_rdata(29) <= \<const0>\;
  s_axi_intr_rdata(28) <= \<const0>\;
  s_axi_intr_rdata(27) <= \<const0>\;
  s_axi_intr_rdata(26) <= \<const0>\;
  s_axi_intr_rdata(25) <= \<const0>\;
  s_axi_intr_rdata(24) <= \<const0>\;
  s_axi_intr_rdata(23) <= \<const0>\;
  s_axi_intr_rdata(22) <= \<const0>\;
  s_axi_intr_rdata(21) <= \<const0>\;
  s_axi_intr_rdata(20) <= \<const0>\;
  s_axi_intr_rdata(19) <= \<const0>\;
  s_axi_intr_rdata(18) <= \<const0>\;
  s_axi_intr_rdata(17) <= \<const0>\;
  s_axi_intr_rdata(16) <= \<const0>\;
  s_axi_intr_rdata(15) <= \<const0>\;
  s_axi_intr_rdata(14) <= \<const0>\;
  s_axi_intr_rdata(13) <= \<const0>\;
  s_axi_intr_rdata(12) <= \<const0>\;
  s_axi_intr_rdata(11) <= \<const0>\;
  s_axi_intr_rdata(10) <= \<const0>\;
  s_axi_intr_rdata(9) <= \<const0>\;
  s_axi_intr_rdata(8) <= \<const0>\;
  s_axi_intr_rdata(7) <= \<const0>\;
  s_axi_intr_rdata(6) <= \<const0>\;
  s_axi_intr_rdata(5) <= \<const0>\;
  s_axi_intr_rdata(4) <= \<const0>\;
  s_axi_intr_rdata(3) <= \<const0>\;
  s_axi_intr_rdata(2) <= \<const0>\;
  s_axi_intr_rdata(1) <= \<const0>\;
  s_axi_intr_rdata(0) <= \^s_axi_intr_rdata\(0);
  s_axi_intr_rresp(1) <= \<const0>\;
  s_axi_intr_rresp(0) <= \<const0>\;
  s00_axi_ruser(0) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.myip_0_myip_v1_0
     port map (
      irq => irq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(9 downto 2),
      s00_axi_arburst(1 downto 0) => s00_axi_arburst(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arlen(7 downto 0) => s00_axi_arlen(7 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(9 downto 2),
      s00_axi_awburst(1 downto 0) => s00_axi_awburst(1 downto 0),
      s00_axi_awlen(7 downto 0) => s00_axi_awlen(7 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_araddr(2 downto 0) => s_axi_intr_araddr(4 downto 2),
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_awaddr(2 downto 0) => s_axi_intr_awaddr(4 downto 2),
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_rdata(0) => \^s_axi_intr_rdata\(0),
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_wdata(0) => s_axi_intr_wdata(0),
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_wvalid => s_axi_intr_wvalid
    );
end STRUCTURE;
