-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 26 18:46:39 2020
-- Host        : DESKTOP-KE3UBO5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab3_simple_sobel_filter_1_1_sim_netlist.vhdl
-- Design      : lab3_simple_sobel_filter_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_ctrl_bus_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_ctrl_bus_BVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OUTPUT_IMAGE_TREADY_0 : out STD_LOGIC;
    \OUTPUT_IMAGE_V_keep_V_1_state_reg[0]\ : out STD_LOGIC;
    \OUTPUT_IMAGE_V_strb_V_1_state_reg[0]\ : out STD_LOGIC;
    \OUTPUT_IMAGE_V_dest_V_1_state_reg[0]\ : out STD_LOGIC;
    \i_1_reg_460_reg[10]\ : out STD_LOGIC;
    \i_1_reg_460_reg[4]\ : out STD_LOGIC;
    \i_1_reg_460_reg[6]\ : out STD_LOGIC;
    s_axi_ctrl_bus_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bus_RDATA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_ctrl_bus_WVALID : in STD_LOGIC;
    s_axi_ctrl_bus_AWVALID : in STD_LOGIC;
    s_axi_ctrl_bus_BREADY : in STD_LOGIC;
    s_axi_ctrl_bus_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_bus_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OUTPUT_IMAGE_TREADY : in STD_LOGIC;
    OUTPUT_IMAGE_V_data_V_1_ack_in : in STD_LOGIC;
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2\ : in STD_LOGIC;
    int_ap_ready_reg_0 : in STD_LOGIC;
    OUTPUT_IMAGE_V_last_V_1_ack_in : in STD_LOGIC;
    OUTPUT_IMAGE_V_id_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_i_3_0 : in STD_LOGIC;
    OUTPUT_IMAGE_V_keep_V_1_ack_in : in STD_LOGIC;
    \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0]\ : in STD_LOGIC;
    OUTPUT_IMAGE_V_dest_V_1_ack_in : in STD_LOGIC;
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0\ : in STD_LOGIC;
    OUTPUT_IMAGE_V_strb_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_reg_1 : in STD_LOGIC;
    OUTPUT_IMAGE_V_user_V_1_ack_in : in STD_LOGIC;
    \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1\ : in STD_LOGIC;
    int_ap_ready_reg_2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_ctrl_bus_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_RREADY : in STD_LOGIC;
    s_axi_ctrl_bus_ARVALID : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    s_axi_ctrl_bus_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_ctrl_bus_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_ctrl_bus_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_3\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_3\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^output_image_tready_0\ : STD_LOGIC;
  signal \^output_image_v_dest_v_1_state_reg[0]\ : STD_LOGIC;
  signal \^output_image_v_keep_v_1_state_reg[0]\ : STD_LOGIC;
  signal \^output_image_v_strb_v_1_state_reg[0]\ : STD_LOGIC;
  signal ap_done : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^i_1_reg_460_reg[10]\ : STD_LOGIC;
  signal \^i_1_reg_460_reg[4]\ : STD_LOGIC;
  signal \^i_1_reg_460_reg[6]\ : STD_LOGIC;
  signal int_ap_done_i_1_n_3 : STD_LOGIC;
  signal int_ap_done_i_2_n_3 : STD_LOGIC;
  signal int_ap_ready_i_5_n_3 : STD_LOGIC;
  signal int_ap_ready_i_6_n_3 : STD_LOGIC;
  signal int_ap_ready_i_7_n_3 : STD_LOGIC;
  signal int_ap_ready_i_8_n_3 : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_3 : STD_LOGIC;
  signal int_auto_restart_i_1_n_3 : STD_LOGIC;
  signal int_gie_i_1_n_3 : STD_LOGIC;
  signal int_gie_reg_n_3 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_3\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_3\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_3\ : STD_LOGIC;
  signal \int_ier_reg_n_3_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_3\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_3\ : STD_LOGIC;
  signal \int_isr_reg_n_3_[0]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_3\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_3\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_3_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_3_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_3_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_3_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_0_reg_333[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of int_ap_done_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_ap_ready_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_ier[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair1";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  OUTPUT_IMAGE_TREADY_0 <= \^output_image_tready_0\;
  \OUTPUT_IMAGE_V_dest_V_1_state_reg[0]\ <= \^output_image_v_dest_v_1_state_reg[0]\;
  \OUTPUT_IMAGE_V_keep_V_1_state_reg[0]\ <= \^output_image_v_keep_v_1_state_reg[0]\;
  \OUTPUT_IMAGE_V_strb_V_1_state_reg[0]\ <= \^output_image_v_strb_v_1_state_reg[0]\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  \i_1_reg_460_reg[10]\ <= \^i_1_reg_460_reg[10]\;
  \i_1_reg_460_reg[4]\ <= \^i_1_reg_460_reg[4]\;
  \i_1_reg_460_reg[6]\ <= \^i_1_reg_460_reg[6]\;
  s_axi_ctrl_bus_BVALID <= \^s_axi_ctrl_bus_bvalid\;
  s_axi_ctrl_bus_RVALID <= \^s_axi_ctrl_bus_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FDD"
    )
        port map (
      I0 => \^s_axi_ctrl_bus_rvalid\,
      I1 => s_axi_ctrl_bus_RREADY,
      I2 => s_axi_ctrl_bus_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[1]_i_1_n_3\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_ctrl_bus_RREADY,
      I1 => \^s_axi_ctrl_bus_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_ctrl_bus_ARVALID,
      O => \FSM_onehot_rstate[2]_i_1_n_3\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_3\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_3\,
      Q => \^s_axi_ctrl_bus_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF353035"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_ctrl_bus_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_ctrl_bus_bvalid\,
      I4 => s_axi_ctrl_bus_BREADY,
      O => \FSM_onehot_wstate[1]_i_1_n_3\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_ctrl_bus_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_ctrl_bus_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_3\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_ctrl_bus_WVALID,
      I2 => s_axi_ctrl_bus_BREADY,
      I3 => \^s_axi_ctrl_bus_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_3\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_3\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_3\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_3\,
      Q => \^s_axi_ctrl_bus_bvalid\,
      R => \^ap_rst_n_inv\
    );
\INPUT_IMAGE_V_dest_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0\,
      I1 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2\,
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I4 => OUTPUT_IMAGE_V_user_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1\,
      O => \^output_image_v_dest_v_1_state_reg[0]\
    );
\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0]\,
      I1 => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      O => \^output_image_v_keep_v_1_state_reg[0]\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_done,
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => E(0),
      O => D(1)
    );
\counter_0_reg_333[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => E(0),
      O => SR(0)
    );
int_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => int_ap_done_i_2_n_3,
      I1 => s_axi_ctrl_bus_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => ap_done,
      I4 => data0(1),
      O => int_ap_done_i_1_n_3
    );
int_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(2),
      I1 => s_axi_ctrl_bus_ARADDR(3),
      I2 => s_axi_ctrl_bus_ARADDR(1),
      I3 => s_axi_ctrl_bus_ARADDR(0),
      O => int_ap_done_i_2_n_3
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_3,
      Q => data0(1),
      R => \^ap_rst_n_inv\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => data0(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Q(1),
      I1 => \^output_image_v_strb_v_1_state_reg[0]\,
      I2 => \^output_image_tready_0\,
      I3 => \^i_1_reg_460_reg[10]\,
      O => ap_done
    );
int_ap_ready_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => int_ap_ready_reg_2(6),
      I1 => int_ap_ready_reg_2(5),
      I2 => int_ap_ready_reg_2(8),
      I3 => int_ap_ready_reg_2(7),
      O => \^i_1_reg_460_reg[6]\
    );
int_ap_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \^output_image_v_dest_v_1_state_reg[0]\,
      I1 => int_ap_ready_reg_1,
      I2 => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      I3 => int_ap_ready_reg_0,
      I4 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      O => \^output_image_v_strb_v_1_state_reg[0]\
    );
int_ap_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFEE"
    )
        port map (
      I0 => \^output_image_v_keep_v_1_state_reg[0]\,
      I1 => int_ap_ready_i_5_n_3,
      I2 => OUTPUT_IMAGE_TREADY,
      I3 => int_ap_ready_i_6_n_3,
      I4 => int_ap_ready_i_7_n_3,
      I5 => int_ap_ready_i_8_n_3,
      O => \^output_image_tready_0\
    );
int_ap_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => int_ap_ready_reg_2(10),
      I1 => int_ap_ready_reg_2(9),
      I2 => int_ap_ready_reg_2(0),
      I3 => int_ap_ready_reg_2(1),
      I4 => \^i_1_reg_460_reg[4]\,
      I5 => \^i_1_reg_460_reg[6]\,
      O => \^i_1_reg_460_reg[10]\
    );
int_ap_ready_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_ap_ready_i_3_0,
      I1 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      O => int_ap_ready_i_5_n_3
    );
int_ap_ready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0]\,
      I2 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0\,
      O => int_ap_ready_i_6_n_3
    );
int_ap_ready_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      I1 => int_ap_ready_reg_1,
      I2 => OUTPUT_IMAGE_V_user_V_1_ack_in,
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1\,
      O => int_ap_ready_i_7_n_3
    );
int_ap_ready_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2\,
      I2 => int_ap_ready_reg_0,
      I3 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      I4 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      I5 => int_ap_ready_i_3_0,
      O => int_ap_ready_i_8_n_3
    );
int_ap_ready_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => int_ap_ready_reg_2(4),
      I1 => int_ap_ready_reg_2(3),
      I2 => int_ap_ready_reg_2(2),
      I3 => int_ap_ready_reg_2(1),
      O => \^i_1_reg_460_reg[4]\
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_done,
      Q => data0(3),
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => data0(7),
      I1 => ap_done,
      I2 => int_ap_start3_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_3
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(0),
      I1 => \int_ier[1]_i_2_n_3\,
      I2 => \waddr_reg_n_3_[2]\,
      I3 => \waddr_reg_n_3_[3]\,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_3,
      Q => ap_start,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(2),
      I1 => \waddr_reg_n_3_[3]\,
      I2 => \waddr_reg_n_3_[2]\,
      I3 => \int_ier[1]_i_2_n_3\,
      I4 => data0(7),
      O => int_auto_restart_i_1_n_3
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_3,
      Q => data0(7),
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(0),
      I1 => \waddr_reg_n_3_[3]\,
      I2 => \waddr_reg_n_3_[2]\,
      I3 => \int_ier[1]_i_2_n_3\,
      I4 => int_gie_reg_n_3,
      O => int_gie_i_1_n_3
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_3,
      Q => int_gie_reg_n_3,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(0),
      I1 => \waddr_reg_n_3_[2]\,
      I2 => \waddr_reg_n_3_[3]\,
      I3 => \int_ier[1]_i_2_n_3\,
      I4 => \int_ier_reg_n_3_[0]\,
      O => \int_ier[0]_i_1_n_3\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(1),
      I1 => \waddr_reg_n_3_[2]\,
      I2 => \waddr_reg_n_3_[3]\,
      I3 => \int_ier[1]_i_2_n_3\,
      I4 => \p_0_in__0\,
      O => \int_ier[1]_i_1_n_3\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_ctrl_bus_WSTRB(0),
      I1 => s_axi_ctrl_bus_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_3_[0]\,
      I4 => \waddr_reg_n_3_[1]\,
      O => \int_ier[1]_i_2_n_3\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_3\,
      Q => \int_ier_reg_n_3_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_3\,
      Q => \p_0_in__0\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(0),
      I1 => int_isr6_out,
      I2 => ap_done,
      I3 => \int_ier_reg_n_3_[0]\,
      I4 => \int_isr_reg_n_3_[0]\,
      O => \int_isr[0]_i_1_n_3\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_3_[3]\,
      I1 => \waddr_reg_n_3_[2]\,
      I2 => \int_ier[1]_i_2_n_3\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(1),
      I1 => int_isr6_out,
      I2 => ap_done,
      I3 => \p_0_in__0\,
      I4 => p_1_in,
      O => \int_isr[1]_i_1_n_3\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_3\,
      Q => \int_isr_reg_n_3_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_3\,
      Q => p_1_in,
      R => \^ap_rst_n_inv\
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_3_[0]\,
      I1 => p_1_in,
      I2 => int_gie_reg_n_3,
      O => interrupt
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rdata[0]_i_2_n_3\,
      I1 => s_axi_ctrl_bus_ARADDR(1),
      I2 => s_axi_ctrl_bus_ARADDR(0),
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \int_ier_reg_n_3_[0]\,
      I1 => \int_isr_reg_n_3_[0]\,
      I2 => ap_start,
      I3 => s_axi_ctrl_bus_ARADDR(2),
      I4 => s_axi_ctrl_bus_ARADDR(3),
      I5 => int_gie_reg_n_3,
      O => \rdata[0]_i_2_n_3\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F838C80"
    )
        port map (
      I0 => p_1_in,
      I1 => s_axi_ctrl_bus_ARADDR(3),
      I2 => s_axi_ctrl_bus_ARADDR(2),
      I3 => \p_0_in__0\,
      I4 => data0(1),
      I5 => \rdata[1]_i_2_n_3\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(0),
      I1 => s_axi_ctrl_bus_ARADDR(1),
      O => \rdata[1]_i_2_n_3\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => data0(2),
      I1 => s_axi_ctrl_bus_ARADDR(0),
      I2 => s_axi_ctrl_bus_ARADDR(1),
      I3 => s_axi_ctrl_bus_ARADDR(3),
      I4 => s_axi_ctrl_bus_ARADDR(2),
      O => rdata(2)
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => data0(3),
      I1 => s_axi_ctrl_bus_ARADDR(0),
      I2 => s_axi_ctrl_bus_ARADDR(1),
      I3 => s_axi_ctrl_bus_ARADDR(3),
      I4 => s_axi_ctrl_bus_ARADDR(2),
      O => rdata(3)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => data0(7),
      I1 => s_axi_ctrl_bus_ARADDR(0),
      I2 => s_axi_ctrl_bus_ARADDR(1),
      I3 => s_axi_ctrl_bus_ARADDR(3),
      I4 => s_axi_ctrl_bus_ARADDR(2),
      O => rdata(7)
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_ctrl_bus_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_ctrl_bus_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_ctrl_bus_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_ctrl_bus_RDATA(3),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_ctrl_bus_RDATA(4),
      R => '0'
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_ctrl_bus_AWVALID,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(0),
      Q => \waddr_reg_n_3_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(1),
      Q => \waddr_reg_n_3_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(2),
      Q => \waddr_reg_n_3_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(3),
      Q => \waddr_reg_n_3_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : out STD_LOGIC_VECTOR ( 0 to 0 );
    OPMODE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \colOffset_reg_1664_reg[0]\ : out STD_LOGIC;
    \colOffset_reg_1664_reg[1]\ : out STD_LOGIC;
    \colOffset_reg_1664_reg[1]_0\ : out STD_LOGIC;
    p_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_NS_fsm18_out : in STD_LOGIC;
    colOffset_reg_1664 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_1 : in STD_LOGIC;
    p_2 : in STD_LOGIC;
    p_3 : in STD_LOGIC;
    p_4 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0 is
  signal \^b\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^opmode\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^coloffset_reg_1664_reg[0]\ : STD_LOGIC;
  signal \^coloffset_reg_1664_reg[1]\ : STD_LOGIC;
  signal \^coloffset_reg_1664_reg[1]_0\ : STD_LOGIC;
  signal \g0_b1__0_n_3\ : STD_LOGIC;
  signal \g0_b2__0_n_3\ : STD_LOGIC;
  signal NLW_p_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_p_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  B(0) <= \^b\(0);
  D(31 downto 0) <= \^d\(31 downto 0);
  OPMODE(0) <= \^opmode\(0);
  \colOffset_reg_1664_reg[0]\ <= \^coloffset_reg_1664_reg[0]\;
  \colOffset_reg_1664_reg[1]\ <= \^coloffset_reg_1664_reg[1]\;
  \colOffset_reg_1664_reg[1]_0\ <= \^coloffset_reg_1664_reg[1]_0\;
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00066066"
    )
        port map (
      I0 => colOffset_reg_1664(0),
      I1 => p_1,
      I2 => \^coloffset_reg_1664_reg[1]_0\,
      I3 => \^coloffset_reg_1664_reg[1]\,
      I4 => \^coloffset_reg_1664_reg[0]\,
      O => \^b\(0)
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0006F009"
    )
        port map (
      I0 => colOffset_reg_1664(0),
      I1 => p_1,
      I2 => \^coloffset_reg_1664_reg[1]_0\,
      I3 => \^coloffset_reg_1664_reg[1]\,
      I4 => \^coloffset_reg_1664_reg[0]\,
      O => \g0_b1__0_n_3\
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0006F000"
    )
        port map (
      I0 => colOffset_reg_1664(0),
      I1 => p_1,
      I2 => \^coloffset_reg_1664_reg[1]_0\,
      I3 => \^coloffset_reg_1664_reg[1]\,
      I4 => \^coloffset_reg_1664_reg[0]\,
      O => \g0_b2__0_n_3\
    );
g0_b2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => colOffset_reg_1664(1),
      I1 => p_1,
      I2 => colOffset_reg_1664(0),
      I3 => p_2,
      O => \^coloffset_reg_1664_reg[1]_0\
    );
g0_b2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F05A87E10FA5781E"
    )
        port map (
      I0 => colOffset_reg_1664(1),
      I1 => colOffset_reg_1664(0),
      I2 => p_3,
      I3 => p_2,
      I4 => p_1,
      I5 => colOffset_reg_1664(2),
      O => \^coloffset_reg_1664_reg[1]\
    );
g0_b2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8C0010F7FFCE0"
    )
        port map (
      I0 => colOffset_reg_1664(0),
      I1 => colOffset_reg_1664(1),
      I2 => colOffset_reg_1664(2),
      I3 => p_1,
      I4 => p_2,
      I5 => p_3,
      O => \^coloffset_reg_1664_reg[0]\
    );
p: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => A(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \g0_b2__0_n_3\,
      B(16) => \g0_b2__0_n_3\,
      B(15) => \g0_b2__0_n_3\,
      B(14) => \g0_b2__0_n_3\,
      B(13) => \g0_b2__0_n_3\,
      B(12) => \g0_b2__0_n_3\,
      B(11) => \g0_b2__0_n_3\,
      B(10) => \g0_b2__0_n_3\,
      B(9) => \g0_b2__0_n_3\,
      B(8) => \g0_b2__0_n_3\,
      B(7) => \g0_b2__0_n_3\,
      B(6) => \g0_b2__0_n_3\,
      B(5) => \g0_b2__0_n_3\,
      B(4) => \g0_b2__0_n_3\,
      B(3) => \g0_b2__0_n_3\,
      B(2) => \g0_b2__0_n_3\,
      B(1) => \g0_b1__0_n_3\,
      B(0) => \^b\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 32) => B"0000000000000000",
      C(31 downto 0) => \^d\(31 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => p_0(1),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => E(0),
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => p_0(0),
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => ap_NS_fsm18_out,
      OPMODE(3) => '0',
      OPMODE(2) => \^opmode\(0),
      OPMODE(1) => '0',
      OPMODE(0) => \^opmode\(0),
      OVERFLOW => NLW_p_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_p_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \^d\(31 downto 0),
      PATTERNBDETECT => NLW_p_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => SR(0),
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_UNDERFLOW_UNCONNECTED
    );
p_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"555D"
    )
        port map (
      I0 => Q(0),
      I1 => p_4(1),
      I2 => p_4(0),
      I3 => p_4(2),
      O => \^opmode\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ap_CS_fsm_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_NS_fsm17_out : out STD_LOGIC;
    ap_NS_fsm112_out : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_NS_fsm18_out : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    OPMODE : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_1 : in STD_LOGIC;
    p_2 : in STD_LOGIC;
    p_3 : in STD_LOGIC;
    p_4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    colOffset_reg_1664 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_13 : in STD_LOGIC;
    p_14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2 : entity is "sobel_filter_mac_eOg_DSP48_0";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2 is
  signal \^a\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ap_cs_fsm_reg[6]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ap_ns_fsm112_out\ : STD_LOGIC;
  signal \^ap_ns_fsm17_out\ : STD_LOGIC;
  signal \^ap_ns_fsm18_out\ : STD_LOGIC;
  signal g0_b1_n_3 : STD_LOGIC;
  signal g0_b2_n_3 : STD_LOGIC;
  signal p_i_11_n_3 : STD_LOGIC;
  signal p_i_12_n_3 : STD_LOGIC;
  signal p_i_13_n_3 : STD_LOGIC;
  signal p_i_14_n_3 : STD_LOGIC;
  signal p_i_15_n_3 : STD_LOGIC;
  signal p_i_16_n_3 : STD_LOGIC;
  signal p_i_17_n_3 : STD_LOGIC;
  signal p_i_18_n_3 : STD_LOGIC;
  signal p_i_19_n_3 : STD_LOGIC;
  signal p_i_20_n_3 : STD_LOGIC;
  signal p_i_21_n_3 : STD_LOGIC;
  signal p_i_22_n_3 : STD_LOGIC;
  signal p_i_23_n_3 : STD_LOGIC;
  signal p_i_24_n_3 : STD_LOGIC;
  signal p_i_25_n_3 : STD_LOGIC;
  signal p_i_26_n_3 : STD_LOGIC;
  signal p_i_27_n_3 : STD_LOGIC;
  signal p_i_28_n_3 : STD_LOGIC;
  signal p_i_29_n_3 : STD_LOGIC;
  signal NLW_p_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_p_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of p_i_13 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of p_i_28 : label is "soft_lutpair8";
begin
  A(7 downto 0) <= \^a\(7 downto 0);
  D(31 downto 0) <= \^d\(31 downto 0);
  \ap_CS_fsm_reg[6]\(1 downto 0) <= \^ap_cs_fsm_reg[6]\(1 downto 0);
  ap_NS_fsm112_out <= \^ap_ns_fsm112_out\;
  ap_NS_fsm17_out <= \^ap_ns_fsm17_out\;
  ap_NS_fsm18_out <= \^ap_ns_fsm18_out\;
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA2"
    )
        port map (
      I0 => Q(1),
      I1 => p_0(1),
      I2 => p_0(0),
      I3 => p_0(2),
      I4 => Q(3),
      O => \^ap_cs_fsm_reg[6]\(0)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => Q(2),
      I1 => p_1,
      I2 => p_2,
      I3 => p_3,
      O => \^ap_cs_fsm_reg[6]\(1)
    );
\colOffset_0_reg_390[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => CO(0),
      I1 => p_13,
      I2 => p_14(0),
      I3 => p_15(0),
      I4 => Q(0),
      O => \^ap_ns_fsm112_out\
    );
\colOffset_0_reg_390[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Q(2),
      I1 => p_1,
      I2 => p_2,
      I3 => p_3,
      O => \^ap_ns_fsm17_out\
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006996"
    )
        port map (
      I0 => colOffset_reg_1664(0),
      I1 => p_1,
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      O => g0_b1_n_3
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006096"
    )
        port map (
      I0 => colOffset_reg_1664(0),
      I1 => p_1,
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      O => g0_b2_n_3
    );
p: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => \^a\(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => g0_b2_n_3,
      B(16) => g0_b2_n_3,
      B(15) => g0_b2_n_3,
      B(14) => g0_b2_n_3,
      B(13) => g0_b2_n_3,
      B(12) => g0_b2_n_3,
      B(11) => g0_b2_n_3,
      B(10) => g0_b2_n_3,
      B(9) => g0_b2_n_3,
      B(8) => g0_b2_n_3,
      B(7) => g0_b2_n_3,
      B(6) => g0_b2_n_3,
      B(5) => g0_b2_n_3,
      B(4) => g0_b2_n_3,
      B(3) => g0_b2_n_3,
      B(2) => g0_b2_n_3,
      B(1) => g0_b1_n_3,
      B(0) => B(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 32) => B"0000000000000000",
      C(31 downto 0) => \^d\(31 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^ap_cs_fsm_reg[6]\(1),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(2),
      CEC => \^ap_ns_fsm17_out\,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^ap_cs_fsm_reg[6]\(0),
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => \^ap_ns_fsm18_out\,
      OPMODE(3) => '0',
      OPMODE(2) => OPMODE(0),
      OPMODE(1) => '0',
      OPMODE(0) => OPMODE(0),
      OVERFLOW => NLW_p_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_p_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \^d\(31 downto 0),
      PATTERNBDETECT => NLW_p_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => \^ap_ns_fsm112_out\,
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_UNDERFLOW_UNCONNECTED
    );
p_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_11_n_3,
      I1 => p_i_12_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(7),
      O => \^a\(7)
    );
p_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(7),
      I1 => p_10(7),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(7),
      I5 => p_12(7),
      O => p_i_11_n_3
    );
p_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(7),
      I1 => p_6(7),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(7),
      I5 => p_8(7),
      O => p_i_12_n_3
    );
p_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDA4"
    )
        port map (
      I0 => p_2,
      I1 => colOffset_reg_1664(0),
      I2 => p_1,
      I3 => colOffset_reg_1664(1),
      O => p_i_13_n_3
    );
p_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(6),
      I1 => p_10(6),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(6),
      I5 => p_12(6),
      O => p_i_14_n_3
    );
p_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(6),
      I1 => p_6(6),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(6),
      I5 => p_8(6),
      O => p_i_15_n_3
    );
p_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(5),
      I1 => p_10(5),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(5),
      I5 => p_12(5),
      O => p_i_16_n_3
    );
p_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(5),
      I1 => p_6(5),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(5),
      I5 => p_8(5),
      O => p_i_17_n_3
    );
p_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(4),
      I1 => p_10(4),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(4),
      I5 => p_12(4),
      O => p_i_18_n_3
    );
p_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(4),
      I1 => p_6(4),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(4),
      I5 => p_8(4),
      O => p_i_19_n_3
    );
p_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_14_n_3,
      I1 => p_i_15_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(6),
      O => \^a\(6)
    );
p_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(3),
      I1 => p_10(3),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(3),
      I5 => p_12(3),
      O => p_i_20_n_3
    );
p_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(3),
      I1 => p_6(3),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(3),
      I5 => p_8(3),
      O => p_i_21_n_3
    );
p_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(2),
      I1 => p_10(2),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(2),
      I5 => p_12(2),
      O => p_i_22_n_3
    );
p_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(2),
      I1 => p_6(2),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(2),
      I5 => p_8(2),
      O => p_i_23_n_3
    );
p_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(1),
      I1 => p_10(1),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(1),
      I5 => p_12(1),
      O => p_i_24_n_3
    );
p_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(1),
      I1 => p_6(1),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(1),
      I5 => p_8(1),
      O => p_i_25_n_3
    );
p_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_9(0),
      I1 => p_10(0),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_11(0),
      I5 => p_12(0),
      O => p_i_26_n_3
    );
p_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => p_5(0),
      I1 => p_6(0),
      I2 => p_i_28_n_3,
      I3 => p_i_29_n_3,
      I4 => p_7(0),
      I5 => p_8(0),
      O => p_i_27_n_3
    );
p_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => p_2,
      I1 => colOffset_reg_1664(0),
      I2 => p_1,
      I3 => colOffset_reg_1664(1),
      O => p_i_28_n_3
    );
p_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1,
      I1 => colOffset_reg_1664(0),
      O => p_i_29_n_3
    );
p_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_16_n_3,
      I1 => p_i_17_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(5),
      O => \^a\(5)
    );
p_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_18_n_3,
      I1 => p_i_19_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(4),
      O => \^a\(4)
    );
p_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_20_n_3,
      I1 => p_i_21_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(3),
      O => \^a\(3)
    );
p_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_22_n_3,
      I1 => p_i_23_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(2),
      O => \^a\(2)
    );
p_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_24_n_3,
      I1 => p_i_25_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(1),
      O => \^a\(1)
    );
p_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFAFFACCA0A00AC"
    )
        port map (
      I0 => p_i_26_n_3,
      I1 => p_i_27_n_3,
      I2 => p_i_13_n_3,
      I3 => p_2,
      I4 => p_1,
      I5 => p_4(0),
      O => \^a\(0)
    );
p_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => p_0(2),
      I1 => p_0(0),
      I2 => p_0(1),
      I3 => Q(1),
      O => \^ap_ns_fsm18_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelbuffer_val_1_ce0 : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    INPUT_IMAGE_V_data_V_0_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_V_data_V_1_ack_in : in STD_LOGIC;
    ram_reg_1 : in STD_LOGIC;
    and_ln41_1_reg_1551 : in STD_LOGIC;
    \select_ln41_2_reg_1617_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select_ln41_2_reg_1617_reg[0]\ : in STD_LOGIC;
    \select_ln41_2_reg_1617_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INPUT_IMAGE_V_data_V_0_sel : in STD_LOGIC;
    ram_reg_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_4 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_5 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^doado\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^input_image_v_data_v_0_data_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^pixelbuffer_val_1_ce0\ : STD_LOGIC;
  signal NLW_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 7;
begin
  ADDRARDADDR(9 downto 0) <= \^addrardaddr\(9 downto 0);
  DOADO(7 downto 0) <= \^doado\(7 downto 0);
  INPUT_IMAGE_V_data_V_0_data_out(7 downto 0) <= \^input_image_v_data_v_0_data_out\(7 downto 0);
  WEA(0) <= \^wea\(0);
  pixelbuffer_val_1_ce0 <= \^pixelbuffer_val_1_ce0\;
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => \^addrardaddr\(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => \^input_image_v_data_v_0_data_out\(7 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_ram_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => \^doado\(7 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^pixelbuffer_val_1_ce0\,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(3 downto 0) => B"0000"
    );
ram_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAEEEAAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => CO(0),
      I3 => ram_reg_0(0),
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => ram_reg_1,
      O => \^pixelbuffer_val_1_ce0\
    );
ram_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(1),
      I1 => Q(1),
      I2 => ram_reg_5(1),
      O => \^addrardaddr\(1)
    );
ram_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(0),
      I1 => Q(1),
      I2 => ram_reg_5(0),
      O => \^addrardaddr\(0)
    );
ram_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0000"
    )
        port map (
      I0 => Q(1),
      I1 => CO(0),
      I2 => ram_reg_0(0),
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I4 => ram_reg_1,
      O => \^wea\(0)
    );
\ram_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(7),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(7),
      O => \^input_image_v_data_v_0_data_out\(7)
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(6),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(6),
      O => \^input_image_v_data_v_0_data_out\(6)
    );
\ram_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(9),
      I1 => Q(1),
      I2 => ram_reg_5(9),
      O => \^addrardaddr\(9)
    );
ram_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(5),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(5),
      O => \^input_image_v_data_v_0_data_out\(5)
    );
\ram_reg_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(8),
      I1 => Q(1),
      I2 => ram_reg_5(8),
      O => \^addrardaddr\(8)
    );
ram_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(4),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(4),
      O => \^input_image_v_data_v_0_data_out\(4)
    );
\ram_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(7),
      I1 => Q(1),
      I2 => ram_reg_5(7),
      O => \^addrardaddr\(7)
    );
ram_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(3),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(3),
      O => \^input_image_v_data_v_0_data_out\(3)
    );
\ram_reg_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(6),
      I1 => Q(1),
      I2 => ram_reg_5(6),
      O => \^addrardaddr\(6)
    );
ram_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(2),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(2),
      O => \^input_image_v_data_v_0_data_out\(2)
    );
\ram_reg_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(5),
      I1 => Q(1),
      I2 => ram_reg_5(5),
      O => \^addrardaddr\(5)
    );
ram_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(1),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(1),
      O => \^input_image_v_data_v_0_data_out\(1)
    );
\ram_reg_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(4),
      I1 => Q(1),
      I2 => ram_reg_5(4),
      O => \^addrardaddr\(4)
    );
ram_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_2(0),
      I1 => INPUT_IMAGE_V_data_V_0_sel,
      I2 => ram_reg_3(0),
      O => \^input_image_v_data_v_0_data_out\(0)
    );
\ram_reg_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(3),
      I1 => Q(1),
      I2 => ram_reg_5(3),
      O => \^addrardaddr\(3)
    );
ram_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ram_reg_4(2),
      I1 => Q(1),
      I2 => ram_reg_5(2),
      O => \^addrardaddr\(2)
    );
\select_ln41_2_reg_1617[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(0),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(0),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(0),
      O => D(0)
    );
\select_ln41_2_reg_1617[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(1),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(1),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(1),
      O => D(1)
    );
\select_ln41_2_reg_1617[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(2),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(2),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(2),
      O => D(2)
    );
\select_ln41_2_reg_1617[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(3),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(3),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(3),
      O => D(3)
    );
\select_ln41_2_reg_1617[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(4),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(4),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(4),
      O => D(4)
    );
\select_ln41_2_reg_1617[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(5),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(5),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(5),
      O => D(5)
    );
\select_ln41_2_reg_1617[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(6),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(6),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(6),
      O => D(6)
    );
\select_ln41_2_reg_1617[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => \select_ln41_2_reg_1617_reg[7]\(7),
      I2 => \select_ln41_2_reg_1617_reg[0]\,
      I3 => \^input_image_v_data_v_0_data_out\(7),
      I4 => \select_ln41_2_reg_1617_reg[0]_0\(0),
      I5 => \^doado\(7),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    pixelbuffer_val_1_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    and_ln41_1_reg_1551 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select_ln41_5_reg_1635_reg[0]\ : in STD_LOGIC;
    INPUT_IMAGE_V_data_V_0_data_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3 : entity is "sobel_filter_pixebkb_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3 is
  signal pixelbuffer_val_1_q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 7;
begin
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => DOADO(7 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_ram_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => pixelbuffer_val_1_q0(7 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => pixelbuffer_val_1_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\select_ln41_5_reg_1635[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(0),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(0),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(0),
      O => D(0)
    );
\select_ln41_5_reg_1635[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(1),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(1),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(1),
      O => D(1)
    );
\select_ln41_5_reg_1635[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(2),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(2),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(2),
      O => D(2)
    );
\select_ln41_5_reg_1635[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(3),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(3),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(3),
      O => D(3)
    );
\select_ln41_5_reg_1635[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(4),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(4),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(4),
      O => D(4)
    );
\select_ln41_5_reg_1635[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(5),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(5),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(5),
      O => D(5)
    );
\select_ln41_5_reg_1635[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(6),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(6),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(6),
      O => D(6)
    );
\select_ln41_5_reg_1635[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => Q(7),
      I2 => \select_ln41_5_reg_1635_reg[0]\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(7),
      I4 => CO(0),
      I5 => pixelbuffer_val_1_q0(7),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ap_CS_fsm_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_NS_fsm17_out : out STD_LOGIC;
    ap_NS_fsm112_out : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_NS_fsm18_out : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    OPMODE : in STD_LOGIC_VECTOR ( 0 to 0 );
    p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0 : in STD_LOGIC;
    p_1 : in STD_LOGIC;
    p_2 : in STD_LOGIC;
    p_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    colOffset_reg_1664 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_12 : in STD_LOGIC;
    p_13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg is
begin
sobel_filter_mac_eOg_DSP48_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0_2
     port map (
      A(7 downto 0) => A(7 downto 0),
      B(0) => B(0),
      CO(0) => CO(0),
      D(31 downto 0) => D(31 downto 0),
      OPMODE(0) => OPMODE(0),
      Q(3 downto 0) => Q(3 downto 0),
      \ap_CS_fsm_reg[6]\(1 downto 0) => \ap_CS_fsm_reg[6]\(1 downto 0),
      ap_NS_fsm112_out => ap_NS_fsm112_out,
      ap_NS_fsm17_out => ap_NS_fsm17_out,
      ap_NS_fsm18_out => ap_NS_fsm18_out,
      ap_clk => ap_clk,
      colOffset_reg_1664(1 downto 0) => colOffset_reg_1664(1 downto 0),
      p_0(2 downto 0) => p(2 downto 0),
      p_1 => p_0,
      p_10(7 downto 0) => p_9(7 downto 0),
      p_11(7 downto 0) => p_10(7 downto 0),
      p_12(7 downto 0) => p_11(7 downto 0),
      p_13 => p_12,
      p_14(0) => p_13(0),
      p_15(0) => p_14(0),
      p_2 => p_1,
      p_3 => p_2,
      p_4(7 downto 0) => p_3(7 downto 0),
      p_5(7 downto 0) => p_4(7 downto 0),
      p_6(7 downto 0) => p_5(7 downto 0),
      p_7(7 downto 0) => p_6(7 downto 0),
      p_8(7 downto 0) => p_7(7 downto 0),
      p_9(7 downto 0) => p_8(7 downto 0),
      sel(2 downto 0) => sel(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : out STD_LOGIC_VECTOR ( 0 to 0 );
    OPMODE : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_NS_fsm18_out : in STD_LOGIC;
    colOffset_reg_1664 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0 : in STD_LOGIC;
    p_1 : in STD_LOGIC;
    p_2 : in STD_LOGIC;
    p_3 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1 : entity is "sobel_filter_mac_eOg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1 is
begin
sobel_filter_mac_eOg_DSP48_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_DSP48_0
     port map (
      A(7 downto 0) => A(7 downto 0),
      B(0) => B(0),
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      OPMODE(0) => OPMODE(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      ap_NS_fsm18_out => ap_NS_fsm18_out,
      ap_clk => ap_clk,
      colOffset_reg_1664(2 downto 0) => colOffset_reg_1664(2 downto 0),
      \colOffset_reg_1664_reg[0]\ => sel(2),
      \colOffset_reg_1664_reg[1]\ => sel(1),
      \colOffset_reg_1664_reg[1]_0\ => sel(0),
      p_0(1 downto 0) => p(1 downto 0),
      p_1 => p_0,
      p_2 => p_1,
      p_3 => p_2,
      p_4(2 downto 0) => p_3(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    pixelbuffer_val_1_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    and_ln41_1_reg_1551 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select_ln41_5_reg_1635_reg[0]\ : in STD_LOGIC;
    INPUT_IMAGE_V_data_V_0_data_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb is
begin
sobel_filter_pixebkb_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram_3
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      CO(0) => CO(0),
      D(7 downto 0) => D(7 downto 0),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      INPUT_IMAGE_V_data_V_0_data_out(7 downto 0) => INPUT_IMAGE_V_data_V_0_data_out(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      WEA(0) => WEA(0),
      and_ln41_1_reg_1551 => and_ln41_1_reg_1551,
      ap_clk => ap_clk,
      pixelbuffer_val_1_ce0 => pixelbuffer_val_1_ce0,
      \select_ln41_5_reg_1635_reg[0]\ => \select_ln41_5_reg_1635_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelbuffer_val_1_ce0 : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    INPUT_IMAGE_V_data_V_0_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_V_data_V_1_ack_in : in STD_LOGIC;
    ram_reg_0 : in STD_LOGIC;
    and_ln41_1_reg_1551 : in STD_LOGIC;
    \select_ln41_2_reg_1617_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select_ln41_2_reg_1617_reg[0]\ : in STD_LOGIC;
    \select_ln41_2_reg_1617_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INPUT_IMAGE_V_data_V_0_sel : in STD_LOGIC;
    ram_reg_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_4 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0 : entity is "sobel_filter_pixebkb";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0 is
begin
sobel_filter_pixebkb_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_ram
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      CO(0) => CO(0),
      D(7 downto 0) => D(7 downto 0),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      INPUT_IMAGE_V_data_V_0_data_out(7 downto 0) => INPUT_IMAGE_V_data_V_0_data_out(7 downto 0),
      INPUT_IMAGE_V_data_V_0_sel => INPUT_IMAGE_V_data_V_0_sel,
      OUTPUT_IMAGE_V_data_V_1_ack_in => OUTPUT_IMAGE_V_data_V_1_ack_in,
      Q(1 downto 0) => Q(1 downto 0),
      WEA(0) => WEA(0),
      and_ln41_1_reg_1551 => and_ln41_1_reg_1551,
      ap_clk => ap_clk,
      pixelbuffer_val_1_ce0 => pixelbuffer_val_1_ce0,
      ram_reg_0(0) => ram_reg(0),
      ram_reg_1 => ram_reg_0,
      ram_reg_2(7 downto 0) => ram_reg_1(7 downto 0),
      ram_reg_3(7 downto 0) => ram_reg_2(7 downto 0),
      ram_reg_4(9 downto 0) => ram_reg_3(9 downto 0),
      ram_reg_5(9 downto 0) => ram_reg_4(9 downto 0),
      \select_ln41_2_reg_1617_reg[0]\ => \select_ln41_2_reg_1617_reg[0]\,
      \select_ln41_2_reg_1617_reg[0]_0\(0) => \select_ln41_2_reg_1617_reg[0]_0\(0),
      \select_ln41_2_reg_1617_reg[7]\(7 downto 0) => \select_ln41_2_reg_1617_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    INPUT_IMAGE_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INPUT_IMAGE_TVALID : in STD_LOGIC;
    INPUT_IMAGE_TREADY : out STD_LOGIC;
    INPUT_IMAGE_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_IMAGE_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_IMAGE_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    INPUT_IMAGE_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    INPUT_IMAGE_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    INPUT_IMAGE_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    OUTPUT_IMAGE_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OUTPUT_IMAGE_TVALID : out STD_LOGIC;
    OUTPUT_IMAGE_TREADY : in STD_LOGIC;
    OUTPUT_IMAGE_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OUTPUT_IMAGE_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_IMAGE_TID : out STD_LOGIC_VECTOR ( 4 downto 0 );
    OUTPUT_IMAGE_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctrl_bus_AWVALID : in STD_LOGIC;
    s_axi_ctrl_bus_AWREADY : out STD_LOGIC;
    s_axi_ctrl_bus_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_WVALID : in STD_LOGIC;
    s_axi_ctrl_bus_WREADY : out STD_LOGIC;
    s_axi_ctrl_bus_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_ARVALID : in STD_LOGIC;
    s_axi_ctrl_bus_ARREADY : out STD_LOGIC;
    s_axi_ctrl_bus_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_RVALID : out STD_LOGIC;
    s_axi_ctrl_bus_RREADY : in STD_LOGIC;
    s_axi_ctrl_bus_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bus_BVALID : out STD_LOGIC;
    s_axi_ctrl_bus_BREADY : in STD_LOGIC;
    s_axi_ctrl_bus_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b100000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "12'b000100000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter is
  signal \<const0>\ : STD_LOGIC;
  signal \^input_image_tready\ : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_ack_in : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal INPUT_IMAGE_V_data_V_0_load_A : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_load_B : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal INPUT_IMAGE_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal INPUT_IMAGE_V_data_V_0_sel : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_sel_rd_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_sel_wr : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_sel_wr_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_data_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \INPUT_IMAGE_V_data_V_0_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\ : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_data_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal INPUT_IMAGE_V_dest_V_0_load_A : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_load_B : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_payload_A : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal INPUT_IMAGE_V_dest_V_0_payload_B : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal INPUT_IMAGE_V_dest_V_0_sel : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_sel_rd_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_sel_wr : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_sel_wr_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_dest_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \INPUT_IMAGE_V_dest_V_0_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\ : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_ack_in : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_data_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal INPUT_IMAGE_V_id_V_0_load_A : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_load_B : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_payload_A : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal INPUT_IMAGE_V_id_V_0_payload_B : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal INPUT_IMAGE_V_id_V_0_sel : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_sel_rd_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_sel_wr : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_sel_wr_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_id_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \INPUT_IMAGE_V_id_V_0_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\ : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_ack_in : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_data_out : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_payload_A : STD_LOGIC;
  signal \INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_payload_B : STD_LOGIC;
  signal \INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_sel : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_sel_rd_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_sel_wr : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_sel_wr_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_keep_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \INPUT_IMAGE_V_keep_V_0_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\ : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_ack_in : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_data_out : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_payload_A : STD_LOGIC;
  signal \INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_payload_B : STD_LOGIC;
  signal \INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_sel : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_sel_rd_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_sel_wr : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_sel_wr_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_strb_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \INPUT_IMAGE_V_strb_V_0_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\ : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_ack_in : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_data_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INPUT_IMAGE_V_user_V_0_payload_A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1_n_3\ : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_payload_B : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1_n_3\ : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_sel : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_sel_rd_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_sel_wr : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_sel_wr_i_1_n_3 : STD_LOGIC;
  signal INPUT_IMAGE_V_user_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \INPUT_IMAGE_V_user_V_0_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\ : STD_LOGIC;
  signal \^output_image_tvalid\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_load_A : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_load_B : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_10\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_8\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_9\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_10\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_7\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_8\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_9\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_6\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_4\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_5\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_6\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_data_V_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \OUTPUT_IMAGE_V_data_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_data_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal OUTPUT_IMAGE_V_dest_V_1_load_A : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_load_B : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_payload_A : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal OUTPUT_IMAGE_V_dest_V_1_payload_B : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal OUTPUT_IMAGE_V_dest_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_data_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal OUTPUT_IMAGE_V_id_V_1_load_A : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_load_B : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_payload_A : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal OUTPUT_IMAGE_V_id_V_1_payload_B : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal OUTPUT_IMAGE_V_id_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_id_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_id_V_1_state[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_id_V_1_state[1]_i_3_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_payload_A : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_payload_B : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_payload_A : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_payload_B : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_state[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_payload_A : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_payload_B : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_ack_in : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_payload_A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_payload_B : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1_n_3\ : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_sel : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_sel_wr : STD_LOGIC;
  signal OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_state[1]_i_1_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal add_ln34_1_fu_596_p2 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal add_ln34_1_reg_1564 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \add_ln34_1_reg_1564_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_1_reg_1564_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal add_ln34_fu_507_p2 : STD_LOGIC_VECTOR ( 20 downto 9 );
  signal add_ln34_reg_1500 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \add_ln34_reg_1500[12]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln34_reg_1500_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal and_ln41_1_fu_564_p2 : STD_LOGIC;
  signal and_ln41_1_reg_1551 : STD_LOGIC;
  signal and_ln41_1_reg_15510 : STD_LOGIC;
  signal \and_ln41_1_reg_1551[0]_i_3_n_3\ : STD_LOGIC;
  signal and_ln52_reg_1653 : STD_LOGIC;
  signal \ap_CS_fsm[10]_i_2_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_2_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_10_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_12_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_13_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_14_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_15_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_16_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_17_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_18_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_19_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_20_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_21_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_22_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_23_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_24_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_25_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_26_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_2_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_3_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_6_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_7_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_8_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_9_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_11_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_11_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_11_n_5\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_11_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_4_n_5\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_4_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_5_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_5_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_5_n_5\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[8]_i_5_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_3_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state12 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm112_out : STD_LOGIC;
  signal ap_NS_fsm113_out : STD_LOGIC;
  signal ap_NS_fsm114_out : STD_LOGIC;
  signal ap_NS_fsm115_out : STD_LOGIC;
  signal ap_NS_fsm17_out : STD_LOGIC;
  signal ap_NS_fsm18_out : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \colOffset_0_reg_390_reg_n_3_[0]\ : STD_LOGIC;
  signal \colOffset_0_reg_390_reg_n_3_[1]\ : STD_LOGIC;
  signal \colOffset_0_reg_390_reg_n_3_[2]\ : STD_LOGIC;
  signal colOffset_reg_1664 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \colOffset_reg_1664[0]_i_1_n_3\ : STD_LOGIC;
  signal \colOffset_reg_1664[1]_i_1_n_3\ : STD_LOGIC;
  signal \colOffset_reg_1664[2]_i_1_n_3\ : STD_LOGIC;
  signal col_assign_reg_367 : STD_LOGIC;
  signal col_assign_reg_3670 : STD_LOGIC;
  signal \col_assign_reg_367[10]_i_2_n_3\ : STD_LOGIC;
  signal \col_assign_reg_367_reg_n_3_[0]\ : STD_LOGIC;
  signal counter_0_reg_333 : STD_LOGIC;
  signal \counter_0_reg_333[20]_i_3_n_3\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[0]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[10]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[11]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[12]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[13]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[14]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[15]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[16]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[17]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[18]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[19]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[1]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[20]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[2]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[3]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[4]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[5]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[6]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[7]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[8]\ : STD_LOGIC;
  signal \counter_0_reg_333_reg_n_3_[9]\ : STD_LOGIC;
  signal counter_1_reg_345 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal counter_1_reg_3450 : STD_LOGIC;
  signal \counter_1_reg_345[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[10]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[13]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[14]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[15]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[17]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[18]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[19]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[1]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[2]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[3]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[5]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[6]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_1_reg_345[9]_i_1_n_3\ : STD_LOGIC;
  signal counter_2_reg_379 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \counter_2_reg_379[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[10]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[13]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[14]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[15]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[17]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[18]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[19]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[1]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[2]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[3]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[5]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[6]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_2_reg_379[9]_i_1_n_3\ : STD_LOGIC;
  signal counter_fu_483_p2 : STD_LOGIC_VECTOR ( 20 downto 16 );
  signal counter_reg_1482 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \counter_reg_1482[19]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg_1482_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_1482_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_1482_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_1482_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal i_0_reg_322 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_1_reg_460 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal i_2_fu_477_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_2_reg_1477 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_fu_1341_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal i_reg_1720 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal i_reg_17200 : STD_LOGIC;
  signal \i_reg_1720[10]_i_3_n_3\ : STD_LOGIC;
  signal \icmp_ln274_2_reg_1510[0]_i_1_n_3\ : STD_LOGIC;
  signal \icmp_ln274_2_reg_1510_reg_n_3_[0]\ : STD_LOGIC;
  signal \icmp_ln274_3_reg_1520[0]_i_1_n_3\ : STD_LOGIC;
  signal \icmp_ln274_3_reg_1520_reg_n_3_[0]\ : STD_LOGIC;
  signal icmp_ln41_1_fu_513_p2 : STD_LOGIC;
  signal icmp_ln41_1_reg_1505 : STD_LOGIC;
  signal \icmp_ln41_reg_1487[0]_i_1_n_3\ : STD_LOGIC;
  signal \icmp_ln41_reg_1487_reg_n_3_[0]\ : STD_LOGIC;
  signal icmp_ln52_1_fu_1020_p2 : STD_LOGIC;
  signal icmp_ln52_fu_1014_p2 : STD_LOGIC;
  signal icmp_ln61_fu_1032_p2 : STD_LOGIC;
  signal icmp_ln61_reg_1657 : STD_LOGIC;
  signal \icmp_ln61_reg_1657[0]_i_1_n_3\ : STD_LOGIC;
  signal icmp_ln82_fu_1140_p2 : STD_LOGIC;
  signal j_fu_541_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal j_reg_1536 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \j_reg_1536[10]_i_2_n_3\ : STD_LOGIC;
  signal k_fu_501_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal k_reg_1495 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \k_reg_1495[6]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg_1495[7]_i_2_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_184_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_92_in : STD_LOGIC;
  signal pixelbuffer_val_1_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pixelbuffer_val_1_ce0 : STD_LOGIC;
  signal pixelbuffer_val_2_a_reg_1546 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pixelbuffer_val_2_q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_reg_i_13_n_5 : STD_LOGIC;
  signal ram_reg_i_13_n_6 : STD_LOGIC;
  signal ram_reg_i_14_n_5 : STD_LOGIC;
  signal ram_reg_i_14_n_6 : STD_LOGIC;
  signal ram_reg_i_15_n_3 : STD_LOGIC;
  signal ram_reg_i_15_n_4 : STD_LOGIC;
  signal ram_reg_i_15_n_5 : STD_LOGIC;
  signal ram_reg_i_15_n_6 : STD_LOGIC;
  signal ram_reg_i_16_n_3 : STD_LOGIC;
  signal ram_reg_i_17_n_3 : STD_LOGIC;
  signal ram_reg_i_18_n_3 : STD_LOGIC;
  signal ram_reg_i_19_n_3 : STD_LOGIC;
  signal ram_reg_i_20_n_3 : STD_LOGIC;
  signal ram_reg_i_21_n_3 : STD_LOGIC;
  signal ram_reg_i_21_n_4 : STD_LOGIC;
  signal ram_reg_i_21_n_5 : STD_LOGIC;
  signal ram_reg_i_21_n_6 : STD_LOGIC;
  signal ram_reg_i_22_n_3 : STD_LOGIC;
  signal ram_reg_i_23_n_3 : STD_LOGIC;
  signal ram_reg_i_24_n_3 : STD_LOGIC;
  signal ram_reg_i_25_n_3 : STD_LOGIC;
  signal ram_reg_i_25_n_4 : STD_LOGIC;
  signal ram_reg_i_25_n_5 : STD_LOGIC;
  signal ram_reg_i_25_n_6 : STD_LOGIC;
  signal ram_reg_i_26_n_3 : STD_LOGIC;
  signal ram_reg_i_27_n_3 : STD_LOGIC;
  signal ram_reg_i_28_n_3 : STD_LOGIC;
  signal ram_reg_i_29_n_3 : STD_LOGIC;
  signal ram_reg_i_30_n_3 : STD_LOGIC;
  signal ram_reg_i_31_n_3 : STD_LOGIC;
  signal ram_reg_i_32_n_3 : STD_LOGIC;
  signal ram_reg_i_33_n_3 : STD_LOGIC;
  signal ram_reg_i_33_n_4 : STD_LOGIC;
  signal ram_reg_i_33_n_5 : STD_LOGIC;
  signal ram_reg_i_33_n_6 : STD_LOGIC;
  signal ram_reg_i_34_n_3 : STD_LOGIC;
  signal ram_reg_i_35_n_3 : STD_LOGIC;
  signal ram_reg_i_36_n_3 : STD_LOGIC;
  signal ram_reg_i_37_n_3 : STD_LOGIC;
  signal ram_reg_i_38_n_3 : STD_LOGIC;
  signal ram_reg_i_39_n_3 : STD_LOGIC;
  signal ram_reg_i_40_n_3 : STD_LOGIC;
  signal ram_reg_i_41_n_3 : STD_LOGIC;
  signal ram_reg_i_42_n_3 : STD_LOGIC;
  signal ram_reg_i_43_n_3 : STD_LOGIC;
  signal ram_reg_i_44_n_3 : STD_LOGIC;
  signal ram_reg_i_45_n_3 : STD_LOGIC;
  signal ram_reg_i_46_n_3 : STD_LOGIC;
  signal ram_reg_i_47_n_3 : STD_LOGIC;
  signal ram_reg_i_48_n_3 : STD_LOGIC;
  signal ram_reg_i_49_n_3 : STD_LOGIC;
  signal ram_reg_i_50_n_3 : STD_LOGIC;
  signal ram_reg_i_51_n_3 : STD_LOGIC;
  signal \rowOffset_0_reg_425[0]_i_1_n_3\ : STD_LOGIC;
  signal \rowOffset_0_reg_425[1]_i_1_n_3\ : STD_LOGIC;
  signal \rowOffset_0_reg_425[2]_i_1_n_3\ : STD_LOGIC;
  signal \rowOffset_0_reg_425_reg_n_3_[0]\ : STD_LOGIC;
  signal \rowOffset_0_reg_425_reg_n_3_[1]\ : STD_LOGIC;
  signal \rowOffset_0_reg_425_reg_n_3_[2]\ : STD_LOGIC;
  signal rowOffset_reg_1687 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rowOffset_reg_16870 : STD_LOGIC;
  signal \rowOffset_reg_1687[0]_i_1_n_3\ : STD_LOGIC;
  signal \rowOffset_reg_1687[1]_i_1_n_3\ : STD_LOGIC;
  signal \rowOffset_reg_1687[2]_i_1_n_3\ : STD_LOGIC;
  signal row_assign_reg_356 : STD_LOGIC;
  signal \row_assign_reg_356[7]_i_3_n_3\ : STD_LOGIC;
  signal \row_assign_reg_356[7]_i_4_n_3\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[0]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[1]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[2]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[3]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[4]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[5]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[6]\ : STD_LOGIC;
  signal \row_assign_reg_356_reg_n_3_[7]\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal select_ln41_2_fu_972_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln41_2_reg_1617 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \select_ln41_2_reg_1617[7]_i_2_n_3\ : STD_LOGIC;
  signal select_ln41_3_fu_979_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln41_3_reg_1623 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \select_ln41_3_reg_1623[7]_i_2_n_3\ : STD_LOGIC;
  signal select_ln41_5_fu_993_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln41_5_reg_1635 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \select_ln41_5_reg_1635[7]_i_11_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_12_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_13_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_14_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_15_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_16_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_17_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_18_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_19_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_20_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_21_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_22_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_23_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_24_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_25_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_26_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_2_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_5_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_6_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_7_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_8_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635[7]_i_9_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_4_n_4\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \select_ln41_5_reg_1635_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal select_ln41_6_fu_1000_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln41_6_reg_1641 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \select_ln41_6_reg_1641[7]_i_2_n_3\ : STD_LOGIC;
  signal select_ln41_fu_958_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln41_reg_1605 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \select_ln41_reg_1605[7]_i_2_n_3\ : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_10 : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_11 : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_12 : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_13 : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_14 : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_15 : STD_LOGIC;
  signal sobel_filter_ctrl_bus_s_axi_U_n_9 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_10 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_11 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_12 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_13 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_14 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_15 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_16 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_17 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_18 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_19 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_20 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_21 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_22 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_23 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_24 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_25 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_26 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_27 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_28 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_29 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_3 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_30 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_31 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_32 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_33 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_34 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_4 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_5 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_6 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_7 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_8 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U2_n_9 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_10 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_11 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_12 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_13 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_14 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_15 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_16 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_17 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_18 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_19 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_20 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_21 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_22 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_23 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_24 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_25 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_26 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_27 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_28 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_29 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_3 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_30 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_31 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_32 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_33 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_34 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_35 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_36 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_4 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_5 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_6 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_7 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_8 : STD_LOGIC;
  signal sobel_filter_mac_eOg_U3_n_9 : STD_LOGIC;
  signal tmp_1_fu_1253_p11 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_2_fu_1114_p4 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmp_4_fu_1130_p4 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tmp_dest_V_3_reg_1593 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tmp_dest_V_fu_162 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tmp_id_V_3_reg_1587 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tmp_id_V_fu_178 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tmp_keep_V_3_reg_1569 : STD_LOGIC;
  signal tmp_keep_V_fu_166 : STD_LOGIC;
  signal tmp_strb_V_3_reg_1575 : STD_LOGIC;
  signal tmp_strb_V_fu_170 : STD_LOGIC;
  signal tmp_user_V_3_reg_1581 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tmp_user_V_fu_174 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal window_val_0_1_fu_190 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_1_0_fu_198 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_1_1_fu_202 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_0_fu_210 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_1_7_fu_951_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_1_7_reg_1599 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \window_val_2_1_7_reg_1599[7]_i_2_n_3\ : STD_LOGIC;
  signal window_val_2_1_fu_214 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_1_fu_182 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_2_fu_186 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_3_fu_194 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_4_fu_206 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_51_fu_965_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_51_reg_1611 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \window_val_2_2_51_reg_1611[7]_i_2_n_3\ : STD_LOGIC;
  signal window_val_2_2_52_fu_986_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_52_reg_1629 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \window_val_2_2_52_reg_1629[7]_i_2_n_3\ : STD_LOGIC;
  signal window_val_2_2_53_fu_1007_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal window_val_2_2_53_reg_1647 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \window_val_2_2_53_reg_1647[7]_i_2_n_3\ : STD_LOGIC;
  signal x_dir_0_reg_401 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal y_dir_0_reg_413 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln34_1_reg_1564_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln34_reg_1500_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_CS_fsm_reg[8]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_CS_fsm_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_CS_fsm_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_CS_fsm_reg[8]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg_1482_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg_1482_reg[20]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_i_13_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ram_reg_i_13_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_i_14_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ram_reg_i_14_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_i_21_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_i_25_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_i_33_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_select_ln41_5_reg_1635_reg[7]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_select_ln41_5_reg_1635_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_select_ln41_5_reg_1635_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_select_ln41_5_reg_1635_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_data_V_0_state[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_dest_V_0_sel_rd_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_dest_V_0_sel_wr_i_1 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_dest_V_0_state[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_dest_V_0_state[1]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_id_V_0_sel_rd_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_id_V_0_state[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_keep_V_0_sel_rd_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_keep_V_0_sel_wr_i_1 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_keep_V_0_state[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_strb_V_0_sel_rd_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_strb_V_0_sel_wr_i_1 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_strb_V_0_state[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_user_V_0_sel_rd_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of INPUT_IMAGE_V_user_V_0_sel_wr_i_1 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \INPUT_IMAGE_V_user_V_0_state[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[0]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[1]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[2]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[3]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[4]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[5]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[6]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDATA[7]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDEST[0]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDEST[1]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDEST[3]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDEST[4]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TDEST[5]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TID[0]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TID[1]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TID[2]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TID[3]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TID[4]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TKEEP[0]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TLAST[0]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TSTRB[0]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_TUSER[1]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1\ : label is "soft_lutpair72";
  attribute HLUTNM : string;
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116\ : label is "lutpair8";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117\ : label is "lutpair7";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118\ : label is "lutpair6";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119\ : label is "lutpair5";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120\ : label is "lutpair9";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121\ : label is "lutpair8";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122\ : label is "lutpair7";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123\ : label is "lutpair6";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124\ : label is "lutpair4";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125\ : label is "lutpair3";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126\ : label is "lutpair2";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127\ : label is "lutpair1";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128\ : label is "lutpair5";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129\ : label is "lutpair4";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130\ : label is "lutpair3";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131\ : label is "lutpair2";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16\ : label is "lutpair0";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20\ : label is "lutpair1";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21\ : label is "lutpair0";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3\ : label is "soft_lutpair70";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47\ : label is "lutpair23";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48\ : label is "lutpair22";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49\ : label is "lutpair21";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52\ : label is "lutpair23";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53\ : label is "lutpair22";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54\ : label is "lutpair20";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55\ : label is "lutpair19";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56\ : label is "lutpair18";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57\ : label is "lutpair17";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58\ : label is "lutpair21";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59\ : label is "lutpair20";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60\ : label is "lutpair19";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61\ : label is "lutpair18";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82\ : label is "lutpair16";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83\ : label is "lutpair15";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84\ : label is "lutpair14";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85\ : label is "lutpair13";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86\ : label is "lutpair17";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87\ : label is "lutpair16";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88\ : label is "lutpair15";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89\ : label is "lutpair14";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90\ : label is "lutpair12";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91\ : label is "lutpair11";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92\ : label is "lutpair10";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93\ : label is "lutpair9";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94\ : label is "lutpair13";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95\ : label is "lutpair12";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96\ : label is "lutpair11";
  attribute HLUTNM of \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97\ : label is "lutpair10";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_id_V_1_state[1]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_last_V_1_state[1]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \OUTPUT_IMAGE_V_user_V_1_state[1]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_3\ : label is "soft_lutpair10";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of \counter_1_reg_345[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \counter_1_reg_345[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \counter_1_reg_345[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \counter_1_reg_345[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter_1_reg_345[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \counter_1_reg_345[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter_1_reg_345[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \counter_1_reg_345[16]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \counter_1_reg_345[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter_1_reg_345[18]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \counter_1_reg_345[19]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter_1_reg_345[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \counter_1_reg_345[20]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \counter_1_reg_345[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \counter_1_reg_345[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \counter_1_reg_345[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \counter_1_reg_345[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \counter_1_reg_345[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \counter_1_reg_345[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \counter_1_reg_345[9]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i_2_reg_1477[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \i_2_reg_1477[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \i_2_reg_1477[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i_2_reg_1477[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i_reg_1720[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \i_reg_1720[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \i_reg_1720[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i_reg_1720[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i_reg_1720[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i_reg_1720[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i_reg_1720[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_reg_1720[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \icmp_ln274_2_reg_1510[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \icmp_ln274_3_reg_1520[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \icmp_ln41_1_reg_1505[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \icmp_ln61_reg_1657[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j_reg_1536[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \j_reg_1536[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \j_reg_1536[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j_reg_1536[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j_reg_1536[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \j_reg_1536[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \j_reg_1536[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \j_reg_1536[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \k_reg_1495[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \k_reg_1495[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \k_reg_1495[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \k_reg_1495[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \k_reg_1495[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \select_ln41_2_reg_1617[7]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \select_ln41_3_reg_1623[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \select_ln41_6_reg_1641[7]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \select_ln41_reg_1605[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tmp_dest_V_3_reg_1593[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tmp_dest_V_3_reg_1593[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tmp_dest_V_3_reg_1593[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \tmp_dest_V_3_reg_1593[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \tmp_dest_V_3_reg_1593[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \tmp_dest_V_3_reg_1593[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \tmp_id_V_3_reg_1587[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tmp_id_V_3_reg_1587[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tmp_id_V_3_reg_1587[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tmp_id_V_3_reg_1587[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tmp_user_V_3_reg_1581[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tmp_user_V_3_reg_1581[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \window_val_2_1_7_reg_1599[7]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \window_val_2_2_51_reg_1611[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \window_val_2_2_52_reg_1629[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \window_val_2_2_53_reg_1647[7]_i_2\ : label is "soft_lutpair42";
begin
  INPUT_IMAGE_TREADY <= \^input_image_tready\;
  OUTPUT_IMAGE_TVALID <= \^output_image_tvalid\;
  s_axi_ctrl_bus_BRESP(1) <= \<const0>\;
  s_axi_ctrl_bus_BRESP(0) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(31) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(30) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(29) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(28) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(27) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(26) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(25) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(24) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(23) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(22) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(21) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(20) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(19) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(18) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(17) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(16) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(15) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(14) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(13) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(12) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(11) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(10) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(9) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(8) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(7) <= \^s_axi_ctrl_bus_rdata\(7);
  s_axi_ctrl_bus_RDATA(6) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(5) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(4) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(3 downto 0) <= \^s_axi_ctrl_bus_rdata\(3 downto 0);
  s_axi_ctrl_bus_RRESP(1) <= \<const0>\;
  s_axi_ctrl_bus_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\INPUT_IMAGE_V_data_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => INPUT_IMAGE_V_data_V_0_sel_wr,
      I1 => INPUT_IMAGE_V_data_V_0_ack_in,
      I2 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      O => INPUT_IMAGE_V_data_V_0_load_A
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(0),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(0),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(1),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(1),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(2),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(2),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(3),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(3),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(4),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(4),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(5),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(5),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(6),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(6),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_A,
      D => INPUT_IMAGE_TDATA(7),
      Q => INPUT_IMAGE_V_data_V_0_payload_A(7),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => INPUT_IMAGE_V_data_V_0_sel_wr,
      I1 => INPUT_IMAGE_V_data_V_0_ack_in,
      I2 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      O => INPUT_IMAGE_V_data_V_0_load_B
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(0),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(0),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(1),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(1),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(2),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(2),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(3),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(3),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(4),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(4),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(5),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(5),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(6),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(6),
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_data_V_0_load_B,
      D => INPUT_IMAGE_TDATA(7),
      Q => INPUT_IMAGE_V_data_V_0_payload_B(7),
      R => '0'
    );
INPUT_IMAGE_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D5FFFFAA2A0000"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => icmp_ln52_fu_1014_p2,
      I2 => icmp_ln52_1_fu_1020_p2,
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I4 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I5 => INPUT_IMAGE_V_data_V_0_sel,
      O => INPUT_IMAGE_V_data_V_0_sel_rd_i_1_n_3
    );
INPUT_IMAGE_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_data_V_0_sel_rd_i_1_n_3,
      Q => INPUT_IMAGE_V_data_V_0_sel,
      R => ap_rst_n_inv
    );
INPUT_IMAGE_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => INPUT_IMAGE_V_data_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => INPUT_IMAGE_V_data_V_0_sel_wr,
      O => INPUT_IMAGE_V_data_V_0_sel_wr_i_1_n_3
    );
INPUT_IMAGE_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_data_V_0_sel_wr_i_1_n_3,
      Q => INPUT_IMAGE_V_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => INPUT_IMAGE_V_data_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => ap_rst_n,
      O => \INPUT_IMAGE_V_data_V_0_state[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_TVALID,
      I3 => INPUT_IMAGE_V_data_V_0_ack_in,
      O => INPUT_IMAGE_V_data_V_0_state(1)
    );
\INPUT_IMAGE_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_data_V_0_state[0]_i_1_n_3\,
      Q => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      R => '0'
    );
\INPUT_IMAGE_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_data_V_0_state(1),
      Q => INPUT_IMAGE_V_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_dest_V_0_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_sel_wr,
      I1 => \^input_image_tready\,
      I2 => \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\,
      O => INPUT_IMAGE_V_dest_V_0_load_A
    );
\INPUT_IMAGE_V_dest_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_A,
      D => INPUT_IMAGE_TDEST(0),
      Q => INPUT_IMAGE_V_dest_V_0_payload_A(0),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_A,
      D => INPUT_IMAGE_TDEST(1),
      Q => INPUT_IMAGE_V_dest_V_0_payload_A(1),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_A,
      D => INPUT_IMAGE_TDEST(2),
      Q => INPUT_IMAGE_V_dest_V_0_payload_A(2),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_A,
      D => INPUT_IMAGE_TDEST(3),
      Q => INPUT_IMAGE_V_dest_V_0_payload_A(3),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_A,
      D => INPUT_IMAGE_TDEST(4),
      Q => INPUT_IMAGE_V_dest_V_0_payload_A(4),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_A,
      D => INPUT_IMAGE_TDEST(5),
      Q => INPUT_IMAGE_V_dest_V_0_payload_A(5),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_B[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_sel_wr,
      I1 => \^input_image_tready\,
      I2 => \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\,
      O => INPUT_IMAGE_V_dest_V_0_load_B
    );
\INPUT_IMAGE_V_dest_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_B,
      D => INPUT_IMAGE_TDEST(0),
      Q => INPUT_IMAGE_V_dest_V_0_payload_B(0),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_B,
      D => INPUT_IMAGE_TDEST(1),
      Q => INPUT_IMAGE_V_dest_V_0_payload_B(1),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_B,
      D => INPUT_IMAGE_TDEST(2),
      Q => INPUT_IMAGE_V_dest_V_0_payload_B(2),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_B,
      D => INPUT_IMAGE_TDEST(3),
      Q => INPUT_IMAGE_V_dest_V_0_payload_B(3),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_B,
      D => INPUT_IMAGE_TDEST(4),
      Q => INPUT_IMAGE_V_dest_V_0_payload_B(4),
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_dest_V_0_load_B,
      D => INPUT_IMAGE_TDEST(5),
      Q => INPUT_IMAGE_V_dest_V_0_payload_B(5),
      R => '0'
    );
INPUT_IMAGE_V_dest_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_V_dest_V_0_sel,
      O => INPUT_IMAGE_V_dest_V_0_sel_rd_i_1_n_3
    );
INPUT_IMAGE_V_dest_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_dest_V_0_sel_rd_i_1_n_3,
      Q => INPUT_IMAGE_V_dest_V_0_sel,
      R => ap_rst_n_inv
    );
INPUT_IMAGE_V_dest_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^input_image_tready\,
      I1 => INPUT_IMAGE_TVALID,
      I2 => INPUT_IMAGE_V_dest_V_0_sel_wr,
      O => INPUT_IMAGE_V_dest_V_0_sel_wr_i_1_n_3
    );
INPUT_IMAGE_V_dest_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_dest_V_0_sel_wr_i_1_n_3,
      Q => INPUT_IMAGE_V_dest_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_dest_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => \^input_image_tready\,
      I1 => INPUT_IMAGE_TVALID,
      I2 => \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => ap_rst_n,
      O => \INPUT_IMAGE_V_dest_V_0_state[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_dest_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_TVALID,
      I3 => \^input_image_tready\,
      O => INPUT_IMAGE_V_dest_V_0_state(1)
    );
\INPUT_IMAGE_V_dest_V_0_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7555FFFF"
    )
        port map (
      I0 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => icmp_ln52_1_fu_1020_p2,
      I3 => icmp_ln52_fu_1014_p2,
      I4 => ap_CS_fsm_state5,
      O => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\
    );
\INPUT_IMAGE_V_dest_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_dest_V_0_state[0]_i_1_n_3\,
      Q => \INPUT_IMAGE_V_dest_V_0_state_reg_n_3_[0]\,
      R => '0'
    );
\INPUT_IMAGE_V_dest_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_dest_V_0_state(1),
      Q => \^input_image_tready\,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_id_V_0_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_sel_wr,
      I1 => INPUT_IMAGE_V_id_V_0_ack_in,
      I2 => \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\,
      O => INPUT_IMAGE_V_id_V_0_load_A
    );
\INPUT_IMAGE_V_id_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_A,
      D => INPUT_IMAGE_TID(0),
      Q => INPUT_IMAGE_V_id_V_0_payload_A(0),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_A,
      D => INPUT_IMAGE_TID(1),
      Q => INPUT_IMAGE_V_id_V_0_payload_A(1),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_A,
      D => INPUT_IMAGE_TID(2),
      Q => INPUT_IMAGE_V_id_V_0_payload_A(2),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_A,
      D => INPUT_IMAGE_TID(3),
      Q => INPUT_IMAGE_V_id_V_0_payload_A(3),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_A,
      D => INPUT_IMAGE_TID(4),
      Q => INPUT_IMAGE_V_id_V_0_payload_A(4),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_B[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_sel_wr,
      I1 => INPUT_IMAGE_V_id_V_0_ack_in,
      I2 => \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\,
      O => INPUT_IMAGE_V_id_V_0_load_B
    );
\INPUT_IMAGE_V_id_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_B,
      D => INPUT_IMAGE_TID(0),
      Q => INPUT_IMAGE_V_id_V_0_payload_B(0),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_B,
      D => INPUT_IMAGE_TID(1),
      Q => INPUT_IMAGE_V_id_V_0_payload_B(1),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_B,
      D => INPUT_IMAGE_TID(2),
      Q => INPUT_IMAGE_V_id_V_0_payload_B(2),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_B,
      D => INPUT_IMAGE_TID(3),
      Q => INPUT_IMAGE_V_id_V_0_payload_B(3),
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => INPUT_IMAGE_V_id_V_0_load_B,
      D => INPUT_IMAGE_TID(4),
      Q => INPUT_IMAGE_V_id_V_0_payload_B(4),
      R => '0'
    );
INPUT_IMAGE_V_id_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_V_id_V_0_sel,
      O => INPUT_IMAGE_V_id_V_0_sel_rd_i_1_n_3
    );
INPUT_IMAGE_V_id_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_id_V_0_sel_rd_i_1_n_3,
      Q => INPUT_IMAGE_V_id_V_0_sel,
      R => ap_rst_n_inv
    );
INPUT_IMAGE_V_id_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => INPUT_IMAGE_V_id_V_0_sel_wr,
      O => INPUT_IMAGE_V_id_V_0_sel_wr_i_1_n_3
    );
INPUT_IMAGE_V_id_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_id_V_0_sel_wr_i_1_n_3,
      Q => INPUT_IMAGE_V_id_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_id_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => ap_rst_n,
      O => \INPUT_IMAGE_V_id_V_0_state[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_id_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_TVALID,
      I3 => INPUT_IMAGE_V_id_V_0_ack_in,
      O => INPUT_IMAGE_V_id_V_0_state(1)
    );
\INPUT_IMAGE_V_id_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_id_V_0_state[0]_i_1_n_3\,
      Q => \INPUT_IMAGE_V_id_V_0_state_reg_n_3_[0]\,
      R => '0'
    );
\INPUT_IMAGE_V_id_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_id_V_0_state(1),
      Q => INPUT_IMAGE_V_id_V_0_ack_in,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => INPUT_IMAGE_TKEEP(0),
      I1 => INPUT_IMAGE_V_keep_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_keep_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_keep_V_0_payload_A,
      O => \INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_keep_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_keep_V_0_payload_A[0]_i_1_n_3\,
      Q => INPUT_IMAGE_V_keep_V_0_payload_A,
      R => '0'
    );
\INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => INPUT_IMAGE_TKEEP(0),
      I1 => INPUT_IMAGE_V_keep_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_keep_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_keep_V_0_payload_B,
      O => \INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_keep_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_keep_V_0_payload_B[0]_i_1_n_3\,
      Q => INPUT_IMAGE_V_keep_V_0_payload_B,
      R => '0'
    );
INPUT_IMAGE_V_keep_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_V_keep_V_0_sel,
      O => INPUT_IMAGE_V_keep_V_0_sel_rd_i_1_n_3
    );
INPUT_IMAGE_V_keep_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_keep_V_0_sel_rd_i_1_n_3,
      Q => INPUT_IMAGE_V_keep_V_0_sel,
      R => ap_rst_n_inv
    );
INPUT_IMAGE_V_keep_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => INPUT_IMAGE_V_keep_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => INPUT_IMAGE_V_keep_V_0_sel_wr,
      O => INPUT_IMAGE_V_keep_V_0_sel_wr_i_1_n_3
    );
INPUT_IMAGE_V_keep_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_keep_V_0_sel_wr_i_1_n_3,
      Q => INPUT_IMAGE_V_keep_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_keep_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => INPUT_IMAGE_V_keep_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => ap_rst_n,
      O => \INPUT_IMAGE_V_keep_V_0_state[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_keep_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_TVALID,
      I3 => INPUT_IMAGE_V_keep_V_0_ack_in,
      O => INPUT_IMAGE_V_keep_V_0_state(1)
    );
\INPUT_IMAGE_V_keep_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_keep_V_0_state[0]_i_1_n_3\,
      Q => \INPUT_IMAGE_V_keep_V_0_state_reg_n_3_[0]\,
      R => '0'
    );
\INPUT_IMAGE_V_keep_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_keep_V_0_state(1),
      Q => INPUT_IMAGE_V_keep_V_0_ack_in,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => INPUT_IMAGE_TSTRB(0),
      I1 => INPUT_IMAGE_V_strb_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_strb_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_strb_V_0_payload_A,
      O => \INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_strb_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_strb_V_0_payload_A[0]_i_1_n_3\,
      Q => INPUT_IMAGE_V_strb_V_0_payload_A,
      R => '0'
    );
\INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => INPUT_IMAGE_TSTRB(0),
      I1 => INPUT_IMAGE_V_strb_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_strb_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_strb_V_0_payload_B,
      O => \INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_strb_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_strb_V_0_payload_B[0]_i_1_n_3\,
      Q => INPUT_IMAGE_V_strb_V_0_payload_B,
      R => '0'
    );
INPUT_IMAGE_V_strb_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_V_strb_V_0_sel,
      O => INPUT_IMAGE_V_strb_V_0_sel_rd_i_1_n_3
    );
INPUT_IMAGE_V_strb_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_strb_V_0_sel_rd_i_1_n_3,
      Q => INPUT_IMAGE_V_strb_V_0_sel,
      R => ap_rst_n_inv
    );
INPUT_IMAGE_V_strb_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => INPUT_IMAGE_V_strb_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => INPUT_IMAGE_V_strb_V_0_sel_wr,
      O => INPUT_IMAGE_V_strb_V_0_sel_wr_i_1_n_3
    );
INPUT_IMAGE_V_strb_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_strb_V_0_sel_wr_i_1_n_3,
      Q => INPUT_IMAGE_V_strb_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_strb_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => INPUT_IMAGE_V_strb_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => ap_rst_n,
      O => \INPUT_IMAGE_V_strb_V_0_state[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_strb_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_TVALID,
      I3 => INPUT_IMAGE_V_strb_V_0_ack_in,
      O => INPUT_IMAGE_V_strb_V_0_state(1)
    );
\INPUT_IMAGE_V_strb_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_strb_V_0_state[0]_i_1_n_3\,
      Q => \INPUT_IMAGE_V_strb_V_0_state_reg_n_3_[0]\,
      R => '0'
    );
\INPUT_IMAGE_V_strb_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_strb_V_0_state(1),
      Q => INPUT_IMAGE_V_strb_V_0_ack_in,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => INPUT_IMAGE_TUSER(0),
      I1 => INPUT_IMAGE_V_user_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_user_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_user_V_0_payload_A(0),
      O => \INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => INPUT_IMAGE_TUSER(1),
      I1 => INPUT_IMAGE_V_user_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_user_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_user_V_0_payload_A(1),
      O => \INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1_n_3\
    );
\INPUT_IMAGE_V_user_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_user_V_0_payload_A[0]_i_1_n_3\,
      Q => INPUT_IMAGE_V_user_V_0_payload_A(0),
      R => '0'
    );
\INPUT_IMAGE_V_user_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_user_V_0_payload_A[1]_i_1_n_3\,
      Q => INPUT_IMAGE_V_user_V_0_payload_A(1),
      R => '0'
    );
\INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => INPUT_IMAGE_TUSER(0),
      I1 => INPUT_IMAGE_V_user_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_user_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_user_V_0_payload_B(0),
      O => \INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => INPUT_IMAGE_TUSER(1),
      I1 => INPUT_IMAGE_V_user_V_0_sel_wr,
      I2 => INPUT_IMAGE_V_user_V_0_ack_in,
      I3 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I4 => INPUT_IMAGE_V_user_V_0_payload_B(1),
      O => \INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1_n_3\
    );
\INPUT_IMAGE_V_user_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_user_V_0_payload_B[0]_i_1_n_3\,
      Q => INPUT_IMAGE_V_user_V_0_payload_B(0),
      R => '0'
    );
\INPUT_IMAGE_V_user_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_user_V_0_payload_B[1]_i_1_n_3\,
      Q => INPUT_IMAGE_V_user_V_0_payload_B(1),
      R => '0'
    );
INPUT_IMAGE_V_user_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_V_user_V_0_sel,
      O => INPUT_IMAGE_V_user_V_0_sel_rd_i_1_n_3
    );
INPUT_IMAGE_V_user_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_user_V_0_sel_rd_i_1_n_3,
      Q => INPUT_IMAGE_V_user_V_0_sel,
      R => ap_rst_n_inv
    );
INPUT_IMAGE_V_user_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => INPUT_IMAGE_V_user_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => INPUT_IMAGE_V_user_V_0_sel_wr,
      O => INPUT_IMAGE_V_user_V_0_sel_wr_i_1_n_3
    );
INPUT_IMAGE_V_user_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_user_V_0_sel_wr_i_1_n_3,
      Q => INPUT_IMAGE_V_user_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\INPUT_IMAGE_V_user_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => INPUT_IMAGE_V_user_V_0_ack_in,
      I1 => INPUT_IMAGE_TVALID,
      I2 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => ap_rst_n,
      O => \INPUT_IMAGE_V_user_V_0_state[0]_i_1_n_3\
    );
\INPUT_IMAGE_V_user_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I1 => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      I2 => INPUT_IMAGE_TVALID,
      I3 => INPUT_IMAGE_V_user_V_0_ack_in,
      O => INPUT_IMAGE_V_user_V_0_state(1)
    );
\INPUT_IMAGE_V_user_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \INPUT_IMAGE_V_user_V_0_state[0]_i_1_n_3\,
      Q => \INPUT_IMAGE_V_user_V_0_state_reg_n_3_[0]\,
      R => '0'
    );
\INPUT_IMAGE_V_user_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => INPUT_IMAGE_V_user_V_0_state(1),
      Q => INPUT_IMAGE_V_user_V_0_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(0),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(0),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(0)
    );
\OUTPUT_IMAGE_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(1),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(1),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(1)
    );
\OUTPUT_IMAGE_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(2),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(2),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(2)
    );
\OUTPUT_IMAGE_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(3),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(3),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(3)
    );
\OUTPUT_IMAGE_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(4),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(4),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(4)
    );
\OUTPUT_IMAGE_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(5),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(5),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(5)
    );
\OUTPUT_IMAGE_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(6),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(6),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(6)
    );
\OUTPUT_IMAGE_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_payload_B(7),
      I1 => OUTPUT_IMAGE_V_data_V_1_payload_A(7),
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_TDATA(7)
    );
\OUTPUT_IMAGE_TDEST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_payload_B(0),
      I1 => OUTPUT_IMAGE_V_dest_V_1_sel,
      I2 => OUTPUT_IMAGE_V_dest_V_1_payload_A(0),
      O => OUTPUT_IMAGE_TDEST(0)
    );
\OUTPUT_IMAGE_TDEST[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_payload_B(1),
      I1 => OUTPUT_IMAGE_V_dest_V_1_sel,
      I2 => OUTPUT_IMAGE_V_dest_V_1_payload_A(1),
      O => OUTPUT_IMAGE_TDEST(1)
    );
\OUTPUT_IMAGE_TDEST[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_payload_B(2),
      I1 => OUTPUT_IMAGE_V_dest_V_1_sel,
      I2 => OUTPUT_IMAGE_V_dest_V_1_payload_A(2),
      O => OUTPUT_IMAGE_TDEST(2)
    );
\OUTPUT_IMAGE_TDEST[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_payload_B(3),
      I1 => OUTPUT_IMAGE_V_dest_V_1_sel,
      I2 => OUTPUT_IMAGE_V_dest_V_1_payload_A(3),
      O => OUTPUT_IMAGE_TDEST(3)
    );
\OUTPUT_IMAGE_TDEST[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_payload_B(4),
      I1 => OUTPUT_IMAGE_V_dest_V_1_sel,
      I2 => OUTPUT_IMAGE_V_dest_V_1_payload_A(4),
      O => OUTPUT_IMAGE_TDEST(4)
    );
\OUTPUT_IMAGE_TDEST[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_payload_B(5),
      I1 => OUTPUT_IMAGE_V_dest_V_1_sel,
      I2 => OUTPUT_IMAGE_V_dest_V_1_payload_A(5),
      O => OUTPUT_IMAGE_TDEST(5)
    );
\OUTPUT_IMAGE_TID[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_payload_B(0),
      I1 => OUTPUT_IMAGE_V_id_V_1_sel,
      I2 => OUTPUT_IMAGE_V_id_V_1_payload_A(0),
      O => OUTPUT_IMAGE_TID(0)
    );
\OUTPUT_IMAGE_TID[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_payload_B(1),
      I1 => OUTPUT_IMAGE_V_id_V_1_sel,
      I2 => OUTPUT_IMAGE_V_id_V_1_payload_A(1),
      O => OUTPUT_IMAGE_TID(1)
    );
\OUTPUT_IMAGE_TID[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_payload_B(2),
      I1 => OUTPUT_IMAGE_V_id_V_1_sel,
      I2 => OUTPUT_IMAGE_V_id_V_1_payload_A(2),
      O => OUTPUT_IMAGE_TID(2)
    );
\OUTPUT_IMAGE_TID[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_payload_B(3),
      I1 => OUTPUT_IMAGE_V_id_V_1_sel,
      I2 => OUTPUT_IMAGE_V_id_V_1_payload_A(3),
      O => OUTPUT_IMAGE_TID(3)
    );
\OUTPUT_IMAGE_TID[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_payload_B(4),
      I1 => OUTPUT_IMAGE_V_id_V_1_sel,
      I2 => OUTPUT_IMAGE_V_id_V_1_payload_A(4),
      O => OUTPUT_IMAGE_TID(4)
    );
\OUTPUT_IMAGE_TKEEP[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_keep_V_1_payload_B,
      I1 => OUTPUT_IMAGE_V_keep_V_1_sel,
      I2 => OUTPUT_IMAGE_V_keep_V_1_payload_A,
      O => OUTPUT_IMAGE_TKEEP(0)
    );
\OUTPUT_IMAGE_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_last_V_1_payload_B,
      I1 => OUTPUT_IMAGE_V_last_V_1_sel,
      I2 => OUTPUT_IMAGE_V_last_V_1_payload_A,
      O => OUTPUT_IMAGE_TLAST(0)
    );
\OUTPUT_IMAGE_TSTRB[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_strb_V_1_payload_B,
      I1 => OUTPUT_IMAGE_V_strb_V_1_sel,
      I2 => OUTPUT_IMAGE_V_strb_V_1_payload_A,
      O => OUTPUT_IMAGE_TSTRB(0)
    );
\OUTPUT_IMAGE_TUSER[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_user_V_1_payload_B(0),
      I1 => OUTPUT_IMAGE_V_user_V_1_sel,
      I2 => OUTPUT_IMAGE_V_user_V_1_payload_A(0),
      O => OUTPUT_IMAGE_TUSER(0)
    );
\OUTPUT_IMAGE_TUSER[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_user_V_1_payload_B(1),
      I1 => OUTPUT_IMAGE_V_user_V_1_sel,
      I2 => OUTPUT_IMAGE_V_user_V_1_payload_A(1),
      O => OUTPUT_IMAGE_TUSER(1)
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_10\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_9\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_8\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_7\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => x_dir_0_reg_401(0),
      I1 => p_0_in,
      I2 => y_dir_0_reg_413(0),
      I3 => p_3_in,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(2),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(2),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(1),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(1),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => x_dir_0_reg_401(0),
      I1 => p_0_in,
      I2 => y_dir_0_reg_413(0),
      I3 => p_0_in2_in,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => p_3_in
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(3),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(3),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(2),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(2),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(1),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(1),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_10\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_9\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_8\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008808"
    )
        port map (
      I0 => icmp_ln82_fu_1140_p2,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      I2 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I4 => OUTPUT_IMAGE_V_data_V_1_sel_wr,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(18),
      I1 => tmp_4_fu_1130_p4(19),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(20),
      I1 => y_dir_0_reg_413(21),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(18),
      I1 => y_dir_0_reg_413(19),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(16),
      I1 => y_dir_0_reg_413(17),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(23),
      I1 => y_dir_0_reg_413(22),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(21),
      I1 => y_dir_0_reg_413(20),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(19),
      I1 => y_dir_0_reg_413(18),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(17),
      I1 => y_dir_0_reg_413(16),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(22),
      I1 => x_dir_0_reg_401(23),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(20),
      I1 => x_dir_0_reg_401(21),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(16),
      I1 => tmp_4_fu_1130_p4(17),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(18),
      I1 => x_dir_0_reg_401(19),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(16),
      I1 => x_dir_0_reg_401(17),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(23),
      I1 => x_dir_0_reg_401(22),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(21),
      I1 => x_dir_0_reg_401(20),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(19),
      I1 => x_dir_0_reg_401(18),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(17),
      I1 => x_dir_0_reg_401(16),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(14),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(14),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(13),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(13),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(12),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(12),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(11),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(11),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(22),
      I1 => tmp_4_fu_1130_p4(23),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(15),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(15),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(14),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(14),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(13),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(13),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(12),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(12),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(10),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(10),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(9),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(9),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(8),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(8),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(7),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(7),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(11),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(11),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(10),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(10),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(21),
      I1 => tmp_4_fu_1130_p4(20),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(9),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(9),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(8),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(8),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(14),
      I1 => y_dir_0_reg_413(15),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(12),
      I1 => y_dir_0_reg_413(13),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(10),
      I1 => y_dir_0_reg_413(11),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(8),
      I1 => y_dir_0_reg_413(9),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(15),
      I1 => y_dir_0_reg_413(14),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(13),
      I1 => y_dir_0_reg_413(12),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(11),
      I1 => y_dir_0_reg_413(10),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(19),
      I1 => tmp_4_fu_1130_p4(18),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(9),
      I1 => y_dir_0_reg_413(8),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(14),
      I1 => x_dir_0_reg_401(15),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(12),
      I1 => x_dir_0_reg_401(13),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(10),
      I1 => x_dir_0_reg_401(11),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(8),
      I1 => x_dir_0_reg_401(9),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(15),
      I1 => x_dir_0_reg_401(14),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(13),
      I1 => x_dir_0_reg_401(12),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(11),
      I1 => x_dir_0_reg_401(10),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(9),
      I1 => x_dir_0_reg_401(8),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(17),
      I1 => tmp_4_fu_1130_p4(16),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(6),
      I1 => y_dir_0_reg_413(7),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(4),
      I1 => y_dir_0_reg_413(5),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(2),
      I1 => y_dir_0_reg_413(3),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(0),
      I1 => y_dir_0_reg_413(1),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(7),
      I1 => y_dir_0_reg_413(6),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(5),
      I1 => y_dir_0_reg_413(4),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(3),
      I1 => y_dir_0_reg_413(2),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(1),
      I1 => y_dir_0_reg_413(0),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(6),
      I1 => x_dir_0_reg_401(7),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(4),
      I1 => x_dir_0_reg_401(5),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(6),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(6),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(2),
      I1 => x_dir_0_reg_401(3),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(0),
      I1 => x_dir_0_reg_401(1),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(7),
      I1 => x_dir_0_reg_401(6),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(5),
      I1 => x_dir_0_reg_401(4),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(3),
      I1 => x_dir_0_reg_401(2),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(1),
      I1 => x_dir_0_reg_401(0),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(5),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(5),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(4),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(4),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(3),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(3),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_sel_wr,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      O => OUTPUT_IMAGE_V_data_V_1_load_A
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(7),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(7),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(6),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(6),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(5),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(5),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(4),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(4),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(14),
      I1 => tmp_4_fu_1130_p4(15),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(12),
      I1 => tmp_4_fu_1130_p4(13),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(10),
      I1 => tmp_4_fu_1130_p4(11),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(8),
      I1 => tmp_4_fu_1130_p4(9),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(15),
      I1 => tmp_4_fu_1130_p4(14),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_7\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(13),
      I1 => tmp_4_fu_1130_p4(12),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(11),
      I1 => tmp_4_fu_1130_p4(10),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(9),
      I1 => tmp_4_fu_1130_p4(8),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(6),
      I1 => tmp_4_fu_1130_p4(7),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(4),
      I1 => tmp_4_fu_1130_p4(5),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(2),
      I1 => tmp_4_fu_1130_p4(3),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(0),
      I1 => tmp_4_fu_1130_p4(1),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(7),
      I1 => tmp_4_fu_1130_p4(6),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(5),
      I1 => tmp_4_fu_1130_p4(4),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(3),
      I1 => tmp_4_fu_1130_p4(2),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(1),
      I1 => tmp_4_fu_1130_p4(0),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(29),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(29),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(28),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(28),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(27),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(27),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(9),
      I1 => tmp_2_fu_1114_p4(8),
      I2 => \row_assign_reg_356[7]_i_4_n_3\,
      I3 => tmp_2_fu_1114_p4(0),
      I4 => tmp_2_fu_1114_p4(1),
      I5 => \ap_CS_fsm[5]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D21E87B42DE1784B"
    )
        port map (
      I0 => x_dir_0_reg_401(30),
      I1 => y_dir_0_reg_413(30),
      I2 => y_dir_0_reg_413(31),
      I3 => p_0_in,
      I4 => p_0_in2_in,
      I5 => x_dir_0_reg_401(31),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3\,
      I1 => x_dir_0_reg_401(30),
      I2 => p_0_in,
      I3 => y_dir_0_reg_413(30),
      I4 => p_0_in2_in,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(29),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(29),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(28),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(28),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(26),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(26),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(25),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(25),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(24),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(24),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(23),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(23),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(27),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(27),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(26),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(26),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(25),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(25),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(24),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(24),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_dir_0_reg_413(30),
      I1 => y_dir_0_reg_413(31),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(28),
      I1 => y_dir_0_reg_413(29),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(26),
      I1 => y_dir_0_reg_413(27),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(24),
      I1 => y_dir_0_reg_413(25),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(30),
      I1 => y_dir_0_reg_413(31),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(29),
      I1 => y_dir_0_reg_413(28),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(27),
      I1 => y_dir_0_reg_413(26),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_dir_0_reg_413(25),
      I1 => y_dir_0_reg_413(24),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_dir_0_reg_401(30),
      I1 => x_dir_0_reg_401(31),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(28),
      I1 => x_dir_0_reg_401(29),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(26),
      I1 => x_dir_0_reg_401(27),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_dir_0_reg_401(24),
      I1 => x_dir_0_reg_401(25),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(30),
      I1 => x_dir_0_reg_401(31),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(29),
      I1 => x_dir_0_reg_401(28),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(27),
      I1 => x_dir_0_reg_401(26),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_dir_0_reg_401(25),
      I1 => x_dir_0_reg_401(24),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(22),
      I1 => tmp_4_fu_1130_p4(23),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(22),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(22),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(21),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(21),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(20),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(20),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(19),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(19),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(23),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(23),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(22),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(22),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(21),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(21),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(20),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(20),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_4_fu_1130_p4(20),
      I1 => tmp_4_fu_1130_p4(21),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(18),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(18),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(17),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(17),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(16),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(16),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(15),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(15),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(19),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(19),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(18),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(18),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(17),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(17),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => y_dir_0_reg_413(16),
      I2 => p_0_in,
      I3 => x_dir_0_reg_401(16),
      I4 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3\,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_dir_0_reg_413(22),
      I1 => y_dir_0_reg_413(23),
      O => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(0),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(1),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(2),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(3),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_3_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_4_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_5_n_3\,
      DI(0) => p_3_in,
      O(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_7\,
      O(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_8\,
      O(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_9\,
      O(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_10\,
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_7_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_8_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_9_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_10_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(4),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(5),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(6),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_A,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_A(7),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_142_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_143_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_144_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_145_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_146_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_147_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_148_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_149_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_150_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_151_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_152_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_153_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_154_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_155_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_156_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_157_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_158_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_159_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_160_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_161_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_141_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_162_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_163_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_164_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_165_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_37_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_38_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_39_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_40_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_41_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_42_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_43_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_44_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_3\,
      CO(3) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_CO_UNCONNECTED\(3),
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_33_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_47_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_48_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_49_n_3\,
      O(3 downto 0) => tmp_4_fu_1130_p4(23 downto 20),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_50_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_51_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_52_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_53_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_34_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_54_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_55_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_56_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_57_n_3\,
      O(3 downto 0) => tmp_4_fu_1130_p4(19 downto 16),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_58_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_59_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_60_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_61_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_3\,
      CO(3) => p_0_in2_in,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_63_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_64_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_65_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_66_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_35_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_67_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_68_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_69_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_70_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_3\,
      CO(3) => p_0_in,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_72_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_73_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_74_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_75_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_36_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_76_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_77_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_78_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_79_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_3\,
      CO(3) => icmp_ln82_fu_1140_p2,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_8_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_9_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_10_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_11_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_12_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_13_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_14_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_15_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_45_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_82_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_83_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_84_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_85_n_3\,
      O(3 downto 0) => tmp_4_fu_1130_p4(15 downto 12),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_86_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_87_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_88_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_89_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_46_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_90_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_91_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_92_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_93_n_3\,
      O(3 downto 0) => tmp_4_fu_1130_p4(11 downto 8),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_94_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_95_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_96_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_97_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[3]_i_2_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_16_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_17_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_18_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_19_n_3\,
      O(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_7\,
      O(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_8\,
      O(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_9\,
      O(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_10\,
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_20_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_21_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_22_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_23_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_99_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_100_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_101_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_102_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_62_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_103_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_104_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_105_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_106_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_24_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_25_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_26_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_27_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_28_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_29_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_30_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_31_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_32_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_107_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_108_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_109_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_110_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_111_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_71_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_112_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_113_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_114_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_115_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_80_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_116_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_117_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_118_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_119_n_3\,
      O(3 downto 0) => tmp_4_fu_1130_p4(7 downto 4),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_120_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_121_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_122_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_123_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_6_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_81_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_124_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_125_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_126_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_127_n_3\,
      O(3 downto 0) => tmp_4_fu_1130_p4(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_128_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_129_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_130_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_131_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98\: unisim.vcomponents.CARRY4
     port map (
      CI => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_132_n_3\,
      CO(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_3\,
      CO(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_4\,
      CO(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_5\,
      CO(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_n_6\,
      CYINIT => '0',
      DI(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_133_n_3\,
      DI(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_134_n_3\,
      DI(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_135_n_3\,
      DI(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_136_n_3\,
      O(3 downto 0) => \NLW_OUTPUT_IMAGE_V_data_V_1_payload_A_reg[7]_i_98_O_UNCONNECTED\(3 downto 0),
      S(3) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_137_n_3\,
      S(2) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_138_n_3\,
      S(1) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_139_n_3\,
      S(0) => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_140_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88080000"
    )
        port map (
      I0 => icmp_ln82_fu_1140_p2,
      I1 => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_5_n_3\,
      I2 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I4 => OUTPUT_IMAGE_V_data_V_1_sel_wr,
      O => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_sel_wr,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      O => OUTPUT_IMAGE_V_data_V_1_load_B
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(0),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(1),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[2]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(2),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[3]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(3),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[4]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(4),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[5]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(5),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[6]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(6),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_data_V_1_load_B,
      D => \OUTPUT_IMAGE_V_data_V_1_payload_A[7]_i_3_n_3\,
      Q => OUTPUT_IMAGE_V_data_V_1_payload_B(7),
      S => \OUTPUT_IMAGE_V_data_V_1_payload_B[7]_i_1_n_3\
    );
OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_data_V_1_sel,
      O => OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_data_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_data_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB03330444FCCCF"
    )
        port map (
      I0 => \ap_CS_fsm[5]_i_2_n_3\,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => \ap_CS_fsm[8]_i_3_n_3\,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I5 => OUTPUT_IMAGE_V_data_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_data_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AFA00000000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I5 => ap_rst_n,
      O => \OUTPUT_IMAGE_V_data_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDDDDDDDDDDDDD"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I3 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_data_V_1_state(1)
    );
\OUTPUT_IMAGE_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_data_V_1_state[0]_i_1_n_3\,
      Q => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      R => '0'
    );
\OUTPUT_IMAGE_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_data_V_1_state(1),
      Q => OUTPUT_IMAGE_V_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_dest_V_fu_162(0),
      I1 => tmp_dest_V_3_reg_1593(0),
      I2 => INPUT_IMAGE_V_dest_V_0_data_out(0),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_dest_V_1_data_in(0)
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_dest_V_fu_162(1),
      I1 => tmp_dest_V_3_reg_1593(1),
      I2 => INPUT_IMAGE_V_dest_V_0_data_out(1),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_dest_V_1_data_in(1)
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_dest_V_fu_162(2),
      I1 => tmp_dest_V_3_reg_1593(2),
      I2 => INPUT_IMAGE_V_dest_V_0_data_out(2),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_dest_V_1_data_in(2)
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_dest_V_fu_162(3),
      I1 => tmp_dest_V_3_reg_1593(3),
      I2 => INPUT_IMAGE_V_dest_V_0_data_out(3),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_dest_V_1_data_in(3)
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_dest_V_fu_162(4),
      I1 => tmp_dest_V_3_reg_1593(4),
      I2 => INPUT_IMAGE_V_dest_V_0_data_out(4),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_dest_V_1_data_in(4)
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_sel_wr,
      I1 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I2 => \^output_image_tvalid\,
      O => OUTPUT_IMAGE_V_dest_V_1_load_A
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_dest_V_fu_162(5),
      I1 => tmp_dest_V_3_reg_1593(5),
      I2 => INPUT_IMAGE_V_dest_V_0_data_out(5),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_dest_V_1_data_in(5)
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_A,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(0),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_A(0),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_A,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(1),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_A(1),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_A,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(2),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_A(2),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_A,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(3),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_A(3),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_A,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(4),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_A(4),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_A,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(5),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_A(5),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_dest_V_1_sel_wr,
      I1 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I2 => \^output_image_tvalid\,
      O => OUTPUT_IMAGE_V_dest_V_1_load_B
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_B,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(0),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_B(0),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_B,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(1),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_B(1),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_B,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(2),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_B(2),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_B,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(3),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_B(3),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_B,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(4),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_B(4),
      R => '0'
    );
\OUTPUT_IMAGE_V_dest_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_dest_V_1_load_B,
      D => OUTPUT_IMAGE_V_dest_V_1_data_in(5),
      Q => OUTPUT_IMAGE_V_dest_V_1_payload_B(5),
      R => '0'
    );
OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^output_image_tvalid\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_dest_V_1_sel,
      O => OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_dest_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_dest_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_dest_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2303FFFFDCFC0000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I5 => OUTPUT_IMAGE_V_dest_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_dest_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_dest_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_dest_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FF00FFF2FF00"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I3 => \^output_image_tvalid\,
      I4 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I5 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => sobel_filter_ctrl_bus_s_axi_U_n_13,
      I2 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I3 => sobel_filter_ctrl_bus_s_axi_U_n_12,
      I4 => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3\,
      I5 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3\,
      O => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555000055550000"
    )
        port map (
      I0 => \ap_CS_fsm[5]_i_2_n_3\,
      I1 => icmp_ln52_fu_1014_p2,
      I2 => icmp_ln52_1_fu_1020_p2,
      I3 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => ap_CS_fsm_state5,
      O => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      O => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3\
    );
\OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23030000FFFFFFFF"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^output_image_tvalid\,
      I1 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_dest_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_1_n_3\,
      Q => \^output_image_tvalid\,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_dest_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_dest_V_1_state[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_id_V_fu_178(0),
      I1 => tmp_id_V_3_reg_1587(0),
      I2 => INPUT_IMAGE_V_id_V_0_data_out(0),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_id_V_1_data_in(0)
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_id_V_fu_178(1),
      I1 => tmp_id_V_3_reg_1587(1),
      I2 => INPUT_IMAGE_V_id_V_0_data_out(1),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_id_V_1_data_in(1)
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_id_V_fu_178(2),
      I1 => tmp_id_V_3_reg_1587(2),
      I2 => INPUT_IMAGE_V_id_V_0_data_out(2),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_id_V_1_data_in(2)
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_id_V_fu_178(3),
      I1 => tmp_id_V_3_reg_1587(3),
      I2 => INPUT_IMAGE_V_id_V_0_data_out(3),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_id_V_1_data_in(3)
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_sel_wr,
      I1 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      I2 => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      O => OUTPUT_IMAGE_V_id_V_1_load_A
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => tmp_id_V_fu_178(4),
      I1 => tmp_id_V_3_reg_1587(4),
      I2 => INPUT_IMAGE_V_id_V_0_data_out(4),
      I3 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => OUTPUT_IMAGE_V_id_V_1_data_in(4)
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_A,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(0),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_A(0),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_A,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(1),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_A(1),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_A,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(2),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_A(2),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_A,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(3),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_A(3),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_A,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(4),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_A(4),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_B[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_id_V_1_sel_wr,
      I1 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      I2 => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      O => OUTPUT_IMAGE_V_id_V_1_load_B
    );
\OUTPUT_IMAGE_V_id_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_B,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(0),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_B(0),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_B,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(1),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_B(1),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_B,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(2),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_B(2),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_B,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(3),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_B(3),
      R => '0'
    );
\OUTPUT_IMAGE_V_id_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => OUTPUT_IMAGE_V_id_V_1_load_B,
      D => OUTPUT_IMAGE_V_id_V_1_data_in(4),
      Q => OUTPUT_IMAGE_V_id_V_1_payload_B(4),
      R => '0'
    );
OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_id_V_1_sel,
      O => OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_id_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_id_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_id_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2303FFFFDCFC0000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      I5 => OUTPUT_IMAGE_V_id_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_id_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_id_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_id_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_id_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FF00FFF2FF00"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I3 => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      I4 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      I5 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_id_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_id_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23030000FFFFFFFF"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_id_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_3_n_3\,
      O => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_id_V_1_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I3 => icmp_ln52_1_fu_1020_p2,
      I4 => icmp_ln52_fu_1014_p2,
      O => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_id_V_1_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_id_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_id_V_1_state[0]_i_1_n_3\,
      Q => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_id_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_id_V_1_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA000000EA"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_keep_V_0_data_out,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_keep_V_1_sel_wr,
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_10,
      I5 => OUTPUT_IMAGE_V_keep_V_1_payload_A,
      O => \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222F22222220"
    )
        port map (
      I0 => tmp_keep_V_3_reg_1569,
      I1 => \ap_CS_fsm[5]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3\,
      I3 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_11,
      I5 => tmp_keep_V_fu_166,
      O => \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_keep_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_keep_V_1_payload_A,
      R => '0'
    );
\OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFF0000EA00"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_keep_V_1_payload_A[0]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_keep_V_0_data_out,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_keep_V_1_sel_wr,
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_10,
      I5 => OUTPUT_IMAGE_V_keep_V_1_payload_B,
      O => \OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_keep_V_1_payload_B[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_keep_V_1_payload_B,
      R => '0'
    );
OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_keep_V_1_sel,
      O => OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_keep_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_keep_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_keep_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2303FFFFDCFC0000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      I5 => OUTPUT_IMAGE_V_keep_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_keep_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_keep_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_keep_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FF00FFF2FF00"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I3 => \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0]\,
      I4 => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      I5 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23030000FFFFFFFF"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_keep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_keep_V_1_state[0]_i_1_n_3\,
      Q => \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0]\,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_keep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_keep_V_1_state[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF2F202000202"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_last_V_1_sel_wr,
      I3 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      I4 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      I5 => OUTPUT_IMAGE_V_last_V_1_payload_A,
      O => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => i_1_reg_460(0),
      I1 => i_1_reg_460(10),
      I2 => i_1_reg_460(9),
      I3 => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3_n_3\,
      O => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_1_reg_460(7),
      I1 => i_1_reg_460(8),
      I2 => i_1_reg_460(5),
      I3 => i_1_reg_460(6),
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_14,
      O => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_last_V_1_payload_A,
      R => '0'
    );
\OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_last_V_1_payload_A[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_last_V_1_sel_wr,
      I3 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      I4 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      I5 => OUTPUT_IMAGE_V_last_V_1_payload_B,
      O => \OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_last_V_1_payload_B[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_last_V_1_payload_B,
      R => '0'
    );
OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_last_V_1_sel,
      O => OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_last_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2303FFFFDCFC0000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      I5 => OUTPUT_IMAGE_V_last_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_last_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FF00FFF2FF00"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I3 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      I4 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      I5 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_last_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23030000FFFFFFFF"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_last_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_last_V_1_state[1]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_last_V_1_state[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_last_V_1_state[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_last_V_1_state[0]_i_1_n_3\,
      Q => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_last_V_1_state[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA000000EA"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_strb_V_0_data_out,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_strb_V_1_sel_wr,
      I4 => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3\,
      I5 => OUTPUT_IMAGE_V_strb_V_1_payload_A,
      O => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222F22222220"
    )
        port map (
      I0 => tmp_strb_V_3_reg_1575,
      I1 => \ap_CS_fsm[5]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3\,
      I3 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_11,
      I5 => tmp_strb_V_fu_170,
      O => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      O => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_strb_V_1_payload_A,
      R => '0'
    );
\OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFF0000EA00"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_strb_V_0_data_out,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_strb_V_1_sel_wr,
      I4 => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3\,
      I5 => OUTPUT_IMAGE_V_strb_V_1_payload_B,
      O => \OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_strb_V_1_payload_B[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_strb_V_1_payload_B,
      R => '0'
    );
OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_strb_V_1_sel,
      O => OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_strb_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_strb_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_strb_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2303FFFFDCFC0000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      I5 => OUTPUT_IMAGE_V_strb_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_strb_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_strb_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_strb_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FF00FFF2FF00"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I3 => \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\,
      I4 => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      I5 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23030000FFFFFFFF"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_strb_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_strb_V_1_state[0]_i_1_n_3\,
      Q => \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_strb_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_strb_V_1_state[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA000000EA"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_user_V_0_data_out(0),
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_user_V_1_sel_wr,
      I4 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3\,
      I5 => OUTPUT_IMAGE_V_user_V_1_payload_A(0),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222F22222220"
    )
        port map (
      I0 => tmp_user_V_3_reg_1581(0),
      I1 => \ap_CS_fsm[5]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3\,
      I3 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_11,
      I5 => tmp_user_V_fu_174(0),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA000000EA"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_user_V_0_data_out(1),
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_user_V_1_sel_wr,
      I4 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3\,
      I5 => OUTPUT_IMAGE_V_user_V_1_payload_A(1),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222F22222220"
    )
        port map (
      I0 => tmp_user_V_3_reg_1581(1),
      I1 => \ap_CS_fsm[5]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3\,
      I3 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I4 => sobel_filter_ctrl_bus_s_axi_U_n_11,
      I5 => tmp_user_V_fu_174(1),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
        port map (
      I0 => sobel_filter_ctrl_bus_s_axi_U_n_11,
      I1 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I2 => sobel_filter_ctrl_bus_s_axi_U_n_13,
      I3 => ap_CS_fsm_state11,
      I4 => \ap_CS_fsm[5]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_V_user_V_1_ack_in,
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => sobel_filter_ctrl_bus_s_axi_U_n_15,
      I1 => sobel_filter_ctrl_bus_s_axi_U_n_14,
      I2 => i_1_reg_460(1),
      I3 => i_1_reg_460(0),
      I4 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6_n_3\,
      I5 => ap_CS_fsm_state11,
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_5_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_1_reg_460(10),
      I1 => i_1_reg_460(9),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_6_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_user_V_1_payload_A(0),
      R => '0'
    );
\OUTPUT_IMAGE_V_user_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_user_V_1_payload_A(1),
      R => '0'
    );
\OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFF0000EA00"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_payload_A[0]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_user_V_0_data_out(0),
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_user_V_1_sel_wr,
      I4 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3\,
      I5 => OUTPUT_IMAGE_V_user_V_1_payload_B(0),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFF0000EA00"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_2_n_3\,
      I1 => INPUT_IMAGE_V_user_V_0_data_out(1),
      I2 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_3_n_3\,
      I3 => OUTPUT_IMAGE_V_user_V_1_sel_wr,
      I4 => \OUTPUT_IMAGE_V_user_V_1_payload_A[1]_i_4_n_3\,
      I5 => OUTPUT_IMAGE_V_user_V_1_payload_B(1),
      O => \OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_user_V_1_payload_B[0]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_user_V_1_payload_B(0),
      R => '0'
    );
\OUTPUT_IMAGE_V_user_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_user_V_1_payload_B[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_user_V_1_payload_B(1),
      R => '0'
    );
OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      I2 => OUTPUT_IMAGE_V_user_V_1_sel,
      O => OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1_n_3
    );
OUTPUT_IMAGE_V_user_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_user_V_1_sel_rd_i_1_n_3,
      Q => OUTPUT_IMAGE_V_user_V_1_sel,
      R => ap_rst_n_inv
    );
OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2303FFFFDCFC0000"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_user_V_1_ack_in,
      I5 => OUTPUT_IMAGE_V_user_V_1_sel_wr,
      O => OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1_n_3
    );
OUTPUT_IMAGE_V_user_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => OUTPUT_IMAGE_V_user_V_1_sel_wr_i_1_n_3,
      Q => OUTPUT_IMAGE_V_user_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FF00FFF2FF00"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_3_n_3\,
      I3 => \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\,
      I4 => OUTPUT_IMAGE_V_user_V_1_ack_in,
      I5 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_user_V_1_state[0]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23030000FFFFFFFF"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      I1 => \OUTPUT_IMAGE_V_id_V_1_state[1]_i_2_n_3\,
      I2 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm[5]_i_2_n_3\,
      I4 => OUTPUT_IMAGE_V_user_V_1_ack_in,
      I5 => \OUTPUT_IMAGE_V_user_V_1_state[1]_i_2_n_3\,
      O => \OUTPUT_IMAGE_V_user_V_1_state[1]_i_1_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\,
      I1 => OUTPUT_IMAGE_TREADY,
      O => \OUTPUT_IMAGE_V_user_V_1_state[1]_i_2_n_3\
    );
\OUTPUT_IMAGE_V_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_user_V_1_state[0]_i_1_n_3\,
      Q => \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\,
      R => ap_rst_n_inv
    );
\OUTPUT_IMAGE_V_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \OUTPUT_IMAGE_V_user_V_1_state[1]_i_1_n_3\,
      Q => OUTPUT_IMAGE_V_user_V_1_ack_in,
      R => ap_rst_n_inv
    );
\add_ln34_1_reg_1564[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_2_reg_379(0),
      O => add_ln34_1_fu_596_p2(0)
    );
\add_ln34_1_reg_1564_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(0),
      Q => add_ln34_1_reg_1564(0),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(10),
      Q => add_ln34_1_reg_1564(10),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(11),
      Q => add_ln34_1_reg_1564(11),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(12),
      Q => add_ln34_1_reg_1564(12),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln34_1_reg_1564_reg[8]_i_1_n_3\,
      CO(3) => \add_ln34_1_reg_1564_reg[12]_i_1_n_3\,
      CO(2) => \add_ln34_1_reg_1564_reg[12]_i_1_n_4\,
      CO(1) => \add_ln34_1_reg_1564_reg[12]_i_1_n_5\,
      CO(0) => \add_ln34_1_reg_1564_reg[12]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_1_fu_596_p2(12 downto 9),
      S(3 downto 0) => counter_2_reg_379(12 downto 9)
    );
\add_ln34_1_reg_1564_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(13),
      Q => add_ln34_1_reg_1564(13),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(14),
      Q => add_ln34_1_reg_1564(14),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(15),
      Q => add_ln34_1_reg_1564(15),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(16),
      Q => add_ln34_1_reg_1564(16),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln34_1_reg_1564_reg[12]_i_1_n_3\,
      CO(3) => \add_ln34_1_reg_1564_reg[16]_i_1_n_3\,
      CO(2) => \add_ln34_1_reg_1564_reg[16]_i_1_n_4\,
      CO(1) => \add_ln34_1_reg_1564_reg[16]_i_1_n_5\,
      CO(0) => \add_ln34_1_reg_1564_reg[16]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_1_fu_596_p2(16 downto 13),
      S(3 downto 0) => counter_2_reg_379(16 downto 13)
    );
\add_ln34_1_reg_1564_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(17),
      Q => add_ln34_1_reg_1564(17),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(18),
      Q => add_ln34_1_reg_1564(18),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(19),
      Q => add_ln34_1_reg_1564(19),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(1),
      Q => add_ln34_1_reg_1564(1),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(20),
      Q => add_ln34_1_reg_1564(20),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln34_1_reg_1564_reg[16]_i_1_n_3\,
      CO(3) => \NLW_add_ln34_1_reg_1564_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \add_ln34_1_reg_1564_reg[20]_i_1_n_4\,
      CO(1) => \add_ln34_1_reg_1564_reg[20]_i_1_n_5\,
      CO(0) => \add_ln34_1_reg_1564_reg[20]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_1_fu_596_p2(20 downto 17),
      S(3 downto 0) => counter_2_reg_379(20 downto 17)
    );
\add_ln34_1_reg_1564_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(2),
      Q => add_ln34_1_reg_1564(2),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(3),
      Q => add_ln34_1_reg_1564(3),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(4),
      Q => add_ln34_1_reg_1564(4),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln34_1_reg_1564_reg[4]_i_1_n_3\,
      CO(2) => \add_ln34_1_reg_1564_reg[4]_i_1_n_4\,
      CO(1) => \add_ln34_1_reg_1564_reg[4]_i_1_n_5\,
      CO(0) => \add_ln34_1_reg_1564_reg[4]_i_1_n_6\,
      CYINIT => counter_2_reg_379(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_1_fu_596_p2(4 downto 1),
      S(3 downto 0) => counter_2_reg_379(4 downto 1)
    );
\add_ln34_1_reg_1564_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(5),
      Q => add_ln34_1_reg_1564(5),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(6),
      Q => add_ln34_1_reg_1564(6),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(7),
      Q => add_ln34_1_reg_1564(7),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(8),
      Q => add_ln34_1_reg_1564(8),
      R => '0'
    );
\add_ln34_1_reg_1564_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln34_1_reg_1564_reg[4]_i_1_n_3\,
      CO(3) => \add_ln34_1_reg_1564_reg[8]_i_1_n_3\,
      CO(2) => \add_ln34_1_reg_1564_reg[8]_i_1_n_4\,
      CO(1) => \add_ln34_1_reg_1564_reg[8]_i_1_n_5\,
      CO(0) => \add_ln34_1_reg_1564_reg[8]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_1_fu_596_p2(8 downto 5),
      S(3 downto 0) => counter_2_reg_379(8 downto 5)
    );
\add_ln34_1_reg_1564_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => add_ln34_1_fu_596_p2(9),
      Q => add_ln34_1_reg_1564(9),
      R => '0'
    );
\add_ln34_reg_1500[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_1_reg_345(10),
      O => \add_ln34_reg_1500[12]_i_2_n_3\
    );
\add_ln34_reg_1500[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA8AAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \row_assign_reg_356_reg_n_3_[6]\,
      I2 => \row_assign_reg_356_reg_n_3_[7]\,
      I3 => \row_assign_reg_356_reg_n_3_[1]\,
      I4 => \row_assign_reg_356_reg_n_3_[0]\,
      I5 => \counter_0_reg_333[20]_i_3_n_3\,
      O => col_assign_reg_3670
    );
\add_ln34_reg_1500_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(0),
      Q => add_ln34_reg_1500(0),
      R => '0'
    );
\add_ln34_reg_1500_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(10),
      Q => add_ln34_reg_1500(10),
      R => '0'
    );
\add_ln34_reg_1500_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(11),
      Q => add_ln34_reg_1500(11),
      R => '0'
    );
\add_ln34_reg_1500_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(12),
      Q => add_ln34_reg_1500(12),
      R => '0'
    );
\add_ln34_reg_1500_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln34_reg_1500_reg[12]_i_1_n_3\,
      CO(2) => \add_ln34_reg_1500_reg[12]_i_1_n_4\,
      CO(1) => \add_ln34_reg_1500_reg[12]_i_1_n_5\,
      CO(0) => \add_ln34_reg_1500_reg[12]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => counter_1_reg_345(10),
      DI(0) => '0',
      O(3 downto 0) => add_ln34_fu_507_p2(12 downto 9),
      S(3 downto 2) => counter_1_reg_345(12 downto 11),
      S(1) => \add_ln34_reg_1500[12]_i_2_n_3\,
      S(0) => counter_1_reg_345(9)
    );
\add_ln34_reg_1500_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(13),
      Q => add_ln34_reg_1500(13),
      R => '0'
    );
\add_ln34_reg_1500_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(14),
      Q => add_ln34_reg_1500(14),
      R => '0'
    );
\add_ln34_reg_1500_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(15),
      Q => add_ln34_reg_1500(15),
      R => '0'
    );
\add_ln34_reg_1500_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(16),
      Q => add_ln34_reg_1500(16),
      R => '0'
    );
\add_ln34_reg_1500_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln34_reg_1500_reg[12]_i_1_n_3\,
      CO(3) => \add_ln34_reg_1500_reg[16]_i_1_n_3\,
      CO(2) => \add_ln34_reg_1500_reg[16]_i_1_n_4\,
      CO(1) => \add_ln34_reg_1500_reg[16]_i_1_n_5\,
      CO(0) => \add_ln34_reg_1500_reg[16]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_fu_507_p2(16 downto 13),
      S(3 downto 0) => counter_1_reg_345(16 downto 13)
    );
\add_ln34_reg_1500_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(17),
      Q => add_ln34_reg_1500(17),
      R => '0'
    );
\add_ln34_reg_1500_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(18),
      Q => add_ln34_reg_1500(18),
      R => '0'
    );
\add_ln34_reg_1500_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(19),
      Q => add_ln34_reg_1500(19),
      R => '0'
    );
\add_ln34_reg_1500_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(1),
      Q => add_ln34_reg_1500(1),
      R => '0'
    );
\add_ln34_reg_1500_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(20),
      Q => add_ln34_reg_1500(20),
      R => '0'
    );
\add_ln34_reg_1500_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln34_reg_1500_reg[16]_i_1_n_3\,
      CO(3) => \NLW_add_ln34_reg_1500_reg[20]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \add_ln34_reg_1500_reg[20]_i_2_n_4\,
      CO(1) => \add_ln34_reg_1500_reg[20]_i_2_n_5\,
      CO(0) => \add_ln34_reg_1500_reg[20]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln34_fu_507_p2(20 downto 17),
      S(3 downto 0) => counter_1_reg_345(20 downto 17)
    );
\add_ln34_reg_1500_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(2),
      Q => add_ln34_reg_1500(2),
      R => '0'
    );
\add_ln34_reg_1500_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(3),
      Q => add_ln34_reg_1500(3),
      R => '0'
    );
\add_ln34_reg_1500_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(4),
      Q => add_ln34_reg_1500(4),
      R => '0'
    );
\add_ln34_reg_1500_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(5),
      Q => add_ln34_reg_1500(5),
      R => '0'
    );
\add_ln34_reg_1500_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(6),
      Q => add_ln34_reg_1500(6),
      R => '0'
    );
\add_ln34_reg_1500_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(7),
      Q => add_ln34_reg_1500(7),
      R => '0'
    );
\add_ln34_reg_1500_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => counter_1_reg_345(8),
      Q => add_ln34_reg_1500(8),
      R => '0'
    );
\add_ln34_reg_1500_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => add_ln34_fu_507_p2(9),
      Q => add_ln34_reg_1500(9),
      R => '0'
    );
\and_ln41_1_reg_1551[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \row_assign_reg_356[7]_i_3_n_3\,
      O => and_ln41_1_reg_15510
    );
\and_ln41_1_reg_1551[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \col_assign_reg_367_reg_n_3_[0]\,
      I1 => tmp_2_fu_1114_p4(0),
      I2 => tmp_2_fu_1114_p4(1),
      I3 => icmp_ln41_1_reg_1505,
      I4 => \icmp_ln41_reg_1487_reg_n_3_[0]\,
      I5 => \and_ln41_1_reg_1551[0]_i_3_n_3\,
      O => and_ln41_1_fu_564_p2
    );
\and_ln41_1_reg_1551[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(9),
      I1 => tmp_2_fu_1114_p4(8),
      I2 => \row_assign_reg_356[7]_i_4_n_3\,
      O => \and_ln41_1_reg_1551[0]_i_3_n_3\
    );
\and_ln41_1_reg_1551_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => and_ln41_1_fu_564_p2,
      Q => and_ln41_1_reg_1551,
      R => '0'
    );
\and_ln52_reg_1653[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => icmp_ln52_1_fu_1020_p2,
      I1 => icmp_ln52_fu_1014_p2,
      O => p_92_in
    );
\and_ln52_reg_1653_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => p_92_in,
      Q => and_ln52_reg_1653,
      R => '0'
    );
\ap_CS_fsm[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \ap_CS_fsm[10]_i_2_n_3\,
      I1 => ap_CS_fsm_state11,
      I2 => ap_NS_fsm115_out,
      I3 => ap_CS_fsm_state12,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      O => ap_NS_fsm(10)
    );
\ap_CS_fsm[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => sobel_filter_ctrl_bus_s_axi_U_n_13,
      I2 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      I3 => sobel_filter_ctrl_bus_s_axi_U_n_12,
      I4 => \OUTPUT_IMAGE_V_strb_V_1_payload_A[0]_i_3_n_3\,
      I5 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_5_n_3\,
      O => \ap_CS_fsm[10]_i_2_n_3\
    );
\ap_CS_fsm[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => ap_CS_fsm_state12,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_n_3\,
      O => ap_NS_fsm(11)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFFFFAAAAAAAA"
    )
        port map (
      I0 => and_ln41_1_reg_15510,
      I1 => icmp_ln52_fu_1014_p2,
      I2 => icmp_ln52_1_fu_1020_p2,
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I4 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I5 => ap_CS_fsm_state5,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => \ap_CS_fsm[5]_i_2_n_3\,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => ap_NS_fsm17_out,
      I3 => ap_NS_fsm112_out,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \colOffset_0_reg_390_reg_n_3_[2]\,
      I1 => \colOffset_0_reg_390_reg_n_3_[0]\,
      I2 => \colOffset_0_reg_390_reg_n_3_[1]\,
      I3 => ap_CS_fsm_state6,
      O => \ap_CS_fsm[5]_i_2_n_3\
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAABAAABAAABA"
    )
        port map (
      I0 => \ap_CS_fsm[8]_i_2_n_3\,
      I1 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I2 => \ap_CS_fsm[8]_i_3_n_3\,
      I3 => icmp_ln61_fu_1032_p2,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => ap_CS_fsm_state10,
      O => ap_NS_fsm(8)
    );
\ap_CS_fsm[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(17),
      I1 => add_ln34_1_fu_596_p2(16),
      O => \ap_CS_fsm[8]_i_10_n_3\
    );
\ap_CS_fsm[8]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(14),
      I1 => add_ln34_1_fu_596_p2(15),
      O => \ap_CS_fsm[8]_i_12_n_3\
    );
\ap_CS_fsm[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(12),
      I1 => add_ln34_1_fu_596_p2(13),
      O => \ap_CS_fsm[8]_i_13_n_3\
    );
\ap_CS_fsm[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(10),
      I1 => add_ln34_1_fu_596_p2(11),
      O => \ap_CS_fsm[8]_i_14_n_3\
    );
\ap_CS_fsm[8]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(8),
      I1 => add_ln34_1_fu_596_p2(9),
      O => \ap_CS_fsm[8]_i_15_n_3\
    );
\ap_CS_fsm[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(15),
      I1 => add_ln34_1_fu_596_p2(14),
      O => \ap_CS_fsm[8]_i_16_n_3\
    );
\ap_CS_fsm[8]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(13),
      I1 => add_ln34_1_fu_596_p2(12),
      O => \ap_CS_fsm[8]_i_17_n_3\
    );
\ap_CS_fsm[8]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(11),
      I1 => add_ln34_1_fu_596_p2(10),
      O => \ap_CS_fsm[8]_i_18_n_3\
    );
\ap_CS_fsm[8]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(9),
      I1 => add_ln34_1_fu_596_p2(8),
      O => \ap_CS_fsm[8]_i_19_n_3\
    );
\ap_CS_fsm[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44744444"
    )
        port map (
      I0 => \ap_CS_fsm[5]_i_2_n_3\,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => icmp_ln61_reg_1657,
      I3 => and_ln52_reg_1653,
      I4 => ap_CS_fsm_state9,
      O => \ap_CS_fsm[8]_i_2_n_3\
    );
\ap_CS_fsm[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(6),
      I1 => add_ln34_1_fu_596_p2(7),
      O => \ap_CS_fsm[8]_i_20_n_3\
    );
\ap_CS_fsm[8]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(4),
      I1 => add_ln34_1_fu_596_p2(5),
      O => \ap_CS_fsm[8]_i_21_n_3\
    );
\ap_CS_fsm[8]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(2),
      I1 => add_ln34_1_fu_596_p2(3),
      O => \ap_CS_fsm[8]_i_22_n_3\
    );
\ap_CS_fsm[8]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(7),
      I1 => add_ln34_1_fu_596_p2(6),
      O => \ap_CS_fsm[8]_i_23_n_3\
    );
\ap_CS_fsm[8]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(5),
      I1 => add_ln34_1_fu_596_p2(4),
      O => \ap_CS_fsm[8]_i_24_n_3\
    );
\ap_CS_fsm[8]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(3),
      I1 => add_ln34_1_fu_596_p2(2),
      O => \ap_CS_fsm[8]_i_25_n_3\
    );
\ap_CS_fsm[8]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_2_reg_379(0),
      I1 => add_ln34_1_fu_596_p2(1),
      O => \ap_CS_fsm[8]_i_26_n_3\
    );
\ap_CS_fsm[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => icmp_ln52_fu_1014_p2,
      I1 => icmp_ln52_1_fu_1020_p2,
      O => \ap_CS_fsm[8]_i_3_n_3\
    );
\ap_CS_fsm[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(18),
      I1 => add_ln34_1_fu_596_p2(19),
      O => \ap_CS_fsm[8]_i_6_n_3\
    );
\ap_CS_fsm[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(16),
      I1 => add_ln34_1_fu_596_p2(17),
      O => \ap_CS_fsm[8]_i_7_n_3\
    );
\ap_CS_fsm[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(20),
      O => \ap_CS_fsm[8]_i_8_n_3\
    );
\ap_CS_fsm[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(19),
      I1 => add_ln34_1_fu_596_p2(18),
      O => \ap_CS_fsm[8]_i_9_n_3\
    );
\ap_CS_fsm[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => icmp_ln52_fu_1014_p2,
      I1 => icmp_ln52_1_fu_1020_p2,
      I2 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      I3 => ap_CS_fsm_state5,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => ap_CS_fsm_state10,
      O => ap_NS_fsm(9)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_3_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(10),
      Q => ap_CS_fsm_state11,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(11),
      Q => ap_CS_fsm_state12,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \counter_2_reg_379[20]_i_1_n_3\,
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => rowOffset_reg_16870,
      Q => ap_CS_fsm_state8,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state9,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[8]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ap_CS_fsm_reg[8]_i_11_n_3\,
      CO(2) => \ap_CS_fsm_reg[8]_i_11_n_4\,
      CO(1) => \ap_CS_fsm_reg[8]_i_11_n_5\,
      CO(0) => \ap_CS_fsm_reg[8]_i_11_n_6\,
      CYINIT => '0',
      DI(3) => \ap_CS_fsm[8]_i_20_n_3\,
      DI(2) => \ap_CS_fsm[8]_i_21_n_3\,
      DI(1) => \ap_CS_fsm[8]_i_22_n_3\,
      DI(0) => add_ln34_1_fu_596_p2(1),
      O(3 downto 0) => \NLW_ap_CS_fsm_reg[8]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \ap_CS_fsm[8]_i_23_n_3\,
      S(2) => \ap_CS_fsm[8]_i_24_n_3\,
      S(1) => \ap_CS_fsm[8]_i_25_n_3\,
      S(0) => \ap_CS_fsm[8]_i_26_n_3\
    );
\ap_CS_fsm_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_CS_fsm_reg[8]_i_5_n_3\,
      CO(3) => \NLW_ap_CS_fsm_reg[8]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln61_fu_1032_p2,
      CO(1) => \ap_CS_fsm_reg[8]_i_4_n_5\,
      CO(0) => \ap_CS_fsm_reg[8]_i_4_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ap_CS_fsm[8]_i_6_n_3\,
      DI(0) => \ap_CS_fsm[8]_i_7_n_3\,
      O(3 downto 0) => \NLW_ap_CS_fsm_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ap_CS_fsm[8]_i_8_n_3\,
      S(1) => \ap_CS_fsm[8]_i_9_n_3\,
      S(0) => \ap_CS_fsm[8]_i_10_n_3\
    );
\ap_CS_fsm_reg[8]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_CS_fsm_reg[8]_i_11_n_3\,
      CO(3) => \ap_CS_fsm_reg[8]_i_5_n_3\,
      CO(2) => \ap_CS_fsm_reg[8]_i_5_n_4\,
      CO(1) => \ap_CS_fsm_reg[8]_i_5_n_5\,
      CO(0) => \ap_CS_fsm_reg[8]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \ap_CS_fsm[8]_i_12_n_3\,
      DI(2) => \ap_CS_fsm[8]_i_13_n_3\,
      DI(1) => \ap_CS_fsm[8]_i_14_n_3\,
      DI(0) => \ap_CS_fsm[8]_i_15_n_3\,
      O(3 downto 0) => \NLW_ap_CS_fsm_reg[8]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \ap_CS_fsm[8]_i_16_n_3\,
      S(2) => \ap_CS_fsm[8]_i_17_n_3\,
      S(1) => \ap_CS_fsm[8]_i_18_n_3\,
      S(0) => \ap_CS_fsm[8]_i_19_n_3\
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(9),
      Q => ap_CS_fsm_state10,
      R => ap_rst_n_inv
    );
\colOffset_0_reg_390_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => colOffset_reg_1664(0),
      Q => \colOffset_0_reg_390_reg_n_3_[0]\,
      S => ap_NS_fsm112_out
    );
\colOffset_0_reg_390_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => colOffset_reg_1664(1),
      Q => \colOffset_0_reg_390_reg_n_3_[1]\,
      S => ap_NS_fsm112_out
    );
\colOffset_0_reg_390_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => colOffset_reg_1664(2),
      Q => \colOffset_0_reg_390_reg_n_3_[2]\,
      S => ap_NS_fsm112_out
    );
\colOffset_reg_1664[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33FF2300"
    )
        port map (
      I0 => \colOffset_0_reg_390_reg_n_3_[2]\,
      I1 => \colOffset_0_reg_390_reg_n_3_[0]\,
      I2 => \colOffset_0_reg_390_reg_n_3_[1]\,
      I3 => ap_CS_fsm_state6,
      I4 => colOffset_reg_1664(0),
      O => \colOffset_reg_1664[0]_i_1_n_3\
    );
\colOffset_reg_1664[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CFF2C00"
    )
        port map (
      I0 => \colOffset_0_reg_390_reg_n_3_[2]\,
      I1 => \colOffset_0_reg_390_reg_n_3_[0]\,
      I2 => \colOffset_0_reg_390_reg_n_3_[1]\,
      I3 => ap_CS_fsm_state6,
      I4 => colOffset_reg_1664(1),
      O => \colOffset_reg_1664[1]_i_1_n_3\
    );
\colOffset_reg_1664[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7AFF6A00"
    )
        port map (
      I0 => \colOffset_0_reg_390_reg_n_3_[2]\,
      I1 => \colOffset_0_reg_390_reg_n_3_[0]\,
      I2 => \colOffset_0_reg_390_reg_n_3_[1]\,
      I3 => ap_CS_fsm_state6,
      I4 => colOffset_reg_1664(2),
      O => \colOffset_reg_1664[2]_i_1_n_3\
    );
\colOffset_reg_1664_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \colOffset_reg_1664[0]_i_1_n_3\,
      Q => colOffset_reg_1664(0),
      R => '0'
    );
\colOffset_reg_1664_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \colOffset_reg_1664[1]_i_1_n_3\,
      Q => colOffset_reg_1664(1),
      R => '0'
    );
\colOffset_reg_1664_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \colOffset_reg_1664[2]_i_1_n_3\,
      Q => colOffset_reg_1664(2),
      R => '0'
    );
\col_assign_reg_367[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AAAA"
    )
        port map (
      I0 => col_assign_reg_3670,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => icmp_ln61_reg_1657,
      I3 => and_ln52_reg_1653,
      I4 => ap_CS_fsm_state9,
      O => col_assign_reg_367
    );
\col_assign_reg_367[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => ap_CS_fsm_state9,
      I1 => and_ln52_reg_1653,
      I2 => icmp_ln61_reg_1657,
      I3 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      O => \col_assign_reg_367[10]_i_2_n_3\
    );
\col_assign_reg_367_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(0),
      Q => \col_assign_reg_367_reg_n_3_[0]\,
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(10),
      Q => tmp_2_fu_1114_p4(9),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(1),
      Q => tmp_2_fu_1114_p4(0),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(2),
      Q => tmp_2_fu_1114_p4(1),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(3),
      Q => tmp_2_fu_1114_p4(2),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(4),
      Q => tmp_2_fu_1114_p4(3),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(5),
      Q => tmp_2_fu_1114_p4(4),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(6),
      Q => tmp_2_fu_1114_p4(5),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(7),
      Q => tmp_2_fu_1114_p4(6),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(8),
      Q => tmp_2_fu_1114_p4(7),
      R => col_assign_reg_367
    );
\col_assign_reg_367_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => j_reg_1536(9),
      Q => tmp_2_fu_1114_p4(8),
      R => col_assign_reg_367
    );
\counter_0_reg_333[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \row_assign_reg_356_reg_n_3_[6]\,
      I2 => \row_assign_reg_356_reg_n_3_[7]\,
      I3 => \row_assign_reg_356_reg_n_3_[1]\,
      I4 => \row_assign_reg_356_reg_n_3_[0]\,
      I5 => \counter_0_reg_333[20]_i_3_n_3\,
      O => ap_NS_fsm114_out
    );
\counter_0_reg_333[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[3]\,
      I1 => \row_assign_reg_356_reg_n_3_[2]\,
      I2 => \row_assign_reg_356_reg_n_3_[5]\,
      I3 => \row_assign_reg_356_reg_n_3_[4]\,
      O => \counter_0_reg_333[20]_i_3_n_3\
    );
\counter_0_reg_333_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(0),
      Q => \counter_0_reg_333_reg_n_3_[0]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(10),
      Q => \counter_0_reg_333_reg_n_3_[10]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(11),
      Q => \counter_0_reg_333_reg_n_3_[11]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(12),
      Q => \counter_0_reg_333_reg_n_3_[12]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(13),
      Q => \counter_0_reg_333_reg_n_3_[13]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(14),
      Q => \counter_0_reg_333_reg_n_3_[14]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(15),
      Q => \counter_0_reg_333_reg_n_3_[15]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(16),
      Q => \counter_0_reg_333_reg_n_3_[16]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(17),
      Q => \counter_0_reg_333_reg_n_3_[17]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(18),
      Q => \counter_0_reg_333_reg_n_3_[18]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(19),
      Q => \counter_0_reg_333_reg_n_3_[19]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(1),
      Q => \counter_0_reg_333_reg_n_3_[1]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(20),
      Q => \counter_0_reg_333_reg_n_3_[20]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(2),
      Q => \counter_0_reg_333_reg_n_3_[2]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(3),
      Q => \counter_0_reg_333_reg_n_3_[3]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(4),
      Q => \counter_0_reg_333_reg_n_3_[4]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(5),
      Q => \counter_0_reg_333_reg_n_3_[5]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(6),
      Q => \counter_0_reg_333_reg_n_3_[6]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(7),
      Q => \counter_0_reg_333_reg_n_3_[7]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(8),
      Q => \counter_0_reg_333_reg_n_3_[8]\,
      S => counter_0_reg_333
    );
\counter_0_reg_333_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => counter_reg_1482(9),
      Q => \counter_0_reg_333_reg_n_3_[9]\,
      S => counter_0_reg_333
    );
\counter_1_reg_345[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(0),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[0]\,
      O => \counter_1_reg_345[0]_i_1_n_3\
    );
\counter_1_reg_345[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(10),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[10]\,
      O => \counter_1_reg_345[10]_i_1_n_3\
    );
\counter_1_reg_345[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(11),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[11]\,
      O => \counter_1_reg_345[11]_i_1_n_3\
    );
\counter_1_reg_345[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(12),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[12]\,
      O => \counter_1_reg_345[12]_i_1_n_3\
    );
\counter_1_reg_345[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(13),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[13]\,
      O => \counter_1_reg_345[13]_i_1_n_3\
    );
\counter_1_reg_345[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(14),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[14]\,
      O => \counter_1_reg_345[14]_i_1_n_3\
    );
\counter_1_reg_345[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(15),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[15]\,
      O => \counter_1_reg_345[15]_i_1_n_3\
    );
\counter_1_reg_345[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(16),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[16]\,
      O => \counter_1_reg_345[16]_i_1_n_3\
    );
\counter_1_reg_345[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(17),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[17]\,
      O => \counter_1_reg_345[17]_i_1_n_3\
    );
\counter_1_reg_345[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(18),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[18]\,
      O => \counter_1_reg_345[18]_i_1_n_3\
    );
\counter_1_reg_345[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(19),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[19]\,
      O => \counter_1_reg_345[19]_i_1_n_3\
    );
\counter_1_reg_345[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(1),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[1]\,
      O => \counter_1_reg_345[1]_i_1_n_3\
    );
\counter_1_reg_345[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEF0000"
    )
        port map (
      I0 => i_0_reg_322(1),
      I1 => i_0_reg_322(0),
      I2 => i_0_reg_322(3),
      I3 => i_0_reg_322(2),
      I4 => ap_CS_fsm_state2,
      I5 => ap_NS_fsm113_out,
      O => ap_NS_fsm(2)
    );
\counter_1_reg_345[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(20),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[20]\,
      O => \counter_1_reg_345[20]_i_2_n_3\
    );
\counter_1_reg_345[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(2),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[2]\,
      O => \counter_1_reg_345[2]_i_1_n_3\
    );
\counter_1_reg_345[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(3),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[3]\,
      O => \counter_1_reg_345[3]_i_1_n_3\
    );
\counter_1_reg_345[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(4),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[4]\,
      O => \counter_1_reg_345[4]_i_1_n_3\
    );
\counter_1_reg_345[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(5),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[5]\,
      O => \counter_1_reg_345[5]_i_1_n_3\
    );
\counter_1_reg_345[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(6),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[6]\,
      O => \counter_1_reg_345[6]_i_1_n_3\
    );
\counter_1_reg_345[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(7),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[7]\,
      O => \counter_1_reg_345[7]_i_1_n_3\
    );
\counter_1_reg_345[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(8),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[8]\,
      O => \counter_1_reg_345[8]_i_1_n_3\
    );
\counter_1_reg_345[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln34_reg_1500(9),
      I1 => ap_NS_fsm113_out,
      I2 => \counter_0_reg_333_reg_n_3_[9]\,
      O => \counter_1_reg_345[9]_i_1_n_3\
    );
\counter_1_reg_345_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[0]_i_1_n_3\,
      Q => counter_1_reg_345(0),
      R => '0'
    );
\counter_1_reg_345_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[10]_i_1_n_3\,
      Q => counter_1_reg_345(10),
      R => '0'
    );
\counter_1_reg_345_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[11]_i_1_n_3\,
      Q => counter_1_reg_345(11),
      R => '0'
    );
\counter_1_reg_345_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[12]_i_1_n_3\,
      Q => counter_1_reg_345(12),
      R => '0'
    );
\counter_1_reg_345_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[13]_i_1_n_3\,
      Q => counter_1_reg_345(13),
      R => '0'
    );
\counter_1_reg_345_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[14]_i_1_n_3\,
      Q => counter_1_reg_345(14),
      R => '0'
    );
\counter_1_reg_345_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[15]_i_1_n_3\,
      Q => counter_1_reg_345(15),
      R => '0'
    );
\counter_1_reg_345_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[16]_i_1_n_3\,
      Q => counter_1_reg_345(16),
      R => '0'
    );
\counter_1_reg_345_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[17]_i_1_n_3\,
      Q => counter_1_reg_345(17),
      R => '0'
    );
\counter_1_reg_345_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[18]_i_1_n_3\,
      Q => counter_1_reg_345(18),
      R => '0'
    );
\counter_1_reg_345_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[19]_i_1_n_3\,
      Q => counter_1_reg_345(19),
      R => '0'
    );
\counter_1_reg_345_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[1]_i_1_n_3\,
      Q => counter_1_reg_345(1),
      R => '0'
    );
\counter_1_reg_345_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[20]_i_2_n_3\,
      Q => counter_1_reg_345(20),
      R => '0'
    );
\counter_1_reg_345_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[2]_i_1_n_3\,
      Q => counter_1_reg_345(2),
      R => '0'
    );
\counter_1_reg_345_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[3]_i_1_n_3\,
      Q => counter_1_reg_345(3),
      R => '0'
    );
\counter_1_reg_345_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[4]_i_1_n_3\,
      Q => counter_1_reg_345(4),
      R => '0'
    );
\counter_1_reg_345_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[5]_i_1_n_3\,
      Q => counter_1_reg_345(5),
      R => '0'
    );
\counter_1_reg_345_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[6]_i_1_n_3\,
      Q => counter_1_reg_345(6),
      R => '0'
    );
\counter_1_reg_345_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[7]_i_1_n_3\,
      Q => counter_1_reg_345(7),
      R => '0'
    );
\counter_1_reg_345_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[8]_i_1_n_3\,
      Q => counter_1_reg_345(8),
      R => '0'
    );
\counter_1_reg_345_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(2),
      D => \counter_1_reg_345[9]_i_1_n_3\,
      Q => counter_1_reg_345(9),
      R => '0'
    );
\counter_2_reg_379[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(0),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(0),
      O => \counter_2_reg_379[0]_i_1_n_3\
    );
\counter_2_reg_379[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(10),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(10),
      O => \counter_2_reg_379[10]_i_1_n_3\
    );
\counter_2_reg_379[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(11),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(11),
      O => \counter_2_reg_379[11]_i_1_n_3\
    );
\counter_2_reg_379[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(12),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(12),
      O => \counter_2_reg_379[12]_i_1_n_3\
    );
\counter_2_reg_379[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(13),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(13),
      O => \counter_2_reg_379[13]_i_1_n_3\
    );
\counter_2_reg_379[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(14),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(14),
      O => \counter_2_reg_379[14]_i_1_n_3\
    );
\counter_2_reg_379[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(15),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(15),
      O => \counter_2_reg_379[15]_i_1_n_3\
    );
\counter_2_reg_379[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(16),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(16),
      O => \counter_2_reg_379[16]_i_1_n_3\
    );
\counter_2_reg_379[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(17),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(17),
      O => \counter_2_reg_379[17]_i_1_n_3\
    );
\counter_2_reg_379[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(18),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(18),
      O => \counter_2_reg_379[18]_i_1_n_3\
    );
\counter_2_reg_379[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(19),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(19),
      O => \counter_2_reg_379[19]_i_1_n_3\
    );
\counter_2_reg_379[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(1),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(1),
      O => \counter_2_reg_379[1]_i_1_n_3\
    );
\counter_2_reg_379[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => col_assign_reg_3670,
      I1 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I2 => icmp_ln61_reg_1657,
      I3 => and_ln52_reg_1653,
      I4 => ap_CS_fsm_state9,
      O => \counter_2_reg_379[20]_i_1_n_3\
    );
\counter_2_reg_379[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(20),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(20),
      O => \counter_2_reg_379[20]_i_2_n_3\
    );
\counter_2_reg_379[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(2),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(2),
      O => \counter_2_reg_379[2]_i_1_n_3\
    );
\counter_2_reg_379[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(3),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(3),
      O => \counter_2_reg_379[3]_i_1_n_3\
    );
\counter_2_reg_379[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(4),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(4),
      O => \counter_2_reg_379[4]_i_1_n_3\
    );
\counter_2_reg_379[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(5),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(5),
      O => \counter_2_reg_379[5]_i_1_n_3\
    );
\counter_2_reg_379[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(6),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(6),
      O => \counter_2_reg_379[6]_i_1_n_3\
    );
\counter_2_reg_379[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(7),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(7),
      O => \counter_2_reg_379[7]_i_1_n_3\
    );
\counter_2_reg_379[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(8),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(8),
      O => \counter_2_reg_379[8]_i_1_n_3\
    );
\counter_2_reg_379[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBB88888088"
    )
        port map (
      I0 => add_ln34_1_reg_1564(9),
      I1 => ap_CS_fsm_state9,
      I2 => and_ln52_reg_1653,
      I3 => icmp_ln61_reg_1657,
      I4 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I5 => counter_1_reg_345(9),
      O => \counter_2_reg_379[9]_i_1_n_3\
    );
\counter_2_reg_379_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[0]_i_1_n_3\,
      Q => counter_2_reg_379(0),
      R => '0'
    );
\counter_2_reg_379_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[10]_i_1_n_3\,
      Q => counter_2_reg_379(10),
      R => '0'
    );
\counter_2_reg_379_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[11]_i_1_n_3\,
      Q => counter_2_reg_379(11),
      R => '0'
    );
\counter_2_reg_379_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[12]_i_1_n_3\,
      Q => counter_2_reg_379(12),
      R => '0'
    );
\counter_2_reg_379_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[13]_i_1_n_3\,
      Q => counter_2_reg_379(13),
      R => '0'
    );
\counter_2_reg_379_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[14]_i_1_n_3\,
      Q => counter_2_reg_379(14),
      R => '0'
    );
\counter_2_reg_379_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[15]_i_1_n_3\,
      Q => counter_2_reg_379(15),
      R => '0'
    );
\counter_2_reg_379_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[16]_i_1_n_3\,
      Q => counter_2_reg_379(16),
      R => '0'
    );
\counter_2_reg_379_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[17]_i_1_n_3\,
      Q => counter_2_reg_379(17),
      R => '0'
    );
\counter_2_reg_379_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[18]_i_1_n_3\,
      Q => counter_2_reg_379(18),
      R => '0'
    );
\counter_2_reg_379_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[19]_i_1_n_3\,
      Q => counter_2_reg_379(19),
      R => '0'
    );
\counter_2_reg_379_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[1]_i_1_n_3\,
      Q => counter_2_reg_379(1),
      R => '0'
    );
\counter_2_reg_379_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[20]_i_2_n_3\,
      Q => counter_2_reg_379(20),
      R => '0'
    );
\counter_2_reg_379_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[2]_i_1_n_3\,
      Q => counter_2_reg_379(2),
      R => '0'
    );
\counter_2_reg_379_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[3]_i_1_n_3\,
      Q => counter_2_reg_379(3),
      R => '0'
    );
\counter_2_reg_379_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[4]_i_1_n_3\,
      Q => counter_2_reg_379(4),
      R => '0'
    );
\counter_2_reg_379_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[5]_i_1_n_3\,
      Q => counter_2_reg_379(5),
      R => '0'
    );
\counter_2_reg_379_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[6]_i_1_n_3\,
      Q => counter_2_reg_379(6),
      R => '0'
    );
\counter_2_reg_379_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[7]_i_1_n_3\,
      Q => counter_2_reg_379(7),
      R => '0'
    );
\counter_2_reg_379_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[8]_i_1_n_3\,
      Q => counter_2_reg_379(8),
      R => '0'
    );
\counter_2_reg_379_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \counter_2_reg_379[20]_i_1_n_3\,
      D => \counter_2_reg_379[9]_i_1_n_3\,
      Q => counter_2_reg_379(9),
      R => '0'
    );
\counter_reg_1482[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_0_reg_333_reg_n_3_[17]\,
      O => \counter_reg_1482[19]_i_2_n_3\
    );
\counter_reg_1482[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_322(2),
      I2 => i_0_reg_322(3),
      I3 => i_0_reg_322(0),
      I4 => i_0_reg_322(1),
      O => counter_1_reg_3450
    );
\counter_reg_1482_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[0]\,
      Q => counter_reg_1482(0),
      R => '0'
    );
\counter_reg_1482_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[10]\,
      Q => counter_reg_1482(10),
      R => '0'
    );
\counter_reg_1482_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[11]\,
      Q => counter_reg_1482(11),
      R => '0'
    );
\counter_reg_1482_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[12]\,
      Q => counter_reg_1482(12),
      R => '0'
    );
\counter_reg_1482_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[13]\,
      Q => counter_reg_1482(13),
      R => '0'
    );
\counter_reg_1482_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[14]\,
      Q => counter_reg_1482(14),
      R => '0'
    );
\counter_reg_1482_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[15]\,
      Q => counter_reg_1482(15),
      R => '0'
    );
\counter_reg_1482_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => counter_fu_483_p2(16),
      Q => counter_reg_1482(16),
      R => '0'
    );
\counter_reg_1482_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => counter_fu_483_p2(17),
      Q => counter_reg_1482(17),
      R => '0'
    );
\counter_reg_1482_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => counter_fu_483_p2(18),
      Q => counter_reg_1482(18),
      R => '0'
    );
\counter_reg_1482_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => counter_fu_483_p2(19),
      Q => counter_reg_1482(19),
      R => '0'
    );
\counter_reg_1482_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg_1482_reg[19]_i_1_n_3\,
      CO(2) => \counter_reg_1482_reg[19]_i_1_n_4\,
      CO(1) => \counter_reg_1482_reg[19]_i_1_n_5\,
      CO(0) => \counter_reg_1482_reg[19]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \counter_0_reg_333_reg_n_3_[17]\,
      DI(0) => '0',
      O(3 downto 0) => counter_fu_483_p2(19 downto 16),
      S(3) => \counter_0_reg_333_reg_n_3_[19]\,
      S(2) => \counter_0_reg_333_reg_n_3_[18]\,
      S(1) => \counter_reg_1482[19]_i_2_n_3\,
      S(0) => \counter_0_reg_333_reg_n_3_[16]\
    );
\counter_reg_1482_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[1]\,
      Q => counter_reg_1482(1),
      R => '0'
    );
\counter_reg_1482_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => counter_fu_483_p2(20),
      Q => counter_reg_1482(20),
      R => '0'
    );
\counter_reg_1482_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg_1482_reg[19]_i_1_n_3\,
      CO(3 downto 0) => \NLW_counter_reg_1482_reg[20]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg_1482_reg[20]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => counter_fu_483_p2(20),
      S(3 downto 1) => B"000",
      S(0) => \counter_0_reg_333_reg_n_3_[20]\
    );
\counter_reg_1482_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[2]\,
      Q => counter_reg_1482(2),
      R => '0'
    );
\counter_reg_1482_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[3]\,
      Q => counter_reg_1482(3),
      R => '0'
    );
\counter_reg_1482_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[4]\,
      Q => counter_reg_1482(4),
      R => '0'
    );
\counter_reg_1482_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[5]\,
      Q => counter_reg_1482(5),
      R => '0'
    );
\counter_reg_1482_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[6]\,
      Q => counter_reg_1482(6),
      R => '0'
    );
\counter_reg_1482_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[7]\,
      Q => counter_reg_1482(7),
      R => '0'
    );
\counter_reg_1482_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[8]\,
      Q => counter_reg_1482(8),
      R => '0'
    );
\counter_reg_1482_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => counter_1_reg_3450,
      D => \counter_0_reg_333_reg_n_3_[9]\,
      Q => counter_reg_1482(9),
      R => '0'
    );
\i_0_reg_322_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => i_2_reg_1477(0),
      Q => i_0_reg_322(0),
      R => counter_0_reg_333
    );
\i_0_reg_322_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => i_2_reg_1477(1),
      Q => i_0_reg_322(1),
      R => counter_0_reg_333
    );
\i_0_reg_322_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => i_2_reg_1477(2),
      Q => i_0_reg_322(2),
      R => counter_0_reg_333
    );
\i_0_reg_322_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm114_out,
      D => i_2_reg_1477(3),
      Q => i_0_reg_322(3),
      R => counter_0_reg_333
    );
\i_1_reg_460[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_322(2),
      I2 => i_0_reg_322(3),
      I3 => i_0_reg_322(0),
      I4 => i_0_reg_322(1),
      O => ap_NS_fsm115_out
    );
\i_1_reg_460[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => OUTPUT_IMAGE_V_data_V_1_ack_in,
      I1 => ap_CS_fsm_state12,
      O => ap_NS_fsm1
    );
\i_1_reg_460_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(0),
      Q => i_1_reg_460(0),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(10),
      Q => i_1_reg_460(10),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(1),
      Q => i_1_reg_460(1),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(2),
      Q => i_1_reg_460(2),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(3),
      Q => i_1_reg_460(3),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(4),
      Q => i_1_reg_460(4),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(5),
      Q => i_1_reg_460(5),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(6),
      Q => i_1_reg_460(6),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(7),
      Q => i_1_reg_460(7),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(8),
      Q => i_1_reg_460(8),
      R => ap_NS_fsm115_out
    );
\i_1_reg_460_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_1720(9),
      Q => i_1_reg_460(9),
      R => ap_NS_fsm115_out
    );
\i_2_reg_1477[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_reg_322(0),
      O => i_2_fu_477_p2(0)
    );
\i_2_reg_1477[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_322(0),
      I1 => i_0_reg_322(1),
      O => i_2_fu_477_p2(1)
    );
\i_2_reg_1477[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_322(2),
      I1 => i_0_reg_322(1),
      I2 => i_0_reg_322(0),
      O => i_2_fu_477_p2(2)
    );
\i_2_reg_1477[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_322(3),
      I1 => i_0_reg_322(0),
      I2 => i_0_reg_322(1),
      I3 => i_0_reg_322(2),
      O => i_2_fu_477_p2(3)
    );
\i_2_reg_1477_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_2_fu_477_p2(0),
      Q => i_2_reg_1477(0),
      R => '0'
    );
\i_2_reg_1477_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_2_fu_477_p2(1),
      Q => i_2_reg_1477(1),
      R => '0'
    );
\i_2_reg_1477_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_2_fu_477_p2(2),
      Q => i_2_reg_1477(2),
      R => '0'
    );
\i_2_reg_1477_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_2_fu_477_p2(3),
      Q => i_2_reg_1477(3),
      R => '0'
    );
\i_reg_1720[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_1_reg_460(0),
      O => i_fu_1341_p2(0)
    );
\i_reg_1720[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => \ap_CS_fsm[10]_i_2_n_3\,
      O => i_reg_17200
    );
\i_reg_1720[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_1_reg_460(10),
      I1 => i_1_reg_460(8),
      I2 => \i_reg_1720[10]_i_3_n_3\,
      I3 => i_1_reg_460(6),
      I4 => i_1_reg_460(7),
      I5 => i_1_reg_460(9),
      O => i_fu_1341_p2(10)
    );
\i_reg_1720[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => i_1_reg_460(4),
      I1 => i_1_reg_460(2),
      I2 => i_1_reg_460(0),
      I3 => i_1_reg_460(1),
      I4 => i_1_reg_460(3),
      I5 => i_1_reg_460(5),
      O => \i_reg_1720[10]_i_3_n_3\
    );
\i_reg_1720[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_1_reg_460(0),
      I1 => i_1_reg_460(1),
      O => i_fu_1341_p2(1)
    );
\i_reg_1720[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_1_reg_460(2),
      I1 => i_1_reg_460(1),
      I2 => i_1_reg_460(0),
      O => i_fu_1341_p2(2)
    );
\i_reg_1720[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_1_reg_460(3),
      I1 => i_1_reg_460(2),
      I2 => i_1_reg_460(0),
      I3 => i_1_reg_460(1),
      O => i_fu_1341_p2(3)
    );
\i_reg_1720[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_1_reg_460(4),
      I1 => i_1_reg_460(3),
      I2 => i_1_reg_460(1),
      I3 => i_1_reg_460(0),
      I4 => i_1_reg_460(2),
      O => i_fu_1341_p2(4)
    );
\i_reg_1720[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_1_reg_460(5),
      I1 => i_1_reg_460(4),
      I2 => i_1_reg_460(2),
      I3 => i_1_reg_460(0),
      I4 => i_1_reg_460(1),
      I5 => i_1_reg_460(3),
      O => i_fu_1341_p2(5)
    );
\i_reg_1720[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_1_reg_460(6),
      I1 => \i_reg_1720[10]_i_3_n_3\,
      O => i_fu_1341_p2(6)
    );
\i_reg_1720[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \i_reg_1720[10]_i_3_n_3\,
      I1 => i_1_reg_460(6),
      I2 => i_1_reg_460(7),
      O => i_fu_1341_p2(7)
    );
\i_reg_1720[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => i_1_reg_460(8),
      I1 => \i_reg_1720[10]_i_3_n_3\,
      I2 => i_1_reg_460(6),
      I3 => i_1_reg_460(7),
      O => i_fu_1341_p2(8)
    );
\i_reg_1720[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => i_1_reg_460(9),
      I1 => i_1_reg_460(7),
      I2 => i_1_reg_460(6),
      I3 => \i_reg_1720[10]_i_3_n_3\,
      I4 => i_1_reg_460(8),
      O => i_fu_1341_p2(9)
    );
\i_reg_1720_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(0),
      Q => i_reg_1720(0),
      R => '0'
    );
\i_reg_1720_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(10),
      Q => i_reg_1720(10),
      R => '0'
    );
\i_reg_1720_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(1),
      Q => i_reg_1720(1),
      R => '0'
    );
\i_reg_1720_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(2),
      Q => i_reg_1720(2),
      R => '0'
    );
\i_reg_1720_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(3),
      Q => i_reg_1720(3),
      R => '0'
    );
\i_reg_1720_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(4),
      Q => i_reg_1720(4),
      R => '0'
    );
\i_reg_1720_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(5),
      Q => i_reg_1720(5),
      R => '0'
    );
\i_reg_1720_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(6),
      Q => i_reg_1720(6),
      R => '0'
    );
\i_reg_1720_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(7),
      Q => i_reg_1720(7),
      R => '0'
    );
\i_reg_1720_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(8),
      Q => i_reg_1720(8),
      R => '0'
    );
\i_reg_1720_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_reg_17200,
      D => i_fu_1341_p2(9),
      Q => i_reg_1720(9),
      R => '0'
    );
\icmp_ln274_2_reg_1510[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[0]\,
      I1 => \row_assign_reg_356_reg_n_3_[1]\,
      I2 => col_assign_reg_3670,
      I3 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      O => \icmp_ln274_2_reg_1510[0]_i_1_n_3\
    );
\icmp_ln274_2_reg_1510_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln274_2_reg_1510[0]_i_1_n_3\,
      Q => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      R => '0'
    );
\icmp_ln274_3_reg_1520[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[0]\,
      I1 => \row_assign_reg_356_reg_n_3_[1]\,
      I2 => col_assign_reg_3670,
      I3 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \icmp_ln274_3_reg_1520[0]_i_1_n_3\
    );
\icmp_ln274_3_reg_1520_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln274_3_reg_1520[0]_i_1_n_3\,
      Q => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      R => '0'
    );
\icmp_ln41_1_reg_1505[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070000"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[0]\,
      I1 => \row_assign_reg_356_reg_n_3_[1]\,
      I2 => \row_assign_reg_356_reg_n_3_[6]\,
      I3 => \row_assign_reg_356_reg_n_3_[7]\,
      I4 => \counter_0_reg_333[20]_i_3_n_3\,
      O => icmp_ln41_1_fu_513_p2
    );
\icmp_ln41_1_reg_1505_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => col_assign_reg_3670,
      D => icmp_ln41_1_fu_513_p2,
      Q => icmp_ln41_1_reg_1505,
      R => '0'
    );
\icmp_ln41_reg_1487[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557700000002"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_322(2),
      I2 => i_0_reg_322(3),
      I3 => i_0_reg_322(0),
      I4 => i_0_reg_322(1),
      I5 => \icmp_ln41_reg_1487_reg_n_3_[0]\,
      O => \icmp_ln41_reg_1487[0]_i_1_n_3\
    );
\icmp_ln41_reg_1487_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln41_reg_1487[0]_i_1_n_3\,
      Q => \icmp_ln41_reg_1487_reg_n_3_[0]\,
      R => '0'
    );
\icmp_ln61_reg_1657[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEA002A"
    )
        port map (
      I0 => icmp_ln61_fu_1032_p2,
      I1 => icmp_ln52_1_fu_1020_p2,
      I2 => icmp_ln52_fu_1014_p2,
      I3 => \INPUT_IMAGE_V_dest_V_0_state[1]_i_3_n_3\,
      I4 => icmp_ln61_reg_1657,
      O => \icmp_ln61_reg_1657[0]_i_1_n_3\
    );
\icmp_ln61_reg_1657_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln61_reg_1657[0]_i_1_n_3\,
      Q => icmp_ln61_reg_1657,
      R => '0'
    );
\j_reg_1536[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_assign_reg_367_reg_n_3_[0]\,
      O => j_fu_541_p2(0)
    );
\j_reg_1536[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(9),
      I1 => tmp_2_fu_1114_p4(7),
      I2 => \j_reg_1536[10]_i_2_n_3\,
      I3 => tmp_2_fu_1114_p4(5),
      I4 => tmp_2_fu_1114_p4(6),
      I5 => tmp_2_fu_1114_p4(8),
      O => j_fu_541_p2(10)
    );
\j_reg_1536[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(3),
      I1 => tmp_2_fu_1114_p4(1),
      I2 => tmp_2_fu_1114_p4(2),
      I3 => tmp_2_fu_1114_p4(0),
      I4 => \col_assign_reg_367_reg_n_3_[0]\,
      I5 => tmp_2_fu_1114_p4(4),
      O => \j_reg_1536[10]_i_2_n_3\
    );
\j_reg_1536[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \col_assign_reg_367_reg_n_3_[0]\,
      I1 => tmp_2_fu_1114_p4(0),
      O => j_fu_541_p2(1)
    );
\j_reg_1536[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => tmp_2_fu_1114_p4(1),
      O => j_fu_541_p2(2)
    );
\j_reg_1536[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(2),
      I1 => tmp_2_fu_1114_p4(1),
      I2 => tmp_2_fu_1114_p4(0),
      I3 => \col_assign_reg_367_reg_n_3_[0]\,
      O => j_fu_541_p2(3)
    );
\j_reg_1536[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(3),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => tmp_2_fu_1114_p4(0),
      I3 => tmp_2_fu_1114_p4(2),
      I4 => tmp_2_fu_1114_p4(1),
      O => j_fu_541_p2(4)
    );
\j_reg_1536[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(4),
      I1 => tmp_2_fu_1114_p4(3),
      I2 => tmp_2_fu_1114_p4(1),
      I3 => tmp_2_fu_1114_p4(2),
      I4 => tmp_2_fu_1114_p4(0),
      I5 => \col_assign_reg_367_reg_n_3_[0]\,
      O => j_fu_541_p2(5)
    );
\j_reg_1536[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(5),
      I1 => \j_reg_1536[10]_i_2_n_3\,
      O => j_fu_541_p2(6)
    );
\j_reg_1536[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \j_reg_1536[10]_i_2_n_3\,
      I1 => tmp_2_fu_1114_p4(5),
      I2 => tmp_2_fu_1114_p4(6),
      O => j_fu_541_p2(7)
    );
\j_reg_1536[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(7),
      I1 => \j_reg_1536[10]_i_2_n_3\,
      I2 => tmp_2_fu_1114_p4(5),
      I3 => tmp_2_fu_1114_p4(6),
      O => j_fu_541_p2(8)
    );
\j_reg_1536[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(8),
      I1 => tmp_2_fu_1114_p4(6),
      I2 => tmp_2_fu_1114_p4(5),
      I3 => \j_reg_1536[10]_i_2_n_3\,
      I4 => tmp_2_fu_1114_p4(7),
      O => j_fu_541_p2(9)
    );
\j_reg_1536_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(0),
      Q => j_reg_1536(0),
      R => '0'
    );
\j_reg_1536_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(10),
      Q => j_reg_1536(10),
      R => '0'
    );
\j_reg_1536_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(1),
      Q => j_reg_1536(1),
      R => '0'
    );
\j_reg_1536_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(2),
      Q => j_reg_1536(2),
      R => '0'
    );
\j_reg_1536_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(3),
      Q => j_reg_1536(3),
      R => '0'
    );
\j_reg_1536_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(4),
      Q => j_reg_1536(4),
      R => '0'
    );
\j_reg_1536_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(5),
      Q => j_reg_1536(5),
      R => '0'
    );
\j_reg_1536_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(6),
      Q => j_reg_1536(6),
      R => '0'
    );
\j_reg_1536_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(7),
      Q => j_reg_1536(7),
      R => '0'
    );
\j_reg_1536_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(8),
      Q => j_reg_1536(8),
      R => '0'
    );
\j_reg_1536_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_fu_541_p2(9),
      Q => j_reg_1536(9),
      R => '0'
    );
\k_reg_1495[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[0]\,
      O => k_fu_501_p2(0)
    );
\k_reg_1495[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[0]\,
      I1 => \row_assign_reg_356_reg_n_3_[1]\,
      O => k_fu_501_p2(1)
    );
\k_reg_1495[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[2]\,
      I1 => \row_assign_reg_356_reg_n_3_[1]\,
      I2 => \row_assign_reg_356_reg_n_3_[0]\,
      O => k_fu_501_p2(2)
    );
\k_reg_1495[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[3]\,
      I1 => \row_assign_reg_356_reg_n_3_[0]\,
      I2 => \row_assign_reg_356_reg_n_3_[1]\,
      I3 => \row_assign_reg_356_reg_n_3_[2]\,
      O => k_fu_501_p2(3)
    );
\k_reg_1495[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[4]\,
      I1 => \row_assign_reg_356_reg_n_3_[2]\,
      I2 => \row_assign_reg_356_reg_n_3_[1]\,
      I3 => \row_assign_reg_356_reg_n_3_[0]\,
      I4 => \row_assign_reg_356_reg_n_3_[3]\,
      O => k_fu_501_p2(4)
    );
\k_reg_1495[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[5]\,
      I1 => \row_assign_reg_356_reg_n_3_[3]\,
      I2 => \row_assign_reg_356_reg_n_3_[0]\,
      I3 => \row_assign_reg_356_reg_n_3_[1]\,
      I4 => \row_assign_reg_356_reg_n_3_[2]\,
      I5 => \row_assign_reg_356_reg_n_3_[4]\,
      O => k_fu_501_p2(5)
    );
\k_reg_1495[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[6]\,
      I1 => \row_assign_reg_356_reg_n_3_[4]\,
      I2 => \row_assign_reg_356_reg_n_3_[2]\,
      I3 => \k_reg_1495[6]_i_2_n_3\,
      I4 => \row_assign_reg_356_reg_n_3_[3]\,
      I5 => \row_assign_reg_356_reg_n_3_[5]\,
      O => k_fu_501_p2(6)
    );
\k_reg_1495[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[0]\,
      I1 => \row_assign_reg_356_reg_n_3_[1]\,
      O => \k_reg_1495[6]_i_2_n_3\
    );
\k_reg_1495[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[7]\,
      I1 => \k_reg_1495[7]_i_2_n_3\,
      I2 => \row_assign_reg_356_reg_n_3_[6]\,
      O => k_fu_501_p2(7)
    );
\k_reg_1495[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \row_assign_reg_356_reg_n_3_[5]\,
      I1 => \row_assign_reg_356_reg_n_3_[3]\,
      I2 => \row_assign_reg_356_reg_n_3_[0]\,
      I3 => \row_assign_reg_356_reg_n_3_[1]\,
      I4 => \row_assign_reg_356_reg_n_3_[2]\,
      I5 => \row_assign_reg_356_reg_n_3_[4]\,
      O => \k_reg_1495[7]_i_2_n_3\
    );
\k_reg_1495_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(0),
      Q => k_reg_1495(0),
      R => '0'
    );
\k_reg_1495_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(1),
      Q => k_reg_1495(1),
      R => '0'
    );
\k_reg_1495_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(2),
      Q => k_reg_1495(2),
      R => '0'
    );
\k_reg_1495_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(3),
      Q => k_reg_1495(3),
      R => '0'
    );
\k_reg_1495_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(4),
      Q => k_reg_1495(4),
      R => '0'
    );
\k_reg_1495_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(5),
      Q => k_reg_1495(5),
      R => '0'
    );
\k_reg_1495_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(6),
      Q => k_reg_1495(6),
      R => '0'
    );
\k_reg_1495_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => k_fu_501_p2(7),
      Q => k_reg_1495(7),
      R => '0'
    );
pixelbuffer_val_1_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb
     port map (
      ADDRARDADDR(9 downto 0) => pixelbuffer_val_1_address0(9 downto 0),
      CO(0) => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      D(7 downto 0) => select_ln41_5_fu_993_p3(7 downto 0),
      DOADO(7 downto 0) => pixelbuffer_val_2_q0(7 downto 0),
      INPUT_IMAGE_V_data_V_0_data_out(7 downto 0) => INPUT_IMAGE_V_data_V_0_data_out(7 downto 0),
      Q(7 downto 0) => window_val_0_1_fu_190(7 downto 0),
      WEA(0) => p_184_in,
      and_ln41_1_reg_1551 => and_ln41_1_reg_1551,
      ap_clk => ap_clk,
      pixelbuffer_val_1_ce0 => pixelbuffer_val_1_ce0,
      \select_ln41_5_reg_1635_reg[0]\ => \select_ln41_5_reg_1635[7]_i_2_n_3\
    );
\pixelbuffer_val_1_a_reg_1541_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => \col_assign_reg_367_reg_n_3_[0]\,
      Q => pixelbuffer_val_2_a_reg_1546(0),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(0),
      Q => pixelbuffer_val_2_a_reg_1546(1),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(1),
      Q => pixelbuffer_val_2_a_reg_1546(2),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(2),
      Q => pixelbuffer_val_2_a_reg_1546(3),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(3),
      Q => pixelbuffer_val_2_a_reg_1546(4),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(4),
      Q => pixelbuffer_val_2_a_reg_1546(5),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(5),
      Q => pixelbuffer_val_2_a_reg_1546(6),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(6),
      Q => pixelbuffer_val_2_a_reg_1546(7),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(7),
      Q => pixelbuffer_val_2_a_reg_1546(8),
      R => '0'
    );
\pixelbuffer_val_1_a_reg_1541_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => and_ln41_1_reg_15510,
      D => tmp_2_fu_1114_p4(8),
      Q => pixelbuffer_val_2_a_reg_1546(9),
      R => '0'
    );
pixelbuffer_val_2_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_pixebkb_0
     port map (
      ADDRARDADDR(9 downto 0) => pixelbuffer_val_1_address0(9 downto 0),
      CO(0) => icmp_ln52_fu_1014_p2,
      D(7 downto 0) => select_ln41_2_fu_972_p3(7 downto 0),
      DOADO(7 downto 0) => pixelbuffer_val_2_q0(7 downto 0),
      INPUT_IMAGE_V_data_V_0_data_out(7 downto 0) => INPUT_IMAGE_V_data_V_0_data_out(7 downto 0),
      INPUT_IMAGE_V_data_V_0_sel => INPUT_IMAGE_V_data_V_0_sel,
      OUTPUT_IMAGE_V_data_V_1_ack_in => OUTPUT_IMAGE_V_data_V_1_ack_in,
      Q(1) => ap_CS_fsm_state5,
      Q(0) => ap_CS_fsm_state4,
      WEA(0) => p_184_in,
      and_ln41_1_reg_1551 => and_ln41_1_reg_1551,
      ap_clk => ap_clk,
      pixelbuffer_val_1_ce0 => pixelbuffer_val_1_ce0,
      ram_reg(0) => icmp_ln52_1_fu_1020_p2,
      ram_reg_0 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      ram_reg_1(7 downto 0) => INPUT_IMAGE_V_data_V_0_payload_B(7 downto 0),
      ram_reg_2(7 downto 0) => INPUT_IMAGE_V_data_V_0_payload_A(7 downto 0),
      ram_reg_3(9 downto 0) => pixelbuffer_val_2_a_reg_1546(9 downto 0),
      ram_reg_4(9 downto 1) => tmp_2_fu_1114_p4(8 downto 0),
      ram_reg_4(0) => \col_assign_reg_367_reg_n_3_[0]\,
      \select_ln41_2_reg_1617_reg[0]\ => \select_ln41_2_reg_1617[7]_i_2_n_3\,
      \select_ln41_2_reg_1617_reg[0]_0\(0) => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      \select_ln41_2_reg_1617_reg[7]\(7 downto 0) => window_val_1_1_fu_202(7 downto 0)
    );
ram_reg_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_i_15_n_3,
      CO(3) => NLW_ram_reg_i_13_CO_UNCONNECTED(3),
      CO(2) => icmp_ln52_fu_1014_p2,
      CO(1) => ram_reg_i_13_n_5,
      CO(0) => ram_reg_i_13_n_6,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ram_reg_i_16_n_3,
      DI(0) => ram_reg_i_17_n_3,
      O(3 downto 0) => NLW_ram_reg_i_13_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => ram_reg_i_18_n_3,
      S(1) => ram_reg_i_19_n_3,
      S(0) => ram_reg_i_20_n_3
    );
ram_reg_i_14: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_i_21_n_3,
      CO(3) => NLW_ram_reg_i_14_CO_UNCONNECTED(3),
      CO(2) => icmp_ln52_1_fu_1020_p2,
      CO(1) => ram_reg_i_14_n_5,
      CO(0) => ram_reg_i_14_n_6,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => add_ln34_1_fu_596_p2(20),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_ram_reg_i_14_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => ram_reg_i_22_n_3,
      S(1) => ram_reg_i_23_n_3,
      S(0) => ram_reg_i_24_n_3
    );
ram_reg_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_i_25_n_3,
      CO(3) => ram_reg_i_15_n_3,
      CO(2) => ram_reg_i_15_n_4,
      CO(1) => ram_reg_i_15_n_5,
      CO(0) => ram_reg_i_15_n_6,
      CYINIT => '0',
      DI(3) => ram_reg_i_26_n_3,
      DI(2) => ram_reg_i_27_n_3,
      DI(1) => add_ln34_1_fu_596_p2(11),
      DI(0) => ram_reg_i_28_n_3,
      O(3 downto 0) => NLW_ram_reg_i_15_O_UNCONNECTED(3 downto 0),
      S(3) => ram_reg_i_29_n_3,
      S(2) => ram_reg_i_30_n_3,
      S(1) => ram_reg_i_31_n_3,
      S(0) => ram_reg_i_32_n_3
    );
ram_reg_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(18),
      I1 => add_ln34_1_fu_596_p2(19),
      O => ram_reg_i_16_n_3
    );
ram_reg_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(16),
      I1 => add_ln34_1_fu_596_p2(17),
      O => ram_reg_i_17_n_3
    );
ram_reg_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(20),
      O => ram_reg_i_18_n_3
    );
ram_reg_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(19),
      I1 => add_ln34_1_fu_596_p2(18),
      O => ram_reg_i_19_n_3
    );
ram_reg_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(17),
      I1 => add_ln34_1_fu_596_p2(16),
      O => ram_reg_i_20_n_3
    );
ram_reg_i_21: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_i_33_n_3,
      CO(3) => ram_reg_i_21_n_3,
      CO(2) => ram_reg_i_21_n_4,
      CO(1) => ram_reg_i_21_n_5,
      CO(0) => ram_reg_i_21_n_6,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ram_reg_i_34_n_3,
      DI(0) => '0',
      O(3 downto 0) => NLW_ram_reg_i_21_O_UNCONNECTED(3 downto 0),
      S(3) => ram_reg_i_35_n_3,
      S(2) => ram_reg_i_36_n_3,
      S(1) => ram_reg_i_37_n_3,
      S(0) => ram_reg_i_38_n_3
    );
ram_reg_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(20),
      O => ram_reg_i_22_n_3
    );
ram_reg_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(19),
      I1 => add_ln34_1_fu_596_p2(18),
      O => ram_reg_i_23_n_3
    );
ram_reg_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(17),
      I1 => add_ln34_1_fu_596_p2(16),
      O => ram_reg_i_24_n_3
    );
ram_reg_i_25: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ram_reg_i_25_n_3,
      CO(2) => ram_reg_i_25_n_4,
      CO(1) => ram_reg_i_25_n_5,
      CO(0) => ram_reg_i_25_n_6,
      CYINIT => '0',
      DI(3) => ram_reg_i_39_n_3,
      DI(2) => ram_reg_i_40_n_3,
      DI(1) => ram_reg_i_41_n_3,
      DI(0) => ram_reg_i_42_n_3,
      O(3 downto 0) => NLW_ram_reg_i_25_O_UNCONNECTED(3 downto 0),
      S(3) => ram_reg_i_43_n_3,
      S(2) => ram_reg_i_44_n_3,
      S(1) => ram_reg_i_45_n_3,
      S(0) => ram_reg_i_46_n_3
    );
ram_reg_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(14),
      I1 => add_ln34_1_fu_596_p2(15),
      O => ram_reg_i_26_n_3
    );
ram_reg_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(12),
      I1 => add_ln34_1_fu_596_p2(13),
      O => ram_reg_i_27_n_3
    );
ram_reg_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(8),
      I1 => add_ln34_1_fu_596_p2(9),
      O => ram_reg_i_28_n_3
    );
ram_reg_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(15),
      I1 => add_ln34_1_fu_596_p2(14),
      O => ram_reg_i_29_n_3
    );
ram_reg_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(13),
      I1 => add_ln34_1_fu_596_p2(12),
      O => ram_reg_i_30_n_3
    );
ram_reg_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(10),
      I1 => add_ln34_1_fu_596_p2(11),
      O => ram_reg_i_31_n_3
    );
ram_reg_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(9),
      I1 => add_ln34_1_fu_596_p2(8),
      O => ram_reg_i_32_n_3
    );
ram_reg_i_33: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ram_reg_i_33_n_3,
      CO(2) => ram_reg_i_33_n_4,
      CO(1) => ram_reg_i_33_n_5,
      CO(0) => ram_reg_i_33_n_6,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => ram_reg_i_47_n_3,
      O(3 downto 0) => NLW_ram_reg_i_33_O_UNCONNECTED(3 downto 0),
      S(3) => ram_reg_i_48_n_3,
      S(2) => ram_reg_i_49_n_3,
      S(1) => ram_reg_i_50_n_3,
      S(0) => ram_reg_i_51_n_3
    );
ram_reg_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(11),
      O => ram_reg_i_34_n_3
    );
ram_reg_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(15),
      I1 => add_ln34_1_fu_596_p2(14),
      O => ram_reg_i_35_n_3
    );
ram_reg_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(13),
      I1 => add_ln34_1_fu_596_p2(12),
      O => ram_reg_i_36_n_3
    );
ram_reg_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(11),
      I1 => add_ln34_1_fu_596_p2(10),
      O => ram_reg_i_37_n_3
    );
ram_reg_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(9),
      I1 => add_ln34_1_fu_596_p2(8),
      O => ram_reg_i_38_n_3
    );
ram_reg_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(6),
      I1 => add_ln34_1_fu_596_p2(7),
      O => ram_reg_i_39_n_3
    );
ram_reg_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(4),
      I1 => add_ln34_1_fu_596_p2(5),
      O => ram_reg_i_40_n_3
    );
ram_reg_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(2),
      I1 => add_ln34_1_fu_596_p2(3),
      O => ram_reg_i_41_n_3
    );
ram_reg_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(1),
      I1 => counter_2_reg_379(0),
      O => ram_reg_i_42_n_3
    );
ram_reg_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(7),
      I1 => add_ln34_1_fu_596_p2(6),
      O => ram_reg_i_43_n_3
    );
ram_reg_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(5),
      I1 => add_ln34_1_fu_596_p2(4),
      O => ram_reg_i_44_n_3
    );
ram_reg_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(3),
      I1 => add_ln34_1_fu_596_p2(2),
      O => ram_reg_i_45_n_3
    );
ram_reg_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_2_reg_379(0),
      I1 => add_ln34_1_fu_596_p2(1),
      O => ram_reg_i_46_n_3
    );
ram_reg_i_47: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(1),
      O => ram_reg_i_47_n_3
    );
ram_reg_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(7),
      I1 => add_ln34_1_fu_596_p2(6),
      O => ram_reg_i_48_n_3
    );
ram_reg_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(5),
      I1 => add_ln34_1_fu_596_p2(4),
      O => ram_reg_i_49_n_3
    );
ram_reg_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(3),
      I1 => add_ln34_1_fu_596_p2(2),
      O => ram_reg_i_50_n_3
    );
ram_reg_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_2_reg_379(0),
      I1 => add_ln34_1_fu_596_p2(1),
      O => ram_reg_i_51_n_3
    );
\rowOffset_0_reg_425[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \rowOffset_0_reg_425_reg_n_3_[0]\,
      I1 => ap_CS_fsm_state8,
      I2 => rowOffset_reg_1687(0),
      I3 => ap_NS_fsm18_out,
      O => \rowOffset_0_reg_425[0]_i_1_n_3\
    );
\rowOffset_0_reg_425[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \rowOffset_0_reg_425_reg_n_3_[1]\,
      I1 => ap_CS_fsm_state8,
      I2 => rowOffset_reg_1687(1),
      I3 => ap_NS_fsm18_out,
      O => \rowOffset_0_reg_425[1]_i_1_n_3\
    );
\rowOffset_0_reg_425[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \rowOffset_0_reg_425_reg_n_3_[2]\,
      I1 => ap_CS_fsm_state8,
      I2 => rowOffset_reg_1687(2),
      I3 => ap_NS_fsm18_out,
      O => \rowOffset_0_reg_425[2]_i_1_n_3\
    );
\rowOffset_0_reg_425_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rowOffset_0_reg_425[0]_i_1_n_3\,
      Q => \rowOffset_0_reg_425_reg_n_3_[0]\,
      R => '0'
    );
\rowOffset_0_reg_425_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rowOffset_0_reg_425[1]_i_1_n_3\,
      Q => \rowOffset_0_reg_425_reg_n_3_[1]\,
      R => '0'
    );
\rowOffset_0_reg_425_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rowOffset_0_reg_425[2]_i_1_n_3\,
      Q => \rowOffset_0_reg_425_reg_n_3_[2]\,
      R => '0'
    );
\rowOffset_reg_1687[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77772202"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => \rowOffset_0_reg_425_reg_n_3_[0]\,
      I2 => \rowOffset_0_reg_425_reg_n_3_[1]\,
      I3 => \rowOffset_0_reg_425_reg_n_3_[2]\,
      I4 => rowOffset_reg_1687(0),
      O => \rowOffset_reg_1687[0]_i_1_n_3\
    );
\rowOffset_reg_1687[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D7D2808"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => \rowOffset_0_reg_425_reg_n_3_[0]\,
      I2 => \rowOffset_0_reg_425_reg_n_3_[1]\,
      I3 => \rowOffset_0_reg_425_reg_n_3_[2]\,
      I4 => rowOffset_reg_1687(1),
      O => \rowOffset_reg_1687[1]_i_1_n_3\
    );
\rowOffset_reg_1687[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF52A80"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => \rowOffset_0_reg_425_reg_n_3_[0]\,
      I2 => \rowOffset_0_reg_425_reg_n_3_[1]\,
      I3 => \rowOffset_0_reg_425_reg_n_3_[2]\,
      I4 => rowOffset_reg_1687(2),
      O => \rowOffset_reg_1687[2]_i_1_n_3\
    );
\rowOffset_reg_1687_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rowOffset_reg_1687[0]_i_1_n_3\,
      Q => rowOffset_reg_1687(0),
      R => '0'
    );
\rowOffset_reg_1687_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rowOffset_reg_1687[1]_i_1_n_3\,
      Q => rowOffset_reg_1687(1),
      R => '0'
    );
\rowOffset_reg_1687_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rowOffset_reg_1687[2]_i_1_n_3\,
      Q => rowOffset_reg_1687(2),
      R => '0'
    );
\row_assign_reg_356[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEF0000"
    )
        port map (
      I0 => i_0_reg_322(1),
      I1 => i_0_reg_322(0),
      I2 => i_0_reg_322(3),
      I3 => i_0_reg_322(2),
      I4 => ap_CS_fsm_state2,
      I5 => ap_NS_fsm113_out,
      O => row_assign_reg_356
    );
\row_assign_reg_356[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \row_assign_reg_356[7]_i_3_n_3\,
      O => ap_NS_fsm113_out
    );
\row_assign_reg_356[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => \row_assign_reg_356[7]_i_4_n_3\,
      I1 => tmp_2_fu_1114_p4(8),
      I2 => tmp_2_fu_1114_p4(9),
      I3 => \col_assign_reg_367_reg_n_3_[0]\,
      I4 => tmp_2_fu_1114_p4(0),
      I5 => tmp_2_fu_1114_p4(1),
      O => \row_assign_reg_356[7]_i_3_n_3\
    );
\row_assign_reg_356[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(4),
      I1 => tmp_2_fu_1114_p4(5),
      I2 => tmp_2_fu_1114_p4(2),
      I3 => tmp_2_fu_1114_p4(3),
      I4 => tmp_2_fu_1114_p4(7),
      I5 => tmp_2_fu_1114_p4(6),
      O => \row_assign_reg_356[7]_i_4_n_3\
    );
\row_assign_reg_356_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(0),
      Q => \row_assign_reg_356_reg_n_3_[0]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(1),
      Q => \row_assign_reg_356_reg_n_3_[1]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(2),
      Q => \row_assign_reg_356_reg_n_3_[2]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(3),
      Q => \row_assign_reg_356_reg_n_3_[3]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(4),
      Q => \row_assign_reg_356_reg_n_3_[4]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(5),
      Q => \row_assign_reg_356_reg_n_3_[5]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(6),
      Q => \row_assign_reg_356_reg_n_3_[6]\,
      R => row_assign_reg_356
    );
\row_assign_reg_356_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm113_out,
      D => k_reg_1495(7),
      Q => \row_assign_reg_356_reg_n_3_[7]\,
      R => row_assign_reg_356
    );
\select_ln41_2_reg_1617[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      I2 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \select_ln41_2_reg_1617[7]_i_2_n_3\
    );
\select_ln41_2_reg_1617_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(0),
      Q => select_ln41_2_reg_1617(0),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(1),
      Q => select_ln41_2_reg_1617(1),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(2),
      Q => select_ln41_2_reg_1617(2),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(3),
      Q => select_ln41_2_reg_1617(3),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(4),
      Q => select_ln41_2_reg_1617(4),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(5),
      Q => select_ln41_2_reg_1617(5),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(6),
      Q => select_ln41_2_reg_1617(6),
      R => '0'
    );
\select_ln41_2_reg_1617_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_2_fu_972_p3(7),
      Q => select_ln41_2_reg_1617(7),
      R => '0'
    );
\select_ln41_3_reg_1623[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(0),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(0),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(0),
      O => select_ln41_3_fu_979_p3(0)
    );
\select_ln41_3_reg_1623[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(1),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(1),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(1),
      O => select_ln41_3_fu_979_p3(1)
    );
\select_ln41_3_reg_1623[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(2),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(2),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(2),
      O => select_ln41_3_fu_979_p3(2)
    );
\select_ln41_3_reg_1623[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(3),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(3),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(3),
      O => select_ln41_3_fu_979_p3(3)
    );
\select_ln41_3_reg_1623[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(4),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(4),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(4),
      O => select_ln41_3_fu_979_p3(4)
    );
\select_ln41_3_reg_1623[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(5),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(5),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(5),
      O => select_ln41_3_fu_979_p3(5)
    );
\select_ln41_3_reg_1623[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(6),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(6),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(6),
      O => select_ln41_3_fu_979_p3(6)
    );
\select_ln41_3_reg_1623[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_1_0_fu_198(7),
      I2 => \select_ln41_3_reg_1623[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(7),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_1_fu_202(7),
      O => select_ln41_3_fu_979_p3(7)
    );
\select_ln41_3_reg_1623[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      I3 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \select_ln41_3_reg_1623[7]_i_2_n_3\
    );
\select_ln41_3_reg_1623_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(0),
      Q => select_ln41_3_reg_1623(0),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(1),
      Q => select_ln41_3_reg_1623(1),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(2),
      Q => select_ln41_3_reg_1623(2),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(3),
      Q => select_ln41_3_reg_1623(3),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(4),
      Q => select_ln41_3_reg_1623(4),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(5),
      Q => select_ln41_3_reg_1623(5),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(6),
      Q => select_ln41_3_reg_1623(6),
      R => '0'
    );
\select_ln41_3_reg_1623_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_3_fu_979_p3(7),
      Q => select_ln41_3_reg_1623(7),
      R => '0'
    );
\select_ln41_5_reg_1635[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(14),
      I1 => add_ln34_1_fu_596_p2(15),
      O => \select_ln41_5_reg_1635[7]_i_11_n_3\
    );
\select_ln41_5_reg_1635[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(12),
      I1 => add_ln34_1_fu_596_p2(13),
      O => \select_ln41_5_reg_1635[7]_i_12_n_3\
    );
\select_ln41_5_reg_1635[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(10),
      I1 => add_ln34_1_fu_596_p2(11),
      O => \select_ln41_5_reg_1635[7]_i_13_n_3\
    );
\select_ln41_5_reg_1635[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(8),
      I1 => add_ln34_1_fu_596_p2(9),
      O => \select_ln41_5_reg_1635[7]_i_14_n_3\
    );
\select_ln41_5_reg_1635[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(15),
      I1 => add_ln34_1_fu_596_p2(14),
      O => \select_ln41_5_reg_1635[7]_i_15_n_3\
    );
\select_ln41_5_reg_1635[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(13),
      I1 => add_ln34_1_fu_596_p2(12),
      O => \select_ln41_5_reg_1635[7]_i_16_n_3\
    );
\select_ln41_5_reg_1635[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(11),
      I1 => add_ln34_1_fu_596_p2(10),
      O => \select_ln41_5_reg_1635[7]_i_17_n_3\
    );
\select_ln41_5_reg_1635[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(9),
      I1 => add_ln34_1_fu_596_p2(8),
      O => \select_ln41_5_reg_1635[7]_i_18_n_3\
    );
\select_ln41_5_reg_1635[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(6),
      I1 => add_ln34_1_fu_596_p2(7),
      O => \select_ln41_5_reg_1635[7]_i_19_n_3\
    );
\select_ln41_5_reg_1635[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \select_ln41_5_reg_1635[7]_i_2_n_3\
    );
\select_ln41_5_reg_1635[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(4),
      I1 => add_ln34_1_fu_596_p2(5),
      O => \select_ln41_5_reg_1635[7]_i_20_n_3\
    );
\select_ln41_5_reg_1635[7]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(2),
      I1 => add_ln34_1_fu_596_p2(3),
      O => \select_ln41_5_reg_1635[7]_i_21_n_3\
    );
\select_ln41_5_reg_1635[7]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(1),
      I1 => counter_2_reg_379(0),
      O => \select_ln41_5_reg_1635[7]_i_22_n_3\
    );
\select_ln41_5_reg_1635[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(7),
      I1 => add_ln34_1_fu_596_p2(6),
      O => \select_ln41_5_reg_1635[7]_i_23_n_3\
    );
\select_ln41_5_reg_1635[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(5),
      I1 => add_ln34_1_fu_596_p2(4),
      O => \select_ln41_5_reg_1635[7]_i_24_n_3\
    );
\select_ln41_5_reg_1635[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(3),
      I1 => add_ln34_1_fu_596_p2(2),
      O => \select_ln41_5_reg_1635[7]_i_25_n_3\
    );
\select_ln41_5_reg_1635[7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_2_reg_379(0),
      I1 => add_ln34_1_fu_596_p2(1),
      O => \select_ln41_5_reg_1635[7]_i_26_n_3\
    );
\select_ln41_5_reg_1635[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(18),
      I1 => add_ln34_1_fu_596_p2(19),
      O => \select_ln41_5_reg_1635[7]_i_5_n_3\
    );
\select_ln41_5_reg_1635[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(16),
      I1 => add_ln34_1_fu_596_p2(17),
      O => \select_ln41_5_reg_1635[7]_i_6_n_3\
    );
\select_ln41_5_reg_1635[7]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(20),
      O => \select_ln41_5_reg_1635[7]_i_7_n_3\
    );
\select_ln41_5_reg_1635[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(19),
      I1 => add_ln34_1_fu_596_p2(18),
      O => \select_ln41_5_reg_1635[7]_i_8_n_3\
    );
\select_ln41_5_reg_1635[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln34_1_fu_596_p2(17),
      I1 => add_ln34_1_fu_596_p2(16),
      O => \select_ln41_5_reg_1635[7]_i_9_n_3\
    );
\select_ln41_5_reg_1635_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(0),
      Q => select_ln41_5_reg_1635(0),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(1),
      Q => select_ln41_5_reg_1635(1),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(2),
      Q => select_ln41_5_reg_1635(2),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(3),
      Q => select_ln41_5_reg_1635(3),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(4),
      Q => select_ln41_5_reg_1635(4),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(5),
      Q => select_ln41_5_reg_1635(5),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(6),
      Q => select_ln41_5_reg_1635(6),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_5_fu_993_p3(7),
      Q => select_ln41_5_reg_1635(7),
      R => '0'
    );
\select_ln41_5_reg_1635_reg[7]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \select_ln41_5_reg_1635_reg[7]_i_10_n_3\,
      CO(2) => \select_ln41_5_reg_1635_reg[7]_i_10_n_4\,
      CO(1) => \select_ln41_5_reg_1635_reg[7]_i_10_n_5\,
      CO(0) => \select_ln41_5_reg_1635_reg[7]_i_10_n_6\,
      CYINIT => '0',
      DI(3) => \select_ln41_5_reg_1635[7]_i_19_n_3\,
      DI(2) => \select_ln41_5_reg_1635[7]_i_20_n_3\,
      DI(1) => \select_ln41_5_reg_1635[7]_i_21_n_3\,
      DI(0) => \select_ln41_5_reg_1635[7]_i_22_n_3\,
      O(3 downto 0) => \NLW_select_ln41_5_reg_1635_reg[7]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \select_ln41_5_reg_1635[7]_i_23_n_3\,
      S(2) => \select_ln41_5_reg_1635[7]_i_24_n_3\,
      S(1) => \select_ln41_5_reg_1635[7]_i_25_n_3\,
      S(0) => \select_ln41_5_reg_1635[7]_i_26_n_3\
    );
\select_ln41_5_reg_1635_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \select_ln41_5_reg_1635_reg[7]_i_4_n_3\,
      CO(3) => \NLW_select_ln41_5_reg_1635_reg[7]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      CO(1) => \select_ln41_5_reg_1635_reg[7]_i_3_n_5\,
      CO(0) => \select_ln41_5_reg_1635_reg[7]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \select_ln41_5_reg_1635[7]_i_5_n_3\,
      DI(0) => \select_ln41_5_reg_1635[7]_i_6_n_3\,
      O(3 downto 0) => \NLW_select_ln41_5_reg_1635_reg[7]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \select_ln41_5_reg_1635[7]_i_7_n_3\,
      S(1) => \select_ln41_5_reg_1635[7]_i_8_n_3\,
      S(0) => \select_ln41_5_reg_1635[7]_i_9_n_3\
    );
\select_ln41_5_reg_1635_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \select_ln41_5_reg_1635_reg[7]_i_10_n_3\,
      CO(3) => \select_ln41_5_reg_1635_reg[7]_i_4_n_3\,
      CO(2) => \select_ln41_5_reg_1635_reg[7]_i_4_n_4\,
      CO(1) => \select_ln41_5_reg_1635_reg[7]_i_4_n_5\,
      CO(0) => \select_ln41_5_reg_1635_reg[7]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \select_ln41_5_reg_1635[7]_i_11_n_3\,
      DI(2) => \select_ln41_5_reg_1635[7]_i_12_n_3\,
      DI(1) => \select_ln41_5_reg_1635[7]_i_13_n_3\,
      DI(0) => \select_ln41_5_reg_1635[7]_i_14_n_3\,
      O(3 downto 0) => \NLW_select_ln41_5_reg_1635_reg[7]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \select_ln41_5_reg_1635[7]_i_15_n_3\,
      S(2) => \select_ln41_5_reg_1635[7]_i_16_n_3\,
      S(1) => \select_ln41_5_reg_1635[7]_i_17_n_3\,
      S(0) => \select_ln41_5_reg_1635[7]_i_18_n_3\
    );
\select_ln41_6_reg_1641[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(0),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(0),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(0),
      O => select_ln41_6_fu_1000_p3(0)
    );
\select_ln41_6_reg_1641[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(1),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(1),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(1),
      O => select_ln41_6_fu_1000_p3(1)
    );
\select_ln41_6_reg_1641[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(2),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(2),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(2),
      O => select_ln41_6_fu_1000_p3(2)
    );
\select_ln41_6_reg_1641[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(3),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(3),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(3),
      O => select_ln41_6_fu_1000_p3(3)
    );
\select_ln41_6_reg_1641[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(4),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(4),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(4),
      O => select_ln41_6_fu_1000_p3(4)
    );
\select_ln41_6_reg_1641[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(5),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(5),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(5),
      O => select_ln41_6_fu_1000_p3(5)
    );
\select_ln41_6_reg_1641[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(6),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(6),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(6),
      O => select_ln41_6_fu_1000_p3(6)
    );
\select_ln41_6_reg_1641[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_0_1_fu_190(7),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_2_fu_186(7),
      I4 => \select_ln41_6_reg_1641[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(7),
      O => select_ln41_6_fu_1000_p3(7)
    );
\select_ln41_6_reg_1641[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \select_ln41_6_reg_1641[7]_i_2_n_3\
    );
\select_ln41_6_reg_1641_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(0),
      Q => select_ln41_6_reg_1641(0),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(1),
      Q => select_ln41_6_reg_1641(1),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(2),
      Q => select_ln41_6_reg_1641(2),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(3),
      Q => select_ln41_6_reg_1641(3),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(4),
      Q => select_ln41_6_reg_1641(4),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(5),
      Q => select_ln41_6_reg_1641(5),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(6),
      Q => select_ln41_6_reg_1641(6),
      R => '0'
    );
\select_ln41_6_reg_1641_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_6_fu_1000_p3(7),
      Q => select_ln41_6_reg_1641(7),
      R => '0'
    );
\select_ln41_reg_1605[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(0),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(0),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(0),
      O => select_ln41_fu_958_p3(0)
    );
\select_ln41_reg_1605[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(1),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(1),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(1),
      O => select_ln41_fu_958_p3(1)
    );
\select_ln41_reg_1605[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(2),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(2),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(2),
      O => select_ln41_fu_958_p3(2)
    );
\select_ln41_reg_1605[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(3),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(3),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(3),
      O => select_ln41_fu_958_p3(3)
    );
\select_ln41_reg_1605[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(4),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(4),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(4),
      O => select_ln41_fu_958_p3(4)
    );
\select_ln41_reg_1605[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(5),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(5),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(5),
      O => select_ln41_fu_958_p3(5)
    );
\select_ln41_reg_1605[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(6),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(6),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(6),
      O => select_ln41_fu_958_p3(6)
    );
\select_ln41_reg_1605[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_0_fu_210(7),
      I2 => \select_ln41_reg_1605[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(7),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_1_fu_214(7),
      O => select_ln41_fu_958_p3(7)
    );
\select_ln41_reg_1605[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      I3 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \select_ln41_reg_1605[7]_i_2_n_3\
    );
\select_ln41_reg_1605_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(0),
      Q => select_ln41_reg_1605(0),
      R => '0'
    );
\select_ln41_reg_1605_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(1),
      Q => select_ln41_reg_1605(1),
      R => '0'
    );
\select_ln41_reg_1605_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(2),
      Q => select_ln41_reg_1605(2),
      R => '0'
    );
\select_ln41_reg_1605_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(3),
      Q => select_ln41_reg_1605(3),
      R => '0'
    );
\select_ln41_reg_1605_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(4),
      Q => select_ln41_reg_1605(4),
      R => '0'
    );
\select_ln41_reg_1605_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(5),
      Q => select_ln41_reg_1605(5),
      R => '0'
    );
\select_ln41_reg_1605_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(6),
      Q => select_ln41_reg_1605(6),
      R => '0'
    );
\select_ln41_reg_1605_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => select_ln41_fu_958_p3(7),
      Q => select_ln41_reg_1605(7),
      R => '0'
    );
sobel_filter_ctrl_bus_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_ctrl_bus_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      E(0) => ap_NS_fsm114_out,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_ctrl_bus_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_ctrl_bus_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_ctrl_bus_WREADY,
      OUTPUT_IMAGE_TREADY => OUTPUT_IMAGE_TREADY,
      OUTPUT_IMAGE_TREADY_0 => sobel_filter_ctrl_bus_s_axi_U_n_9,
      OUTPUT_IMAGE_V_data_V_1_ack_in => OUTPUT_IMAGE_V_data_V_1_ack_in,
      OUTPUT_IMAGE_V_dest_V_1_ack_in => OUTPUT_IMAGE_V_dest_V_1_ack_in,
      \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2\ => \OUTPUT_IMAGE_V_data_V_1_state_reg_n_3_[0]\,
      \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_0\ => \^output_image_tvalid\,
      \OUTPUT_IMAGE_V_dest_V_1_state[0]_i_2_1\ => \OUTPUT_IMAGE_V_user_V_1_state_reg_n_3_[0]\,
      \OUTPUT_IMAGE_V_dest_V_1_state_reg[0]\ => sobel_filter_ctrl_bus_s_axi_U_n_12,
      OUTPUT_IMAGE_V_id_V_1_ack_in => OUTPUT_IMAGE_V_id_V_1_ack_in,
      OUTPUT_IMAGE_V_keep_V_1_ack_in => OUTPUT_IMAGE_V_keep_V_1_ack_in,
      \OUTPUT_IMAGE_V_keep_V_1_payload_B_reg[0]\ => \OUTPUT_IMAGE_V_keep_V_1_state_reg_n_3_[0]\,
      \OUTPUT_IMAGE_V_keep_V_1_state_reg[0]\ => sobel_filter_ctrl_bus_s_axi_U_n_10,
      OUTPUT_IMAGE_V_last_V_1_ack_in => OUTPUT_IMAGE_V_last_V_1_ack_in,
      OUTPUT_IMAGE_V_strb_V_1_ack_in => OUTPUT_IMAGE_V_strb_V_1_ack_in,
      \OUTPUT_IMAGE_V_strb_V_1_state_reg[0]\ => sobel_filter_ctrl_bus_s_axi_U_n_11,
      OUTPUT_IMAGE_V_user_V_1_ack_in => OUTPUT_IMAGE_V_user_V_1_ack_in,
      Q(1) => ap_CS_fsm_state11,
      Q(0) => \ap_CS_fsm_reg_n_3_[0]\,
      SR(0) => counter_0_reg_333,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \i_1_reg_460_reg[10]\ => sobel_filter_ctrl_bus_s_axi_U_n_13,
      \i_1_reg_460_reg[4]\ => sobel_filter_ctrl_bus_s_axi_U_n_14,
      \i_1_reg_460_reg[6]\ => sobel_filter_ctrl_bus_s_axi_U_n_15,
      int_ap_ready_i_3_0 => \OUTPUT_IMAGE_V_id_V_1_state_reg_n_3_[0]\,
      int_ap_ready_reg_0 => \OUTPUT_IMAGE_V_last_V_1_state_reg_n_3_[0]\,
      int_ap_ready_reg_1 => \OUTPUT_IMAGE_V_strb_V_1_state_reg_n_3_[0]\,
      int_ap_ready_reg_2(10 downto 0) => i_1_reg_460(10 downto 0),
      interrupt => interrupt,
      s_axi_ctrl_bus_ARADDR(3 downto 0) => s_axi_ctrl_bus_ARADDR(3 downto 0),
      s_axi_ctrl_bus_ARVALID => s_axi_ctrl_bus_ARVALID,
      s_axi_ctrl_bus_AWADDR(3 downto 0) => s_axi_ctrl_bus_AWADDR(3 downto 0),
      s_axi_ctrl_bus_AWVALID => s_axi_ctrl_bus_AWVALID,
      s_axi_ctrl_bus_BREADY => s_axi_ctrl_bus_BREADY,
      s_axi_ctrl_bus_BVALID => s_axi_ctrl_bus_BVALID,
      s_axi_ctrl_bus_RDATA(4) => \^s_axi_ctrl_bus_rdata\(7),
      s_axi_ctrl_bus_RDATA(3 downto 0) => \^s_axi_ctrl_bus_rdata\(3 downto 0),
      s_axi_ctrl_bus_RREADY => s_axi_ctrl_bus_RREADY,
      s_axi_ctrl_bus_RVALID => s_axi_ctrl_bus_RVALID,
      s_axi_ctrl_bus_WDATA(2) => s_axi_ctrl_bus_WDATA(7),
      s_axi_ctrl_bus_WDATA(1 downto 0) => s_axi_ctrl_bus_WDATA(1 downto 0),
      s_axi_ctrl_bus_WSTRB(0) => s_axi_ctrl_bus_WSTRB(0),
      s_axi_ctrl_bus_WVALID => s_axi_ctrl_bus_WVALID
    );
sobel_filter_mac_eOg_U2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg
     port map (
      A(7 downto 0) => tmp_1_fu_1253_p11(7 downto 0),
      B(0) => sobel_filter_mac_eOg_U3_n_35,
      CO(0) => icmp_ln61_fu_1032_p2,
      D(31) => sobel_filter_mac_eOg_U2_n_3,
      D(30) => sobel_filter_mac_eOg_U2_n_4,
      D(29) => sobel_filter_mac_eOg_U2_n_5,
      D(28) => sobel_filter_mac_eOg_U2_n_6,
      D(27) => sobel_filter_mac_eOg_U2_n_7,
      D(26) => sobel_filter_mac_eOg_U2_n_8,
      D(25) => sobel_filter_mac_eOg_U2_n_9,
      D(24) => sobel_filter_mac_eOg_U2_n_10,
      D(23) => sobel_filter_mac_eOg_U2_n_11,
      D(22) => sobel_filter_mac_eOg_U2_n_12,
      D(21) => sobel_filter_mac_eOg_U2_n_13,
      D(20) => sobel_filter_mac_eOg_U2_n_14,
      D(19) => sobel_filter_mac_eOg_U2_n_15,
      D(18) => sobel_filter_mac_eOg_U2_n_16,
      D(17) => sobel_filter_mac_eOg_U2_n_17,
      D(16) => sobel_filter_mac_eOg_U2_n_18,
      D(15) => sobel_filter_mac_eOg_U2_n_19,
      D(14) => sobel_filter_mac_eOg_U2_n_20,
      D(13) => sobel_filter_mac_eOg_U2_n_21,
      D(12) => sobel_filter_mac_eOg_U2_n_22,
      D(11) => sobel_filter_mac_eOg_U2_n_23,
      D(10) => sobel_filter_mac_eOg_U2_n_24,
      D(9) => sobel_filter_mac_eOg_U2_n_25,
      D(8) => sobel_filter_mac_eOg_U2_n_26,
      D(7) => sobel_filter_mac_eOg_U2_n_27,
      D(6) => sobel_filter_mac_eOg_U2_n_28,
      D(5) => sobel_filter_mac_eOg_U2_n_29,
      D(4) => sobel_filter_mac_eOg_U2_n_30,
      D(3) => sobel_filter_mac_eOg_U2_n_31,
      D(2) => sobel_filter_mac_eOg_U2_n_32,
      D(1) => sobel_filter_mac_eOg_U2_n_33,
      D(0) => sobel_filter_mac_eOg_U2_n_34,
      OPMODE(0) => sobel_filter_mac_eOg_U3_n_36,
      Q(3) => ap_CS_fsm_state8,
      Q(2) => ap_CS_fsm_state7,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => ap_CS_fsm_state5,
      \ap_CS_fsm_reg[6]\(1) => rowOffset_reg_16870,
      \ap_CS_fsm_reg[6]\(0) => ap_NS_fsm(6),
      ap_NS_fsm112_out => ap_NS_fsm112_out,
      ap_NS_fsm17_out => ap_NS_fsm17_out,
      ap_NS_fsm18_out => ap_NS_fsm18_out,
      ap_clk => ap_clk,
      colOffset_reg_1664(1 downto 0) => colOffset_reg_1664(1 downto 0),
      p(2) => \colOffset_0_reg_390_reg_n_3_[2]\,
      p(1) => \colOffset_0_reg_390_reg_n_3_[1]\,
      p(0) => \colOffset_0_reg_390_reg_n_3_[0]\,
      p_0 => \rowOffset_0_reg_425_reg_n_3_[0]\,
      p_1 => \rowOffset_0_reg_425_reg_n_3_[1]\,
      p_10(7 downto 0) => select_ln41_reg_1605(7 downto 0),
      p_11(7 downto 0) => select_ln41_2_reg_1617(7 downto 0),
      p_12 => \INPUT_IMAGE_V_data_V_0_state_reg_n_3_[0]\,
      p_13(0) => icmp_ln52_1_fu_1020_p2,
      p_14(0) => icmp_ln52_fu_1014_p2,
      p_2 => \rowOffset_0_reg_425_reg_n_3_[2]\,
      p_3(7 downto 0) => window_val_2_1_7_reg_1599(7 downto 0),
      p_4(7 downto 0) => select_ln41_5_reg_1635(7 downto 0),
      p_5(7 downto 0) => window_val_2_2_53_reg_1647(7 downto 0),
      p_6(7 downto 0) => window_val_2_2_52_reg_1629(7 downto 0),
      p_7(7 downto 0) => select_ln41_6_reg_1641(7 downto 0),
      p_8(7 downto 0) => window_val_2_2_51_reg_1611(7 downto 0),
      p_9(7 downto 0) => select_ln41_3_reg_1623(7 downto 0),
      sel(2 downto 0) => sel(3 downto 1)
    );
sobel_filter_mac_eOg_U3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter_mac_eOg_1
     port map (
      A(7 downto 0) => tmp_1_fu_1253_p11(7 downto 0),
      B(0) => sobel_filter_mac_eOg_U3_n_35,
      D(31) => sobel_filter_mac_eOg_U3_n_3,
      D(30) => sobel_filter_mac_eOg_U3_n_4,
      D(29) => sobel_filter_mac_eOg_U3_n_5,
      D(28) => sobel_filter_mac_eOg_U3_n_6,
      D(27) => sobel_filter_mac_eOg_U3_n_7,
      D(26) => sobel_filter_mac_eOg_U3_n_8,
      D(25) => sobel_filter_mac_eOg_U3_n_9,
      D(24) => sobel_filter_mac_eOg_U3_n_10,
      D(23) => sobel_filter_mac_eOg_U3_n_11,
      D(22) => sobel_filter_mac_eOg_U3_n_12,
      D(21) => sobel_filter_mac_eOg_U3_n_13,
      D(20) => sobel_filter_mac_eOg_U3_n_14,
      D(19) => sobel_filter_mac_eOg_U3_n_15,
      D(18) => sobel_filter_mac_eOg_U3_n_16,
      D(17) => sobel_filter_mac_eOg_U3_n_17,
      D(16) => sobel_filter_mac_eOg_U3_n_18,
      D(15) => sobel_filter_mac_eOg_U3_n_19,
      D(14) => sobel_filter_mac_eOg_U3_n_20,
      D(13) => sobel_filter_mac_eOg_U3_n_21,
      D(12) => sobel_filter_mac_eOg_U3_n_22,
      D(11) => sobel_filter_mac_eOg_U3_n_23,
      D(10) => sobel_filter_mac_eOg_U3_n_24,
      D(9) => sobel_filter_mac_eOg_U3_n_25,
      D(8) => sobel_filter_mac_eOg_U3_n_26,
      D(7) => sobel_filter_mac_eOg_U3_n_27,
      D(6) => sobel_filter_mac_eOg_U3_n_28,
      D(5) => sobel_filter_mac_eOg_U3_n_29,
      D(4) => sobel_filter_mac_eOg_U3_n_30,
      D(3) => sobel_filter_mac_eOg_U3_n_31,
      D(2) => sobel_filter_mac_eOg_U3_n_32,
      D(1) => sobel_filter_mac_eOg_U3_n_33,
      D(0) => sobel_filter_mac_eOg_U3_n_34,
      E(0) => ap_NS_fsm17_out,
      OPMODE(0) => sobel_filter_mac_eOg_U3_n_36,
      Q(1) => ap_CS_fsm_state7,
      Q(0) => ap_CS_fsm_state6,
      SR(0) => ap_NS_fsm112_out,
      ap_NS_fsm18_out => ap_NS_fsm18_out,
      ap_clk => ap_clk,
      colOffset_reg_1664(2 downto 0) => colOffset_reg_1664(2 downto 0),
      p(1) => rowOffset_reg_16870,
      p(0) => ap_NS_fsm(6),
      p_0 => \rowOffset_0_reg_425_reg_n_3_[0]\,
      p_1 => \rowOffset_0_reg_425_reg_n_3_[1]\,
      p_2 => \rowOffset_0_reg_425_reg_n_3_[2]\,
      p_3(2) => \colOffset_0_reg_390_reg_n_3_[2]\,
      p_3(1) => \colOffset_0_reg_390_reg_n_3_[1]\,
      p_3(0) => \colOffset_0_reg_390_reg_n_3_[0]\,
      sel(2 downto 0) => sel(3 downto 1)
    );
\tmp_dest_V_3_reg_1593[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_payload_B(0),
      I1 => INPUT_IMAGE_V_dest_V_0_sel,
      I2 => INPUT_IMAGE_V_dest_V_0_payload_A(0),
      O => INPUT_IMAGE_V_dest_V_0_data_out(0)
    );
\tmp_dest_V_3_reg_1593[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_payload_B(1),
      I1 => INPUT_IMAGE_V_dest_V_0_sel,
      I2 => INPUT_IMAGE_V_dest_V_0_payload_A(1),
      O => INPUT_IMAGE_V_dest_V_0_data_out(1)
    );
\tmp_dest_V_3_reg_1593[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_payload_B(2),
      I1 => INPUT_IMAGE_V_dest_V_0_sel,
      I2 => INPUT_IMAGE_V_dest_V_0_payload_A(2),
      O => INPUT_IMAGE_V_dest_V_0_data_out(2)
    );
\tmp_dest_V_3_reg_1593[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_payload_B(3),
      I1 => INPUT_IMAGE_V_dest_V_0_sel,
      I2 => INPUT_IMAGE_V_dest_V_0_payload_A(3),
      O => INPUT_IMAGE_V_dest_V_0_data_out(3)
    );
\tmp_dest_V_3_reg_1593[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_payload_B(4),
      I1 => INPUT_IMAGE_V_dest_V_0_sel,
      I2 => INPUT_IMAGE_V_dest_V_0_payload_A(4),
      O => INPUT_IMAGE_V_dest_V_0_data_out(4)
    );
\tmp_dest_V_3_reg_1593[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_dest_V_0_payload_B(5),
      I1 => INPUT_IMAGE_V_dest_V_0_sel,
      I2 => INPUT_IMAGE_V_dest_V_0_payload_A(5),
      O => INPUT_IMAGE_V_dest_V_0_data_out(5)
    );
\tmp_dest_V_3_reg_1593_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_dest_V_0_data_out(0),
      Q => tmp_dest_V_3_reg_1593(0),
      R => '0'
    );
\tmp_dest_V_3_reg_1593_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_dest_V_0_data_out(1),
      Q => tmp_dest_V_3_reg_1593(1),
      R => '0'
    );
\tmp_dest_V_3_reg_1593_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_dest_V_0_data_out(2),
      Q => tmp_dest_V_3_reg_1593(2),
      R => '0'
    );
\tmp_dest_V_3_reg_1593_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_dest_V_0_data_out(3),
      Q => tmp_dest_V_3_reg_1593(3),
      R => '0'
    );
\tmp_dest_V_3_reg_1593_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_dest_V_0_data_out(4),
      Q => tmp_dest_V_3_reg_1593(4),
      R => '0'
    );
\tmp_dest_V_3_reg_1593_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_dest_V_0_data_out(5),
      Q => tmp_dest_V_3_reg_1593(5),
      R => '0'
    );
\tmp_dest_V_fu_162_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_dest_V_3_reg_1593(0),
      Q => tmp_dest_V_fu_162(0),
      R => '0'
    );
\tmp_dest_V_fu_162_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_dest_V_3_reg_1593(1),
      Q => tmp_dest_V_fu_162(1),
      R => '0'
    );
\tmp_dest_V_fu_162_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_dest_V_3_reg_1593(2),
      Q => tmp_dest_V_fu_162(2),
      R => '0'
    );
\tmp_dest_V_fu_162_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_dest_V_3_reg_1593(3),
      Q => tmp_dest_V_fu_162(3),
      R => '0'
    );
\tmp_dest_V_fu_162_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_dest_V_3_reg_1593(4),
      Q => tmp_dest_V_fu_162(4),
      R => '0'
    );
\tmp_dest_V_fu_162_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_dest_V_3_reg_1593(5),
      Q => tmp_dest_V_fu_162(5),
      R => '0'
    );
\tmp_id_V_3_reg_1587[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_payload_B(0),
      I1 => INPUT_IMAGE_V_id_V_0_sel,
      I2 => INPUT_IMAGE_V_id_V_0_payload_A(0),
      O => INPUT_IMAGE_V_id_V_0_data_out(0)
    );
\tmp_id_V_3_reg_1587[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_payload_B(1),
      I1 => INPUT_IMAGE_V_id_V_0_sel,
      I2 => INPUT_IMAGE_V_id_V_0_payload_A(1),
      O => INPUT_IMAGE_V_id_V_0_data_out(1)
    );
\tmp_id_V_3_reg_1587[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_payload_B(2),
      I1 => INPUT_IMAGE_V_id_V_0_sel,
      I2 => INPUT_IMAGE_V_id_V_0_payload_A(2),
      O => INPUT_IMAGE_V_id_V_0_data_out(2)
    );
\tmp_id_V_3_reg_1587[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_payload_B(3),
      I1 => INPUT_IMAGE_V_id_V_0_sel,
      I2 => INPUT_IMAGE_V_id_V_0_payload_A(3),
      O => INPUT_IMAGE_V_id_V_0_data_out(3)
    );
\tmp_id_V_3_reg_1587[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_id_V_0_payload_B(4),
      I1 => INPUT_IMAGE_V_id_V_0_sel,
      I2 => INPUT_IMAGE_V_id_V_0_payload_A(4),
      O => INPUT_IMAGE_V_id_V_0_data_out(4)
    );
\tmp_id_V_3_reg_1587_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_id_V_0_data_out(0),
      Q => tmp_id_V_3_reg_1587(0),
      R => '0'
    );
\tmp_id_V_3_reg_1587_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_id_V_0_data_out(1),
      Q => tmp_id_V_3_reg_1587(1),
      R => '0'
    );
\tmp_id_V_3_reg_1587_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_id_V_0_data_out(2),
      Q => tmp_id_V_3_reg_1587(2),
      R => '0'
    );
\tmp_id_V_3_reg_1587_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_id_V_0_data_out(3),
      Q => tmp_id_V_3_reg_1587(3),
      R => '0'
    );
\tmp_id_V_3_reg_1587_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_id_V_0_data_out(4),
      Q => tmp_id_V_3_reg_1587(4),
      R => '0'
    );
\tmp_id_V_fu_178_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_id_V_3_reg_1587(0),
      Q => tmp_id_V_fu_178(0),
      R => '0'
    );
\tmp_id_V_fu_178_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_id_V_3_reg_1587(1),
      Q => tmp_id_V_fu_178(1),
      R => '0'
    );
\tmp_id_V_fu_178_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_id_V_3_reg_1587(2),
      Q => tmp_id_V_fu_178(2),
      R => '0'
    );
\tmp_id_V_fu_178_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_id_V_3_reg_1587(3),
      Q => tmp_id_V_fu_178(3),
      R => '0'
    );
\tmp_id_V_fu_178_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_id_V_3_reg_1587(4),
      Q => tmp_id_V_fu_178(4),
      R => '0'
    );
\tmp_keep_V_3_reg_1569[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_keep_V_0_payload_B,
      I1 => INPUT_IMAGE_V_keep_V_0_sel,
      I2 => INPUT_IMAGE_V_keep_V_0_payload_A,
      O => INPUT_IMAGE_V_keep_V_0_data_out
    );
\tmp_keep_V_3_reg_1569_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_keep_V_0_data_out,
      Q => tmp_keep_V_3_reg_1569,
      R => '0'
    );
\tmp_keep_V_fu_166_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_keep_V_3_reg_1569,
      Q => tmp_keep_V_fu_166,
      R => '0'
    );
\tmp_strb_V_3_reg_1575[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_strb_V_0_payload_B,
      I1 => INPUT_IMAGE_V_strb_V_0_sel,
      I2 => INPUT_IMAGE_V_strb_V_0_payload_A,
      O => INPUT_IMAGE_V_strb_V_0_data_out
    );
\tmp_strb_V_3_reg_1575_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_strb_V_0_data_out,
      Q => tmp_strb_V_3_reg_1575,
      R => '0'
    );
\tmp_strb_V_fu_170_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_strb_V_3_reg_1575,
      Q => tmp_strb_V_fu_170,
      R => '0'
    );
\tmp_user_V_3_reg_1581[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_user_V_0_payload_B(0),
      I1 => INPUT_IMAGE_V_user_V_0_sel,
      I2 => INPUT_IMAGE_V_user_V_0_payload_A(0),
      O => INPUT_IMAGE_V_user_V_0_data_out(0)
    );
\tmp_user_V_3_reg_1581[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => INPUT_IMAGE_V_user_V_0_payload_B(1),
      I1 => INPUT_IMAGE_V_user_V_0_sel,
      I2 => INPUT_IMAGE_V_user_V_0_payload_A(1),
      O => INPUT_IMAGE_V_user_V_0_data_out(1)
    );
\tmp_user_V_3_reg_1581_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_user_V_0_data_out(0),
      Q => tmp_user_V_3_reg_1581(0),
      R => '0'
    );
\tmp_user_V_3_reg_1581_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => INPUT_IMAGE_V_user_V_0_data_out(1),
      Q => tmp_user_V_3_reg_1581(1),
      R => '0'
    );
\tmp_user_V_fu_174_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_user_V_3_reg_1581(0),
      Q => tmp_user_V_fu_174(0),
      R => '0'
    );
\tmp_user_V_fu_174_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => tmp_user_V_3_reg_1581(1),
      Q => tmp_user_V_fu_174(1),
      R => '0'
    );
\window_val_0_1_fu_190_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(0),
      Q => window_val_0_1_fu_190(0),
      R => '0'
    );
\window_val_0_1_fu_190_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(1),
      Q => window_val_0_1_fu_190(1),
      R => '0'
    );
\window_val_0_1_fu_190_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(2),
      Q => window_val_0_1_fu_190(2),
      R => '0'
    );
\window_val_0_1_fu_190_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(3),
      Q => window_val_0_1_fu_190(3),
      R => '0'
    );
\window_val_0_1_fu_190_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(4),
      Q => window_val_0_1_fu_190(4),
      R => '0'
    );
\window_val_0_1_fu_190_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(5),
      Q => window_val_0_1_fu_190(5),
      R => '0'
    );
\window_val_0_1_fu_190_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(6),
      Q => window_val_0_1_fu_190(6),
      R => '0'
    );
\window_val_0_1_fu_190_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_5_reg_1635(7),
      Q => window_val_0_1_fu_190(7),
      R => '0'
    );
\window_val_1_0_fu_198_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(0),
      Q => window_val_1_0_fu_198(0),
      R => '0'
    );
\window_val_1_0_fu_198_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(1),
      Q => window_val_1_0_fu_198(1),
      R => '0'
    );
\window_val_1_0_fu_198_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(2),
      Q => window_val_1_0_fu_198(2),
      R => '0'
    );
\window_val_1_0_fu_198_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(3),
      Q => window_val_1_0_fu_198(3),
      R => '0'
    );
\window_val_1_0_fu_198_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(4),
      Q => window_val_1_0_fu_198(4),
      R => '0'
    );
\window_val_1_0_fu_198_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(5),
      Q => window_val_1_0_fu_198(5),
      R => '0'
    );
\window_val_1_0_fu_198_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(6),
      Q => window_val_1_0_fu_198(6),
      R => '0'
    );
\window_val_1_0_fu_198_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_3_reg_1623(7),
      Q => window_val_1_0_fu_198(7),
      R => '0'
    );
\window_val_1_1_fu_202_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(0),
      Q => window_val_1_1_fu_202(0),
      R => '0'
    );
\window_val_1_1_fu_202_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(1),
      Q => window_val_1_1_fu_202(1),
      R => '0'
    );
\window_val_1_1_fu_202_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(2),
      Q => window_val_1_1_fu_202(2),
      R => '0'
    );
\window_val_1_1_fu_202_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(3),
      Q => window_val_1_1_fu_202(3),
      R => '0'
    );
\window_val_1_1_fu_202_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(4),
      Q => window_val_1_1_fu_202(4),
      R => '0'
    );
\window_val_1_1_fu_202_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(5),
      Q => window_val_1_1_fu_202(5),
      R => '0'
    );
\window_val_1_1_fu_202_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(6),
      Q => window_val_1_1_fu_202(6),
      R => '0'
    );
\window_val_1_1_fu_202_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_2_reg_1617(7),
      Q => window_val_1_1_fu_202(7),
      R => '0'
    );
\window_val_2_0_fu_210_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(0),
      Q => window_val_2_0_fu_210(0),
      R => '0'
    );
\window_val_2_0_fu_210_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(1),
      Q => window_val_2_0_fu_210(1),
      R => '0'
    );
\window_val_2_0_fu_210_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(2),
      Q => window_val_2_0_fu_210(2),
      R => '0'
    );
\window_val_2_0_fu_210_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(3),
      Q => window_val_2_0_fu_210(3),
      R => '0'
    );
\window_val_2_0_fu_210_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(4),
      Q => window_val_2_0_fu_210(4),
      R => '0'
    );
\window_val_2_0_fu_210_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(5),
      Q => window_val_2_0_fu_210(5),
      R => '0'
    );
\window_val_2_0_fu_210_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(6),
      Q => window_val_2_0_fu_210(6),
      R => '0'
    );
\window_val_2_0_fu_210_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_reg_1605(7),
      Q => window_val_2_0_fu_210(7),
      R => '0'
    );
\window_val_2_1_7_reg_1599[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD08EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(0),
      I2 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(0),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      O => window_val_2_1_7_fu_951_p3(0)
    );
\window_val_2_1_7_reg_1599[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE04DC8C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(1),
      I2 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(1),
      I4 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      O => window_val_2_1_7_fu_951_p3(1)
    );
\window_val_2_1_7_reg_1599[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE04DC8C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(2),
      I2 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(2),
      I4 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      O => window_val_2_1_7_fu_951_p3(2)
    );
\window_val_2_1_7_reg_1599[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE04DC8C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(3),
      I2 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(3),
      I4 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      O => window_val_2_1_7_fu_951_p3(3)
    );
\window_val_2_1_7_reg_1599[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD08EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(4),
      I2 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(4),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      O => window_val_2_1_7_fu_951_p3(4)
    );
\window_val_2_1_7_reg_1599[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD08EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(5),
      I2 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(5),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      O => window_val_2_1_7_fu_951_p3(5)
    );
\window_val_2_1_7_reg_1599[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD08EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(6),
      I2 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(6),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      O => window_val_2_1_7_fu_951_p3(6)
    );
\window_val_2_1_7_reg_1599[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE04DC8C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_1_fu_214(7),
      I2 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(7),
      I4 => \window_val_2_1_7_reg_1599[7]_i_2_n_3\,
      O => window_val_2_1_7_fu_951_p3(7)
    );
\window_val_2_1_7_reg_1599[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      I2 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \window_val_2_1_7_reg_1599[7]_i_2_n_3\
    );
\window_val_2_1_7_reg_1599_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(0),
      Q => window_val_2_1_7_reg_1599(0),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(1),
      Q => window_val_2_1_7_reg_1599(1),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(2),
      Q => window_val_2_1_7_reg_1599(2),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(3),
      Q => window_val_2_1_7_reg_1599(3),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(4),
      Q => window_val_2_1_7_reg_1599(4),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(5),
      Q => window_val_2_1_7_reg_1599(5),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(6),
      Q => window_val_2_1_7_reg_1599(6),
      R => '0'
    );
\window_val_2_1_7_reg_1599_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_1_7_fu_951_p3(7),
      Q => window_val_2_1_7_reg_1599(7),
      R => '0'
    );
\window_val_2_1_fu_214_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(0),
      Q => window_val_2_1_fu_214(0),
      R => '0'
    );
\window_val_2_1_fu_214_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(1),
      Q => window_val_2_1_fu_214(1),
      R => '0'
    );
\window_val_2_1_fu_214_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(2),
      Q => window_val_2_1_fu_214(2),
      R => '0'
    );
\window_val_2_1_fu_214_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(3),
      Q => window_val_2_1_fu_214(3),
      R => '0'
    );
\window_val_2_1_fu_214_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(4),
      Q => window_val_2_1_fu_214(4),
      R => '0'
    );
\window_val_2_1_fu_214_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(5),
      Q => window_val_2_1_fu_214(5),
      R => '0'
    );
\window_val_2_1_fu_214_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(6),
      Q => window_val_2_1_fu_214(6),
      R => '0'
    );
\window_val_2_1_fu_214_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_1_7_reg_1599(7),
      Q => window_val_2_1_fu_214(7),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(0),
      Q => window_val_2_2_1_fu_182(0),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(1),
      Q => window_val_2_2_1_fu_182(1),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(2),
      Q => window_val_2_2_1_fu_182(2),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(3),
      Q => window_val_2_2_1_fu_182(3),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(4),
      Q => window_val_2_2_1_fu_182(4),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(5),
      Q => window_val_2_2_1_fu_182(5),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(6),
      Q => window_val_2_2_1_fu_182(6),
      R => '0'
    );
\window_val_2_2_1_fu_182_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_53_reg_1647(7),
      Q => window_val_2_2_1_fu_182(7),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(0),
      Q => window_val_2_2_2_fu_186(0),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(1),
      Q => window_val_2_2_2_fu_186(1),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(2),
      Q => window_val_2_2_2_fu_186(2),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(3),
      Q => window_val_2_2_2_fu_186(3),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(4),
      Q => window_val_2_2_2_fu_186(4),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(5),
      Q => window_val_2_2_2_fu_186(5),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(6),
      Q => window_val_2_2_2_fu_186(6),
      R => '0'
    );
\window_val_2_2_2_fu_186_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => select_ln41_6_reg_1641(7),
      Q => window_val_2_2_2_fu_186(7),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(0),
      Q => window_val_2_2_3_fu_194(0),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(1),
      Q => window_val_2_2_3_fu_194(1),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(2),
      Q => window_val_2_2_3_fu_194(2),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(3),
      Q => window_val_2_2_3_fu_194(3),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(4),
      Q => window_val_2_2_3_fu_194(4),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(5),
      Q => window_val_2_2_3_fu_194(5),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(6),
      Q => window_val_2_2_3_fu_194(6),
      R => '0'
    );
\window_val_2_2_3_fu_194_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_52_reg_1629(7),
      Q => window_val_2_2_3_fu_194(7),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(0),
      Q => window_val_2_2_4_fu_206(0),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(1),
      Q => window_val_2_2_4_fu_206(1),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(2),
      Q => window_val_2_2_4_fu_206(2),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(3),
      Q => window_val_2_2_4_fu_206(3),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(4),
      Q => window_val_2_2_4_fu_206(4),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(5),
      Q => window_val_2_2_4_fu_206(5),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(6),
      Q => window_val_2_2_4_fu_206(6),
      R => '0'
    );
\window_val_2_2_4_fu_206_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \col_assign_reg_367[10]_i_2_n_3\,
      D => window_val_2_2_51_reg_1611(7),
      Q => window_val_2_2_4_fu_206(7),
      R => '0'
    );
\window_val_2_2_51_reg_1611[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(0),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(0),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(0),
      O => window_val_2_2_51_fu_965_p3(0)
    );
\window_val_2_2_51_reg_1611[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(1),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(1),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(1),
      O => window_val_2_2_51_fu_965_p3(1)
    );
\window_val_2_2_51_reg_1611[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(2),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(2),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(2),
      O => window_val_2_2_51_fu_965_p3(2)
    );
\window_val_2_2_51_reg_1611[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(3),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(3),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(3),
      O => window_val_2_2_51_fu_965_p3(3)
    );
\window_val_2_2_51_reg_1611[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(4),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(4),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(4),
      O => window_val_2_2_51_fu_965_p3(4)
    );
\window_val_2_2_51_reg_1611[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(5),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(5),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(5),
      O => window_val_2_2_51_fu_965_p3(5)
    );
\window_val_2_2_51_reg_1611[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(6),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(6),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(6),
      O => window_val_2_2_51_fu_965_p3(6)
    );
\window_val_2_2_51_reg_1611[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_4_fu_206(7),
      I2 => \window_val_2_2_51_reg_1611[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(7),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_2_0_fu_210(7),
      O => window_val_2_2_51_fu_965_p3(7)
    );
\window_val_2_2_51_reg_1611[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      I3 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \window_val_2_2_51_reg_1611[7]_i_2_n_3\
    );
\window_val_2_2_51_reg_1611_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(0),
      Q => window_val_2_2_51_reg_1611(0),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(1),
      Q => window_val_2_2_51_reg_1611(1),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(2),
      Q => window_val_2_2_51_reg_1611(2),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(3),
      Q => window_val_2_2_51_reg_1611(3),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(4),
      Q => window_val_2_2_51_reg_1611(4),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(5),
      Q => window_val_2_2_51_reg_1611(5),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(6),
      Q => window_val_2_2_51_reg_1611(6),
      R => '0'
    );
\window_val_2_2_51_reg_1611_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_51_fu_965_p3(7),
      Q => window_val_2_2_51_reg_1611(7),
      R => '0'
    );
\window_val_2_2_52_reg_1629[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(0),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(0),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(0),
      O => window_val_2_2_52_fu_986_p3(0)
    );
\window_val_2_2_52_reg_1629[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(1),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(1),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(1),
      O => window_val_2_2_52_fu_986_p3(1)
    );
\window_val_2_2_52_reg_1629[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(2),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(2),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(2),
      O => window_val_2_2_52_fu_986_p3(2)
    );
\window_val_2_2_52_reg_1629[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(3),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(3),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(3),
      O => window_val_2_2_52_fu_986_p3(3)
    );
\window_val_2_2_52_reg_1629[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(4),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(4),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(4),
      O => window_val_2_2_52_fu_986_p3(4)
    );
\window_val_2_2_52_reg_1629[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(5),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(5),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(5),
      O => window_val_2_2_52_fu_986_p3(5)
    );
\window_val_2_2_52_reg_1629[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(6),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(6),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(6),
      O => window_val_2_2_52_fu_986_p3(6)
    );
\window_val_2_2_52_reg_1629[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DEC4CA808EC4C"
    )
        port map (
      I0 => and_ln41_1_reg_1551,
      I1 => window_val_2_2_3_fu_194(7),
      I2 => \window_val_2_2_52_reg_1629[7]_i_2_n_3\,
      I3 => INPUT_IMAGE_V_data_V_0_data_out(7),
      I4 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I5 => window_val_1_0_fu_198(7),
      O => window_val_2_2_52_fu_986_p3(7)
    );
\window_val_2_2_52_reg_1629[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => \icmp_ln274_2_reg_1510_reg_n_3_[0]\,
      I3 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \window_val_2_2_52_reg_1629[7]_i_2_n_3\
    );
\window_val_2_2_52_reg_1629_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(0),
      Q => window_val_2_2_52_reg_1629(0),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(1),
      Q => window_val_2_2_52_reg_1629(1),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(2),
      Q => window_val_2_2_52_reg_1629(2),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(3),
      Q => window_val_2_2_52_reg_1629(3),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(4),
      Q => window_val_2_2_52_reg_1629(4),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(5),
      Q => window_val_2_2_52_reg_1629(5),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(6),
      Q => window_val_2_2_52_reg_1629(6),
      R => '0'
    );
\window_val_2_2_52_reg_1629_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_52_fu_986_p3(7),
      Q => window_val_2_2_52_reg_1629(7),
      R => '0'
    );
\window_val_2_2_53_reg_1647[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(0),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(0),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(0),
      O => window_val_2_2_53_fu_1007_p3(0)
    );
\window_val_2_2_53_reg_1647[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(1),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(1),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(1),
      O => window_val_2_2_53_fu_1007_p3(1)
    );
\window_val_2_2_53_reg_1647[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(2),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(2),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(2),
      O => window_val_2_2_53_fu_1007_p3(2)
    );
\window_val_2_2_53_reg_1647[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(3),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(3),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(3),
      O => window_val_2_2_53_fu_1007_p3(3)
    );
\window_val_2_2_53_reg_1647[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(4),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(4),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(4),
      O => window_val_2_2_53_fu_1007_p3(4)
    );
\window_val_2_2_53_reg_1647[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(5),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(5),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(5),
      O => window_val_2_2_53_fu_1007_p3(5)
    );
\window_val_2_2_53_reg_1647[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(6),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(6),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(6),
      O => window_val_2_2_53_fu_1007_p3(6)
    );
\window_val_2_2_53_reg_1647[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD08FDF8FD080D08"
    )
        port map (
      I0 => \select_ln41_5_reg_1635_reg[7]_i_3_n_4\,
      I1 => window_val_2_2_2_fu_186(7),
      I2 => and_ln41_1_reg_1551,
      I3 => window_val_2_2_1_fu_182(7),
      I4 => \window_val_2_2_53_reg_1647[7]_i_2_n_3\,
      I5 => INPUT_IMAGE_V_data_V_0_data_out(7),
      O => window_val_2_2_53_fu_1007_p3(7)
    );
\window_val_2_2_53_reg_1647[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => tmp_2_fu_1114_p4(0),
      I1 => \col_assign_reg_367_reg_n_3_[0]\,
      I2 => \icmp_ln274_3_reg_1520_reg_n_3_[0]\,
      O => \window_val_2_2_53_reg_1647[7]_i_2_n_3\
    );
\window_val_2_2_53_reg_1647_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(0),
      Q => window_val_2_2_53_reg_1647(0),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(1),
      Q => window_val_2_2_53_reg_1647(1),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(2),
      Q => window_val_2_2_53_reg_1647(2),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(3),
      Q => window_val_2_2_53_reg_1647(3),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(4),
      Q => window_val_2_2_53_reg_1647(4),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(5),
      Q => window_val_2_2_53_reg_1647(5),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(6),
      Q => window_val_2_2_53_reg_1647(6),
      R => '0'
    );
\window_val_2_2_53_reg_1647_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_184_in,
      D => window_val_2_2_53_fu_1007_p3(7),
      Q => window_val_2_2_53_reg_1647(7),
      R => '0'
    );
\x_dir_0_reg_401_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_34,
      Q => x_dir_0_reg_401(0),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_24,
      Q => x_dir_0_reg_401(10),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_23,
      Q => x_dir_0_reg_401(11),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_22,
      Q => x_dir_0_reg_401(12),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_21,
      Q => x_dir_0_reg_401(13),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_20,
      Q => x_dir_0_reg_401(14),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_19,
      Q => x_dir_0_reg_401(15),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_18,
      Q => x_dir_0_reg_401(16),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_17,
      Q => x_dir_0_reg_401(17),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_16,
      Q => x_dir_0_reg_401(18),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_15,
      Q => x_dir_0_reg_401(19),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_33,
      Q => x_dir_0_reg_401(1),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_14,
      Q => x_dir_0_reg_401(20),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_13,
      Q => x_dir_0_reg_401(21),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_12,
      Q => x_dir_0_reg_401(22),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_11,
      Q => x_dir_0_reg_401(23),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_10,
      Q => x_dir_0_reg_401(24),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_9,
      Q => x_dir_0_reg_401(25),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_8,
      Q => x_dir_0_reg_401(26),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_7,
      Q => x_dir_0_reg_401(27),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_6,
      Q => x_dir_0_reg_401(28),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_5,
      Q => x_dir_0_reg_401(29),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_32,
      Q => x_dir_0_reg_401(2),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_4,
      Q => x_dir_0_reg_401(30),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_3,
      Q => x_dir_0_reg_401(31),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_31,
      Q => x_dir_0_reg_401(3),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_30,
      Q => x_dir_0_reg_401(4),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_29,
      Q => x_dir_0_reg_401(5),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_28,
      Q => x_dir_0_reg_401(6),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_27,
      Q => x_dir_0_reg_401(7),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_26,
      Q => x_dir_0_reg_401(8),
      R => ap_NS_fsm112_out
    );
\x_dir_0_reg_401_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U2_n_25,
      Q => x_dir_0_reg_401(9),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_34,
      Q => y_dir_0_reg_413(0),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_24,
      Q => y_dir_0_reg_413(10),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_23,
      Q => y_dir_0_reg_413(11),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_22,
      Q => y_dir_0_reg_413(12),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_21,
      Q => y_dir_0_reg_413(13),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_20,
      Q => y_dir_0_reg_413(14),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_19,
      Q => y_dir_0_reg_413(15),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_18,
      Q => y_dir_0_reg_413(16),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_17,
      Q => y_dir_0_reg_413(17),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_16,
      Q => y_dir_0_reg_413(18),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_15,
      Q => y_dir_0_reg_413(19),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_33,
      Q => y_dir_0_reg_413(1),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_14,
      Q => y_dir_0_reg_413(20),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_13,
      Q => y_dir_0_reg_413(21),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_12,
      Q => y_dir_0_reg_413(22),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_11,
      Q => y_dir_0_reg_413(23),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_10,
      Q => y_dir_0_reg_413(24),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_9,
      Q => y_dir_0_reg_413(25),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_8,
      Q => y_dir_0_reg_413(26),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_7,
      Q => y_dir_0_reg_413(27),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_6,
      Q => y_dir_0_reg_413(28),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_5,
      Q => y_dir_0_reg_413(29),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_32,
      Q => y_dir_0_reg_413(2),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_4,
      Q => y_dir_0_reg_413(30),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_3,
      Q => y_dir_0_reg_413(31),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_31,
      Q => y_dir_0_reg_413(3),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_30,
      Q => y_dir_0_reg_413(4),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_29,
      Q => y_dir_0_reg_413(5),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_28,
      Q => y_dir_0_reg_413(6),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_27,
      Q => y_dir_0_reg_413(7),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_26,
      Q => y_dir_0_reg_413(8),
      R => ap_NS_fsm112_out
    );
\y_dir_0_reg_413_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm17_out,
      D => sobel_filter_mac_eOg_U3_n_25,
      Q => y_dir_0_reg_413(9),
      R => ap_NS_fsm112_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "lab3_simple_sobel_filter_1_1,sobel_filter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sobel_filter,Vivado 2019.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "12'b000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of inst : label is "12'b001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of inst : label is "12'b010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of inst : label is "12'b100000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "12'b000000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "12'b000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "12'b000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "12'b000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "12'b000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "12'b000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "12'b000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of inst : label is "12'b000100000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TREADY : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TREADY";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TVALID : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TVALID";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TREADY : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TREADY";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TVALID : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TVALID";
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl_bus:INPUT_IMAGE:OUTPUT_IMAGE, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_bus_RREADY : signal is "XIL_INTERFACENAME s_axi_ctrl_bus, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WVALID";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TDATA : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TDATA";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TDEST : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TDEST";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TID : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TID";
  attribute X_INTERFACE_PARAMETER of INPUT_IMAGE_TID : signal is "XIL_INTERFACENAME INPUT_IMAGE, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TKEEP : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TKEEP";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TLAST : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TLAST";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TSTRB : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TSTRB";
  attribute X_INTERFACE_INFO of INPUT_IMAGE_TUSER : signal is "xilinx.com:interface:axis:1.0 INPUT_IMAGE TUSER";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TDATA : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TDATA";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TDEST : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TDEST";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TID : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TID";
  attribute X_INTERFACE_PARAMETER of OUTPUT_IMAGE_TID : signal is "XIL_INTERFACENAME OUTPUT_IMAGE, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN lab3_simple_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TKEEP : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TKEEP";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TLAST : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TLAST";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TSTRB : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TSTRB";
  attribute X_INTERFACE_INFO of OUTPUT_IMAGE_TUSER : signal is "xilinx.com:interface:axis:1.0 OUTPUT_IMAGE TUSER";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel_filter
     port map (
      INPUT_IMAGE_TDATA(7 downto 0) => INPUT_IMAGE_TDATA(7 downto 0),
      INPUT_IMAGE_TDEST(5 downto 0) => INPUT_IMAGE_TDEST(5 downto 0),
      INPUT_IMAGE_TID(4 downto 0) => INPUT_IMAGE_TID(4 downto 0),
      INPUT_IMAGE_TKEEP(0) => INPUT_IMAGE_TKEEP(0),
      INPUT_IMAGE_TLAST(0) => INPUT_IMAGE_TLAST(0),
      INPUT_IMAGE_TREADY => INPUT_IMAGE_TREADY,
      INPUT_IMAGE_TSTRB(0) => INPUT_IMAGE_TSTRB(0),
      INPUT_IMAGE_TUSER(1 downto 0) => INPUT_IMAGE_TUSER(1 downto 0),
      INPUT_IMAGE_TVALID => INPUT_IMAGE_TVALID,
      OUTPUT_IMAGE_TDATA(7 downto 0) => OUTPUT_IMAGE_TDATA(7 downto 0),
      OUTPUT_IMAGE_TDEST(5 downto 0) => OUTPUT_IMAGE_TDEST(5 downto 0),
      OUTPUT_IMAGE_TID(4 downto 0) => OUTPUT_IMAGE_TID(4 downto 0),
      OUTPUT_IMAGE_TKEEP(0) => OUTPUT_IMAGE_TKEEP(0),
      OUTPUT_IMAGE_TLAST(0) => OUTPUT_IMAGE_TLAST(0),
      OUTPUT_IMAGE_TREADY => OUTPUT_IMAGE_TREADY,
      OUTPUT_IMAGE_TSTRB(0) => OUTPUT_IMAGE_TSTRB(0),
      OUTPUT_IMAGE_TUSER(1 downto 0) => OUTPUT_IMAGE_TUSER(1 downto 0),
      OUTPUT_IMAGE_TVALID => OUTPUT_IMAGE_TVALID,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_ctrl_bus_ARADDR(3 downto 0) => s_axi_ctrl_bus_ARADDR(3 downto 0),
      s_axi_ctrl_bus_ARREADY => s_axi_ctrl_bus_ARREADY,
      s_axi_ctrl_bus_ARVALID => s_axi_ctrl_bus_ARVALID,
      s_axi_ctrl_bus_AWADDR(3 downto 0) => s_axi_ctrl_bus_AWADDR(3 downto 0),
      s_axi_ctrl_bus_AWREADY => s_axi_ctrl_bus_AWREADY,
      s_axi_ctrl_bus_AWVALID => s_axi_ctrl_bus_AWVALID,
      s_axi_ctrl_bus_BREADY => s_axi_ctrl_bus_BREADY,
      s_axi_ctrl_bus_BRESP(1 downto 0) => s_axi_ctrl_bus_BRESP(1 downto 0),
      s_axi_ctrl_bus_BVALID => s_axi_ctrl_bus_BVALID,
      s_axi_ctrl_bus_RDATA(31 downto 0) => s_axi_ctrl_bus_RDATA(31 downto 0),
      s_axi_ctrl_bus_RREADY => s_axi_ctrl_bus_RREADY,
      s_axi_ctrl_bus_RRESP(1 downto 0) => s_axi_ctrl_bus_RRESP(1 downto 0),
      s_axi_ctrl_bus_RVALID => s_axi_ctrl_bus_RVALID,
      s_axi_ctrl_bus_WDATA(31 downto 0) => s_axi_ctrl_bus_WDATA(31 downto 0),
      s_axi_ctrl_bus_WREADY => s_axi_ctrl_bus_WREADY,
      s_axi_ctrl_bus_WSTRB(3 downto 0) => s_axi_ctrl_bus_WSTRB(3 downto 0),
      s_axi_ctrl_bus_WVALID => s_axi_ctrl_bus_WVALID
    );
end STRUCTURE;
