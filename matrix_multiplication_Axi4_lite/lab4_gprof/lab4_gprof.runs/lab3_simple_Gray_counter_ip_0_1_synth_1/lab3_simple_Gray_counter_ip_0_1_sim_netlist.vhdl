-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Fri Mar 31 15:29:40 2017
-- Host        : gkmikros-K56CB running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab3_simple_Gray_counter_ip_0_1_sim_netlist.vhdl
-- Design      : lab3_simple_Gray_counter_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gray_Nbits is
  port (
    LED : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \LED[5]\ : out STD_LOGIC;
    \LED[4]\ : out STD_LOGIC;
    \LED[3]\ : out STD_LOGIC;
    \LED[2]\ : out STD_LOGIC;
    \LED_1__s_port_\ : out STD_LOGIC;
    \LED_0__s_port_\ : out STD_LOGIC;
    \state_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    reset_reg : in STD_LOGIC;
    buttout_reg : in STD_LOGIC;
    start_count : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg0_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gray_Nbits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gray_Nbits is
  signal \^led\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^led[2]\ : STD_LOGIC;
  signal \^led[3]\ : STD_LOGIC;
  signal \^led[4]\ : STD_LOGIC;
  signal \^led[5]\ : STD_LOGIC;
  signal \LED_0__s_net_1\ : STD_LOGIC;
  signal \LED_1__s_net_1\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state[6]_i_1_n_0\ : STD_LOGIC;
  signal \state[7]_i_1_n_0\ : STD_LOGIC;
  signal \state[8]_i_1_n_0\ : STD_LOGIC;
  signal \state[8]_i_2_n_0\ : STD_LOGIC;
  signal \^state_reg[4]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[8]_i_2\ : label is "soft_lutpair1";
begin
  LED(1 downto 0) <= \^led\(1 downto 0);
  \LED[2]\ <= \^led[2]\;
  \LED[3]\ <= \^led[3]\;
  \LED[4]\ <= \^led[4]\;
  \LED[5]\ <= \^led[5]\;
  \LED_0__s_port_\ <= \LED_0__s_net_1\;
  \LED_1__s_port_\ <= \LED_1__s_net_1\;
  \state_reg[4]_0\ <= \^state_reg[4]_0\;
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(0),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(0),
      I4 => \slv_reg0_reg[7]\(0),
      I5 => \LED_0__s_net_1\,
      O => D(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(1),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(1),
      I4 => \slv_reg0_reg[7]\(1),
      I5 => \LED_1__s_net_1\,
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(2),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(2),
      I4 => \slv_reg0_reg[7]\(2),
      I5 => \^led[2]\,
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(3),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(3),
      I4 => \slv_reg0_reg[7]\(3),
      I5 => \^led[3]\,
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(4),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(4),
      I4 => \slv_reg0_reg[7]\(4),
      I5 => \^led[4]\,
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(5),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(5),
      I4 => \slv_reg0_reg[7]\(5),
      I5 => \^led[5]\,
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(6),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(6),
      I4 => \slv_reg0_reg[7]\(6),
      I5 => \^led\(0),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => Q(7),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg1_reg[7]\(7),
      I4 => \slv_reg0_reg[7]\(7),
      I5 => \^led\(1),
      O => D(7)
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^state_reg[4]_0\,
      I1 => start_count,
      I2 => \LED_0__s_net_1\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \LED_0__s_net_1\,
      I1 => start_count,
      I2 => \^state_reg[4]_0\,
      I3 => \LED_1__s_net_1\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => \LED_1__s_net_1\,
      I1 => \^state_reg[4]_0\,
      I2 => start_count,
      I3 => \LED_0__s_net_1\,
      I4 => \^led[2]\,
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000020"
    )
        port map (
      I0 => \^led[2]\,
      I1 => \LED_0__s_net_1\,
      I2 => start_count,
      I3 => \^state_reg[4]_0\,
      I4 => \LED_1__s_net_1\,
      I5 => \^led[3]\,
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^led[3]\,
      I1 => \state[8]_i_2_n_0\,
      I2 => \^led[4]\,
      O => \state[5]_i_1_n_0\
    );
\state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \state[8]_i_2_n_0\,
      I1 => \^led[4]\,
      I2 => \^led[3]\,
      I3 => \^led[5]\,
      O => \state[6]_i_1_n_0\
    );
\state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => \state[8]_i_2_n_0\,
      I1 => \^led[4]\,
      I2 => \^led[5]\,
      I3 => \^led[3]\,
      I4 => \^led\(0),
      O => \state[7]_i_1_n_0\
    );
\state[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0002"
    )
        port map (
      I0 => \state[8]_i_2_n_0\,
      I1 => \^led[5]\,
      I2 => \^led[4]\,
      I3 => \^led[3]\,
      I4 => \^led\(1),
      O => \state[8]_i_1_n_0\
    );
\state[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \LED_1__s_net_1\,
      I1 => \^state_reg[4]_0\,
      I2 => start_count,
      I3 => \LED_0__s_net_1\,
      I4 => \^led[2]\,
      O => \state[8]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => buttout_reg,
      Q => \^state_reg[4]_0\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[1]_i_1_n_0\,
      Q => \LED_0__s_net_1\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[2]_i_1_n_0\,
      Q => \LED_1__s_net_1\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[3]_i_1_n_0\,
      Q => \^led[2]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[4]_i_1_n_0\,
      Q => \^led[3]\
    );
\state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[5]_i_1_n_0\,
      Q => \^led[4]\
    );
\state_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[6]_i_1_n_0\,
      Q => \^led[5]\
    );
\state_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_reg,
      D => \state[7]_i_1_n_0\,
      Q => \^led\(0)
    );
\state_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[8]_i_1_n_0\,
      PRE => reset_reg,
      Q => \^led\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_progressive_debounceButton is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    start_count : out STD_LOGIC;
    reset_reg : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    buttin : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_progressive_debounceButton;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_progressive_debounceButton is
  signal buttout_i_1_n_0 : STD_LOGIC;
  signal \cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal counter : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \counter_max1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal counter_max1_out : STD_LOGIC_VECTOR ( 25 downto 7 );
  signal \counter_max[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_max[17]_i_2_n_0\ : STD_LOGIC;
  signal \counter_max[17]_i_3_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_2_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_3_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_4_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_5_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_6_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_7_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_8_n_0\ : STD_LOGIC;
  signal \counter_max[18]_i_9_n_0\ : STD_LOGIC;
  signal \counter_max[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_max[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter_max[25]_i_1_n_0\ : STD_LOGIC;
  signal \counter_max[25]_i_3_n_0\ : STD_LOGIC;
  signal \counter_max[25]_i_4_n_0\ : STD_LOGIC;
  signal \counter_max[25]_i_5_n_0\ : STD_LOGIC;
  signal \counter_max[25]_i_6_n_0\ : STD_LOGIC;
  signal \counter_max[26]_i_1_n_0\ : STD_LOGIC;
  signal \counter_max[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_max[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[24]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[25]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[26]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_max_reg_n_0_[9]\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal ff2 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^start_count\ : STD_LOGIC;
  signal \NLW_counter_max1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_max1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_max1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_max1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of buttout_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[10]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[10]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_max[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_max[17]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_max[18]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_max[18]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_max[18]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter_max[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter_max[24]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_max[25]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter_max[25]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_max[25]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter_max[25]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter_max[8]_i_3\ : label is "soft_lutpair12";
begin
  start_count <= \^start_count\;
buttout_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAC0"
    )
        port map (
      I0 => \counter_max1_inferred__0/i__carry__1_n_1\,
      I1 => \^start_count\,
      I2 => reset_reg,
      I3 => ff2,
      O => buttout_i_1_n_0
    );
buttout_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => buttout_i_1_n_0,
      Q => \^start_count\,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => p_0_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \counter_max[25]_i_3_n_0\,
      I1 => \counter_max1_inferred__0/i__carry__1_n_1\,
      I2 => ff2,
      I3 => reset_reg,
      O => \cnt[10]_i_1_n_0\
    );
\cnt[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_max1_inferred__0/i__carry__1_n_1\,
      I1 => ff2,
      O => \cnt[10]_i_2_n_0\
    );
\cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400073334000"
    )
        port map (
      I0 => \cnt[10]_i_4_n_0\,
      I1 => \cnt_reg__0\(9),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt[10]_i_5_n_0\,
      I4 => \cnt_reg__0\(10),
      I5 => \cnt[10]_i_6_n_0\,
      O => p_0_in(10)
    );
\cnt[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(10),
      O => \cnt[10]_i_4_n_0\
    );
\cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(3),
      I3 => \cnt_reg__0\(4),
      I4 => \cnt_reg__0\(8),
      I5 => \cnt_reg__0\(7),
      O => \cnt[10]_i_5_n_0\
    );
\cnt[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \cnt_reg__0\(7),
      I1 => \cnt[9]_i_2_n_0\,
      I2 => \cnt_reg__0\(6),
      I3 => \cnt_reg__0\(8),
      O => \cnt[10]_i_6_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => p_0_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(1),
      I4 => \cnt_reg__0\(4),
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(4),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(3),
      I5 => \cnt_reg__0\(5),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt[9]_i_2_n_0\,
      I1 => \cnt_reg__0\(6),
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \cnt_reg__0\(6),
      I1 => \cnt[9]_i_2_n_0\,
      I2 => \cnt_reg__0\(7),
      O => p_0_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \cnt_reg__0\(7),
      I1 => \cnt[9]_i_2_n_0\,
      I2 => \cnt_reg__0\(6),
      I3 => \cnt_reg__0\(8),
      O => p_0_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \cnt_reg__0\(8),
      I1 => \cnt_reg__0\(6),
      I2 => \cnt[9]_i_2_n_0\,
      I3 => \cnt_reg__0\(7),
      I4 => \cnt_reg__0\(9),
      O => p_0_in(9)
    );
\cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_reg__0\(4),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(3),
      I5 => \cnt_reg__0\(5),
      O => \cnt[9]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(0),
      Q => \cnt_reg__0\(0),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(10),
      Q => \cnt_reg__0\(10),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(1),
      Q => \cnt_reg__0\(1),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(2),
      Q => \cnt_reg__0\(2),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(3),
      Q => \cnt_reg__0\(3),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(4),
      Q => \cnt_reg__0\(4),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(5),
      Q => \cnt_reg__0\(5),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(6),
      Q => \cnt_reg__0\(6),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(7),
      Q => \cnt_reg__0\(7),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(8),
      Q => \cnt_reg__0\(8),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[10]_i_2_n_0\,
      D => p_0_in(9),
      Q => \cnt_reg__0\(9),
      R => \cnt[10]_i_1_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => ff2,
      I1 => reset_reg,
      I2 => \counter_max1_inferred__0/i__carry__1_n_1\,
      O => counter
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_reg,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_7_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(13),
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(12),
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(19),
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(18),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(17),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(16),
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(23),
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(22),
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(21),
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(20),
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(27),
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(26),
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(25),
      O => \counter[24]_i_4_n_0\
    );
\counter[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(24),
      O => \counter[24]_i_5_n_0\
    );
\counter[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(31),
      O => \counter[28]_i_2_n_0\
    );
\counter[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(30),
      O => \counter[28]_i_3_n_0\
    );
\counter[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(29),
      O => \counter[28]_i_4_n_0\
    );
\counter[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(28),
      O => \counter[28]_i_5_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      O => \counter[8]_i_5_n_0\
    );
\counter_max1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_max1_inferred__0/i__carry_n_0\,
      CO(2) => \counter_max1_inferred__0/i__carry_n_1\,
      CO(1) => \counter_max1_inferred__0/i__carry_n_2\,
      CO(0) => \counter_max1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_max1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\counter_max1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_max1_inferred__0/i__carry_n_0\,
      CO(3) => \counter_max1_inferred__0/i__carry__0_n_0\,
      CO(2) => \counter_max1_inferred__0/i__carry__0_n_1\,
      CO(1) => \counter_max1_inferred__0/i__carry__0_n_2\,
      CO(0) => \counter_max1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_max1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\counter_max1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_max1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_counter_max1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \counter_max1_inferred__0/i__carry__1_n_1\,
      CO(1) => \counter_max1_inferred__0/i__carry__1_n_2\,
      CO(0) => \counter_max1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_max1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\counter_max[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDD0000"
    )
        port map (
      I0 => ff2,
      I1 => reset_reg,
      I2 => \counter_max[25]_i_3_n_0\,
      I3 => \counter_max1_inferred__0/i__carry__1_n_1\,
      I4 => \counter_max[25]_i_5_n_0\,
      O => \counter_max[11]_i_1_n_0\
    );
\counter_max[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EF00"
    )
        port map (
      I0 => \counter_max[17]_i_2_n_0\,
      I1 => \counter_max[17]_i_3_n_0\,
      I2 => \counter_max_reg_n_0_[18]\,
      I3 => \counter_max_reg_n_0_[13]\,
      I4 => \counter_max[25]_i_5_n_0\,
      O => counter_max1_out(12)
    );
\counter_max[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFEEEEEE"
    )
        port map (
      I0 => \counter_max[25]_i_5_n_0\,
      I1 => \counter_max_reg_n_0_[17]\,
      I2 => \counter_max[24]_i_2_n_0\,
      I3 => \counter_max_reg_n_0_[8]\,
      I4 => \counter_max_reg_n_0_[24]\,
      I5 => \counter_max_reg_n_0_[25]\,
      O => counter_max1_out(16)
    );
\counter_max[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EF00"
    )
        port map (
      I0 => \counter_max[17]_i_2_n_0\,
      I1 => \counter_max[17]_i_3_n_0\,
      I2 => \counter_max_reg_n_0_[13]\,
      I3 => \counter_max_reg_n_0_[18]\,
      I4 => \counter_max[25]_i_5_n_0\,
      O => counter_max1_out(17)
    );
\counter_max[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \counter_max_reg_n_0_[26]\,
      I1 => \counter_max_reg_n_0_[20]\,
      I2 => \counter_max_reg_n_0_[9]\,
      I3 => \counter_max_reg_n_0_[10]\,
      I4 => \counter_max[18]_i_5_n_0\,
      I5 => \counter_max_reg_n_0_[19]\,
      O => \counter_max[17]_i_2_n_0\
    );
\counter_max[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \counter_max_reg_n_0_[17]\,
      I1 => \counter_max_reg_n_0_[25]\,
      I2 => \counter_max_reg_n_0_[24]\,
      I3 => \counter_max_reg_n_0_[8]\,
      O => \counter_max[17]_i_3_n_0\
    );
\counter_max[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \counter_max[25]_i_5_n_0\,
      I1 => \counter_max_reg_n_0_[19]\,
      I2 => \counter_max[18]_i_2_n_0\,
      I3 => \counter_max[18]_i_3_n_0\,
      I4 => \counter_max[18]_i_4_n_0\,
      I5 => \counter_max[18]_i_5_n_0\,
      O => counter_max1_out(18)
    );
\counter_max[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_max_reg_n_0_[8]\,
      I1 => \counter_max_reg_n_0_[24]\,
      I2 => \counter_max_reg_n_0_[25]\,
      I3 => \counter_max_reg_n_0_[17]\,
      I4 => \counter_max_reg_n_0_[18]\,
      I5 => \counter_max_reg_n_0_[13]\,
      O => \counter_max[18]_i_2_n_0\
    );
\counter_max[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_max_reg_n_0_[9]\,
      I1 => \counter_max_reg_n_0_[10]\,
      O => \counter_max[18]_i_3_n_0\
    );
\counter_max[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \counter_max_reg_n_0_[20]\,
      I1 => \counter_max_reg_n_0_[26]\,
      O => \counter_max[18]_i_4_n_0\
    );
\counter_max[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \counter_max_reg_n_0_[23]\,
      I1 => \counter_max_reg_n_0_[14]\,
      I2 => \counter_max[18]_i_6_n_0\,
      I3 => \counter_max[18]_i_7_n_0\,
      I4 => \counter_max[18]_i_8_n_0\,
      I5 => \counter_max[18]_i_9_n_0\,
      O => \counter_max[18]_i_5_n_0\
    );
\counter_max[18]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_max_reg_n_0_[0]\,
      I1 => \counter_max_reg_n_0_[1]\,
      O => \counter_max[18]_i_6_n_0\
    );
\counter_max[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_max_reg_n_0_[5]\,
      I1 => \counter_max_reg_n_0_[2]\,
      I2 => \counter_max_reg_n_0_[12]\,
      I3 => \counter_max_reg_n_0_[11]\,
      O => \counter_max[18]_i_7_n_0\
    );
\counter_max[18]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter_max_reg_n_0_[16]\,
      I1 => \counter_max_reg_n_0_[15]\,
      I2 => \counter_max_reg_n_0_[22]\,
      I3 => \counter_max_reg_n_0_[21]\,
      O => \counter_max[18]_i_8_n_0\
    );
\counter_max[18]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_max_reg_n_0_[4]\,
      I1 => \counter_max_reg_n_0_[3]\,
      I2 => \counter_max_reg_n_0_[7]\,
      I3 => \counter_max_reg_n_0_[6]\,
      O => \counter_max[18]_i_9_n_0\
    );
\counter_max[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => \counter_max[25]_i_4_n_0\,
      I1 => \counter_max_reg_n_0_[26]\,
      I2 => \counter_max_reg_n_0_[20]\,
      I3 => \counter_max[25]_i_5_n_0\,
      O => counter_max1_out(19)
    );
\counter_max[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEEEEEEEE"
    )
        port map (
      I0 => \counter_max[25]_i_5_n_0\,
      I1 => \counter_max_reg_n_0_[25]\,
      I2 => \counter_max[24]_i_2_n_0\,
      I3 => \counter_max_reg_n_0_[17]\,
      I4 => \counter_max_reg_n_0_[24]\,
      I5 => \counter_max_reg_n_0_[8]\,
      O => counter_max1_out(24)
    );
\counter_max[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \counter_max[24]_i_3_n_0\,
      I1 => \counter_max_reg_n_0_[20]\,
      I2 => \counter_max_reg_n_0_[26]\,
      I3 => \counter_max_reg_n_0_[18]\,
      I4 => \counter_max_reg_n_0_[13]\,
      O => \counter_max[24]_i_2_n_0\
    );
\counter_max[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_max_reg_n_0_[19]\,
      I1 => \counter_max[8]_i_3_n_0\,
      I2 => \counter_max[18]_i_7_n_0\,
      I3 => \counter_max[18]_i_8_n_0\,
      I4 => \counter_max[18]_i_9_n_0\,
      I5 => \counter_max[18]_i_3_n_0\,
      O => \counter_max[24]_i_3_n_0\
    );
\counter_max[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => ff2,
      I1 => reset_reg,
      I2 => \counter_max[25]_i_3_n_0\,
      I3 => \counter_max1_inferred__0/i__carry__1_n_1\,
      O => \counter_max[25]_i_1_n_0\
    );
\counter_max[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => \counter_max[25]_i_4_n_0\,
      I1 => \counter_max_reg_n_0_[20]\,
      I2 => \counter_max_reg_n_0_[26]\,
      I3 => \counter_max[25]_i_5_n_0\,
      O => counter_max1_out(25)
    );
\counter_max[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt[10]_i_4_n_0\,
      I1 => \cnt_reg__0\(7),
      I2 => \cnt_reg__0\(6),
      I3 => \cnt_reg__0\(9),
      I4 => \cnt_reg__0\(8),
      I5 => \counter_max[25]_i_6_n_0\,
      O => \counter_max[25]_i_3_n_0\
    );
\counter_max[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_max[18]_i_2_n_0\,
      I1 => \counter_max_reg_n_0_[9]\,
      I2 => \counter_max_reg_n_0_[10]\,
      I3 => \counter_max[18]_i_5_n_0\,
      I4 => \counter_max_reg_n_0_[19]\,
      O => \counter_max[25]_i_4_n_0\
    );
\counter_max[25]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => ff2,
      I1 => \counter_max1_inferred__0/i__carry__1_n_1\,
      I2 => \counter_max[25]_i_3_n_0\,
      I3 => reset_reg,
      O => \counter_max[25]_i_5_n_0\
    );
\counter_max[25]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(5),
      I3 => \cnt_reg__0\(4),
      O => \counter_max[25]_i_6_n_0\
    );
\counter_max[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_max[18]_i_2_n_0\,
      I1 => \counter_max[17]_i_2_n_0\,
      O => \counter_max[26]_i_1_n_0\
    );
\counter_max[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C0C0C0C080C"
    )
        port map (
      I0 => \counter_max[24]_i_2_n_0\,
      I1 => \counter_max_reg_n_0_[8]\,
      I2 => \counter_max[25]_i_5_n_0\,
      I3 => \counter_max_reg_n_0_[24]\,
      I4 => \counter_max_reg_n_0_[25]\,
      I5 => \counter_max_reg_n_0_[17]\,
      O => counter_max1_out(7)
    );
\counter_max[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \counter_max[25]_i_5_n_0\,
      I1 => \counter_max_reg_n_0_[9]\,
      I2 => \counter_max[8]_i_2_n_0\,
      I3 => \counter_max_reg_n_0_[10]\,
      I4 => \counter_max[18]_i_4_n_0\,
      I5 => \counter_max[18]_i_2_n_0\,
      O => counter_max1_out(8)
    );
\counter_max[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_max[18]_i_9_n_0\,
      I1 => \counter_max[18]_i_8_n_0\,
      I2 => \counter_max[18]_i_7_n_0\,
      I3 => \counter_max[8]_i_3_n_0\,
      I4 => \counter_max_reg_n_0_[19]\,
      O => \counter_max[8]_i_2_n_0\
    );
\counter_max[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \counter_max_reg_n_0_[23]\,
      I1 => \counter_max_reg_n_0_[14]\,
      I2 => \counter_max_reg_n_0_[1]\,
      I3 => \counter_max_reg_n_0_[0]\,
      O => \counter_max[8]_i_3_n_0\
    );
\counter_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[1]\,
      Q => \counter_max_reg_n_0_[0]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[11]\,
      Q => \counter_max_reg_n_0_[10]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[12]\,
      Q => \counter_max_reg_n_0_[11]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(12),
      Q => \counter_max_reg_n_0_[12]\,
      R => '0'
    );
\counter_max_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[14]\,
      Q => \counter_max_reg_n_0_[13]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[15]\,
      Q => \counter_max_reg_n_0_[14]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[16]\,
      Q => \counter_max_reg_n_0_[15]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(16),
      Q => \counter_max_reg_n_0_[16]\,
      R => '0'
    );
\counter_max_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(17),
      Q => \counter_max_reg_n_0_[17]\,
      R => '0'
    );
\counter_max_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(18),
      Q => \counter_max_reg_n_0_[18]\,
      R => '0'
    );
\counter_max_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(19),
      Q => \counter_max_reg_n_0_[19]\,
      R => '0'
    );
\counter_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[2]\,
      Q => \counter_max_reg_n_0_[1]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[21]\,
      Q => \counter_max_reg_n_0_[20]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[22]\,
      Q => \counter_max_reg_n_0_[21]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[23]\,
      Q => \counter_max_reg_n_0_[22]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[24]\,
      Q => \counter_max_reg_n_0_[23]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(24),
      Q => \counter_max_reg_n_0_[24]\,
      R => '0'
    );
\counter_max_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(25),
      Q => \counter_max_reg_n_0_[25]\,
      R => '0'
    );
\counter_max_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max[26]_i_1_n_0\,
      Q => \counter_max_reg_n_0_[26]\,
      S => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[3]\,
      Q => \counter_max_reg_n_0_[2]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[4]\,
      Q => \counter_max_reg_n_0_[3]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[5]\,
      Q => \counter_max_reg_n_0_[4]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[6]\,
      Q => \counter_max_reg_n_0_[5]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[7]\,
      Q => \counter_max_reg_n_0_[6]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_max_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(7),
      Q => \counter_max_reg_n_0_[7]\,
      R => '0'
    );
\counter_max_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => counter_max1_out(8),
      Q => \counter_max_reg_n_0_[8]\,
      R => '0'
    );
\counter_max_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter_max[25]_i_1_n_0\,
      D => \counter_max_reg_n_0_[10]\,
      Q => \counter_max_reg_n_0_[9]\,
      R => \counter_max[11]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_7\,
      Q => counter_reg(0),
      R => counter
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2) => \counter_reg[0]_i_3_n_1\,
      CO(1) => \counter_reg[0]_i_3_n_2\,
      CO(0) => \counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_3_n_4\,
      O(2) => \counter_reg[0]_i_3_n_5\,
      O(1) => \counter_reg[0]_i_3_n_6\,
      O(0) => \counter_reg[0]_i_3_n_7\,
      S(3) => \counter[0]_i_4_n_0\,
      S(2) => \counter[0]_i_5_n_0\,
      S(1) => \counter[0]_i_6_n_0\,
      S(0) => \counter[0]_i_7_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => counter
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => counter
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => counter
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => counter
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => counter
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => counter
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => counter
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => counter
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => counter
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_6\,
      Q => counter_reg(1),
      R => counter
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => counter
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => counter
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => counter
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => counter
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => counter
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => \counter[24]_i_2_n_0\,
      S(2) => \counter[24]_i_3_n_0\,
      S(1) => \counter[24]_i_4_n_0\,
      S(0) => \counter[24]_i_5_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => counter
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => counter
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => counter
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => counter
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3) => \counter[28]_i_2_n_0\,
      S(2) => \counter[28]_i_3_n_0\,
      S(1) => \counter[28]_i_4_n_0\,
      S(0) => \counter[28]_i_5_n_0\
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_5\,
      Q => counter_reg(2),
      R => counter
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => counter
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[0]_i_3_n_4\,
      Q => counter_reg(3),
      R => counter
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => counter
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => counter
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => counter
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => counter
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => counter
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \counter[0]_i_2_n_0\,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => counter
    );
ff1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => buttin,
      Q => ff1,
      R => '0'
    );
ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ff1,
      Q => ff2,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008241000041"
    )
        port map (
      I0 => \counter_max_reg_n_0_[21]\,
      I1 => \counter_max_reg_n_0_[22]\,
      I2 => counter_reg(22),
      I3 => counter_reg(23),
      I4 => \counter_max_reg_n_0_[23]\,
      I5 => counter_reg(21),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_max_reg_n_0_[20]\,
      I1 => counter_reg(20),
      I2 => \counter_max_reg_n_0_[19]\,
      I3 => counter_reg(19),
      I4 => counter_reg(18),
      I5 => \counter_max_reg_n_0_[18]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008241000041"
    )
        port map (
      I0 => \counter_max_reg_n_0_[15]\,
      I1 => \counter_max_reg_n_0_[16]\,
      I2 => counter_reg(16),
      I3 => counter_reg(17),
      I4 => \counter_max_reg_n_0_[17]\,
      I5 => counter_reg(15),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_max_reg_n_0_[14]\,
      I1 => counter_reg(14),
      I2 => \counter_max_reg_n_0_[13]\,
      I3 => counter_reg(13),
      I4 => counter_reg(12),
      I5 => \counter_max_reg_n_0_[12]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter_reg(29),
      I1 => counter_reg(28),
      I2 => counter_reg(27),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_max_reg_n_0_[26]\,
      I1 => counter_reg(26),
      I2 => \counter_max_reg_n_0_[24]\,
      I3 => counter_reg(24),
      I4 => counter_reg(25),
      I5 => \counter_max_reg_n_0_[25]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400008421000021"
    )
        port map (
      I0 => counter_reg(10),
      I1 => \counter_max_reg_n_0_[9]\,
      I2 => \counter_max_reg_n_0_[10]\,
      I3 => counter_reg(11),
      I4 => \counter_max_reg_n_0_[11]\,
      I5 => counter_reg(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400008421000021"
    )
        port map (
      I0 => counter_reg(7),
      I1 => \counter_max_reg_n_0_[6]\,
      I2 => \counter_max_reg_n_0_[7]\,
      I3 => counter_reg(8),
      I4 => \counter_max_reg_n_0_[8]\,
      I5 => counter_reg(6),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400008421000021"
    )
        port map (
      I0 => counter_reg(4),
      I1 => \counter_max_reg_n_0_[3]\,
      I2 => \counter_max_reg_n_0_[4]\,
      I3 => counter_reg(5),
      I4 => \counter_max_reg_n_0_[5]\,
      I5 => counter_reg(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400008421000021"
    )
        port map (
      I0 => counter_reg(1),
      I1 => \counter_max_reg_n_0_[0]\,
      I2 => \counter_max_reg_n_0_[1]\,
      I3 => counter_reg(2),
      I4 => \counter_max_reg_n_0_[2]\,
      I5 => counter_reg(0),
      O => \i__carry_i_4_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^start_count\,
      I1 => \state_reg[0]_0\,
      O => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter_System is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LED_1__s_port_]\ : out STD_LOGIC;
    \LED_0__s_port_]\ : out STD_LOGIC;
    \LED[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \LED[3]\ : out STD_LOGIC;
    \LED[4]\ : out STD_LOGIC;
    \LED[5]\ : out STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 1 downto 0 );
    button_2_reg_0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg0_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_wready_reg : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter_System;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter_System is
  signal \LED_0__s_net_1\ : STD_LOGIC;
  signal \LED_1__s_net_1\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal button_2 : STD_LOGIC;
  signal button_2_i_1_n_0 : STD_LOGIC;
  signal \^button_2_reg_0\ : STD_LOGIC;
  signal button_i_1_n_0 : STD_LOGIC;
  signal button_i_2_n_0 : STD_LOGIC;
  signal button_i_3_n_0 : STD_LOGIC;
  signal button_i_4_n_0 : STD_LOGIC;
  signal button_i_5_n_0 : STD_LOGIC;
  signal button_i_6_n_0 : STD_LOGIC;
  signal button_i_7_n_0 : STD_LOGIC;
  signal button_i_8_n_0 : STD_LOGIC;
  signal button_i_9_n_0 : STD_LOGIC;
  signal button_reg_n_0 : STD_LOGIC;
  signal clk_en_reg03_out : STD_LOGIC;
  signal delay_reg : STD_LOGIC;
  signal delay_reg_reg_i_1_n_0 : STD_LOGIC;
  signal delay_reg_reg_i_2_n_0 : STD_LOGIC;
  signal gray_counter_n_8 : STD_LOGIC;
  signal progressive_debounceButton_n_0 : STD_LOGIC;
  signal reset_reg : STD_LOGIC;
  signal reset_reg_reg_i_2_n_0 : STD_LOGIC;
  signal start_count : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_reg_reg : label is "LDC";
begin
  \LED_0__s_port_]\ <= \LED_0__s_net_1\;
  \LED_1__s_port_]\ <= \LED_1__s_net_1\;
  SR(0) <= \^sr\(0);
  button_2_reg_0 <= \^button_2_reg_0\;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
button_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF0000A000"
    )
        port map (
      I0 => \^button_2_reg_0\,
      I1 => s00_axi_wdata(3),
      I2 => s00_axi_wdata(2),
      I3 => s00_axi_aresetn,
      I4 => button_i_2_n_0,
      I5 => button_2,
      O => button_2_i_1_n_0
    );
button_2_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => button_2_i_1_n_0,
      Q => button_2,
      R => \^sr\(0)
    );
button_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00008800"
    )
        port map (
      I0 => \^button_2_reg_0\,
      I1 => s00_axi_wdata(3),
      I2 => s00_axi_wdata(2),
      I3 => s00_axi_aresetn,
      I4 => button_i_2_n_0,
      I5 => button_reg_n_0,
      O => button_i_1_n_0
    );
button_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => button_i_3_n_0,
      I1 => button_i_4_n_0,
      I2 => button_i_5_n_0,
      O => button_i_2_n_0
    );
button_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => s00_axi_wdata(15),
      I2 => s00_axi_wdata(12),
      I3 => s00_axi_wdata(13),
      I4 => button_i_6_n_0,
      O => button_i_3_n_0
    );
button_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => s00_axi_wdata(7),
      I2 => s00_axi_wdata(4),
      I3 => s00_axi_wdata(5),
      I4 => button_i_7_n_0,
      O => button_i_4_n_0
    );
button_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => button_i_8_n_0,
      I1 => s00_axi_wdata(21),
      I2 => s00_axi_wdata(20),
      I3 => s00_axi_wdata(23),
      I4 => s00_axi_wdata(22),
      I5 => button_i_9_n_0,
      O => button_i_5_n_0
    );
button_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s00_axi_wdata(17),
      I1 => s00_axi_wdata(16),
      I2 => s00_axi_wdata(19),
      I3 => s00_axi_wdata(18),
      O => button_i_6_n_0
    );
button_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => s00_axi_wdata(8),
      I2 => s00_axi_wdata(11),
      I3 => s00_axi_wdata(10),
      O => button_i_7_n_0
    );
button_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s00_axi_wdata(25),
      I1 => s00_axi_wdata(24),
      I2 => s00_axi_wdata(27),
      I3 => s00_axi_wdata(26),
      O => button_i_8_n_0
    );
button_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s00_axi_wdata(30),
      I1 => s00_axi_wdata(31),
      I2 => s00_axi_wdata(28),
      I3 => s00_axi_wdata(29),
      I4 => s00_axi_wdata(1),
      I5 => s00_axi_wdata(0),
      O => button_i_9_n_0
    );
button_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => button_i_1_n_0,
      Q => button_reg_n_0,
      R => \^sr\(0)
    );
delay_reg_reg: unisim.vcomponents.LDCP
     port map (
      CLR => delay_reg_reg_i_1_n_0,
      D => '0',
      G => clk_en_reg03_out,
      PRE => delay_reg_reg_i_2_n_0,
      Q => delay_reg
    );
delay_reg_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => button_reg_n_0,
      I1 => button_2,
      O => delay_reg_reg_i_1_n_0
    );
delay_reg_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => button_2,
      I1 => button_reg_n_0,
      O => delay_reg_reg_i_2_n_0
    );
gray_counter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gray_Nbits
     port map (
      D(7 downto 0) => D(7 downto 0),
      LED(1 downto 0) => LED(1 downto 0),
      \LED[2]\ => \LED[2]\,
      \LED[3]\ => \LED[3]\,
      \LED[4]\ => \LED[4]\,
      \LED[5]\ => \LED[5]\,
      \LED_0__s_port_\ => \LED_0__s_net_1\,
      \LED_1__s_port_\ => \LED_1__s_net_1\,
      Q(7 downto 0) => Q(7 downto 0),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      buttout_reg => progressive_debounceButton_n_0,
      reset_reg => reset_reg,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[7]\(7 downto 0) => \slv_reg0_reg[7]\(7 downto 0),
      \slv_reg1_reg[7]\(7 downto 0) => \slv_reg1_reg[7]\(7 downto 0),
      start_count => start_count,
      \state_reg[4]_0\ => gray_counter_n_8
    );
progressive_debounceButton: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_progressive_debounceButton
     port map (
      buttin => delay_reg,
      reset_reg => reset_reg,
      s00_axi_aclk => s00_axi_aclk,
      start_count => start_count,
      \state_reg[0]\ => progressive_debounceButton_n_0,
      \state_reg[0]_0\ => gray_counter_n_8
    );
reset_reg_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_reg_reg_i_2_n_0,
      D => clk_en_reg03_out,
      G => clk_en_reg03_out,
      GE => '1',
      Q => reset_reg
    );
reset_reg_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => button_2,
      I1 => button_reg_n_0,
      O => clk_en_reg03_out
    );
reset_reg_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => button_reg_n_0,
      I1 => button_2,
      O => reset_reg_reg_i_2_n_0
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => p_0_in_0(1),
      O => \^button_2_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0_S00_AXI is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    \LED[5]\ : out STD_LOGIC;
    \LED_4__s_port_]\ : out STD_LOGIC;
    \LED_3__s_port_]\ : out STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0_S00_AXI is
  signal \LED_3__s_net_1\ : STD_LOGIC;
  signal \LED_4__s_net_1\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal U1_n_17 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair14";
begin
  \LED_3__s_port_]\ <= \LED_3__s_net_1\;
  \LED_4__s_port_]\ <= \LED_4__s_net_1\;
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter_System
     port map (
      D(7 downto 0) => reg_data_out(7 downto 0),
      LED(1 downto 0) => LED(4 downto 3),
      \LED[2]\ => LED(2),
      \LED[3]\ => \LED_3__s_net_1\,
      \LED[4]\ => \LED_4__s_net_1\,
      \LED[5]\ => \LED[5]\,
      \LED_0__s_port_]\ => LED(0),
      \LED_1__s_port_]\ => LED(1),
      Q(7 downto 0) => slv_reg2(7 downto 0),
      SR(0) => p_0_in,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      axi_awready_reg => \^s_axi_awready\,
      axi_wready_reg => \^s_axi_wready\,
      button_2_reg_0 => U1_n_17,
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[7]\(7 downto 0) => slv_reg0(7 downto 0),
      \slv_reg1_reg[7]\(7 downto 0) => slv_reg1(7 downto 0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in_0(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in_0(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg1(10),
      I2 => slv_reg2(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg1(11),
      I2 => slv_reg2(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => slv_reg1(12),
      I2 => slv_reg2(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => slv_reg1(13),
      I2 => slv_reg2(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => slv_reg1(14),
      I2 => slv_reg2(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => slv_reg1(15),
      I2 => slv_reg2(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => slv_reg1(16),
      I2 => slv_reg2(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg1(17),
      I2 => slv_reg2(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg1(18),
      I2 => slv_reg2(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => slv_reg1(19),
      I2 => slv_reg2(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => slv_reg1(20),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => slv_reg1(21),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => slv_reg1(22),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg1(23),
      I2 => slv_reg2(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => slv_reg1(24),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => slv_reg1(25),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => slv_reg1(26),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => slv_reg1(27),
      I2 => slv_reg2(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => slv_reg1(28),
      I2 => slv_reg2(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => slv_reg1(29),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => slv_reg1(30),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => slv_reg1(31),
      I2 => slv_reg2(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(31)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg1(8),
      I2 => slv_reg2(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => slv_reg1(9),
      I2 => slv_reg2(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => U1_n_17,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => U1_n_17,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => U1_n_17,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => U1_n_17,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => p_0_in
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => p_0_in
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => p_0_in
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => p_0_in
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => p_0_in
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => p_0_in
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => p_0_in
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => p_0_in
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => p_0_in
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => p_0_in
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => p_0_in
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => p_0_in
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => p_0_in
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => p_0_in
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => p_0_in
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => p_0_in
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => p_0_in
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => p_0_in
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => p_0_in
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => p_0_in
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => p_0_in
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => p_0_in
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => p_0_in
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => p_0_in
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => p_0_in
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => p_0_in
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => p_0_in
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => p_0_in
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => p_0_in
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => p_0_in
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => p_0_in
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => p_0_in
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => \^s_axi_wready\,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => p_0_in
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => p_0_in
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => p_0_in
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => p_0_in
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => p_0_in
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => p_0_in
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => p_0_in
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => p_0_in
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => p_0_in
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => p_0_in
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => p_0_in
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => p_0_in
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => p_0_in
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => p_0_in
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => p_0_in
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => p_0_in
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => p_0_in
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => p_0_in
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => p_0_in
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => p_0_in
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => p_0_in
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => p_0_in
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => p_0_in
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => p_0_in
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => p_0_in
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => p_0_in
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => p_0_in
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => p_0_in
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => p_0_in
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => p_0_in
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => p_0_in
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => p_0_in
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => p_0_in_0(1),
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => p_0_in
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => p_0_in
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => p_0_in
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => p_0_in
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => p_0_in
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => p_0_in
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => p_0_in
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => p_0_in
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => p_0_in
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => p_0_in
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => p_0_in
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => p_0_in
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => p_0_in
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => p_0_in
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => p_0_in
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => p_0_in
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => p_0_in
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => p_0_in
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => p_0_in
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => p_0_in
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => p_0_in
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => p_0_in
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => p_0_in
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => p_0_in
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => p_0_in
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => p_0_in
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => p_0_in
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => p_0_in
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => p_0_in
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => p_0_in
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => p_0_in
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => p_0_in
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0 is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    \LED[5]\ : out STD_LOGIC;
    \LED_4__s_port_]\ : out STD_LOGIC;
    \LED_3__s_port_]\ : out STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0 is
  signal \LED_3__s_net_1\ : STD_LOGIC;
  signal \LED_4__s_net_1\ : STD_LOGIC;
begin
  \LED_3__s_port_]\ <= \LED_3__s_net_1\;
  \LED_4__s_port_]\ <= \LED_4__s_net_1\;
Gray_counter_ip_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0_S00_AXI
     port map (
      LED(4 downto 0) => LED(4 downto 0),
      \LED[5]\ => \LED[5]\,
      \LED_3__s_port_]\ => \LED_3__s_net_1\,
      \LED_4__s_port_]\ => \LED_4__s_net_1\,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "lab3_simple_Gray_counter_ip_0_1,Gray_counter_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Gray_counter_ip_v1_0,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray_counter_ip_v1_0
     port map (
      LED(4 downto 3) => LED(7 downto 6),
      LED(2 downto 0) => LED(2 downto 0),
      \LED[5]\ => LED(5),
      \LED_3__s_port_]\ => LED(3),
      \LED_4__s_port_]\ => LED(4),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
