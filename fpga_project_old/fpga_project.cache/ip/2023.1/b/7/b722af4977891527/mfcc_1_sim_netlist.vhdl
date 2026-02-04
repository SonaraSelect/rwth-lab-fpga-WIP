-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jan 20 12:47:10 2026
-- Host        : audrey running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mfcc_1_sim_netlist.vhdl
-- Design      : mfcc_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    \val_out_last_reg_116_reg[0]\ : out STD_LOGIC;
    m_fu_52 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    add_ln106_fu_89_p2 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg : in STD_LOGIC;
    \m_fu_52_reg[0]\ : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \val_out_last_reg_116_reg[0]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[6]\ : in STD_LOGIC;
    \m_fu_52_reg[4]\ : in STD_LOGIC;
    \m_fu_52_reg[4]_0\ : in STD_LOGIC;
    \m_fu_52_reg[4]_1\ : in STD_LOGIC;
    \m_fu_52_reg[4]_2\ : in STD_LOGIC;
    \m_fu_52_reg[4]_3\ : in STD_LOGIC;
    \m_fu_52_reg[5]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init is
  signal \ap_CS_fsm[6]_i_3_n_3\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_3\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_3\ : STD_LOGIC;
  signal \m_fu_52[4]_i_2_n_3\ : STD_LOGIC;
  signal \m_fu_52[5]_i_3_n_3\ : STD_LOGIC;
  signal \m_fu_52[5]_i_4_n_3\ : STD_LOGIC;
  signal \m_fu_52[5]_i_5_n_3\ : STD_LOGIC;
  signal \val_out_last_reg_116[0]_i_2_n_3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_fu_52[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_fu_52[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_fu_52[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_fu_52[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_fu_52[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_fu_52[5]_i_5\ : label is "soft_lutpair9";
begin
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFFFAAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \ap_CS_fsm[6]_i_3_n_3\,
      I2 => \m_fu_52[5]_i_3_n_3\,
      I3 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I4 => ap_done_cache,
      I5 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBAAAAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[6]\,
      I1 => \ap_CS_fsm[6]_i_3_n_3\,
      I2 => \m_fu_52[5]_i_3_n_3\,
      I3 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I4 => ap_done_cache,
      I5 => Q(1),
      O => D(1)
    );
\ap_CS_fsm[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \m_fu_52_reg[0]\,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(1),
      O => \ap_CS_fsm[6]_i_3_n_3\
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222FFFFA2220000"
    )
        port map (
      I0 => \m_fu_52[5]_i_3_n_3\,
      I1 => \m_fu_52_reg[0]\,
      I2 => out_stream_TREADY_int_regslice,
      I3 => Q(1),
      I4 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I5 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_3\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_3\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020AA20AA20AA20"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \m_fu_52[5]_i_3_n_3\,
      I2 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I3 => \m_fu_52_reg[0]\,
      I4 => out_stream_TREADY_int_regslice,
      I5 => Q(1),
      O => ap_rst_n_0
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBF3BB"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_rst_n,
      I2 => \m_fu_52[5]_i_3_n_3\,
      I3 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I4 => \ap_CS_fsm[6]_i_3_n_3\,
      O => \ap_loop_init_int_i_1__0_n_3\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_3\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAAAAAAFFFFAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      I3 => \m_fu_52_reg[0]\,
      I4 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I5 => \m_fu_52[5]_i_3_n_3\,
      O => \ap_CS_fsm_reg[4]\
    );
\m_fu_52[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \m_fu_52_reg[4]_2\,
      O => add_ln106_fu_89_p2(0)
    );
\m_fu_52[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \m_fu_52_reg[4]_1\,
      I1 => ap_loop_init_int,
      I2 => \m_fu_52_reg[4]_2\,
      O => add_ln106_fu_89_p2(1)
    );
\m_fu_52[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => \m_fu_52_reg[4]_0\,
      I1 => \m_fu_52_reg[4]_1\,
      I2 => ap_loop_init_int,
      I3 => \m_fu_52_reg[4]_2\,
      O => add_ln106_fu_89_p2(2)
    );
\m_fu_52[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"060A0A0A"
    )
        port map (
      I0 => \m_fu_52_reg[4]_3\,
      I1 => \m_fu_52_reg[4]_2\,
      I2 => ap_loop_init_int,
      I3 => \m_fu_52_reg[4]_1\,
      I4 => \m_fu_52_reg[4]_0\,
      O => add_ln106_fu_89_p2(3)
    );
\m_fu_52[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A00AA00AA00AA"
    )
        port map (
      I0 => \m_fu_52_reg[4]\,
      I1 => \m_fu_52_reg[4]_0\,
      I2 => \m_fu_52_reg[4]_1\,
      I3 => \m_fu_52[4]_i_2_n_3\,
      I4 => \m_fu_52_reg[4]_2\,
      I5 => \m_fu_52_reg[4]_3\,
      O => add_ln106_fu_89_p2(4)
    );
\m_fu_52[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I1 => ap_loop_init_int,
      O => \m_fu_52[4]_i_2_n_3\
    );
\m_fu_52[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22020202"
    )
        port map (
      I0 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I1 => \m_fu_52[5]_i_3_n_3\,
      I2 => \m_fu_52_reg[0]\,
      I3 => out_stream_TREADY_int_regslice,
      I4 => Q(1),
      O => m_fu_52
    );
\m_fu_52[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \m_fu_52_reg[5]\,
      I1 => ap_loop_init_int,
      I2 => \m_fu_52[5]_i_4_n_3\,
      I3 => \m_fu_52_reg[4]\,
      O => add_ln106_fu_89_p2(5)
    );
\m_fu_52[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \m_fu_52[5]_i_5_n_3\,
      I1 => \m_fu_52_reg[4]_1\,
      I2 => \m_fu_52_reg[4]_2\,
      I3 => \m_fu_52[4]_i_2_n_3\,
      I4 => \m_fu_52_reg[4]_0\,
      I5 => \m_fu_52_reg[4]\,
      O => \m_fu_52[5]_i_3_n_3\
    );
\m_fu_52[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \m_fu_52_reg[4]_3\,
      I1 => \m_fu_52_reg[4]_2\,
      I2 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \m_fu_52_reg[4]_1\,
      I5 => \m_fu_52_reg[4]_0\,
      O => \m_fu_52[5]_i_4_n_3\
    );
\m_fu_52[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => \m_fu_52_reg[5]\,
      I1 => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \m_fu_52_reg[4]_3\,
      O => \m_fu_52[5]_i_5_n_3\
    );
\val_out_last_reg_116[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3AAA3333"
    )
        port map (
      I0 => \val_out_last_reg_116_reg[0]_0\,
      I1 => \val_out_last_reg_116[0]_i_2_n_3\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \m_fu_52_reg[0]\,
      I5 => \m_fu_52[5]_i_3_n_3\,
      O => \val_out_last_reg_116_reg[0]\
    );
\val_out_last_reg_116[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \m_fu_52[5]_i_5_n_3\,
      I1 => \m_fu_52_reg[4]\,
      I2 => \m_fu_52_reg[4]_0\,
      I3 => \m_fu_52_reg[4]_1\,
      I4 => \m_fu_52_reg[4]_2\,
      I5 => \m_fu_52[4]_i_2_n_3\,
      O => \val_out_last_reg_116[0]_i_2_n_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_fu_46_reg[6]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg : in STD_LOGIC;
    in_stream_TVALID_int_regslice : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init_1 : entity is "mfcc_flow_control_loop_pipe_sequential_init";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init_1 is
  signal \B_V_data_1_state[0]_i_3_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[1]_i_4_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[1]_i_5_n_3\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_3 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_3 : STD_LOGIC;
  signal \i_fu_46[7]_i_2_n_3\ : STD_LOGIC;
  signal \i_fu_46[7]_i_3_n_3\ : STD_LOGIC;
  signal \i_fu_46[8]_i_2_n_3\ : STD_LOGIC;
  signal \i_fu_46[9]_i_3_n_3\ : STD_LOGIC;
  signal \i_fu_46[9]_i_4_n_3\ : STD_LOGIC;
  signal \i_fu_46[9]_i_5_n_3\ : STD_LOGIC;
  signal \^i_fu_46_reg[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_done_cache_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ap_loop_init_int_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_fu_46[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_fu_46[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_fu_46[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_46[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_46[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_46[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_fu_46[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_46[9]_i_1\ : label is "soft_lutpair4";
begin
  \i_fu_46_reg[6]\ <= \^i_fu_46_reg[6]\;
\B_V_data_1_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD000000FFFFFFFF"
    )
        port map (
      I0 => \B_V_data_1_state[1]_i_4_n_3\,
      I1 => \B_V_data_1_state[0]_i_3_n_3\,
      I2 => \B_V_data_1_state[1]_i_5_n_3\,
      I3 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I4 => \ap_CS_fsm_reg[3]\(1),
      I5 => in_stream_TVALID_int_regslice,
      O => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg
    );
\B_V_data_1_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(6),
      I1 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => Q(7),
      O => \B_V_data_1_state[0]_i_3_n_3\
    );
\B_V_data_1_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A000A222"
    )
        port map (
      I0 => \B_V_data_1_state[1]_i_4_n_3\,
      I1 => Q(6),
      I2 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(7),
      I5 => \B_V_data_1_state[1]_i_5_n_3\,
      O => \^i_fu_46_reg[6]\
    );
\B_V_data_1_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FF010101"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(0),
      I3 => ap_loop_init_int,
      I4 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I5 => Q(8),
      O => \B_V_data_1_state[1]_i_4_n_3\
    );
\B_V_data_1_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => ap_loop_init_int,
      I4 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I5 => Q(9),
      O => \B_V_data_1_state[1]_i_5_n_3\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => \^i_fu_46_reg[6]\,
      I2 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I3 => ap_done_cache,
      I4 => \ap_CS_fsm_reg[3]\(1),
      O => \ap_CS_fsm_reg[2]\(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => ap_done_cache,
      I2 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I3 => \^i_fu_46_reg[6]\,
      O => \ap_CS_fsm_reg[2]\(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^i_fu_46_reg[6]\,
      I1 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I2 => ap_done_cache,
      O => ap_done_cache_i_1_n_3
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_3,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5DDDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => in_stream_TVALID_int_regslice,
      I3 => \^i_fu_46_reg[6]\,
      I4 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      O => ap_loop_init_int_i_1_n_3
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_3,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => \^i_fu_46_reg[6]\,
      I2 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      O => \ap_CS_fsm_reg[1]\
    );
\i_fu_46[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => Q(0),
      I2 => \^i_fu_46_reg[6]\,
      O => D(0)
    );
\i_fu_46[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => Q(1),
      O => D(1)
    );
\i_fu_46[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => ap_loop_init_int,
      I3 => Q(1),
      O => D(2)
    );
\i_fu_46[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12222222"
    )
        port map (
      I0 => Q(3),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => D(3)
    );
\i_fu_46[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060A0A0A0A0A0A0A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => \i_fu_46[7]_i_2_n_3\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => D(4)
    );
\i_fu_46[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44B4"
    )
        port map (
      I0 => \i_fu_46[7]_i_3_n_3\,
      I1 => Q(4),
      I2 => Q(5),
      I3 => ap_loop_init_int,
      O => D(5)
    );
\i_fu_46[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009AAA"
    )
        port map (
      I0 => Q(6),
      I1 => \i_fu_46[7]_i_3_n_3\,
      I2 => Q(4),
      I3 => Q(5),
      I4 => ap_loop_init_int,
      O => D(6)
    );
\i_fu_46[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222122222222222"
    )
        port map (
      I0 => Q(7),
      I1 => \i_fu_46[7]_i_2_n_3\,
      I2 => Q(5),
      I3 => Q(4),
      I4 => \i_fu_46[7]_i_3_n_3\,
      I5 => Q(6),
      O => D(7)
    );
\i_fu_46[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I1 => ap_loop_init_int,
      O => \i_fu_46[7]_i_2_n_3\
    );
\i_fu_46[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7F7FFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => Q(3),
      O => \i_fu_46[7]_i_3_n_3\
    );
\i_fu_46[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => Q(8),
      I1 => Q(6),
      I2 => \i_fu_46[8]_i_2_n_3\,
      I3 => Q(7),
      I4 => ap_loop_init_int,
      O => D(8)
    );
\i_fu_46[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007000"
    )
        port map (
      I0 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => Q(5),
      I3 => Q(4),
      I4 => \i_fu_46[7]_i_3_n_3\,
      O => \i_fu_46[8]_i_2_n_3\
    );
\i_fu_46[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \i_fu_46[9]_i_3_n_3\,
      I1 => in_stream_TVALID_int_regslice,
      I2 => \^i_fu_46_reg[6]\,
      I3 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      O => E(0)
    );
\i_fu_46[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => Q(8),
      I2 => \i_fu_46[9]_i_4_n_3\,
      I3 => Q(9),
      O => D(9)
    );
\i_fu_46[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3F2A"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I3 => Q(8),
      I4 => \i_fu_46[9]_i_5_n_3\,
      I5 => \B_V_data_1_state[1]_i_5_n_3\,
      O => \i_fu_46[9]_i_3_n_3\
    );
\i_fu_46[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => Q(7),
      I1 => \i_fu_46[7]_i_2_n_3\,
      I2 => Q(5),
      I3 => Q(4),
      I4 => \i_fu_46[7]_i_3_n_3\,
      I5 => Q(6),
      O => \i_fu_46[9]_i_4_n_3\
    );
\i_fu_46[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(7),
      I3 => ap_loop_init_int,
      I4 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I5 => Q(6),
      O => \i_fu_46[9]_i_5_n_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both is
  port (
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TVALID_int_regslice : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg : in STD_LOGIC;
    \B_V_data_1_state_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both is
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \^in_stream_tready\ : STD_LOGIC;
  signal \^in_stream_tvalid_int_regslice\ : STD_LOGIC;
begin
  in_stream_TREADY <= \^in_stream_tready\;
  in_stream_TVALID_int_regslice <= \^in_stream_tvalid_int_regslice\;
\B_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80AAAA"
    )
        port map (
      I0 => ap_rst_n,
      I1 => in_stream_TVALID,
      I2 => \^in_stream_tready\,
      I3 => \^in_stream_tvalid_int_regslice\,
      I4 => \B_V_data_1_state_reg[0]_0\,
      O => \B_V_data_1_state[0]_i_1_n_3\
    );
\B_V_data_1_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D5FFFF55D555D5"
    )
        port map (
      I0 => \^in_stream_tvalid_int_regslice\,
      I1 => Q(0),
      I2 => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      I3 => \B_V_data_1_state_reg[1]_0\,
      I4 => in_stream_TVALID,
      I5 => \^in_stream_tready\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1_n_3\,
      Q => \^in_stream_tvalid_int_regslice\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^in_stream_tready\,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both_0 is
  port (
    out_stream_TREADY_int_regslice : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[6]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both_0 : entity is "mfcc_regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both_0 is
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[0]_0\ : STD_LOGIC;
  signal \^out_stream_tready_int_regslice\ : STD_LOGIC;
begin
  \B_V_data_1_state_reg[0]_0\ <= \^b_v_data_1_state_reg[0]_0\;
  out_stream_TREADY_int_regslice <= \^out_stream_tready_int_regslice\;
\B_V_data_1_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8088808880888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => \^out_stream_tready_int_regslice\,
      I3 => out_stream_TREADY,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => Q(0),
      O => \B_V_data_1_state[0]_i_1__0_n_3\
    );
\B_V_data_1_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4CFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \^out_stream_tready_int_regslice\,
      I2 => Q(0),
      I3 => \^b_v_data_1_state_reg[0]_0\,
      I4 => out_stream_TREADY,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__0_n_3\,
      Q => \^b_v_data_1_state_reg[0]_0\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^out_stream_tready_int_regslice\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => Q(1),
      I1 => out_stream_TREADY,
      I2 => \^out_stream_tready_int_regslice\,
      I3 => \^b_v_data_1_state_reg[0]_0\,
      O => \ap_CS_fsm_reg[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both__parameterized1\ is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : in STD_LOGIC;
    \B_V_data_1_payload_A_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both__parameterized1\ : entity is "mfcc_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both__parameterized1\ is
  signal B_V_data_1_payload_A : STD_LOGIC;
  signal \B_V_data_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal B_V_data_1_payload_B : STD_LOGIC;
  signal \B_V_data_1_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal B_V_data_1_sel : STD_LOGIC;
  signal B_V_data_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal B_V_data_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_state_reg_n_3_[1]\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of B_V_data_1_sel_rd_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_stream_TLAST[0]_INST_0\ : label is "soft_lutpair10";
begin
  ap_rst_n_inv <= \^ap_rst_n_inv\;
\B_V_data_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[0]_0\,
      I1 => B_V_data_1_sel_wr,
      I2 => \B_V_data_1_state_reg_n_3_[1]\,
      I3 => \B_V_data_1_state_reg_n_3_[0]\,
      I4 => B_V_data_1_payload_A,
      O => \B_V_data_1_payload_A[0]_i_1_n_3\
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_payload_A[0]_i_1_n_3\,
      Q => B_V_data_1_payload_A,
      R => '0'
    );
\B_V_data_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[0]_0\,
      I1 => B_V_data_1_sel_wr,
      I2 => \B_V_data_1_state_reg_n_3_[1]\,
      I3 => \B_V_data_1_state_reg_n_3_[0]\,
      I4 => B_V_data_1_payload_B,
      O => \B_V_data_1_payload_B[0]_i_1_n_3\
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_payload_B[0]_i_1_n_3\,
      Q => B_V_data_1_payload_B,
      R => '0'
    );
B_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \B_V_data_1_state_reg_n_3_[0]\,
      I1 => out_stream_TREADY,
      I2 => B_V_data_1_sel,
      O => B_V_data_1_sel_rd_i_1_n_3
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_rd_i_1_n_3,
      Q => B_V_data_1_sel,
      R => \^ap_rst_n_inv\
    );
B_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(0),
      I3 => \B_V_data_1_state_reg_n_3_[1]\,
      I4 => B_V_data_1_sel_wr,
      O => B_V_data_1_sel_wr_i_1_n_3
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_i_1_n_3,
      Q => B_V_data_1_sel_wr,
      R => \^ap_rst_n_inv\
    );
\B_V_data_1_state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \B_V_data_1_state_reg_n_3_[0]\,
      I2 => \B_V_data_1_state_reg_n_3_[1]\,
      I3 => out_stream_TREADY,
      I4 => \B_V_data_1_state_reg[0]_0\,
      O => \B_V_data_1_state[0]_i_1__1_n_3\
    );
\B_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\B_V_data_1_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAAFFFFFFFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => Q(0),
      I2 => out_stream_TREADY_int_regslice,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \B_V_data_1_state_reg_n_3_[1]\,
      I5 => \B_V_data_1_state_reg_n_3_[0]\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__1_n_3\,
      Q => \B_V_data_1_state_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \B_V_data_1_state_reg_n_3_[1]\,
      R => \^ap_rst_n_inv\
    );
\out_stream_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_V_data_1_payload_B,
      I1 => B_V_data_1_sel,
      I2 => B_V_data_1_payload_A,
      O => out_stream_TLAST(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_2 is
  port (
    \i_fu_46_reg[6]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg : in STD_LOGIC;
    in_stream_TVALID_int_regslice : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_2 is
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal i_fu_46 : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[0]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[1]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[2]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[3]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[4]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[5]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[6]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[7]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[8]\ : STD_LOGIC;
  signal \i_fu_46_reg_n_3_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init_1
     port map (
      D(9 downto 5) => p_0_in(9 downto 5),
      D(4) => flow_control_loop_pipe_sequential_init_U_n_8,
      D(3) => p_0_in(3),
      D(2) => flow_control_loop_pipe_sequential_init_U_n_10,
      D(1 downto 0) => p_0_in(1 downto 0),
      E(0) => i_fu_46,
      Q(9) => \i_fu_46_reg_n_3_[9]\,
      Q(8) => \i_fu_46_reg_n_3_[8]\,
      Q(7) => \i_fu_46_reg_n_3_[7]\,
      Q(6) => \i_fu_46_reg_n_3_[6]\,
      Q(5) => \i_fu_46_reg_n_3_[5]\,
      Q(4) => \i_fu_46_reg_n_3_[4]\,
      Q(3) => \i_fu_46_reg_n_3_[3]\,
      Q(2) => \i_fu_46_reg_n_3_[2]\,
      Q(1) => \i_fu_46_reg_n_3_[1]\,
      Q(0) => \i_fu_46_reg_n_3_[0]\,
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[2]\(1 downto 0) => D(1 downto 0),
      \ap_CS_fsm_reg[3]\(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg,
      \i_fu_46_reg[6]\ => \i_fu_46_reg[6]_0\,
      in_stream_TVALID_int_regslice => in_stream_TVALID_int_regslice
    );
\i_fu_46_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(0),
      Q => \i_fu_46_reg_n_3_[0]\,
      R => '0'
    );
\i_fu_46_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(1),
      Q => \i_fu_46_reg_n_3_[1]\,
      R => '0'
    );
\i_fu_46_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => flow_control_loop_pipe_sequential_init_U_n_10,
      Q => \i_fu_46_reg_n_3_[2]\,
      R => '0'
    );
\i_fu_46_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(3),
      Q => \i_fu_46_reg_n_3_[3]\,
      R => '0'
    );
\i_fu_46_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => \i_fu_46_reg_n_3_[4]\,
      R => '0'
    );
\i_fu_46_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(5),
      Q => \i_fu_46_reg_n_3_[5]\,
      R => '0'
    );
\i_fu_46_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(6),
      Q => \i_fu_46_reg_n_3_[6]\,
      R => '0'
    );
\i_fu_46_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(7),
      Q => \i_fu_46_reg_n_3_[7]\,
      R => '0'
    );
\i_fu_46_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(8),
      Q => \i_fu_46_reg_n_3_[8]\,
      R => '0'
    );
\i_fu_46_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_46,
      D => p_0_in(9),
      Q => \i_fu_46_reg_n_3_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_6 is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    \val_out_last_reg_116_reg[0]_0\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[6]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_6 is
  signal add_ln106_fu_89_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_4 : STD_LOGIC;
  signal m_fu_52 : STD_LOGIC;
  signal \m_fu_52_reg_n_3_[0]\ : STD_LOGIC;
  signal \m_fu_52_reg_n_3_[1]\ : STD_LOGIC;
  signal \m_fu_52_reg_n_3_[2]\ : STD_LOGIC;
  signal \m_fu_52_reg_n_3_[3]\ : STD_LOGIC;
  signal \m_fu_52_reg_n_3_[4]\ : STD_LOGIC;
  signal \m_fu_52_reg_n_3_[5]\ : STD_LOGIC;
  signal \^val_out_last_reg_116_reg[0]_0\ : STD_LOGIC;
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
  \val_out_last_reg_116_reg[0]_0\ <= \^val_out_last_reg_116_reg[0]_0\;
\B_V_data_1_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(1),
      O => ap_enable_reg_pp0_iter1_reg_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_3,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_flow_control_loop_pipe_sequential_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      add_ln106_fu_89_p2(5 downto 0) => add_ln106_fu_89_p2(5 downto 0),
      \ap_CS_fsm_reg[4]\ => \ap_CS_fsm_reg[4]\,
      \ap_CS_fsm_reg[6]\ => \ap_CS_fsm_reg[6]\,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => flow_control_loop_pipe_sequential_init_U_n_3,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      m_fu_52 => m_fu_52,
      \m_fu_52_reg[0]\ => \^ap_enable_reg_pp0_iter1\,
      \m_fu_52_reg[4]\ => \m_fu_52_reg_n_3_[4]\,
      \m_fu_52_reg[4]_0\ => \m_fu_52_reg_n_3_[2]\,
      \m_fu_52_reg[4]_1\ => \m_fu_52_reg_n_3_[1]\,
      \m_fu_52_reg[4]_2\ => \m_fu_52_reg_n_3_[0]\,
      \m_fu_52_reg[4]_3\ => \m_fu_52_reg_n_3_[3]\,
      \m_fu_52_reg[5]\ => \m_fu_52_reg_n_3_[5]\,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      \val_out_last_reg_116_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_4,
      \val_out_last_reg_116_reg[0]_0\ => \^val_out_last_reg_116_reg[0]_0\
    );
\m_fu_52_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_fu_52,
      D => add_ln106_fu_89_p2(0),
      Q => \m_fu_52_reg_n_3_[0]\,
      R => '0'
    );
\m_fu_52_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_fu_52,
      D => add_ln106_fu_89_p2(1),
      Q => \m_fu_52_reg_n_3_[1]\,
      R => '0'
    );
\m_fu_52_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_fu_52,
      D => add_ln106_fu_89_p2(2),
      Q => \m_fu_52_reg_n_3_[2]\,
      R => '0'
    );
\m_fu_52_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_fu_52,
      D => add_ln106_fu_89_p2(3),
      Q => \m_fu_52_reg_n_3_[3]\,
      R => '0'
    );
\m_fu_52_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_fu_52,
      D => add_ln106_fu_89_p2(4),
      Q => \m_fu_52_reg_n_3_[4]\,
      R => '0'
    );
\m_fu_52_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => m_fu_52,
      D => add_ln106_fu_89_p2(5),
      Q => \m_fu_52_reg_n_3_[5]\,
      R => '0'
    );
\val_out_last_reg_116_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_4,
      Q => \^val_out_last_reg_116_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b0000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b0000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b0000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b0001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b0010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b0100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "7'b1000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_3_[3]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_2_fu_52_n_3 : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_2_fu_52_n_6 : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_2_fu_52_n_7 : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_6_fu_64_n_4 : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_6_fu_64_n_5 : STD_LOGIC;
  signal grp_mfcc_Pipeline_task_6_fu_64_n_8 : STD_LOGIC;
  signal in_stream_TVALID_int_regslice : STD_LOGIC;
  signal out_stream_TREADY_int_regslice : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_5 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
begin
  out_stream_TDATA(15) <= \<const0>\;
  out_stream_TDATA(14) <= \<const0>\;
  out_stream_TDATA(13) <= \<const0>\;
  out_stream_TDATA(12) <= \<const0>\;
  out_stream_TDATA(11) <= \<const0>\;
  out_stream_TDATA(10) <= \<const0>\;
  out_stream_TDATA(9) <= \<const0>\;
  out_stream_TDATA(8) <= \<const0>\;
  out_stream_TDATA(7) <= \<const0>\;
  out_stream_TDATA(6) <= \<const0>\;
  out_stream_TDATA(5) <= \<const0>\;
  out_stream_TDATA(4) <= \<const0>\;
  out_stream_TDATA(3) <= \<const0>\;
  out_stream_TDATA(2) <= \<const0>\;
  out_stream_TDATA(1) <= \<const0>\;
  out_stream_TDATA(0) <= \<const0>\;
  out_stream_TKEEP(1) <= \<const0>\;
  out_stream_TKEEP(0) <= \<const0>\;
  out_stream_TSTRB(1) <= \<const0>\;
  out_stream_TSTRB(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => ap_CS_fsm_state6,
      I2 => ap_CS_fsm_state5,
      I3 => \ap_CS_fsm_reg_n_3_[3]\,
      I4 => ap_CS_fsm_state3,
      I5 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
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
      D => ap_NS_fsm(3),
      Q => \ap_CS_fsm_reg_n_3_[3]\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_3_[3]\,
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
grp_mfcc_Pipeline_task_2_fu_52: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_2
     port map (
      D(1 downto 0) => ap_NS_fsm(3 downto 2),
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state2,
      \ap_CS_fsm_reg[1]\ => grp_mfcc_Pipeline_task_2_fu_52_n_6,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg => grp_mfcc_Pipeline_task_2_fu_52_n_7,
      \i_fu_46_reg[6]_0\ => grp_mfcc_Pipeline_task_2_fu_52_n_3,
      in_stream_TVALID_int_regslice => in_stream_TVALID_int_regslice
    );
grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_mfcc_Pipeline_task_2_fu_52_n_6,
      Q => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_mfcc_Pipeline_task_6_fu_64: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_mfcc_Pipeline_task_6
     port map (
      D(1 downto 0) => ap_NS_fsm(6 downto 5),
      Q(1) => ap_CS_fsm_state6,
      Q(0) => ap_CS_fsm_state5,
      \ap_CS_fsm_reg[4]\ => grp_mfcc_Pipeline_task_6_fu_64_n_8,
      \ap_CS_fsm_reg[6]\ => regslice_both_out_stream_V_data_V_U_n_5,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg_0 => grp_mfcc_Pipeline_task_6_fu_64_n_5,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      \val_out_last_reg_116_reg[0]_0\ => grp_mfcc_Pipeline_task_6_fu_64_n_4
    );
grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_mfcc_Pipeline_task_6_fu_64_n_8,
      Q => grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
      R => ap_rst_n_inv
    );
regslice_both_in_stream_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both
     port map (
      \B_V_data_1_state_reg[0]_0\ => grp_mfcc_Pipeline_task_2_fu_52_n_7,
      \B_V_data_1_state_reg[1]_0\ => grp_mfcc_Pipeline_task_2_fu_52_n_3,
      Q(0) => ap_CS_fsm_state3,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg => grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
      in_stream_TREADY => in_stream_TREADY,
      in_stream_TVALID => in_stream_TVALID,
      in_stream_TVALID_int_regslice => in_stream_TVALID_int_regslice
    );
regslice_both_out_stream_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both_0
     port map (
      \B_V_data_1_state_reg[0]_0\ => out_stream_TVALID,
      Q(1) => ap_CS_fsm_state7,
      Q(0) => ap_CS_fsm_state6,
      \ap_CS_fsm_reg[6]\ => regslice_both_out_stream_V_data_V_U_n_5,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
regslice_both_out_stream_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc_regslice_both__parameterized1\
     port map (
      \B_V_data_1_payload_A_reg[0]_0\ => grp_mfcc_Pipeline_task_6_fu_64_n_4,
      \B_V_data_1_state_reg[0]_0\ => grp_mfcc_Pipeline_task_6_fu_64_n_5,
      Q(0) => ap_CS_fsm_state6,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mfcc_1,mfcc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mfcc,Vivado 2023.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_out_stream_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_out_stream_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_out_stream_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "7'b0000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "7'b0000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "7'b0000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "7'b0001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "7'b0010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "7'b0100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "7'b1000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 in_stream TREADY";
  attribute X_INTERFACE_INFO of in_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 in_stream TVALID";
  attribute X_INTERFACE_INFO of out_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 out_stream TREADY";
  attribute X_INTERFACE_INFO of out_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 out_stream TVALID";
  attribute X_INTERFACE_INFO of in_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 in_stream TDATA";
  attribute X_INTERFACE_INFO of in_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 in_stream TKEEP";
  attribute X_INTERFACE_INFO of in_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 in_stream TLAST";
  attribute X_INTERFACE_INFO of in_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 in_stream TSTRB";
  attribute X_INTERFACE_PARAMETER of in_stream_TSTRB : signal is "XIL_INTERFACENAME in_stream, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 out_stream TDATA";
  attribute X_INTERFACE_INFO of out_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 out_stream TKEEP";
  attribute X_INTERFACE_INFO of out_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 out_stream TLAST";
  attribute X_INTERFACE_INFO of out_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 out_stream TSTRB";
  attribute X_INTERFACE_PARAMETER of out_stream_TSTRB : signal is "XIL_INTERFACENAME out_stream, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, INSERT_VIP 0";
begin
  out_stream_TDATA(15) <= \<const0>\;
  out_stream_TDATA(14) <= \<const0>\;
  out_stream_TDATA(13) <= \<const0>\;
  out_stream_TDATA(12) <= \<const0>\;
  out_stream_TDATA(11) <= \<const0>\;
  out_stream_TDATA(10) <= \<const0>\;
  out_stream_TDATA(9) <= \<const0>\;
  out_stream_TDATA(8) <= \<const0>\;
  out_stream_TDATA(7) <= \<const0>\;
  out_stream_TDATA(6) <= \<const0>\;
  out_stream_TDATA(5) <= \<const0>\;
  out_stream_TDATA(4) <= \<const0>\;
  out_stream_TDATA(3) <= \<const0>\;
  out_stream_TDATA(2) <= \<const0>\;
  out_stream_TDATA(1) <= \<const0>\;
  out_stream_TDATA(0) <= \<const0>\;
  out_stream_TKEEP(1) <= \<const1>\;
  out_stream_TKEEP(0) <= \<const1>\;
  out_stream_TSTRB(1) <= \<const1>\;
  out_stream_TSTRB(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mfcc
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      in_stream_TDATA(15 downto 0) => B"0000000000000000",
      in_stream_TKEEP(1 downto 0) => B"00",
      in_stream_TLAST(0) => '0',
      in_stream_TREADY => in_stream_TREADY,
      in_stream_TSTRB(1 downto 0) => B"00",
      in_stream_TVALID => in_stream_TVALID,
      out_stream_TDATA(15 downto 0) => NLW_inst_out_stream_TDATA_UNCONNECTED(15 downto 0),
      out_stream_TKEEP(1 downto 0) => NLW_inst_out_stream_TKEEP_UNCONNECTED(1 downto 0),
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TSTRB(1 downto 0) => NLW_inst_out_stream_TSTRB_UNCONNECTED(1 downto 0),
      out_stream_TVALID => out_stream_TVALID
    );
end STRUCTURE;
