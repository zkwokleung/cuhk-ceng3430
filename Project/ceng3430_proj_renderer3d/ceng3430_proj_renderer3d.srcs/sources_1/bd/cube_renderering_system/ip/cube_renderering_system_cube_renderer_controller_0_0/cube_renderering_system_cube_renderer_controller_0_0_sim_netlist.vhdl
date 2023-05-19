-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Fri May 19 13:09:39 2023
-- Host        : LAPTOP-UCKDP9IT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Git/cuhk-ceng3430/Project/ceng3430_proj_renderer3d/ceng3430_proj_renderer3d.srcs/sources_1/bd/cube_renderering_system/ip/cube_renderering_system_cube_renderer_controller_0_0/cube_renderering_system_cube_renderer_controller_0_0_sim_netlist.vhdl
-- Design      : cube_renderering_system_cube_renderer_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_cube_renderer_controller_0_0_clock_divider is
  port (
    sig : out STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cube_renderering_system_cube_renderer_controller_0_0_clock_divider : entity is "clock_divider";
end cube_renderering_system_cube_renderer_controller_0_0_clock_divider;

architecture STRUCTURE of cube_renderering_system_cube_renderer_controller_0_0_clock_divider is
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_n_2\ : STD_LOGIC;
  signal \counter0_carry__6_n_3\ : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter[31]_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \data0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig\ : STD_LOGIC;
  signal sig_0 : STD_LOGIC;
  signal sig_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[31]_i_8\ : label is "soft_lutpair3";
begin
  sig <= \^sig\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => counter0_carry_i_1_n_0,
      S(2) => counter0_carry_i_2_n_0,
      S(1) => counter0_carry_i_3_n_0,
      S(0) => counter0_carry_i_4_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter0_carry__0_i_1_n_0\,
      S(2) => \counter0_carry__0_i_2_n_0\,
      S(1) => \counter0_carry__0_i_3_n_0\,
      S(0) => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(8),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(7),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(6),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(5),
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter0_carry__1_i_1_n_0\,
      S(2) => \counter0_carry__1_i_2_n_0\,
      S(1) => \counter0_carry__1_i_3_n_0\,
      S(0) => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(12),
      O => \counter0_carry__1_i_1_n_0\
    );
\counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(11),
      O => \counter0_carry__1_i_2_n_0\
    );
\counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(10),
      O => \counter0_carry__1_i_3_n_0\
    );
\counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(9),
      O => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter0_carry__2_i_1_n_0\,
      S(2) => \counter0_carry__2_i_2_n_0\,
      S(1) => \counter0_carry__2_i_3_n_0\,
      S(0) => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(16),
      O => \counter0_carry__2_i_1_n_0\
    );
\counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(15),
      O => \counter0_carry__2_i_2_n_0\
    );
\counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(14),
      O => \counter0_carry__2_i_3_n_0\
    );
\counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(13),
      O => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \counter0_carry__3_i_1_n_0\,
      S(2) => \counter0_carry__3_i_2_n_0\,
      S(1) => \counter0_carry__3_i_3_n_0\,
      S(0) => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(20),
      O => \counter0_carry__3_i_1_n_0\
    );
\counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(19),
      O => \counter0_carry__3_i_2_n_0\
    );
\counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(18),
      O => \counter0_carry__3_i_3_n_0\
    );
\counter0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(17),
      O => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \counter0_carry__4_i_1_n_0\,
      S(2) => \counter0_carry__4_i_2_n_0\,
      S(1) => \counter0_carry__4_i_3_n_0\,
      S(0) => \counter0_carry__4_i_4_n_0\
    );
\counter0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(24),
      O => \counter0_carry__4_i_1_n_0\
    );
\counter0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(23),
      O => \counter0_carry__4_i_2_n_0\
    );
\counter0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(22),
      O => \counter0_carry__4_i_3_n_0\
    );
\counter0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(21),
      O => \counter0_carry__4_i_4_n_0\
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \counter0_carry__5_n_0\,
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \counter0_carry__5_i_1_n_0\,
      S(2) => \counter0_carry__5_i_2_n_0\,
      S(1) => \counter0_carry__5_i_3_n_0\,
      S(0) => \counter0_carry__5_i_4_n_0\
    );
\counter0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(28),
      O => \counter0_carry__5_i_1_n_0\
    );
\counter0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(27),
      O => \counter0_carry__5_i_2_n_0\
    );
\counter0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(26),
      O => \counter0_carry__5_i_3_n_0\
    );
\counter0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(25),
      O => \counter0_carry__5_i_4_n_0\
    );
\counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__6_n_2\,
      CO(0) => \counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \counter0_carry__6_i_1_n_0\,
      S(1) => \counter0_carry__6_i_2_n_0\,
      S(0) => \counter0_carry__6_i_3_n_0\
    );
\counter0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(31),
      O => \counter0_carry__6_i_1_n_0\
    );
\counter0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(30),
      O => \counter0_carry__6_i_2_n_0\
    );
\counter0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(29),
      O => \counter0_carry__6_i_3_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(4),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(3),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(2),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(1),
      O => counter0_carry_i_4_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \data0__0\(0)
    );
\counter[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter[31]_i_2_n_0\,
      I1 => \counter[31]_i_3_n_0\,
      I2 => \counter[31]_i_4_n_0\,
      I3 => \counter[31]_i_5_n_0\,
      O => sig_0
    );
\counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(21),
      I1 => counter(20),
      I2 => counter(23),
      I3 => counter(22),
      I4 => \counter[31]_i_6_n_0\,
      O => \counter[31]_i_2_n_0\
    );
\counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(29),
      I1 => counter(28),
      I2 => counter(30),
      I3 => counter(31),
      I4 => \counter[31]_i_7_n_0\,
      O => \counter[31]_i_3_n_0\
    );
\counter[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(7),
      I3 => counter(6),
      I4 => \counter[31]_i_8_n_0\,
      O => \counter[31]_i_4_n_0\
    );
\counter[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(13),
      I1 => counter(12),
      I2 => counter(15),
      I3 => counter(14),
      I4 => \counter[31]_i_9_n_0\,
      O => \counter[31]_i_5_n_0\
    );
\counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(18),
      I1 => counter(19),
      I2 => counter(16),
      I3 => counter(17),
      O => \counter[31]_i_6_n_0\
    );
\counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(26),
      I1 => counter(27),
      I2 => counter(24),
      I3 => counter(25),
      O => \counter[31]_i_7_n_0\
    );
\counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(0),
      I3 => counter(1),
      O => \counter[31]_i_8_n_0\
    );
\counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(10),
      I1 => counter(11),
      I2 => counter(8),
      I3 => counter(9),
      O => \counter[31]_i_9_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \data0__0\(0),
      Q => counter(0),
      R => sig_0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(10),
      Q => counter(10),
      R => sig_0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(11),
      Q => counter(11),
      R => sig_0
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(12),
      Q => counter(12),
      R => sig_0
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(13),
      Q => counter(13),
      R => sig_0
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(14),
      Q => counter(14),
      R => sig_0
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(15),
      Q => counter(15),
      R => sig_0
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(16),
      Q => counter(16),
      R => sig_0
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(17),
      Q => counter(17),
      R => sig_0
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(18),
      Q => counter(18),
      R => sig_0
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(19),
      Q => counter(19),
      R => sig_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(1),
      Q => counter(1),
      R => sig_0
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(20),
      Q => counter(20),
      R => sig_0
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(21),
      Q => counter(21),
      R => sig_0
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(22),
      Q => counter(22),
      R => sig_0
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(23),
      Q => counter(23),
      R => sig_0
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(24),
      Q => counter(24),
      R => sig_0
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(25),
      Q => counter(25),
      R => sig_0
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(26),
      Q => counter(26),
      R => sig_0
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(27),
      Q => counter(27),
      R => sig_0
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(28),
      Q => counter(28),
      R => sig_0
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(29),
      Q => counter(29),
      R => sig_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(2),
      Q => counter(2),
      R => sig_0
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(30),
      Q => counter(30),
      R => sig_0
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(31),
      Q => counter(31),
      R => sig_0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(3),
      Q => counter(3),
      R => sig_0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(4),
      Q => counter(4),
      R => sig_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(5),
      Q => counter(5),
      R => sig_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(6),
      Q => counter(6),
      R => sig_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(7),
      Q => counter(7),
      R => sig_0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(8),
      Q => counter(8),
      R => sig_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data0(9),
      Q => counter(9),
      R => sig_0
    );
sig_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \counter[31]_i_5_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_2_n_0\,
      I4 => \^sig\,
      O => sig_i_1_n_0
    );
sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sig_i_1_n_0,
      Q => \^sig\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_2\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_3\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_4\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_5\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_6\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_7\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_8\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_9\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_10\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_11\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_12\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_13\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_14\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    axi_arready_reg_0 : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BTND : in STD_LOGIC;
    BTNU : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTNC : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI : entity is "cube_renderer_controller_v2_0_S00_AXI";
end cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI;

architecture STRUCTURE of cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_araddr_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \^axi_rdata_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_12\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_13\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_14\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_rdata_reg[31]_9\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_rdata_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg10[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg8[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg9[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg8[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg9[31]_i_2\ : label is "soft_lutpair0";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  \axi_rdata_reg[31]_0\(31 downto 0) <= \^axi_rdata_reg[31]_0\(31 downto 0);
  \axi_rdata_reg[31]_1\(31 downto 0) <= \^axi_rdata_reg[31]_1\(31 downto 0);
  \axi_rdata_reg[31]_10\(31 downto 0) <= \^axi_rdata_reg[31]_10\(31 downto 0);
  \axi_rdata_reg[31]_11\(31 downto 0) <= \^axi_rdata_reg[31]_11\(31 downto 0);
  \axi_rdata_reg[31]_12\(31 downto 0) <= \^axi_rdata_reg[31]_12\(31 downto 0);
  \axi_rdata_reg[31]_13\(31 downto 0) <= \^axi_rdata_reg[31]_13\(31 downto 0);
  \axi_rdata_reg[31]_14\(31 downto 0) <= \^axi_rdata_reg[31]_14\(31 downto 0);
  \axi_rdata_reg[31]_2\(31 downto 0) <= \^axi_rdata_reg[31]_2\(31 downto 0);
  \axi_rdata_reg[31]_3\(31 downto 0) <= \^axi_rdata_reg[31]_3\(31 downto 0);
  \axi_rdata_reg[31]_4\(31 downto 0) <= \^axi_rdata_reg[31]_4\(31 downto 0);
  \axi_rdata_reg[31]_5\(31 downto 0) <= \^axi_rdata_reg[31]_5\(31 downto 0);
  \axi_rdata_reg[31]_6\(31 downto 0) <= \^axi_rdata_reg[31]_6\(31 downto 0);
  \axi_rdata_reg[31]_7\(31 downto 0) <= \^axi_rdata_reg[31]_7\(31 downto 0);
  \axi_rdata_reg[31]_8\(31 downto 0) <= \^axi_rdata_reg[31]_8\(31 downto 0);
  \axi_rdata_reg[31]_9\(31 downto 0) <= \^axi_rdata_reg[31]_9\(31 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      S => SR(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      S => SR(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      S => SR(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      S => SR(0)
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(4),
      Q => sel0(4),
      S => SR(0)
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(5),
      Q => \axi_araddr_reg_n_0_[7]\,
      S => SR(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => SR(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in(0),
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in(1),
      R => SR(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in(2),
      R => SR(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in(3),
      R => SR(0)
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => SR(0)
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => \axi_awaddr_reg_n_0_[7]\,
      R => SR(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => SR(0)
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => SR(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[0]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[0]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[0]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => BTNC,
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(0),
      I1 => \^axi_rdata_reg[31]_1\(0),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(0),
      I4 => sel0(0),
      I5 => \^q\(0),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(0),
      I1 => \^axi_rdata_reg[31]_5\(0),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(0),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(0),
      I1 => \^axi_rdata_reg[31]_9\(0),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(0),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(0),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(0),
      I1 => \^axi_rdata_reg[31]_13\(0),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(0),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(0),
      O => \axi_rdata[0]_i_8_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[10]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[10]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[10]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(5),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(10),
      I1 => \^axi_rdata_reg[31]_1\(10),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(10),
      I4 => sel0(0),
      I5 => \^q\(10),
      O => \axi_rdata[10]_i_5_n_0\
    );
\axi_rdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(10),
      I1 => \^axi_rdata_reg[31]_5\(10),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(10),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(10),
      O => \axi_rdata[10]_i_6_n_0\
    );
\axi_rdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(10),
      I1 => \^axi_rdata_reg[31]_9\(10),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(10),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(10),
      O => \axi_rdata[10]_i_7_n_0\
    );
\axi_rdata[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(10),
      I1 => \^axi_rdata_reg[31]_13\(10),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(10),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(10),
      O => \axi_rdata[10]_i_8_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[11]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[11]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[11]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(6),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(11),
      I1 => \^axi_rdata_reg[31]_1\(11),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(11),
      I4 => sel0(0),
      I5 => \^q\(11),
      O => \axi_rdata[11]_i_5_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(11),
      I1 => \^axi_rdata_reg[31]_5\(11),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(11),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(11),
      O => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(11),
      I1 => \^axi_rdata_reg[31]_9\(11),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(11),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(11),
      O => \axi_rdata[11]_i_7_n_0\
    );
\axi_rdata[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(11),
      I1 => \^axi_rdata_reg[31]_13\(11),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(11),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(11),
      O => \axi_rdata[11]_i_8_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[12]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[12]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[12]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(7),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(12),
      I1 => \^axi_rdata_reg[31]_1\(12),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(12),
      I4 => sel0(0),
      I5 => \^q\(12),
      O => \axi_rdata[12]_i_5_n_0\
    );
\axi_rdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(12),
      I1 => \^axi_rdata_reg[31]_5\(12),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(12),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(12),
      O => \axi_rdata[12]_i_6_n_0\
    );
\axi_rdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(12),
      I1 => \^axi_rdata_reg[31]_9\(12),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(12),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(12),
      O => \axi_rdata[12]_i_7_n_0\
    );
\axi_rdata[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(12),
      I1 => \^axi_rdata_reg[31]_13\(12),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(12),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(12),
      O => \axi_rdata[12]_i_8_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[13]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[13]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(13),
      I1 => \^axi_rdata_reg[31]_9\(13),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(13),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(13),
      I1 => \^axi_rdata_reg[31]_13\(13),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(13),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(13),
      O => \axi_rdata[13]_i_5_n_0\
    );
\axi_rdata[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(13),
      I1 => \^axi_rdata_reg[31]_1\(13),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(13),
      I4 => sel0(0),
      I5 => \^q\(13),
      O => \axi_rdata[13]_i_6_n_0\
    );
\axi_rdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(13),
      I1 => \^axi_rdata_reg[31]_5\(13),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(13),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(13),
      O => \axi_rdata[13]_i_7_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[14]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[14]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(14),
      I1 => \^axi_rdata_reg[31]_9\(14),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(14),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(14),
      I1 => \^axi_rdata_reg[31]_13\(14),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(14),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(14),
      O => \axi_rdata[14]_i_5_n_0\
    );
\axi_rdata[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(14),
      I1 => \^axi_rdata_reg[31]_1\(14),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(14),
      I4 => sel0(0),
      I5 => \^q\(14),
      O => \axi_rdata[14]_i_6_n_0\
    );
\axi_rdata[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(14),
      I1 => \^axi_rdata_reg[31]_5\(14),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(14),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(14),
      O => \axi_rdata[14]_i_7_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[15]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[15]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(15),
      I1 => \^axi_rdata_reg[31]_9\(15),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(15),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(15),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(15),
      I1 => \^axi_rdata_reg[31]_13\(15),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(15),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(15),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(15),
      I1 => \^axi_rdata_reg[31]_1\(15),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(15),
      I4 => sel0(0),
      I5 => \^q\(15),
      O => \axi_rdata[15]_i_6_n_0\
    );
\axi_rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(15),
      I1 => \^axi_rdata_reg[31]_5\(15),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(15),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(15),
      O => \axi_rdata[15]_i_7_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[16]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[16]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(16),
      I1 => \^axi_rdata_reg[31]_9\(16),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(16),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(16),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(16),
      I1 => \^axi_rdata_reg[31]_13\(16),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(16),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(16),
      O => \axi_rdata[16]_i_5_n_0\
    );
\axi_rdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(16),
      I1 => \^axi_rdata_reg[31]_1\(16),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(16),
      I4 => sel0(0),
      I5 => \^q\(16),
      O => \axi_rdata[16]_i_6_n_0\
    );
\axi_rdata[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(16),
      I1 => \^axi_rdata_reg[31]_5\(16),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(16),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(16),
      O => \axi_rdata[16]_i_7_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[17]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[17]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(17),
      I1 => \^axi_rdata_reg[31]_9\(17),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(17),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(17),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(17),
      I1 => \^axi_rdata_reg[31]_13\(17),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(17),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(17),
      O => \axi_rdata[17]_i_5_n_0\
    );
\axi_rdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(17),
      I1 => \^axi_rdata_reg[31]_1\(17),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(17),
      I4 => sel0(0),
      I5 => \^q\(17),
      O => \axi_rdata[17]_i_6_n_0\
    );
\axi_rdata[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(17),
      I1 => \^axi_rdata_reg[31]_5\(17),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(17),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(17),
      O => \axi_rdata[17]_i_7_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[18]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[18]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(18),
      I1 => \^axi_rdata_reg[31]_9\(18),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(18),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(18),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(18),
      I1 => \^axi_rdata_reg[31]_13\(18),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(18),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(18),
      O => \axi_rdata[18]_i_5_n_0\
    );
\axi_rdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(18),
      I1 => \^axi_rdata_reg[31]_1\(18),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(18),
      I4 => sel0(0),
      I5 => \^q\(18),
      O => \axi_rdata[18]_i_6_n_0\
    );
\axi_rdata[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(18),
      I1 => \^axi_rdata_reg[31]_5\(18),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(18),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(18),
      O => \axi_rdata[18]_i_7_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[19]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[19]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(19),
      I1 => \^axi_rdata_reg[31]_9\(19),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(19),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(19),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(19),
      I1 => \^axi_rdata_reg[31]_13\(19),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(19),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(19),
      O => \axi_rdata[19]_i_5_n_0\
    );
\axi_rdata[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(19),
      I1 => \^axi_rdata_reg[31]_1\(19),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(19),
      I4 => sel0(0),
      I5 => \^q\(19),
      O => \axi_rdata[19]_i_6_n_0\
    );
\axi_rdata[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(19),
      I1 => \^axi_rdata_reg[31]_5\(19),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(19),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(19),
      O => \axi_rdata[19]_i_7_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[1]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[1]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[1]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => BTNL,
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(1),
      I1 => \^axi_rdata_reg[31]_1\(1),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(1),
      I4 => sel0(0),
      I5 => \^q\(1),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(1),
      I1 => \^axi_rdata_reg[31]_5\(1),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(1),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(1),
      I1 => \^axi_rdata_reg[31]_9\(1),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(1),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(1),
      O => \axi_rdata[1]_i_7_n_0\
    );
\axi_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(1),
      I1 => \^axi_rdata_reg[31]_13\(1),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(1),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(1),
      O => \axi_rdata[1]_i_8_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[20]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[20]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(20),
      I1 => \^axi_rdata_reg[31]_9\(20),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(20),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(20),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(20),
      I1 => \^axi_rdata_reg[31]_13\(20),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(20),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(20),
      O => \axi_rdata[20]_i_5_n_0\
    );
\axi_rdata[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(20),
      I1 => \^axi_rdata_reg[31]_1\(20),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(20),
      I4 => sel0(0),
      I5 => \^q\(20),
      O => \axi_rdata[20]_i_6_n_0\
    );
\axi_rdata[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(20),
      I1 => \^axi_rdata_reg[31]_5\(20),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(20),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(20),
      O => \axi_rdata[20]_i_7_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[21]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[21]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(21),
      I1 => \^axi_rdata_reg[31]_9\(21),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(21),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(21),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(21),
      I1 => \^axi_rdata_reg[31]_13\(21),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(21),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(21),
      O => \axi_rdata[21]_i_5_n_0\
    );
\axi_rdata[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(21),
      I1 => \^axi_rdata_reg[31]_1\(21),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(21),
      I4 => sel0(0),
      I5 => \^q\(21),
      O => \axi_rdata[21]_i_6_n_0\
    );
\axi_rdata[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(21),
      I1 => \^axi_rdata_reg[31]_5\(21),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(21),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(21),
      O => \axi_rdata[21]_i_7_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[22]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[22]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(22),
      I1 => \^axi_rdata_reg[31]_9\(22),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(22),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(22),
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(22),
      I1 => \^axi_rdata_reg[31]_13\(22),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(22),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(22),
      O => \axi_rdata[22]_i_5_n_0\
    );
\axi_rdata[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(22),
      I1 => \^axi_rdata_reg[31]_1\(22),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(22),
      I4 => sel0(0),
      I5 => \^q\(22),
      O => \axi_rdata[22]_i_6_n_0\
    );
\axi_rdata[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(22),
      I1 => \^axi_rdata_reg[31]_5\(22),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(22),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(22),
      O => \axi_rdata[22]_i_7_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[23]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[23]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(23),
      I1 => \^axi_rdata_reg[31]_9\(23),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(23),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(23),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(23),
      I1 => \^axi_rdata_reg[31]_13\(23),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(23),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(23),
      O => \axi_rdata[23]_i_5_n_0\
    );
\axi_rdata[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(23),
      I1 => \^axi_rdata_reg[31]_1\(23),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(23),
      I4 => sel0(0),
      I5 => \^q\(23),
      O => \axi_rdata[23]_i_6_n_0\
    );
\axi_rdata[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(23),
      I1 => \^axi_rdata_reg[31]_5\(23),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(23),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(23),
      O => \axi_rdata[23]_i_7_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[24]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[24]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(24),
      I1 => \^axi_rdata_reg[31]_9\(24),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(24),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(24),
      I1 => \^axi_rdata_reg[31]_13\(24),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(24),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(24),
      O => \axi_rdata[24]_i_5_n_0\
    );
\axi_rdata[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(24),
      I1 => \^axi_rdata_reg[31]_1\(24),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(24),
      I4 => sel0(0),
      I5 => \^q\(24),
      O => \axi_rdata[24]_i_6_n_0\
    );
\axi_rdata[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(24),
      I1 => \^axi_rdata_reg[31]_5\(24),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(24),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(24),
      O => \axi_rdata[24]_i_7_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[25]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[25]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(25),
      I1 => \^axi_rdata_reg[31]_9\(25),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(25),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(25),
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(25),
      I1 => \^axi_rdata_reg[31]_13\(25),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(25),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(25),
      O => \axi_rdata[25]_i_5_n_0\
    );
\axi_rdata[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(25),
      I1 => \^axi_rdata_reg[31]_1\(25),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(25),
      I4 => sel0(0),
      I5 => \^q\(25),
      O => \axi_rdata[25]_i_6_n_0\
    );
\axi_rdata[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(25),
      I1 => \^axi_rdata_reg[31]_5\(25),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(25),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(25),
      O => \axi_rdata[25]_i_7_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[26]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[26]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(26),
      I1 => \^axi_rdata_reg[31]_9\(26),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(26),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(26),
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(26),
      I1 => \^axi_rdata_reg[31]_13\(26),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(26),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(26),
      O => \axi_rdata[26]_i_5_n_0\
    );
\axi_rdata[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(26),
      I1 => \^axi_rdata_reg[31]_1\(26),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(26),
      I4 => sel0(0),
      I5 => \^q\(26),
      O => \axi_rdata[26]_i_6_n_0\
    );
\axi_rdata[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(26),
      I1 => \^axi_rdata_reg[31]_5\(26),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(26),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(26),
      O => \axi_rdata[26]_i_7_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[27]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[27]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(27),
      I1 => \^axi_rdata_reg[31]_9\(27),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(27),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(27),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(27),
      I1 => \^axi_rdata_reg[31]_13\(27),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(27),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(27),
      O => \axi_rdata[27]_i_5_n_0\
    );
\axi_rdata[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(27),
      I1 => \^axi_rdata_reg[31]_1\(27),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(27),
      I4 => sel0(0),
      I5 => \^q\(27),
      O => \axi_rdata[27]_i_6_n_0\
    );
\axi_rdata[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(27),
      I1 => \^axi_rdata_reg[31]_5\(27),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(27),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(27),
      O => \axi_rdata[27]_i_7_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[28]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[28]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(28),
      I1 => \^axi_rdata_reg[31]_9\(28),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(28),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(28),
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(28),
      I1 => \^axi_rdata_reg[31]_13\(28),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(28),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(28),
      O => \axi_rdata[28]_i_5_n_0\
    );
\axi_rdata[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(28),
      I1 => \^axi_rdata_reg[31]_1\(28),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(28),
      I4 => sel0(0),
      I5 => \^q\(28),
      O => \axi_rdata[28]_i_6_n_0\
    );
\axi_rdata[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(28),
      I1 => \^axi_rdata_reg[31]_5\(28),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(28),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(28),
      O => \axi_rdata[28]_i_7_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[29]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[29]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(29),
      I1 => \^axi_rdata_reg[31]_9\(29),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(29),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(29),
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(29),
      I1 => \^axi_rdata_reg[31]_13\(29),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(29),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(29),
      O => \axi_rdata[29]_i_5_n_0\
    );
\axi_rdata[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(29),
      I1 => \^axi_rdata_reg[31]_1\(29),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(29),
      I4 => sel0(0),
      I5 => \^q\(29),
      O => \axi_rdata[29]_i_6_n_0\
    );
\axi_rdata[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(29),
      I1 => \^axi_rdata_reg[31]_5\(29),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(29),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(29),
      O => \axi_rdata[29]_i_7_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[2]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[2]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[2]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => BTNR,
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(2),
      I1 => \^axi_rdata_reg[31]_1\(2),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(2),
      I4 => sel0(0),
      I5 => \^q\(2),
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(2),
      I1 => \^axi_rdata_reg[31]_5\(2),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(2),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(2),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(2),
      I1 => \^axi_rdata_reg[31]_9\(2),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(2),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(2),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(2),
      I1 => \^axi_rdata_reg[31]_13\(2),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(2),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(2),
      O => \axi_rdata[2]_i_8_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[30]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[30]_i_3_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(30),
      I1 => \^axi_rdata_reg[31]_9\(30),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(30),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(30),
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(30),
      I1 => \^axi_rdata_reg[31]_13\(30),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(30),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(30),
      O => \axi_rdata[30]_i_5_n_0\
    );
\axi_rdata[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(30),
      I1 => \^axi_rdata_reg[31]_1\(30),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(30),
      I4 => sel0(0),
      I5 => \^q\(30),
      O => \axi_rdata[30]_i_6_n_0\
    );
\axi_rdata[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(30),
      I1 => \^axi_rdata_reg[31]_5\(30),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(30),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(30),
      O => \axi_rdata[30]_i_7_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata_reg[31]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata_reg[31]_i_4_n_0\,
      I4 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(31),
      I1 => \^axi_rdata_reg[31]_9\(31),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(31),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(31),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(31),
      I1 => \^axi_rdata_reg[31]_13\(31),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(31),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(31),
      O => \axi_rdata[31]_i_6_n_0\
    );
\axi_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(31),
      I1 => \^axi_rdata_reg[31]_1\(31),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(31),
      I4 => sel0(0),
      I5 => \^q\(31),
      O => \axi_rdata[31]_i_7_n_0\
    );
\axi_rdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(31),
      I1 => \^axi_rdata_reg[31]_5\(31),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(31),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(31),
      O => \axi_rdata[31]_i_8_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[3]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[3]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[3]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => BTNU,
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(3),
      I1 => \^axi_rdata_reg[31]_1\(3),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(3),
      I4 => sel0(0),
      I5 => \^q\(3),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(3),
      I1 => \^axi_rdata_reg[31]_5\(3),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(3),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(3),
      I1 => \^axi_rdata_reg[31]_9\(3),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(3),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(3),
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(3),
      I1 => \^axi_rdata_reg[31]_13\(3),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(3),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(3),
      O => \axi_rdata[3]_i_8_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[4]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[4]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[4]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => BTND,
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(4),
      I1 => \^axi_rdata_reg[31]_1\(4),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(4),
      I4 => sel0(0),
      I5 => \^q\(4),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(4),
      I1 => \^axi_rdata_reg[31]_5\(4),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(4),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(4),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(4),
      I1 => \^axi_rdata_reg[31]_9\(4),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(4),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(4),
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(4),
      I1 => \^axi_rdata_reg[31]_13\(4),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(4),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(4),
      O => \axi_rdata[4]_i_8_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[5]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[5]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[5]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(0),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(5),
      I1 => \^axi_rdata_reg[31]_1\(5),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(5),
      I4 => sel0(0),
      I5 => \^q\(5),
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(5),
      I1 => \^axi_rdata_reg[31]_5\(5),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(5),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(5),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(5),
      I1 => \^axi_rdata_reg[31]_9\(5),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(5),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(5),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(5),
      I1 => \^axi_rdata_reg[31]_13\(5),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(5),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(5),
      O => \axi_rdata[5]_i_8_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[6]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[6]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[6]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(6),
      I1 => \^axi_rdata_reg[31]_1\(6),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(6),
      I4 => sel0(0),
      I5 => \^q\(6),
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(6),
      I1 => \^axi_rdata_reg[31]_5\(6),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(6),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(6),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(6),
      I1 => \^axi_rdata_reg[31]_9\(6),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(6),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(6),
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(6),
      I1 => \^axi_rdata_reg[31]_13\(6),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(6),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(6),
      O => \axi_rdata[6]_i_8_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[7]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[7]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[7]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(2),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(7),
      I1 => \^axi_rdata_reg[31]_1\(7),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(7),
      I4 => sel0(0),
      I5 => \^q\(7),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(7),
      I1 => \^axi_rdata_reg[31]_5\(7),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(7),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(7),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(7),
      I1 => \^axi_rdata_reg[31]_9\(7),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(7),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(7),
      O => \axi_rdata[7]_i_7_n_0\
    );
\axi_rdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(7),
      I1 => \^axi_rdata_reg[31]_13\(7),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(7),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(7),
      O => \axi_rdata[7]_i_8_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[8]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[8]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[8]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(3),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(8),
      I1 => \^axi_rdata_reg[31]_1\(8),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(8),
      I4 => sel0(0),
      I5 => \^q\(8),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(8),
      I1 => \^axi_rdata_reg[31]_5\(8),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(8),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(8),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(8),
      I1 => \^axi_rdata_reg[31]_9\(8),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(8),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(8),
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(8),
      I1 => \^axi_rdata_reg[31]_13\(8),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(8),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(8),
      O => \axi_rdata[8]_i_8_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[9]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[9]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata[9]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[7]\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => SW(4),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_2\(9),
      I1 => \^axi_rdata_reg[31]_1\(9),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_0\(9),
      I4 => sel0(0),
      I5 => \^q\(9),
      O => \axi_rdata[9]_i_5_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_6\(9),
      I1 => \^axi_rdata_reg[31]_5\(9),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_4\(9),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_3\(9),
      O => \axi_rdata[9]_i_6_n_0\
    );
\axi_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_10\(9),
      I1 => \^axi_rdata_reg[31]_9\(9),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_8\(9),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_7\(9),
      O => \axi_rdata[9]_i_7_n_0\
    );
\axi_rdata[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_14\(9),
      I1 => \^axi_rdata_reg[31]_13\(9),
      I2 => sel0(1),
      I3 => \^axi_rdata_reg[31]_12\(9),
      I4 => sel0(0),
      I5 => \^axi_rdata_reg[31]_11\(9),
      O => \axi_rdata[9]_i_8_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => s00_axi_rdata(0),
      R => SR(0)
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_5_n_0\,
      I1 => \axi_rdata[0]_i_6_n_0\,
      O => \axi_rdata_reg[0]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_7_n_0\,
      I1 => \axi_rdata[0]_i_8_n_0\,
      O => \axi_rdata_reg[0]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s00_axi_rdata(10),
      R => SR(0)
    );
\axi_rdata_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_5_n_0\,
      I1 => \axi_rdata[10]_i_6_n_0\,
      O => \axi_rdata_reg[10]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_7_n_0\,
      I1 => \axi_rdata[10]_i_8_n_0\,
      O => \axi_rdata_reg[10]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s00_axi_rdata(11),
      R => SR(0)
    );
\axi_rdata_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_5_n_0\,
      I1 => \axi_rdata[11]_i_6_n_0\,
      O => \axi_rdata_reg[11]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_7_n_0\,
      I1 => \axi_rdata[11]_i_8_n_0\,
      O => \axi_rdata_reg[11]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s00_axi_rdata(12),
      R => SR(0)
    );
\axi_rdata_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_5_n_0\,
      I1 => \axi_rdata[12]_i_6_n_0\,
      O => \axi_rdata_reg[12]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_7_n_0\,
      I1 => \axi_rdata[12]_i_8_n_0\,
      O => \axi_rdata_reg[12]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => s00_axi_rdata(13),
      R => SR(0)
    );
\axi_rdata_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_4_n_0\,
      I1 => \axi_rdata[13]_i_5_n_0\,
      O => \axi_rdata_reg[13]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_6_n_0\,
      I1 => \axi_rdata[13]_i_7_n_0\,
      O => \axi_rdata_reg[13]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => s00_axi_rdata(14),
      R => SR(0)
    );
\axi_rdata_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_4_n_0\,
      I1 => \axi_rdata[14]_i_5_n_0\,
      O => \axi_rdata_reg[14]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_6_n_0\,
      I1 => \axi_rdata[14]_i_7_n_0\,
      O => \axi_rdata_reg[14]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => s00_axi_rdata(15),
      R => SR(0)
    );
\axi_rdata_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[15]_i_5_n_0\,
      O => \axi_rdata_reg[15]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[15]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_6_n_0\,
      I1 => \axi_rdata[15]_i_7_n_0\,
      O => \axi_rdata_reg[15]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => s00_axi_rdata(16),
      R => SR(0)
    );
\axi_rdata_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_4_n_0\,
      I1 => \axi_rdata[16]_i_5_n_0\,
      O => \axi_rdata_reg[16]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_6_n_0\,
      I1 => \axi_rdata[16]_i_7_n_0\,
      O => \axi_rdata_reg[16]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => s00_axi_rdata(17),
      R => SR(0)
    );
\axi_rdata_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_4_n_0\,
      I1 => \axi_rdata[17]_i_5_n_0\,
      O => \axi_rdata_reg[17]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[17]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_6_n_0\,
      I1 => \axi_rdata[17]_i_7_n_0\,
      O => \axi_rdata_reg[17]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => s00_axi_rdata(18),
      R => SR(0)
    );
\axi_rdata_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_4_n_0\,
      I1 => \axi_rdata[18]_i_5_n_0\,
      O => \axi_rdata_reg[18]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_6_n_0\,
      I1 => \axi_rdata[18]_i_7_n_0\,
      O => \axi_rdata_reg[18]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => s00_axi_rdata(19),
      R => SR(0)
    );
\axi_rdata_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_4_n_0\,
      I1 => \axi_rdata[19]_i_5_n_0\,
      O => \axi_rdata_reg[19]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[19]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_6_n_0\,
      I1 => \axi_rdata[19]_i_7_n_0\,
      O => \axi_rdata_reg[19]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => s00_axi_rdata(1),
      R => SR(0)
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_5_n_0\,
      I1 => \axi_rdata[1]_i_6_n_0\,
      O => \axi_rdata_reg[1]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_7_n_0\,
      I1 => \axi_rdata[1]_i_8_n_0\,
      O => \axi_rdata_reg[1]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => s00_axi_rdata(20),
      R => SR(0)
    );
\axi_rdata_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_4_n_0\,
      I1 => \axi_rdata[20]_i_5_n_0\,
      O => \axi_rdata_reg[20]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[20]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_6_n_0\,
      I1 => \axi_rdata[20]_i_7_n_0\,
      O => \axi_rdata_reg[20]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => s00_axi_rdata(21),
      R => SR(0)
    );
\axi_rdata_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_4_n_0\,
      I1 => \axi_rdata[21]_i_5_n_0\,
      O => \axi_rdata_reg[21]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[21]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_6_n_0\,
      I1 => \axi_rdata[21]_i_7_n_0\,
      O => \axi_rdata_reg[21]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => s00_axi_rdata(22),
      R => SR(0)
    );
\axi_rdata_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_4_n_0\,
      I1 => \axi_rdata[22]_i_5_n_0\,
      O => \axi_rdata_reg[22]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[22]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_6_n_0\,
      I1 => \axi_rdata[22]_i_7_n_0\,
      O => \axi_rdata_reg[22]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => s00_axi_rdata(23),
      R => SR(0)
    );
\axi_rdata_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_4_n_0\,
      I1 => \axi_rdata[23]_i_5_n_0\,
      O => \axi_rdata_reg[23]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[23]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_6_n_0\,
      I1 => \axi_rdata[23]_i_7_n_0\,
      O => \axi_rdata_reg[23]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => s00_axi_rdata(24),
      R => SR(0)
    );
\axi_rdata_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_4_n_0\,
      I1 => \axi_rdata[24]_i_5_n_0\,
      O => \axi_rdata_reg[24]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[24]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_6_n_0\,
      I1 => \axi_rdata[24]_i_7_n_0\,
      O => \axi_rdata_reg[24]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => s00_axi_rdata(25),
      R => SR(0)
    );
\axi_rdata_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_4_n_0\,
      I1 => \axi_rdata[25]_i_5_n_0\,
      O => \axi_rdata_reg[25]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[25]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_6_n_0\,
      I1 => \axi_rdata[25]_i_7_n_0\,
      O => \axi_rdata_reg[25]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => s00_axi_rdata(26),
      R => SR(0)
    );
\axi_rdata_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_4_n_0\,
      I1 => \axi_rdata[26]_i_5_n_0\,
      O => \axi_rdata_reg[26]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[26]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_6_n_0\,
      I1 => \axi_rdata[26]_i_7_n_0\,
      O => \axi_rdata_reg[26]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => s00_axi_rdata(27),
      R => SR(0)
    );
\axi_rdata_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_4_n_0\,
      I1 => \axi_rdata[27]_i_5_n_0\,
      O => \axi_rdata_reg[27]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[27]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_6_n_0\,
      I1 => \axi_rdata[27]_i_7_n_0\,
      O => \axi_rdata_reg[27]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => s00_axi_rdata(28),
      R => SR(0)
    );
\axi_rdata_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_4_n_0\,
      I1 => \axi_rdata[28]_i_5_n_0\,
      O => \axi_rdata_reg[28]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[28]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_6_n_0\,
      I1 => \axi_rdata[28]_i_7_n_0\,
      O => \axi_rdata_reg[28]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => s00_axi_rdata(29),
      R => SR(0)
    );
\axi_rdata_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_4_n_0\,
      I1 => \axi_rdata[29]_i_5_n_0\,
      O => \axi_rdata_reg[29]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[29]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_6_n_0\,
      I1 => \axi_rdata[29]_i_7_n_0\,
      O => \axi_rdata_reg[29]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => s00_axi_rdata(2),
      R => SR(0)
    );
\axi_rdata_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_5_n_0\,
      I1 => \axi_rdata[2]_i_6_n_0\,
      O => \axi_rdata_reg[2]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_7_n_0\,
      I1 => \axi_rdata[2]_i_8_n_0\,
      O => \axi_rdata_reg[2]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => s00_axi_rdata(30),
      R => SR(0)
    );
\axi_rdata_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_4_n_0\,
      I1 => \axi_rdata[30]_i_5_n_0\,
      O => \axi_rdata_reg[30]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[30]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_6_n_0\,
      I1 => \axi_rdata[30]_i_7_n_0\,
      O => \axi_rdata_reg[30]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => s00_axi_rdata(31),
      R => SR(0)
    );
\axi_rdata_reg[31]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_5_n_0\,
      I1 => \axi_rdata[31]_i_6_n_0\,
      O => \axi_rdata_reg[31]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[31]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_7_n_0\,
      I1 => \axi_rdata[31]_i_8_n_0\,
      O => \axi_rdata_reg[31]_i_4_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => s00_axi_rdata(3),
      R => SR(0)
    );
\axi_rdata_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_5_n_0\,
      I1 => \axi_rdata[3]_i_6_n_0\,
      O => \axi_rdata_reg[3]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_7_n_0\,
      I1 => \axi_rdata[3]_i_8_n_0\,
      O => \axi_rdata_reg[3]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => s00_axi_rdata(4),
      R => SR(0)
    );
\axi_rdata_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_5_n_0\,
      I1 => \axi_rdata[4]_i_6_n_0\,
      O => \axi_rdata_reg[4]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_7_n_0\,
      I1 => \axi_rdata[4]_i_8_n_0\,
      O => \axi_rdata_reg[4]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => s00_axi_rdata(5),
      R => SR(0)
    );
\axi_rdata_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_5_n_0\,
      I1 => \axi_rdata[5]_i_6_n_0\,
      O => \axi_rdata_reg[5]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_7_n_0\,
      I1 => \axi_rdata[5]_i_8_n_0\,
      O => \axi_rdata_reg[5]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => s00_axi_rdata(6),
      R => SR(0)
    );
\axi_rdata_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_5_n_0\,
      I1 => \axi_rdata[6]_i_6_n_0\,
      O => \axi_rdata_reg[6]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_7_n_0\,
      I1 => \axi_rdata[6]_i_8_n_0\,
      O => \axi_rdata_reg[6]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => s00_axi_rdata(7),
      R => SR(0)
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_5_n_0\,
      I1 => \axi_rdata[7]_i_6_n_0\,
      O => \axi_rdata_reg[7]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_7_n_0\,
      I1 => \axi_rdata[7]_i_8_n_0\,
      O => \axi_rdata_reg[7]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => s00_axi_rdata(8),
      R => SR(0)
    );
\axi_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_5_n_0\,
      I1 => \axi_rdata[8]_i_6_n_0\,
      O => \axi_rdata_reg[8]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_7_n_0\,
      I1 => \axi_rdata[8]_i_8_n_0\,
      O => \axi_rdata_reg[8]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s00_axi_rdata(9),
      R => SR(0)
    );
\axi_rdata_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_5_n_0\,
      I1 => \axi_rdata[9]_i_6_n_0\,
      O => \axi_rdata_reg[9]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_7_n_0\,
      I1 => \axi_rdata[9]_i_8_n_0\,
      O => \axi_rdata_reg[9]_i_3_n_0\,
      S => sel0(2)
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_0,
      Q => \^s00_axi_rvalid\,
      R => SR(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => SR(0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => \axi_awaddr_reg_n_0_[6]\,
      I3 => \slv_reg0[31]_i_3_n_0\,
      I4 => p_0_in(3),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg0[31]_i_3_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => SR(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => SR(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => SR(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => SR(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => SR(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => SR(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => SR(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => SR(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => SR(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => SR(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \^q\(20),
      R => SR(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \^q\(21),
      R => SR(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \^q\(22),
      R => SR(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \^q\(23),
      R => SR(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \^q\(24),
      R => SR(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \^q\(25),
      R => SR(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \^q\(26),
      R => SR(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \^q\(27),
      R => SR(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \^q\(28),
      R => SR(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \^q\(29),
      R => SR(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => SR(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \^q\(30),
      R => SR(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \^q\(31),
      R => SR(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => SR(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => SR(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => SR(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => SR(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => SR(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => SR(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => SR(0)
    );
\slv_reg10[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg10[15]_i_1_n_0\
    );
\slv_reg10[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg10[23]_i_1_n_0\
    );
\slv_reg10[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg10[31]_i_1_n_0\
    );
\slv_reg10[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg10[7]_i_1_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_9\(0),
      R => SR(0)
    );
\slv_reg10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_9\(10),
      R => SR(0)
    );
\slv_reg10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_9\(11),
      R => SR(0)
    );
\slv_reg10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_9\(12),
      R => SR(0)
    );
\slv_reg10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_9\(13),
      R => SR(0)
    );
\slv_reg10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_9\(14),
      R => SR(0)
    );
\slv_reg10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_9\(15),
      R => SR(0)
    );
\slv_reg10_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_9\(16),
      R => SR(0)
    );
\slv_reg10_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_9\(17),
      R => SR(0)
    );
\slv_reg10_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_9\(18),
      R => SR(0)
    );
\slv_reg10_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_9\(19),
      R => SR(0)
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_9\(1),
      R => SR(0)
    );
\slv_reg10_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_9\(20),
      R => SR(0)
    );
\slv_reg10_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_9\(21),
      R => SR(0)
    );
\slv_reg10_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_9\(22),
      R => SR(0)
    );
\slv_reg10_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_9\(23),
      R => SR(0)
    );
\slv_reg10_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_9\(24),
      R => SR(0)
    );
\slv_reg10_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_9\(25),
      R => SR(0)
    );
\slv_reg10_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_9\(26),
      R => SR(0)
    );
\slv_reg10_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_9\(27),
      R => SR(0)
    );
\slv_reg10_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_9\(28),
      R => SR(0)
    );
\slv_reg10_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_9\(29),
      R => SR(0)
    );
\slv_reg10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_9\(2),
      R => SR(0)
    );
\slv_reg10_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_9\(30),
      R => SR(0)
    );
\slv_reg10_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_9\(31),
      R => SR(0)
    );
\slv_reg10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_9\(3),
      R => SR(0)
    );
\slv_reg10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_9\(4),
      R => SR(0)
    );
\slv_reg10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_9\(5),
      R => SR(0)
    );
\slv_reg10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_9\(6),
      R => SR(0)
    );
\slv_reg10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_9\(7),
      R => SR(0)
    );
\slv_reg10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_9\(8),
      R => SR(0)
    );
\slv_reg10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_9\(9),
      R => SR(0)
    );
\slv_reg11[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg11[15]_i_1_n_0\
    );
\slv_reg11[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg11[23]_i_1_n_0\
    );
\slv_reg11[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg11[31]_i_1_n_0\
    );
\slv_reg11[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg11[7]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_10\(0),
      R => SR(0)
    );
\slv_reg11_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_10\(10),
      R => SR(0)
    );
\slv_reg11_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_10\(11),
      R => SR(0)
    );
\slv_reg11_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_10\(12),
      R => SR(0)
    );
\slv_reg11_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_10\(13),
      R => SR(0)
    );
\slv_reg11_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_10\(14),
      R => SR(0)
    );
\slv_reg11_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_10\(15),
      R => SR(0)
    );
\slv_reg11_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_10\(16),
      R => SR(0)
    );
\slv_reg11_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_10\(17),
      R => SR(0)
    );
\slv_reg11_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_10\(18),
      R => SR(0)
    );
\slv_reg11_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_10\(19),
      R => SR(0)
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_10\(1),
      R => SR(0)
    );
\slv_reg11_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_10\(20),
      R => SR(0)
    );
\slv_reg11_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_10\(21),
      R => SR(0)
    );
\slv_reg11_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_10\(22),
      R => SR(0)
    );
\slv_reg11_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_10\(23),
      R => SR(0)
    );
\slv_reg11_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_10\(24),
      R => SR(0)
    );
\slv_reg11_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_10\(25),
      R => SR(0)
    );
\slv_reg11_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_10\(26),
      R => SR(0)
    );
\slv_reg11_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_10\(27),
      R => SR(0)
    );
\slv_reg11_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_10\(28),
      R => SR(0)
    );
\slv_reg11_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_10\(29),
      R => SR(0)
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_10\(2),
      R => SR(0)
    );
\slv_reg11_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_10\(30),
      R => SR(0)
    );
\slv_reg11_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_10\(31),
      R => SR(0)
    );
\slv_reg11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_10\(3),
      R => SR(0)
    );
\slv_reg11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_10\(4),
      R => SR(0)
    );
\slv_reg11_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_10\(5),
      R => SR(0)
    );
\slv_reg11_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_10\(6),
      R => SR(0)
    );
\slv_reg11_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_10\(7),
      R => SR(0)
    );
\slv_reg11_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_10\(8),
      R => SR(0)
    );
\slv_reg11_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_10\(9),
      R => SR(0)
    );
\slv_reg12[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg12[15]_i_1_n_0\
    );
\slv_reg12[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg12[23]_i_1_n_0\
    );
\slv_reg12[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg12[31]_i_1_n_0\
    );
\slv_reg12[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg12[7]_i_1_n_0\
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_11\(0),
      R => SR(0)
    );
\slv_reg12_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_11\(10),
      R => SR(0)
    );
\slv_reg12_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_11\(11),
      R => SR(0)
    );
\slv_reg12_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_11\(12),
      R => SR(0)
    );
\slv_reg12_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_11\(13),
      R => SR(0)
    );
\slv_reg12_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_11\(14),
      R => SR(0)
    );
\slv_reg12_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_11\(15),
      R => SR(0)
    );
\slv_reg12_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_11\(16),
      R => SR(0)
    );
\slv_reg12_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_11\(17),
      R => SR(0)
    );
\slv_reg12_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_11\(18),
      R => SR(0)
    );
\slv_reg12_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_11\(19),
      R => SR(0)
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_11\(1),
      R => SR(0)
    );
\slv_reg12_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_11\(20),
      R => SR(0)
    );
\slv_reg12_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_11\(21),
      R => SR(0)
    );
\slv_reg12_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_11\(22),
      R => SR(0)
    );
\slv_reg12_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_11\(23),
      R => SR(0)
    );
\slv_reg12_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_11\(24),
      R => SR(0)
    );
\slv_reg12_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_11\(25),
      R => SR(0)
    );
\slv_reg12_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_11\(26),
      R => SR(0)
    );
\slv_reg12_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_11\(27),
      R => SR(0)
    );
\slv_reg12_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_11\(28),
      R => SR(0)
    );
\slv_reg12_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_11\(29),
      R => SR(0)
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_11\(2),
      R => SR(0)
    );
\slv_reg12_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_11\(30),
      R => SR(0)
    );
\slv_reg12_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_11\(31),
      R => SR(0)
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_11\(3),
      R => SR(0)
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_11\(4),
      R => SR(0)
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_11\(5),
      R => SR(0)
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_11\(6),
      R => SR(0)
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_11\(7),
      R => SR(0)
    );
\slv_reg12_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_11\(8),
      R => SR(0)
    );
\slv_reg12_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_11\(9),
      R => SR(0)
    );
\slv_reg13[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg13[15]_i_1_n_0\
    );
\slv_reg13[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg13[23]_i_1_n_0\
    );
\slv_reg13[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg13[31]_i_1_n_0\
    );
\slv_reg13[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg13[7]_i_1_n_0\
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_12\(0),
      R => SR(0)
    );
\slv_reg13_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_12\(10),
      R => SR(0)
    );
\slv_reg13_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_12\(11),
      R => SR(0)
    );
\slv_reg13_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_12\(12),
      R => SR(0)
    );
\slv_reg13_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_12\(13),
      R => SR(0)
    );
\slv_reg13_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_12\(14),
      R => SR(0)
    );
\slv_reg13_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_12\(15),
      R => SR(0)
    );
\slv_reg13_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_12\(16),
      R => SR(0)
    );
\slv_reg13_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_12\(17),
      R => SR(0)
    );
\slv_reg13_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_12\(18),
      R => SR(0)
    );
\slv_reg13_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_12\(19),
      R => SR(0)
    );
\slv_reg13_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_12\(1),
      R => SR(0)
    );
\slv_reg13_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_12\(20),
      R => SR(0)
    );
\slv_reg13_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_12\(21),
      R => SR(0)
    );
\slv_reg13_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_12\(22),
      R => SR(0)
    );
\slv_reg13_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_12\(23),
      R => SR(0)
    );
\slv_reg13_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_12\(24),
      R => SR(0)
    );
\slv_reg13_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_12\(25),
      R => SR(0)
    );
\slv_reg13_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_12\(26),
      R => SR(0)
    );
\slv_reg13_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_12\(27),
      R => SR(0)
    );
\slv_reg13_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_12\(28),
      R => SR(0)
    );
\slv_reg13_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_12\(29),
      R => SR(0)
    );
\slv_reg13_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_12\(2),
      R => SR(0)
    );
\slv_reg13_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_12\(30),
      R => SR(0)
    );
\slv_reg13_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_12\(31),
      R => SR(0)
    );
\slv_reg13_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_12\(3),
      R => SR(0)
    );
\slv_reg13_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_12\(4),
      R => SR(0)
    );
\slv_reg13_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_12\(5),
      R => SR(0)
    );
\slv_reg13_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_12\(6),
      R => SR(0)
    );
\slv_reg13_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_12\(7),
      R => SR(0)
    );
\slv_reg13_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_12\(8),
      R => SR(0)
    );
\slv_reg13_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_12\(9),
      R => SR(0)
    );
\slv_reg14[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg14[15]_i_1_n_0\
    );
\slv_reg14[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg14[23]_i_1_n_0\
    );
\slv_reg14[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg14[31]_i_1_n_0\
    );
\slv_reg14[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg14[7]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_13\(0),
      R => SR(0)
    );
\slv_reg14_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_13\(10),
      R => SR(0)
    );
\slv_reg14_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_13\(11),
      R => SR(0)
    );
\slv_reg14_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_13\(12),
      R => SR(0)
    );
\slv_reg14_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_13\(13),
      R => SR(0)
    );
\slv_reg14_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_13\(14),
      R => SR(0)
    );
\slv_reg14_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_13\(15),
      R => SR(0)
    );
\slv_reg14_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_13\(16),
      R => SR(0)
    );
\slv_reg14_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_13\(17),
      R => SR(0)
    );
\slv_reg14_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_13\(18),
      R => SR(0)
    );
\slv_reg14_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_13\(19),
      R => SR(0)
    );
\slv_reg14_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_13\(1),
      R => SR(0)
    );
\slv_reg14_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_13\(20),
      R => SR(0)
    );
\slv_reg14_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_13\(21),
      R => SR(0)
    );
\slv_reg14_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_13\(22),
      R => SR(0)
    );
\slv_reg14_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_13\(23),
      R => SR(0)
    );
\slv_reg14_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_13\(24),
      R => SR(0)
    );
\slv_reg14_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_13\(25),
      R => SR(0)
    );
\slv_reg14_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_13\(26),
      R => SR(0)
    );
\slv_reg14_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_13\(27),
      R => SR(0)
    );
\slv_reg14_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_13\(28),
      R => SR(0)
    );
\slv_reg14_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_13\(29),
      R => SR(0)
    );
\slv_reg14_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_13\(2),
      R => SR(0)
    );
\slv_reg14_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_13\(30),
      R => SR(0)
    );
\slv_reg14_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_13\(31),
      R => SR(0)
    );
\slv_reg14_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_13\(3),
      R => SR(0)
    );
\slv_reg14_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_13\(4),
      R => SR(0)
    );
\slv_reg14_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_13\(5),
      R => SR(0)
    );
\slv_reg14_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_13\(6),
      R => SR(0)
    );
\slv_reg14_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_13\(7),
      R => SR(0)
    );
\slv_reg14_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_13\(8),
      R => SR(0)
    );
\slv_reg14_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_13\(9),
      R => SR(0)
    );
\slv_reg15[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg15[15]_i_1_n_0\
    );
\slv_reg15[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg15[23]_i_1_n_0\
    );
\slv_reg15[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg15[31]_i_1_n_0\
    );
\slv_reg15[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg15[7]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_14\(0),
      R => SR(0)
    );
\slv_reg15_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_14\(10),
      R => SR(0)
    );
\slv_reg15_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_14\(11),
      R => SR(0)
    );
\slv_reg15_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_14\(12),
      R => SR(0)
    );
\slv_reg15_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_14\(13),
      R => SR(0)
    );
\slv_reg15_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_14\(14),
      R => SR(0)
    );
\slv_reg15_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_14\(15),
      R => SR(0)
    );
\slv_reg15_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_14\(16),
      R => SR(0)
    );
\slv_reg15_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_14\(17),
      R => SR(0)
    );
\slv_reg15_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_14\(18),
      R => SR(0)
    );
\slv_reg15_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_14\(19),
      R => SR(0)
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_14\(1),
      R => SR(0)
    );
\slv_reg15_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_14\(20),
      R => SR(0)
    );
\slv_reg15_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_14\(21),
      R => SR(0)
    );
\slv_reg15_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_14\(22),
      R => SR(0)
    );
\slv_reg15_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_14\(23),
      R => SR(0)
    );
\slv_reg15_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_14\(24),
      R => SR(0)
    );
\slv_reg15_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_14\(25),
      R => SR(0)
    );
\slv_reg15_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_14\(26),
      R => SR(0)
    );
\slv_reg15_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_14\(27),
      R => SR(0)
    );
\slv_reg15_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_14\(28),
      R => SR(0)
    );
\slv_reg15_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_14\(29),
      R => SR(0)
    );
\slv_reg15_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_14\(2),
      R => SR(0)
    );
\slv_reg15_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_14\(30),
      R => SR(0)
    );
\slv_reg15_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_14\(31),
      R => SR(0)
    );
\slv_reg15_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_14\(3),
      R => SR(0)
    );
\slv_reg15_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_14\(4),
      R => SR(0)
    );
\slv_reg15_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_14\(5),
      R => SR(0)
    );
\slv_reg15_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_14\(6),
      R => SR(0)
    );
\slv_reg15_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_14\(7),
      R => SR(0)
    );
\slv_reg15_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_14\(8),
      R => SR(0)
    );
\slv_reg15_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_14\(9),
      R => SR(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => \axi_awaddr_reg_n_0_[6]\,
      I3 => \slv_reg0[31]_i_3_n_0\,
      I4 => p_0_in(3),
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_0\(0),
      R => SR(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_0\(10),
      R => SR(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_0\(11),
      R => SR(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_0\(12),
      R => SR(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_0\(13),
      R => SR(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_0\(14),
      R => SR(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_0\(15),
      R => SR(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_0\(16),
      R => SR(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_0\(17),
      R => SR(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_0\(18),
      R => SR(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_0\(19),
      R => SR(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_0\(1),
      R => SR(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_0\(20),
      R => SR(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_0\(21),
      R => SR(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_0\(22),
      R => SR(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_0\(23),
      R => SR(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_0\(24),
      R => SR(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_0\(25),
      R => SR(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_0\(26),
      R => SR(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_0\(27),
      R => SR(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_0\(28),
      R => SR(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_0\(29),
      R => SR(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_0\(2),
      R => SR(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_0\(30),
      R => SR(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_0\(31),
      R => SR(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_0\(3),
      R => SR(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_0\(4),
      R => SR(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_0\(5),
      R => SR(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_0\(6),
      R => SR(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_0\(7),
      R => SR(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_0\(8),
      R => SR(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_0\(9),
      R => SR(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_1\(0),
      R => SR(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_1\(10),
      R => SR(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_1\(11),
      R => SR(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_1\(12),
      R => SR(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_1\(13),
      R => SR(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_1\(14),
      R => SR(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_1\(15),
      R => SR(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_1\(16),
      R => SR(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_1\(17),
      R => SR(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_1\(18),
      R => SR(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_1\(19),
      R => SR(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_1\(1),
      R => SR(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_1\(20),
      R => SR(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_1\(21),
      R => SR(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_1\(22),
      R => SR(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_1\(23),
      R => SR(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_1\(24),
      R => SR(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_1\(25),
      R => SR(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_1\(26),
      R => SR(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_1\(27),
      R => SR(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_1\(28),
      R => SR(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_1\(29),
      R => SR(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_1\(2),
      R => SR(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_1\(30),
      R => SR(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_1\(31),
      R => SR(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_1\(3),
      R => SR(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_1\(4),
      R => SR(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_1\(5),
      R => SR(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_1\(6),
      R => SR(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_1\(7),
      R => SR(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_1\(8),
      R => SR(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_1\(9),
      R => SR(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_2\(0),
      R => SR(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_2\(10),
      R => SR(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_2\(11),
      R => SR(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_2\(12),
      R => SR(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_2\(13),
      R => SR(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_2\(14),
      R => SR(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_2\(15),
      R => SR(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_2\(16),
      R => SR(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_2\(17),
      R => SR(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_2\(18),
      R => SR(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_2\(19),
      R => SR(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_2\(1),
      R => SR(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_2\(20),
      R => SR(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_2\(21),
      R => SR(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_2\(22),
      R => SR(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_2\(23),
      R => SR(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_2\(24),
      R => SR(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_2\(25),
      R => SR(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_2\(26),
      R => SR(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_2\(27),
      R => SR(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_2\(28),
      R => SR(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_2\(29),
      R => SR(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_2\(2),
      R => SR(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_2\(30),
      R => SR(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_2\(31),
      R => SR(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_2\(3),
      R => SR(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_2\(4),
      R => SR(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_2\(5),
      R => SR(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_2\(6),
      R => SR(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_2\(7),
      R => SR(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_2\(8),
      R => SR(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_2\(9),
      R => SR(0)
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_3\(0),
      R => SR(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_3\(10),
      R => SR(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_3\(11),
      R => SR(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_3\(12),
      R => SR(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_3\(13),
      R => SR(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_3\(14),
      R => SR(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_3\(15),
      R => SR(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_3\(16),
      R => SR(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_3\(17),
      R => SR(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_3\(18),
      R => SR(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_3\(19),
      R => SR(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_3\(1),
      R => SR(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_3\(20),
      R => SR(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_3\(21),
      R => SR(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_3\(22),
      R => SR(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_3\(23),
      R => SR(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_3\(24),
      R => SR(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_3\(25),
      R => SR(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_3\(26),
      R => SR(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_3\(27),
      R => SR(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_3\(28),
      R => SR(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_3\(29),
      R => SR(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_3\(2),
      R => SR(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_3\(30),
      R => SR(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_3\(31),
      R => SR(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_3\(3),
      R => SR(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_3\(4),
      R => SR(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_3\(5),
      R => SR(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_3\(6),
      R => SR(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_3\(7),
      R => SR(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_3\(8),
      R => SR(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_3\(9),
      R => SR(0)
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_4\(0),
      R => SR(0)
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_4\(10),
      R => SR(0)
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_4\(11),
      R => SR(0)
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_4\(12),
      R => SR(0)
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_4\(13),
      R => SR(0)
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_4\(14),
      R => SR(0)
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_4\(15),
      R => SR(0)
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_4\(16),
      R => SR(0)
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_4\(17),
      R => SR(0)
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_4\(18),
      R => SR(0)
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_4\(19),
      R => SR(0)
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_4\(1),
      R => SR(0)
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_4\(20),
      R => SR(0)
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_4\(21),
      R => SR(0)
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_4\(22),
      R => SR(0)
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_4\(23),
      R => SR(0)
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_4\(24),
      R => SR(0)
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_4\(25),
      R => SR(0)
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_4\(26),
      R => SR(0)
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_4\(27),
      R => SR(0)
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_4\(28),
      R => SR(0)
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_4\(29),
      R => SR(0)
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_4\(2),
      R => SR(0)
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_4\(30),
      R => SR(0)
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_4\(31),
      R => SR(0)
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_4\(3),
      R => SR(0)
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_4\(4),
      R => SR(0)
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_4\(5),
      R => SR(0)
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_4\(6),
      R => SR(0)
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_4\(7),
      R => SR(0)
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_4\(8),
      R => SR(0)
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_4\(9),
      R => SR(0)
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_5\(0),
      R => SR(0)
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_5\(10),
      R => SR(0)
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_5\(11),
      R => SR(0)
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_5\(12),
      R => SR(0)
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_5\(13),
      R => SR(0)
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_5\(14),
      R => SR(0)
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_5\(15),
      R => SR(0)
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_5\(16),
      R => SR(0)
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_5\(17),
      R => SR(0)
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_5\(18),
      R => SR(0)
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_5\(19),
      R => SR(0)
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_5\(1),
      R => SR(0)
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_5\(20),
      R => SR(0)
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_5\(21),
      R => SR(0)
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_5\(22),
      R => SR(0)
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_5\(23),
      R => SR(0)
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_5\(24),
      R => SR(0)
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_5\(25),
      R => SR(0)
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_5\(26),
      R => SR(0)
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_5\(27),
      R => SR(0)
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_5\(28),
      R => SR(0)
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_5\(29),
      R => SR(0)
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_5\(2),
      R => SR(0)
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_5\(30),
      R => SR(0)
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_5\(31),
      R => SR(0)
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_5\(3),
      R => SR(0)
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_5\(4),
      R => SR(0)
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_5\(5),
      R => SR(0)
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_5\(6),
      R => SR(0)
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_5\(7),
      R => SR(0)
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_5\(8),
      R => SR(0)
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_5\(9),
      R => SR(0)
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_6\(0),
      R => SR(0)
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_6\(10),
      R => SR(0)
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_6\(11),
      R => SR(0)
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_6\(12),
      R => SR(0)
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_6\(13),
      R => SR(0)
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_6\(14),
      R => SR(0)
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_6\(15),
      R => SR(0)
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_6\(16),
      R => SR(0)
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_6\(17),
      R => SR(0)
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_6\(18),
      R => SR(0)
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_6\(19),
      R => SR(0)
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_6\(1),
      R => SR(0)
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_6\(20),
      R => SR(0)
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_6\(21),
      R => SR(0)
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_6\(22),
      R => SR(0)
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_6\(23),
      R => SR(0)
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_6\(24),
      R => SR(0)
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_6\(25),
      R => SR(0)
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_6\(26),
      R => SR(0)
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_6\(27),
      R => SR(0)
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_6\(28),
      R => SR(0)
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_6\(29),
      R => SR(0)
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_6\(2),
      R => SR(0)
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_6\(30),
      R => SR(0)
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_6\(31),
      R => SR(0)
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_6\(3),
      R => SR(0)
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_6\(4),
      R => SR(0)
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_6\(5),
      R => SR(0)
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_6\(6),
      R => SR(0)
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_6\(7),
      R => SR(0)
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_6\(8),
      R => SR(0)
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_6\(9),
      R => SR(0)
    );
\slv_reg8[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg8[15]_i_1_n_0\
    );
\slv_reg8[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg8[23]_i_1_n_0\
    );
\slv_reg8[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg8[31]_i_1_n_0\
    );
\slv_reg8[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => \axi_awaddr_reg_n_0_[6]\,
      I3 => \slv_reg0[31]_i_3_n_0\,
      I4 => p_0_in(3),
      O => \slv_reg8[31]_i_2_n_0\
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg8[31]_i_2_n_0\,
      O => \slv_reg8[7]_i_1_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_7\(0),
      R => SR(0)
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_7\(10),
      R => SR(0)
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_7\(11),
      R => SR(0)
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_7\(12),
      R => SR(0)
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_7\(13),
      R => SR(0)
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_7\(14),
      R => SR(0)
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_7\(15),
      R => SR(0)
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_7\(16),
      R => SR(0)
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_7\(17),
      R => SR(0)
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_7\(18),
      R => SR(0)
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_7\(19),
      R => SR(0)
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_7\(1),
      R => SR(0)
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_7\(20),
      R => SR(0)
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_7\(21),
      R => SR(0)
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_7\(22),
      R => SR(0)
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_7\(23),
      R => SR(0)
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_7\(24),
      R => SR(0)
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_7\(25),
      R => SR(0)
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_7\(26),
      R => SR(0)
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_7\(27),
      R => SR(0)
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_7\(28),
      R => SR(0)
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_7\(29),
      R => SR(0)
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_7\(2),
      R => SR(0)
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_7\(30),
      R => SR(0)
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_7\(31),
      R => SR(0)
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_7\(3),
      R => SR(0)
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_7\(4),
      R => SR(0)
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_7\(5),
      R => SR(0)
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_7\(6),
      R => SR(0)
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_7\(7),
      R => SR(0)
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_7\(8),
      R => SR(0)
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_7\(9),
      R => SR(0)
    );
\slv_reg9[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg9[15]_i_1_n_0\
    );
\slv_reg9[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg9[23]_i_1_n_0\
    );
\slv_reg9[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => \axi_awaddr_reg_n_0_[6]\,
      I3 => \slv_reg0[31]_i_3_n_0\,
      I4 => p_0_in(3),
      O => \slv_reg9[31]_i_2_n_0\
    );
\slv_reg9[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg9[31]_i_2_n_0\,
      O => \slv_reg9[7]_i_1_n_0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_8\(0),
      R => SR(0)
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_8\(10),
      R => SR(0)
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_8\(11),
      R => SR(0)
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_8\(12),
      R => SR(0)
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_8\(13),
      R => SR(0)
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_8\(14),
      R => SR(0)
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_8\(15),
      R => SR(0)
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_8\(16),
      R => SR(0)
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_8\(17),
      R => SR(0)
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_8\(18),
      R => SR(0)
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_8\(19),
      R => SR(0)
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_8\(1),
      R => SR(0)
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_8\(20),
      R => SR(0)
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_8\(21),
      R => SR(0)
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_8\(22),
      R => SR(0)
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_8\(23),
      R => SR(0)
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_8\(24),
      R => SR(0)
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_8\(25),
      R => SR(0)
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_8\(26),
      R => SR(0)
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_8\(27),
      R => SR(0)
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_8\(28),
      R => SR(0)
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_8\(29),
      R => SR(0)
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_8\(2),
      R => SR(0)
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_8\(30),
      R => SR(0)
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_8\(31),
      R => SR(0)
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_8\(3),
      R => SR(0)
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_8\(4),
      R => SR(0)
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_8\(5),
      R => SR(0)
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_8\(6),
      R => SR(0)
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_8\(7),
      R => SR(0)
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_8\(8),
      R => SR(0)
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_8\(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_cube_renderer_controller_0_0_renderer3D is
  port (
    VGA_RED : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \point[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    COOR_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[0][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[0][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[1][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[1][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[4][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[4][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[5][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[5][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[2][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[2][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[6][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[6][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[3][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[3][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[7][0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \cube_screen_vertices[7][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cube_renderering_system_cube_renderer_controller_0_0_renderer3D : entity is "renderer3D";
end cube_renderering_system_cube_renderer_controller_0_0_renderer3D;

architecture STRUCTURE of cube_renderering_system_cube_renderer_controller_0_0_renderer3D is
  component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment is
  port (
    CLK : in STD_LOGIC;
    \point[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \point[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v1[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v1[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v2[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v2[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    on_segment : out STD_LOGIC
  );
  end component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment;
  component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment_HD1 is
  port (
    CLK : in STD_LOGIC;
    on_segment : out STD_LOGIC;
    \point[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \point[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v1[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v1[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v2[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v2[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment_HD1;
  signal \VGA_RED[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \VGA_RED[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal draw_signal : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
\VGA_RED[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \VGA_RED[0]_INST_0_i_1_n_0\,
      I1 => \VGA_RED[0]_INST_0_i_2_n_0\,
      O => VGA_RED(0)
    );
\VGA_RED[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => draw_signal(5),
      I1 => draw_signal(3),
      I2 => draw_signal(4),
      I3 => draw_signal(0),
      I4 => draw_signal(1),
      I5 => draw_signal(2),
      O => \VGA_RED[0]_INST_0_i_1_n_0\
    );
\VGA_RED[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => draw_signal(10),
      I1 => draw_signal(9),
      I2 => draw_signal(11),
      I3 => draw_signal(6),
      I4 => draw_signal(7),
      I5 => draw_signal(8),
      O => \VGA_RED[0]_INST_0_i_2_n_0\
    );
\point_on_segment_i[0].point_on_segment_i\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(0),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[0][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[0][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[1][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[1][1]\(31 downto 0)
    );
\point_on_segment_i[0].point_on_segment_j\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(4),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[4][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[4][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[5][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[5][1]\(31 downto 0)
    );
\point_on_segment_i[0].point_on_segment_k\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(8),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[0][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[0][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[4][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[4][1]\(31 downto 0)
    );
\point_on_segment_i[1].point_on_segment_i\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(1),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[1][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[1][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[2][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[2][1]\(31 downto 0)
    );
\point_on_segment_i[1].point_on_segment_j\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(5),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[5][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[5][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[6][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[6][1]\(31 downto 0)
    );
\point_on_segment_i[1].point_on_segment_k\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(9),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[1][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[1][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[5][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[5][1]\(31 downto 0)
    );
\point_on_segment_i[2].point_on_segment_i\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(2),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[2][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[2][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[3][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[3][1]\(31 downto 0)
    );
\point_on_segment_i[2].point_on_segment_j\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(6),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[6][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[6][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[7][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[7][1]\(31 downto 0)
    );
\point_on_segment_i[2].point_on_segment_k\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(10),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[2][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[2][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[6][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[6][1]\(31 downto 0)
    );
\point_on_segment_i[3].point_on_segment_i\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(3),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[3][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[3][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[0][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[0][1]\(31 downto 0)
    );
\point_on_segment_i[3].point_on_segment_j\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment
     port map (
      CLK => CLK,
      on_segment => draw_signal(7),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[7][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[7][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[4][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[4][1]\(31 downto 0)
    );
\point_on_segment_i[3].point_on_segment_k\: component cube_renderering_system_cube_renderer_controller_0_0_cube_renderering_system_cube_renderer_controller_0_0_point_on_segment_HD1
     port map (
      CLK => CLK,
      on_segment => draw_signal(11),
      \point[0]\(31 downto 0) => \point[0]\(31 downto 0),
      \point[1]\(31 downto 0) => COOR_V(31 downto 0),
      \v1[0]\(31 downto 0) => \cube_screen_vertices[3][0]\(31 downto 0),
      \v1[1]\(31 downto 0) => \cube_screen_vertices[3][1]\(31 downto 0),
      \v2[0]\(31 downto 0) => \cube_screen_vertices[7][0]\(31 downto 0),
      \v2[1]\(31 downto 0) => \cube_screen_vertices[7][1]\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_cube_renderer_controller_0_0_vga_controller is
  port (
    \point[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    VGA_HSYNC : out STD_LOGIC;
    VGA_VSYNC : out STD_LOGIC;
    COOR_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cube_renderering_system_cube_renderer_controller_0_0_vga_controller : entity is "vga_controller";
end cube_renderering_system_cube_renderer_controller_0_0_vga_controller;

architecture STRUCTURE of cube_renderering_system_cube_renderer_controller_0_0_vga_controller is
  signal \VGA_HSYNC0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_n_1\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_n_2\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__1_n_3\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_n_1\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_n_2\ : STD_LOGIC;
  signal \VGA_HSYNC0_carry__2_n_3\ : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_1_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_2_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_3_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_4_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_5_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_6_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_i_7_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_n_0 : STD_LOGIC;
  signal VGA_HSYNC0_carry_n_1 : STD_LOGIC;
  signal VGA_HSYNC0_carry_n_2 : STD_LOGIC;
  signal VGA_HSYNC0_carry_n_3 : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_n_1\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_n_2\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__1_n_3\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_n_1\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_n_2\ : STD_LOGIC;
  signal \VGA_VSYNC0_carry__2_n_3\ : STD_LOGIC;
  signal VGA_VSYNC0_carry_i_1_n_0 : STD_LOGIC;
  signal VGA_VSYNC0_carry_i_2_n_0 : STD_LOGIC;
  signal VGA_VSYNC0_carry_i_3_n_0 : STD_LOGIC;
  signal VGA_VSYNC0_carry_i_4_n_0 : STD_LOGIC;
  signal VGA_VSYNC0_carry_i_5_n_0 : STD_LOGIC;
  signal VGA_VSYNC0_carry_n_0 : STD_LOGIC;
  signal VGA_VSYNC0_carry_n_1 : STD_LOGIC;
  signal VGA_VSYNC0_carry_n_2 : STD_LOGIC;
  signal VGA_VSYNC0_carry_n_3 : STD_LOGIC;
  signal h_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \h_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[28]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_10_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_11_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_12_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_13_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_14_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_6_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_7_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_8_n_0\ : STD_LOGIC;
  signal \h_count[31]_i_9_n_0\ : STD_LOGIC;
  signal \h_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \h_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \h_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \h_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \h_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^point[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \point_on_segment_i[0].point_on_segment_i_i_10_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_10_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_10_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_11_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_11_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_11_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_11_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_12_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_12_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_12_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_12_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_13_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_13_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_13_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_13_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_14_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_14_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_14_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_14_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_15_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_15_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_15_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_15_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_16_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_16_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_16_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_16_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_17_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_17_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_17_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_17_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_18_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_19_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_1_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_1_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_20_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_21_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_22_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_23_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_24_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_25_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_26_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_27_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_28_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_29_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_2_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_2_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_2_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_2_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_30_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_31_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_32_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_33_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_34_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_35_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_36_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_37_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_38_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_39_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_3_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_3_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_3_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_3_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_40_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_41_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_42_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_43_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_44_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_45_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_46_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_47_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_48_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_49_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_4_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_4_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_4_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_4_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_50_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_51_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_52_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_53_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_54_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_55_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_56_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_57_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_58_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_59_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_5_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_5_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_5_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_5_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_60_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_61_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_62_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_63_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_64_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_65_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_66_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_67_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_68_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_69_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_6_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_6_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_6_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_6_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_70_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_71_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_72_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_73_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_74_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_75_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_76_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_77_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_78_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_79_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_7_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_7_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_7_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_7_n_3\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_80_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_8_n_0\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_8_n_1\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_8_n_2\ : STD_LOGIC;
  signal \point_on_segment_i[0].point_on_segment_i_i_8_n_3\ : STD_LOGIC;
  signal sig : STD_LOGIC;
  signal v_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[28]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_10_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_11_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_12_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_13_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_14_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_15_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_16_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_17_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_18_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_6_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_7_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_8_n_0\ : STD_LOGIC;
  signal \v_count[31]_i_9_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_5_n_0\ : STD_LOGIC;
  signal v_count_0 : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \v_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \v_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \v_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \v_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_COOR_H_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_COOR_H_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_COOR_H_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_COOR_H_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_VGA_HSYNC0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_HSYNC0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_HSYNC0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_HSYNC0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_VGA_VSYNC0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_VSYNC0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_VSYNC0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_VSYNC0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h_count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_point_on_segment_i[0].point_on_segment_i_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_point_on_segment_i[0].point_on_segment_i_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_point_on_segment_i[0].point_on_segment_i_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_point_on_segment_i[0].point_on_segment_i_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_v_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of COOR_H_CARRY4 : label is "(MUXCY,XORCY)";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_count[31]_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_count[31]_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_count[31]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_count[31]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \point_on_segment_i[0].point_on_segment_i_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[31]_i_12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[31]_i_16\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[31]_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count[31]_i_18\ : label is "soft_lutpair5";
begin
  \point[0]\(31 downto 0) <= \^point[0]\(31 downto 0);
COOR_H_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => NLW_COOR_H_CARRY4_CO_UNCONNECTED(3 downto 0),
      CYINIT => h_count(0),
      DI(3 downto 0) => NLW_COOR_H_CARRY4_DI_UNCONNECTED(3 downto 0),
      O(3 downto 1) => NLW_COOR_H_CARRY4_O_UNCONNECTED(3 downto 1),
      O(0) => \^point[0]\(1),
      S(3 downto 1) => NLW_COOR_H_CARRY4_S_UNCONNECTED(3 downto 1),
      S(0) => h_count(1)
    );
VGA_HSYNC0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => VGA_HSYNC0_carry_n_0,
      CO(2) => VGA_HSYNC0_carry_n_1,
      CO(1) => VGA_HSYNC0_carry_n_2,
      CO(0) => VGA_HSYNC0_carry_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => VGA_HSYNC0_carry_i_1_n_0,
      DI(1) => VGA_HSYNC0_carry_i_2_n_0,
      DI(0) => VGA_HSYNC0_carry_i_3_n_0,
      O(3 downto 0) => NLW_VGA_HSYNC0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => VGA_HSYNC0_carry_i_4_n_0,
      S(2) => VGA_HSYNC0_carry_i_5_n_0,
      S(1) => VGA_HSYNC0_carry_i_6_n_0,
      S(0) => VGA_HSYNC0_carry_i_7_n_0
    );
\VGA_HSYNC0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => VGA_HSYNC0_carry_n_0,
      CO(3) => \VGA_HSYNC0_carry__0_n_0\,
      CO(2) => \VGA_HSYNC0_carry__0_n_1\,
      CO(1) => \VGA_HSYNC0_carry__0_n_2\,
      CO(0) => \VGA_HSYNC0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_VGA_HSYNC0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \VGA_HSYNC0_carry__0_i_1_n_0\,
      S(2) => \VGA_HSYNC0_carry__0_i_2_n_0\,
      S(1) => \VGA_HSYNC0_carry__0_i_3_n_0\,
      S(0) => \VGA_HSYNC0_carry__0_i_4_n_0\
    );
\VGA_HSYNC0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(15),
      I1 => h_count(14),
      O => \VGA_HSYNC0_carry__0_i_1_n_0\
    );
\VGA_HSYNC0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(13),
      I1 => h_count(12),
      O => \VGA_HSYNC0_carry__0_i_2_n_0\
    );
\VGA_HSYNC0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(11),
      O => \VGA_HSYNC0_carry__0_i_3_n_0\
    );
\VGA_HSYNC0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(8),
      I1 => h_count(9),
      O => \VGA_HSYNC0_carry__0_i_4_n_0\
    );
\VGA_HSYNC0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_HSYNC0_carry__0_n_0\,
      CO(3) => \VGA_HSYNC0_carry__1_n_0\,
      CO(2) => \VGA_HSYNC0_carry__1_n_1\,
      CO(1) => \VGA_HSYNC0_carry__1_n_2\,
      CO(0) => \VGA_HSYNC0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_VGA_HSYNC0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \VGA_HSYNC0_carry__1_i_1_n_0\,
      S(2) => \VGA_HSYNC0_carry__1_i_2_n_0\,
      S(1) => \VGA_HSYNC0_carry__1_i_3_n_0\,
      S(0) => \VGA_HSYNC0_carry__1_i_4_n_0\
    );
\VGA_HSYNC0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(23),
      I1 => h_count(22),
      O => \VGA_HSYNC0_carry__1_i_1_n_0\
    );
\VGA_HSYNC0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(21),
      I1 => h_count(20),
      O => \VGA_HSYNC0_carry__1_i_2_n_0\
    );
\VGA_HSYNC0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(19),
      I1 => h_count(18),
      O => \VGA_HSYNC0_carry__1_i_3_n_0\
    );
\VGA_HSYNC0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(17),
      I1 => h_count(16),
      O => \VGA_HSYNC0_carry__1_i_4_n_0\
    );
\VGA_HSYNC0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_HSYNC0_carry__1_n_0\,
      CO(3) => VGA_HSYNC,
      CO(2) => \VGA_HSYNC0_carry__2_n_1\,
      CO(1) => \VGA_HSYNC0_carry__2_n_2\,
      CO(0) => \VGA_HSYNC0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => h_count(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_VGA_HSYNC0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \VGA_HSYNC0_carry__2_i_1_n_0\,
      S(2) => \VGA_HSYNC0_carry__2_i_2_n_0\,
      S(1) => \VGA_HSYNC0_carry__2_i_3_n_0\,
      S(0) => \VGA_HSYNC0_carry__2_i_4_n_0\
    );
\VGA_HSYNC0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(31),
      I1 => h_count(30),
      O => \VGA_HSYNC0_carry__2_i_1_n_0\
    );
\VGA_HSYNC0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(29),
      I1 => h_count(28),
      O => \VGA_HSYNC0_carry__2_i_2_n_0\
    );
\VGA_HSYNC0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(27),
      I1 => h_count(26),
      O => \VGA_HSYNC0_carry__2_i_3_n_0\
    );
\VGA_HSYNC0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(25),
      I1 => h_count(24),
      O => \VGA_HSYNC0_carry__2_i_4_n_0\
    );
VGA_HSYNC0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(5),
      O => VGA_HSYNC0_carry_i_1_n_0
    );
VGA_HSYNC0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(3),
      O => VGA_HSYNC0_carry_i_2_n_0
    );
VGA_HSYNC0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(1),
      O => VGA_HSYNC0_carry_i_3_n_0
    );
VGA_HSYNC0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(6),
      O => VGA_HSYNC0_carry_i_4_n_0
    );
VGA_HSYNC0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(4),
      O => VGA_HSYNC0_carry_i_5_n_0
    );
VGA_HSYNC0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(2),
      O => VGA_HSYNC0_carry_i_6_n_0
    );
VGA_HSYNC0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(0),
      O => VGA_HSYNC0_carry_i_7_n_0
    );
VGA_VSYNC0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => VGA_VSYNC0_carry_n_0,
      CO(2) => VGA_VSYNC0_carry_n_1,
      CO(1) => VGA_VSYNC0_carry_n_2,
      CO(0) => VGA_VSYNC0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 1) => B"000",
      DI(0) => VGA_VSYNC0_carry_i_1_n_0,
      O(3 downto 0) => NLW_VGA_VSYNC0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => VGA_VSYNC0_carry_i_2_n_0,
      S(2) => VGA_VSYNC0_carry_i_3_n_0,
      S(1) => VGA_VSYNC0_carry_i_4_n_0,
      S(0) => VGA_VSYNC0_carry_i_5_n_0
    );
\VGA_VSYNC0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => VGA_VSYNC0_carry_n_0,
      CO(3) => \VGA_VSYNC0_carry__0_n_0\,
      CO(2) => \VGA_VSYNC0_carry__0_n_1\,
      CO(1) => \VGA_VSYNC0_carry__0_n_2\,
      CO(0) => \VGA_VSYNC0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_VGA_VSYNC0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \VGA_VSYNC0_carry__0_i_1_n_0\,
      S(2) => \VGA_VSYNC0_carry__0_i_2_n_0\,
      S(1) => \VGA_VSYNC0_carry__0_i_3_n_0\,
      S(0) => \VGA_VSYNC0_carry__0_i_4_n_0\
    );
\VGA_VSYNC0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(14),
      I1 => v_count(15),
      O => \VGA_VSYNC0_carry__0_i_1_n_0\
    );
\VGA_VSYNC0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(12),
      I1 => v_count(13),
      O => \VGA_VSYNC0_carry__0_i_2_n_0\
    );
\VGA_VSYNC0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(10),
      I1 => v_count(11),
      O => \VGA_VSYNC0_carry__0_i_3_n_0\
    );
\VGA_VSYNC0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(8),
      I1 => v_count(9),
      O => \VGA_VSYNC0_carry__0_i_4_n_0\
    );
\VGA_VSYNC0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_VSYNC0_carry__0_n_0\,
      CO(3) => \VGA_VSYNC0_carry__1_n_0\,
      CO(2) => \VGA_VSYNC0_carry__1_n_1\,
      CO(1) => \VGA_VSYNC0_carry__1_n_2\,
      CO(0) => \VGA_VSYNC0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_VGA_VSYNC0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \VGA_VSYNC0_carry__1_i_1_n_0\,
      S(2) => \VGA_VSYNC0_carry__1_i_2_n_0\,
      S(1) => \VGA_VSYNC0_carry__1_i_3_n_0\,
      S(0) => \VGA_VSYNC0_carry__1_i_4_n_0\
    );
\VGA_VSYNC0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(22),
      I1 => v_count(23),
      O => \VGA_VSYNC0_carry__1_i_1_n_0\
    );
\VGA_VSYNC0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(20),
      I1 => v_count(21),
      O => \VGA_VSYNC0_carry__1_i_2_n_0\
    );
\VGA_VSYNC0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(18),
      I1 => v_count(19),
      O => \VGA_VSYNC0_carry__1_i_3_n_0\
    );
\VGA_VSYNC0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(16),
      I1 => v_count(17),
      O => \VGA_VSYNC0_carry__1_i_4_n_0\
    );
\VGA_VSYNC0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_VSYNC0_carry__1_n_0\,
      CO(3) => VGA_VSYNC,
      CO(2) => \VGA_VSYNC0_carry__2_n_1\,
      CO(1) => \VGA_VSYNC0_carry__2_n_2\,
      CO(0) => \VGA_VSYNC0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => v_count(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_VGA_VSYNC0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \VGA_VSYNC0_carry__2_i_1_n_0\,
      S(2) => \VGA_VSYNC0_carry__2_i_2_n_0\,
      S(1) => \VGA_VSYNC0_carry__2_i_3_n_0\,
      S(0) => \VGA_VSYNC0_carry__2_i_4_n_0\
    );
\VGA_VSYNC0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(30),
      I1 => v_count(31),
      O => \VGA_VSYNC0_carry__2_i_1_n_0\
    );
\VGA_VSYNC0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(28),
      I1 => v_count(29),
      O => \VGA_VSYNC0_carry__2_i_2_n_0\
    );
\VGA_VSYNC0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(26),
      I1 => v_count(27),
      O => \VGA_VSYNC0_carry__2_i_3_n_0\
    );
\VGA_VSYNC0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(24),
      I1 => v_count(25),
      O => \VGA_VSYNC0_carry__2_i_4_n_0\
    );
VGA_VSYNC0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(1),
      O => VGA_VSYNC0_carry_i_1_n_0
    );
VGA_VSYNC0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(6),
      I1 => v_count(7),
      O => VGA_VSYNC0_carry_i_2_n_0
    );
VGA_VSYNC0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(5),
      O => VGA_VSYNC0_carry_i_3_n_0
    );
VGA_VSYNC0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(2),
      I1 => v_count(3),
      O => VGA_VSYNC0_carry_i_4_n_0
    );
VGA_VSYNC0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      O => VGA_VSYNC0_carry_i_5_n_0
    );
clk_divider: entity work.cube_renderering_system_cube_renderer_controller_0_0_clock_divider
     port map (
      CLK => CLK,
      sig => sig
    );
\h_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(12),
      O => \h_count[12]_i_2_n_0\
    );
\h_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(11),
      O => \h_count[12]_i_3_n_0\
    );
\h_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(10),
      O => \h_count[12]_i_4_n_0\
    );
\h_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(9),
      O => \h_count[12]_i_5_n_0\
    );
\h_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(16),
      O => \h_count[16]_i_2_n_0\
    );
\h_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(15),
      O => \h_count[16]_i_3_n_0\
    );
\h_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(14),
      O => \h_count[16]_i_4_n_0\
    );
\h_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(13),
      O => \h_count[16]_i_5_n_0\
    );
\h_count[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(20),
      O => \h_count[20]_i_2_n_0\
    );
\h_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(19),
      O => \h_count[20]_i_3_n_0\
    );
\h_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(18),
      O => \h_count[20]_i_4_n_0\
    );
\h_count[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(17),
      O => \h_count[20]_i_5_n_0\
    );
\h_count[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(24),
      O => \h_count[24]_i_2_n_0\
    );
\h_count[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(23),
      O => \h_count[24]_i_3_n_0\
    );
\h_count[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(22),
      O => \h_count[24]_i_4_n_0\
    );
\h_count[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(21),
      O => \h_count[24]_i_5_n_0\
    );
\h_count[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(28),
      O => \h_count[28]_i_2_n_0\
    );
\h_count[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(27),
      O => \h_count[28]_i_3_n_0\
    );
\h_count[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(26),
      O => \h_count[28]_i_4_n_0\
    );
\h_count[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(25),
      O => \h_count[28]_i_5_n_0\
    );
\h_count[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \h_count[31]_i_3_n_0\,
      I1 => \h_count[31]_i_4_n_0\,
      I2 => \h_count[31]_i_5_n_0\,
      I3 => \h_count[31]_i_6_n_0\,
      O => v_count_0
    );
\h_count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_count(25),
      I1 => h_count(24),
      I2 => h_count(27),
      I3 => h_count(26),
      O => \h_count[31]_i_10_n_0\
    );
\h_count[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(3),
      O => \h_count[31]_i_11_n_0\
    );
\h_count[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(1),
      O => \h_count[31]_i_12_n_0\
    );
\h_count[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(11),
      I2 => h_count(7),
      I3 => h_count(6),
      O => \h_count[31]_i_13_n_0\
    );
\h_count[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_count(17),
      I1 => h_count(16),
      I2 => h_count(19),
      I3 => h_count(18),
      O => \h_count[31]_i_14_n_0\
    );
\h_count[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => h_count(22),
      I1 => h_count(23),
      I2 => h_count(20),
      I3 => h_count(21),
      I4 => \h_count[31]_i_10_n_0\,
      O => \h_count[31]_i_3_n_0\
    );
\h_count[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => h_count(30),
      I1 => h_count(31),
      I2 => h_count(28),
      I3 => h_count(29),
      I4 => \h_count[31]_i_11_n_0\,
      I5 => \h_count[31]_i_12_n_0\,
      O => \h_count[31]_i_4_n_0\
    );
\h_count[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => h_count(9),
      I1 => h_count(8),
      I2 => h_count(4),
      I3 => h_count(5),
      I4 => \h_count[31]_i_13_n_0\,
      O => \h_count[31]_i_5_n_0\
    );
\h_count[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => h_count(14),
      I1 => h_count(15),
      I2 => h_count(12),
      I3 => h_count(13),
      I4 => \h_count[31]_i_14_n_0\,
      O => \h_count[31]_i_6_n_0\
    );
\h_count[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(31),
      O => \h_count[31]_i_7_n_0\
    );
\h_count[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(30),
      O => \h_count[31]_i_8_n_0\
    );
\h_count[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(29),
      O => \h_count[31]_i_9_n_0\
    );
\h_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(4),
      O => \h_count[4]_i_2_n_0\
    );
\h_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(3),
      O => \h_count[4]_i_3_n_0\
    );
\h_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(2),
      O => \h_count[4]_i_4_n_0\
    );
\h_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(1),
      O => \h_count[4]_i_5_n_0\
    );
\h_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(8),
      O => \h_count[8]_i_2_n_0\
    );
\h_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(7),
      O => \h_count[8]_i_3_n_0\
    );
\h_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(6),
      O => \h_count[8]_i_4_n_0\
    );
\h_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(5),
      O => \h_count[8]_i_5_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \^point[0]\(0),
      Q => h_count(0),
      R => '0'
    );
\h_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[12]_i_1_n_6\,
      Q => h_count(10),
      R => v_count_0
    );
\h_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[12]_i_1_n_5\,
      Q => h_count(11),
      R => v_count_0
    );
\h_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[12]_i_1_n_4\,
      Q => h_count(12),
      R => v_count_0
    );
\h_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[8]_i_1_n_0\,
      CO(3) => \h_count_reg[12]_i_1_n_0\,
      CO(2) => \h_count_reg[12]_i_1_n_1\,
      CO(1) => \h_count_reg[12]_i_1_n_2\,
      CO(0) => \h_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[12]_i_1_n_4\,
      O(2) => \h_count_reg[12]_i_1_n_5\,
      O(1) => \h_count_reg[12]_i_1_n_6\,
      O(0) => \h_count_reg[12]_i_1_n_7\,
      S(3) => \h_count[12]_i_2_n_0\,
      S(2) => \h_count[12]_i_3_n_0\,
      S(1) => \h_count[12]_i_4_n_0\,
      S(0) => \h_count[12]_i_5_n_0\
    );
\h_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[16]_i_1_n_7\,
      Q => h_count(13),
      R => v_count_0
    );
\h_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[16]_i_1_n_6\,
      Q => h_count(14),
      R => v_count_0
    );
\h_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[16]_i_1_n_5\,
      Q => h_count(15),
      R => v_count_0
    );
\h_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[16]_i_1_n_4\,
      Q => h_count(16),
      R => v_count_0
    );
\h_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[12]_i_1_n_0\,
      CO(3) => \h_count_reg[16]_i_1_n_0\,
      CO(2) => \h_count_reg[16]_i_1_n_1\,
      CO(1) => \h_count_reg[16]_i_1_n_2\,
      CO(0) => \h_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[16]_i_1_n_4\,
      O(2) => \h_count_reg[16]_i_1_n_5\,
      O(1) => \h_count_reg[16]_i_1_n_6\,
      O(0) => \h_count_reg[16]_i_1_n_7\,
      S(3) => \h_count[16]_i_2_n_0\,
      S(2) => \h_count[16]_i_3_n_0\,
      S(1) => \h_count[16]_i_4_n_0\,
      S(0) => \h_count[16]_i_5_n_0\
    );
\h_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[20]_i_1_n_7\,
      Q => h_count(17),
      R => v_count_0
    );
\h_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[20]_i_1_n_6\,
      Q => h_count(18),
      R => v_count_0
    );
\h_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[20]_i_1_n_5\,
      Q => h_count(19),
      R => v_count_0
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[4]_i_1_n_7\,
      Q => h_count(1),
      R => v_count_0
    );
\h_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[20]_i_1_n_4\,
      Q => h_count(20),
      R => v_count_0
    );
\h_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[16]_i_1_n_0\,
      CO(3) => \h_count_reg[20]_i_1_n_0\,
      CO(2) => \h_count_reg[20]_i_1_n_1\,
      CO(1) => \h_count_reg[20]_i_1_n_2\,
      CO(0) => \h_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[20]_i_1_n_4\,
      O(2) => \h_count_reg[20]_i_1_n_5\,
      O(1) => \h_count_reg[20]_i_1_n_6\,
      O(0) => \h_count_reg[20]_i_1_n_7\,
      S(3) => \h_count[20]_i_2_n_0\,
      S(2) => \h_count[20]_i_3_n_0\,
      S(1) => \h_count[20]_i_4_n_0\,
      S(0) => \h_count[20]_i_5_n_0\
    );
\h_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[24]_i_1_n_7\,
      Q => h_count(21),
      R => v_count_0
    );
\h_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[24]_i_1_n_6\,
      Q => h_count(22),
      R => v_count_0
    );
\h_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[24]_i_1_n_5\,
      Q => h_count(23),
      R => v_count_0
    );
\h_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[24]_i_1_n_4\,
      Q => h_count(24),
      R => v_count_0
    );
\h_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[20]_i_1_n_0\,
      CO(3) => \h_count_reg[24]_i_1_n_0\,
      CO(2) => \h_count_reg[24]_i_1_n_1\,
      CO(1) => \h_count_reg[24]_i_1_n_2\,
      CO(0) => \h_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[24]_i_1_n_4\,
      O(2) => \h_count_reg[24]_i_1_n_5\,
      O(1) => \h_count_reg[24]_i_1_n_6\,
      O(0) => \h_count_reg[24]_i_1_n_7\,
      S(3) => \h_count[24]_i_2_n_0\,
      S(2) => \h_count[24]_i_3_n_0\,
      S(1) => \h_count[24]_i_4_n_0\,
      S(0) => \h_count[24]_i_5_n_0\
    );
\h_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[28]_i_1_n_7\,
      Q => h_count(25),
      R => v_count_0
    );
\h_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[28]_i_1_n_6\,
      Q => h_count(26),
      R => v_count_0
    );
\h_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[28]_i_1_n_5\,
      Q => h_count(27),
      R => v_count_0
    );
\h_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[28]_i_1_n_4\,
      Q => h_count(28),
      R => v_count_0
    );
\h_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[24]_i_1_n_0\,
      CO(3) => \h_count_reg[28]_i_1_n_0\,
      CO(2) => \h_count_reg[28]_i_1_n_1\,
      CO(1) => \h_count_reg[28]_i_1_n_2\,
      CO(0) => \h_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[28]_i_1_n_4\,
      O(2) => \h_count_reg[28]_i_1_n_5\,
      O(1) => \h_count_reg[28]_i_1_n_6\,
      O(0) => \h_count_reg[28]_i_1_n_7\,
      S(3) => \h_count[28]_i_2_n_0\,
      S(2) => \h_count[28]_i_3_n_0\,
      S(1) => \h_count[28]_i_4_n_0\,
      S(0) => \h_count[28]_i_5_n_0\
    );
\h_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[31]_i_2_n_7\,
      Q => h_count(29),
      R => v_count_0
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[4]_i_1_n_6\,
      Q => h_count(2),
      R => v_count_0
    );
\h_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[31]_i_2_n_6\,
      Q => h_count(30),
      R => v_count_0
    );
\h_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[31]_i_2_n_5\,
      Q => h_count(31),
      R => v_count_0
    );
\h_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_h_count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h_count_reg[31]_i_2_n_2\,
      CO(0) => \h_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_h_count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2) => \h_count_reg[31]_i_2_n_5\,
      O(1) => \h_count_reg[31]_i_2_n_6\,
      O(0) => \h_count_reg[31]_i_2_n_7\,
      S(3) => '0',
      S(2) => \h_count[31]_i_7_n_0\,
      S(1) => \h_count[31]_i_8_n_0\,
      S(0) => \h_count[31]_i_9_n_0\
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[4]_i_1_n_5\,
      Q => h_count(3),
      R => v_count_0
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[4]_i_1_n_4\,
      Q => h_count(4),
      R => v_count_0
    );
\h_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_count_reg[4]_i_1_n_0\,
      CO(2) => \h_count_reg[4]_i_1_n_1\,
      CO(1) => \h_count_reg[4]_i_1_n_2\,
      CO(0) => \h_count_reg[4]_i_1_n_3\,
      CYINIT => h_count(0),
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[4]_i_1_n_4\,
      O(2) => \h_count_reg[4]_i_1_n_5\,
      O(1) => \h_count_reg[4]_i_1_n_6\,
      O(0) => \h_count_reg[4]_i_1_n_7\,
      S(3) => \h_count[4]_i_2_n_0\,
      S(2) => \h_count[4]_i_3_n_0\,
      S(1) => \h_count[4]_i_4_n_0\,
      S(0) => \h_count[4]_i_5_n_0\
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[8]_i_1_n_7\,
      Q => h_count(5),
      R => v_count_0
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[8]_i_1_n_6\,
      Q => h_count(6),
      R => v_count_0
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[8]_i_1_n_5\,
      Q => h_count(7),
      R => v_count_0
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[8]_i_1_n_4\,
      Q => h_count(8),
      R => v_count_0
    );
\h_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[4]_i_1_n_0\,
      CO(3) => \h_count_reg[8]_i_1_n_0\,
      CO(2) => \h_count_reg[8]_i_1_n_1\,
      CO(1) => \h_count_reg[8]_i_1_n_2\,
      CO(0) => \h_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[8]_i_1_n_4\,
      O(2) => \h_count_reg[8]_i_1_n_5\,
      O(1) => \h_count_reg[8]_i_1_n_6\,
      O(0) => \h_count_reg[8]_i_1_n_7\,
      S(3) => \h_count[8]_i_2_n_0\,
      S(2) => \h_count[8]_i_3_n_0\,
      S(1) => \h_count[8]_i_4_n_0\,
      S(0) => \h_count[8]_i_5_n_0\
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => '1',
      D => \h_count_reg[12]_i_1_n_7\,
      Q => h_count(9),
      R => v_count_0
    );
\point_on_segment_i[0].point_on_segment_i_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_2_n_0\,
      CO(3 downto 2) => \NLW_point_on_segment_i[0].point_on_segment_i_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_1_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => h_count(30 downto 29),
      O(3) => \NLW_point_on_segment_i[0].point_on_segment_i_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => \^point[0]\(31 downto 29),
      S(3) => '0',
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_18_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_19_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_20_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_11_n_0\,
      CO(3) => \NLW_point_on_segment_i[0].point_on_segment_i_i_10_CO_UNCONNECTED\(3),
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_10_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_10_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => v_count(30 downto 28),
      O(3 downto 0) => COOR_V(31 downto 28),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_49_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_50_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_51_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_52_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_12_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_11_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_11_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_11_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v_count(27 downto 24),
      O(3 downto 0) => COOR_V(27 downto 24),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_53_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_54_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_55_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_56_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_13_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_12_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_12_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_12_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v_count(23 downto 20),
      O(3 downto 0) => COOR_V(23 downto 20),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_57_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_58_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_59_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_60_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_14_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_13_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_13_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_13_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v_count(19 downto 16),
      O(3 downto 0) => COOR_V(19 downto 16),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_61_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_62_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_63_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_64_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_15_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_14_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_14_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_14_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v_count(15 downto 12),
      O(3 downto 0) => COOR_V(15 downto 12),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_65_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_66_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_67_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_68_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_16_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_15_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_15_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_15_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v_count(11 downto 8),
      O(3 downto 0) => COOR_V(11 downto 8),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_69_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_70_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_71_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_72_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_17_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_16_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_16_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_16_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v_count(7 downto 4),
      O(3 downto 0) => COOR_V(7 downto 4),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_73_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_74_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_75_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_76_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_17_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_17_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_17_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_17_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => v_count(1),
      DI(0) => '0',
      O(3 downto 0) => COOR_V(3 downto 0),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_77_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_78_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_79_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_80_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(31),
      O => \point_on_segment_i[0].point_on_segment_i_i_18_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(30),
      O => \point_on_segment_i[0].point_on_segment_i_i_19_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_3_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_2_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_2_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_2_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => h_count(28 downto 25),
      O(3 downto 0) => \^point[0]\(28 downto 25),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_21_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_22_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_23_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_24_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(29),
      O => \point_on_segment_i[0].point_on_segment_i_i_20_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(28),
      O => \point_on_segment_i[0].point_on_segment_i_i_21_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(27),
      O => \point_on_segment_i[0].point_on_segment_i_i_22_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(26),
      O => \point_on_segment_i[0].point_on_segment_i_i_23_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(25),
      O => \point_on_segment_i[0].point_on_segment_i_i_24_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(24),
      O => \point_on_segment_i[0].point_on_segment_i_i_25_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(23),
      O => \point_on_segment_i[0].point_on_segment_i_i_26_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(22),
      O => \point_on_segment_i[0].point_on_segment_i_i_27_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(21),
      O => \point_on_segment_i[0].point_on_segment_i_i_28_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(20),
      O => \point_on_segment_i[0].point_on_segment_i_i_29_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_4_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_3_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_3_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_3_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => h_count(24 downto 21),
      O(3 downto 0) => \^point[0]\(24 downto 21),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_25_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_26_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_27_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_28_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(19),
      O => \point_on_segment_i[0].point_on_segment_i_i_30_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(18),
      O => \point_on_segment_i[0].point_on_segment_i_i_31_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(17),
      O => \point_on_segment_i[0].point_on_segment_i_i_32_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(16),
      O => \point_on_segment_i[0].point_on_segment_i_i_33_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(15),
      O => \point_on_segment_i[0].point_on_segment_i_i_34_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(14),
      O => \point_on_segment_i[0].point_on_segment_i_i_35_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(13),
      O => \point_on_segment_i[0].point_on_segment_i_i_36_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(12),
      O => \point_on_segment_i[0].point_on_segment_i_i_37_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(11),
      O => \point_on_segment_i[0].point_on_segment_i_i_38_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(10),
      O => \point_on_segment_i[0].point_on_segment_i_i_39_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_5_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_4_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_4_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_4_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => h_count(20 downto 17),
      O(3 downto 0) => \^point[0]\(20 downto 17),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_29_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_30_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_31_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_32_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(9),
      O => \point_on_segment_i[0].point_on_segment_i_i_40_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(8),
      O => \point_on_segment_i[0].point_on_segment_i_i_41_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(7),
      O => \point_on_segment_i[0].point_on_segment_i_i_42_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(6),
      O => \point_on_segment_i[0].point_on_segment_i_i_43_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(5),
      O => \point_on_segment_i[0].point_on_segment_i_i_44_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_45\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(4),
      O => \point_on_segment_i[0].point_on_segment_i_i_45_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(3),
      O => \point_on_segment_i[0].point_on_segment_i_i_46_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(2),
      O => \point_on_segment_i[0].point_on_segment_i_i_47_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(1),
      O => \point_on_segment_i[0].point_on_segment_i_i_48_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(31),
      O => \point_on_segment_i[0].point_on_segment_i_i_49_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_6_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_5_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_5_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_5_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => h_count(16 downto 13),
      O(3 downto 0) => \^point[0]\(16 downto 13),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_33_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_34_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_35_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_36_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_50\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(30),
      O => \point_on_segment_i[0].point_on_segment_i_i_50_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_51\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(29),
      O => \point_on_segment_i[0].point_on_segment_i_i_51_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_52\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(28),
      O => \point_on_segment_i[0].point_on_segment_i_i_52_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_53\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(27),
      O => \point_on_segment_i[0].point_on_segment_i_i_53_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_54\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(26),
      O => \point_on_segment_i[0].point_on_segment_i_i_54_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_55\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(25),
      O => \point_on_segment_i[0].point_on_segment_i_i_55_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_56\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(24),
      O => \point_on_segment_i[0].point_on_segment_i_i_56_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_57\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(23),
      O => \point_on_segment_i[0].point_on_segment_i_i_57_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(22),
      O => \point_on_segment_i[0].point_on_segment_i_i_58_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_59\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(21),
      O => \point_on_segment_i[0].point_on_segment_i_i_59_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_7_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_6_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_6_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_6_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => h_count(12 downto 9),
      O(3 downto 0) => \^point[0]\(12 downto 9),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_37_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_38_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_39_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_40_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_60\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(20),
      O => \point_on_segment_i[0].point_on_segment_i_i_60_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_61\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(19),
      O => \point_on_segment_i[0].point_on_segment_i_i_61_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_62\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(18),
      O => \point_on_segment_i[0].point_on_segment_i_i_62_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_63\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(17),
      O => \point_on_segment_i[0].point_on_segment_i_i_63_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_64\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(16),
      O => \point_on_segment_i[0].point_on_segment_i_i_64_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_65\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(15),
      O => \point_on_segment_i[0].point_on_segment_i_i_65_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_66\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(14),
      O => \point_on_segment_i[0].point_on_segment_i_i_66_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_67\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(13),
      O => \point_on_segment_i[0].point_on_segment_i_i_67_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_68\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(12),
      O => \point_on_segment_i[0].point_on_segment_i_i_68_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_69\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(11),
      O => \point_on_segment_i[0].point_on_segment_i_i_69_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_on_segment_i[0].point_on_segment_i_i_8_n_0\,
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_7_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_7_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_7_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_7_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => h_count(7 downto 5),
      O(3 downto 0) => \^point[0]\(8 downto 5),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_41_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_42_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_43_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_44_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_70\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(10),
      O => \point_on_segment_i[0].point_on_segment_i_i_70_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_71\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(9),
      O => \point_on_segment_i[0].point_on_segment_i_i_71_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_72\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(8),
      O => \point_on_segment_i[0].point_on_segment_i_i_72_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_73\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(7),
      O => \point_on_segment_i[0].point_on_segment_i_i_73_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_74\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(6),
      O => \point_on_segment_i[0].point_on_segment_i_i_74_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_75\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(5),
      O => \point_on_segment_i[0].point_on_segment_i_i_75_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_76\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(4),
      O => \point_on_segment_i[0].point_on_segment_i_i_76_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_77\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(3),
      O => \point_on_segment_i[0].point_on_segment_i_i_77_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_78\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(2),
      O => \point_on_segment_i[0].point_on_segment_i_i_78_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_79\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(1),
      O => \point_on_segment_i[0].point_on_segment_i_i_79_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \point_on_segment_i[0].point_on_segment_i_i_8_n_0\,
      CO(2) => \point_on_segment_i[0].point_on_segment_i_i_8_n_1\,
      CO(1) => \point_on_segment_i[0].point_on_segment_i_i_8_n_2\,
      CO(0) => \point_on_segment_i[0].point_on_segment_i_i_8_n_3\,
      CYINIT => h_count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \^point[0]\(4 downto 2),
      O(0) => \NLW_point_on_segment_i[0].point_on_segment_i_i_8_O_UNCONNECTED\(0),
      S(3) => \point_on_segment_i[0].point_on_segment_i_i_45_n_0\,
      S(2) => \point_on_segment_i[0].point_on_segment_i_i_46_n_0\,
      S(1) => \point_on_segment_i[0].point_on_segment_i_i_47_n_0\,
      S(0) => \point_on_segment_i[0].point_on_segment_i_i_48_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_80\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(0),
      O => \point_on_segment_i[0].point_on_segment_i_i_80_n_0\
    );
\point_on_segment_i[0].point_on_segment_i_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(0),
      O => \^point[0]\(0)
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(0),
      O => \v_count[0]_i_1_n_0\
    );
\v_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(12),
      O => \v_count[12]_i_2_n_0\
    );
\v_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(11),
      O => \v_count[12]_i_3_n_0\
    );
\v_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(10),
      O => \v_count[12]_i_4_n_0\
    );
\v_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(9),
      O => \v_count[12]_i_5_n_0\
    );
\v_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(16),
      O => \v_count[16]_i_2_n_0\
    );
\v_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(15),
      O => \v_count[16]_i_3_n_0\
    );
\v_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(14),
      O => \v_count[16]_i_4_n_0\
    );
\v_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(13),
      O => \v_count[16]_i_5_n_0\
    );
\v_count[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(20),
      O => \v_count[20]_i_2_n_0\
    );
\v_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(19),
      O => \v_count[20]_i_3_n_0\
    );
\v_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(18),
      O => \v_count[20]_i_4_n_0\
    );
\v_count[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(17),
      O => \v_count[20]_i_5_n_0\
    );
\v_count[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(24),
      O => \v_count[24]_i_2_n_0\
    );
\v_count[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(23),
      O => \v_count[24]_i_3_n_0\
    );
\v_count[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(22),
      O => \v_count[24]_i_4_n_0\
    );
\v_count[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(21),
      O => \v_count[24]_i_5_n_0\
    );
\v_count[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(28),
      O => \v_count[28]_i_2_n_0\
    );
\v_count[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(27),
      O => \v_count[28]_i_3_n_0\
    );
\v_count[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(26),
      O => \v_count[28]_i_4_n_0\
    );
\v_count[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(25),
      O => \v_count[28]_i_5_n_0\
    );
\v_count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \v_count[31]_i_3_n_0\,
      I1 => \v_count[31]_i_4_n_0\,
      I2 => \v_count[31]_i_5_n_0\,
      I3 => \h_count[31]_i_3_n_0\,
      I4 => \h_count[31]_i_4_n_0\,
      I5 => \v_count[31]_i_6_n_0\,
      O => \v_count[31]_i_1_n_0\
    );
\v_count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(10),
      I1 => v_count(11),
      I2 => v_count(8),
      I3 => v_count(27),
      O => \v_count[31]_i_10_n_0\
    );
\v_count[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_count(13),
      I1 => v_count(12),
      O => \v_count[31]_i_11_n_0\
    );
\v_count[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(2),
      I1 => v_count(3),
      I2 => v_count(0),
      I3 => v_count(1),
      O => \v_count[31]_i_12_n_0\
    );
\v_count[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(28),
      I1 => v_count(7),
      I2 => v_count(31),
      I3 => v_count(29),
      O => \v_count[31]_i_13_n_0\
    );
\v_count[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(26),
      I1 => v_count(30),
      I2 => v_count(24),
      I3 => v_count(25),
      O => \v_count[31]_i_14_n_0\
    );
\v_count[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(18),
      I1 => v_count(19),
      I2 => v_count(16),
      I3 => v_count(17),
      O => \v_count[31]_i_15_n_0\
    );
\v_count[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(7),
      O => \v_count[31]_i_16_n_0\
    );
\v_count[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(4),
      I2 => h_count(8),
      I3 => h_count(9),
      O => \v_count[31]_i_17_n_0\
    );
\v_count[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_count(13),
      I1 => h_count(12),
      I2 => h_count(15),
      I3 => h_count(14),
      O => \v_count[31]_i_18_n_0\
    );
\v_count[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \v_count[31]_i_10_n_0\,
      I1 => v_count(14),
      I2 => v_count(15),
      I3 => \v_count[31]_i_11_n_0\,
      I4 => \v_count[31]_i_12_n_0\,
      I5 => \v_count[31]_i_13_n_0\,
      O => \v_count[31]_i_3_n_0\
    );
\v_count[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(6),
      I2 => v_count(9),
      I3 => v_count(4),
      I4 => \v_count[31]_i_14_n_0\,
      O => \v_count[31]_i_4_n_0\
    );
\v_count[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_count(21),
      I1 => v_count(20),
      I2 => v_count(23),
      I3 => v_count(22),
      I4 => \v_count[31]_i_15_n_0\,
      O => \v_count[31]_i_5_n_0\
    );
\v_count[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(11),
      I2 => \v_count[31]_i_16_n_0\,
      I3 => \v_count[31]_i_17_n_0\,
      I4 => \h_count[31]_i_14_n_0\,
      I5 => \v_count[31]_i_18_n_0\,
      O => \v_count[31]_i_6_n_0\
    );
\v_count[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(31),
      O => \v_count[31]_i_7_n_0\
    );
\v_count[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(30),
      O => \v_count[31]_i_8_n_0\
    );
\v_count[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(29),
      O => \v_count[31]_i_9_n_0\
    );
\v_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(4),
      O => \v_count[4]_i_2_n_0\
    );
\v_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(3),
      O => \v_count[4]_i_3_n_0\
    );
\v_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(2),
      O => \v_count[4]_i_4_n_0\
    );
\v_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(1),
      O => \v_count[4]_i_5_n_0\
    );
\v_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(8),
      O => \v_count[8]_i_2_n_0\
    );
\v_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(7),
      O => \v_count[8]_i_3_n_0\
    );
\v_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(6),
      O => \v_count[8]_i_4_n_0\
    );
\v_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(5),
      O => \v_count[8]_i_5_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count[0]_i_1_n_0\,
      Q => v_count(0),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[12]_i_1_n_6\,
      Q => v_count(10),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[12]_i_1_n_5\,
      Q => v_count(11),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[12]_i_1_n_4\,
      Q => v_count(12),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[8]_i_1_n_0\,
      CO(3) => \v_count_reg[12]_i_1_n_0\,
      CO(2) => \v_count_reg[12]_i_1_n_1\,
      CO(1) => \v_count_reg[12]_i_1_n_2\,
      CO(0) => \v_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[12]_i_1_n_4\,
      O(2) => \v_count_reg[12]_i_1_n_5\,
      O(1) => \v_count_reg[12]_i_1_n_6\,
      O(0) => \v_count_reg[12]_i_1_n_7\,
      S(3) => \v_count[12]_i_2_n_0\,
      S(2) => \v_count[12]_i_3_n_0\,
      S(1) => \v_count[12]_i_4_n_0\,
      S(0) => \v_count[12]_i_5_n_0\
    );
\v_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[16]_i_1_n_7\,
      Q => v_count(13),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[16]_i_1_n_6\,
      Q => v_count(14),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[16]_i_1_n_5\,
      Q => v_count(15),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[16]_i_1_n_4\,
      Q => v_count(16),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[12]_i_1_n_0\,
      CO(3) => \v_count_reg[16]_i_1_n_0\,
      CO(2) => \v_count_reg[16]_i_1_n_1\,
      CO(1) => \v_count_reg[16]_i_1_n_2\,
      CO(0) => \v_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[16]_i_1_n_4\,
      O(2) => \v_count_reg[16]_i_1_n_5\,
      O(1) => \v_count_reg[16]_i_1_n_6\,
      O(0) => \v_count_reg[16]_i_1_n_7\,
      S(3) => \v_count[16]_i_2_n_0\,
      S(2) => \v_count[16]_i_3_n_0\,
      S(1) => \v_count[16]_i_4_n_0\,
      S(0) => \v_count[16]_i_5_n_0\
    );
\v_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[20]_i_1_n_7\,
      Q => v_count(17),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[20]_i_1_n_6\,
      Q => v_count(18),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[20]_i_1_n_5\,
      Q => v_count(19),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[4]_i_1_n_7\,
      Q => v_count(1),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[20]_i_1_n_4\,
      Q => v_count(20),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[16]_i_1_n_0\,
      CO(3) => \v_count_reg[20]_i_1_n_0\,
      CO(2) => \v_count_reg[20]_i_1_n_1\,
      CO(1) => \v_count_reg[20]_i_1_n_2\,
      CO(0) => \v_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[20]_i_1_n_4\,
      O(2) => \v_count_reg[20]_i_1_n_5\,
      O(1) => \v_count_reg[20]_i_1_n_6\,
      O(0) => \v_count_reg[20]_i_1_n_7\,
      S(3) => \v_count[20]_i_2_n_0\,
      S(2) => \v_count[20]_i_3_n_0\,
      S(1) => \v_count[20]_i_4_n_0\,
      S(0) => \v_count[20]_i_5_n_0\
    );
\v_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[24]_i_1_n_7\,
      Q => v_count(21),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[24]_i_1_n_6\,
      Q => v_count(22),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[24]_i_1_n_5\,
      Q => v_count(23),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[24]_i_1_n_4\,
      Q => v_count(24),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[20]_i_1_n_0\,
      CO(3) => \v_count_reg[24]_i_1_n_0\,
      CO(2) => \v_count_reg[24]_i_1_n_1\,
      CO(1) => \v_count_reg[24]_i_1_n_2\,
      CO(0) => \v_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[24]_i_1_n_4\,
      O(2) => \v_count_reg[24]_i_1_n_5\,
      O(1) => \v_count_reg[24]_i_1_n_6\,
      O(0) => \v_count_reg[24]_i_1_n_7\,
      S(3) => \v_count[24]_i_2_n_0\,
      S(2) => \v_count[24]_i_3_n_0\,
      S(1) => \v_count[24]_i_4_n_0\,
      S(0) => \v_count[24]_i_5_n_0\
    );
\v_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[28]_i_1_n_7\,
      Q => v_count(25),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[28]_i_1_n_6\,
      Q => v_count(26),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[28]_i_1_n_5\,
      Q => v_count(27),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[28]_i_1_n_4\,
      Q => v_count(28),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[24]_i_1_n_0\,
      CO(3) => \v_count_reg[28]_i_1_n_0\,
      CO(2) => \v_count_reg[28]_i_1_n_1\,
      CO(1) => \v_count_reg[28]_i_1_n_2\,
      CO(0) => \v_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[28]_i_1_n_4\,
      O(2) => \v_count_reg[28]_i_1_n_5\,
      O(1) => \v_count_reg[28]_i_1_n_6\,
      O(0) => \v_count_reg[28]_i_1_n_7\,
      S(3) => \v_count[28]_i_2_n_0\,
      S(2) => \v_count[28]_i_3_n_0\,
      S(1) => \v_count[28]_i_4_n_0\,
      S(0) => \v_count[28]_i_5_n_0\
    );
\v_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[31]_i_2_n_7\,
      Q => v_count(29),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[4]_i_1_n_6\,
      Q => v_count(2),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[31]_i_2_n_6\,
      Q => v_count(30),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[31]_i_2_n_5\,
      Q => v_count(31),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_v_count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_count_reg[31]_i_2_n_2\,
      CO(0) => \v_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v_count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2) => \v_count_reg[31]_i_2_n_5\,
      O(1) => \v_count_reg[31]_i_2_n_6\,
      O(0) => \v_count_reg[31]_i_2_n_7\,
      S(3) => '0',
      S(2) => \v_count[31]_i_7_n_0\,
      S(1) => \v_count[31]_i_8_n_0\,
      S(0) => \v_count[31]_i_9_n_0\
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[4]_i_1_n_5\,
      Q => v_count(3),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[4]_i_1_n_4\,
      Q => v_count(4),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_count_reg[4]_i_1_n_0\,
      CO(2) => \v_count_reg[4]_i_1_n_1\,
      CO(1) => \v_count_reg[4]_i_1_n_2\,
      CO(0) => \v_count_reg[4]_i_1_n_3\,
      CYINIT => v_count(0),
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[4]_i_1_n_4\,
      O(2) => \v_count_reg[4]_i_1_n_5\,
      O(1) => \v_count_reg[4]_i_1_n_6\,
      O(0) => \v_count_reg[4]_i_1_n_7\,
      S(3) => \v_count[4]_i_2_n_0\,
      S(2) => \v_count[4]_i_3_n_0\,
      S(1) => \v_count[4]_i_4_n_0\,
      S(0) => \v_count[4]_i_5_n_0\
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[8]_i_1_n_7\,
      Q => v_count(5),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[8]_i_1_n_6\,
      Q => v_count(6),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[8]_i_1_n_5\,
      Q => v_count(7),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[8]_i_1_n_4\,
      Q => v_count(8),
      R => \v_count[31]_i_1_n_0\
    );
\v_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[4]_i_1_n_0\,
      CO(3) => \v_count_reg[8]_i_1_n_0\,
      CO(2) => \v_count_reg[8]_i_1_n_1\,
      CO(1) => \v_count_reg[8]_i_1_n_2\,
      CO(0) => \v_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[8]_i_1_n_4\,
      O(2) => \v_count_reg[8]_i_1_n_5\,
      O(1) => \v_count_reg[8]_i_1_n_6\,
      O(0) => \v_count_reg[8]_i_1_n_7\,
      S(3) => \v_count[8]_i_2_n_0\,
      S(2) => \v_count[8]_i_3_n_0\,
      S(1) => \v_count[8]_i_4_n_0\,
      S(0) => \v_count[8]_i_5_n_0\
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sig,
      CE => v_count_0,
      D => \v_count_reg[12]_i_1_n_7\,
      Q => v_count(9),
      R => \v_count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0 is
  port (
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    VGA_RED : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_HSYNC : out STD_LOGIC;
    VGA_VSYNC : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BTND : in STD_LOGIC;
    BTNU : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTNC : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0 : entity is "cube_renderer_controller_v2_0";
end cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0;

architecture STRUCTURE of cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0 is
  signal COOR_H : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal COOR_V : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg13 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg15 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg9 : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_awvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
cube_renderer_controller_v2_0_S00_AXI_inst: entity work.cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0_S00_AXI
     port map (
      BTNC => BTNC,
      BTND => BTND,
      BTNL => BTNL,
      BTNR => BTNR,
      BTNU => BTNU,
      Q(31 downto 0) => slv_reg0(31 downto 0),
      SR(0) => axi_awready_i_1_n_0,
      SW(7 downto 0) => SW(7 downto 0),
      axi_arready_reg_0 => axi_rvalid_i_1_n_0,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      \axi_rdata_reg[31]_0\(31 downto 0) => slv_reg1(31 downto 0),
      \axi_rdata_reg[31]_1\(31 downto 0) => slv_reg2(31 downto 0),
      \axi_rdata_reg[31]_10\(31 downto 0) => slv_reg11(31 downto 0),
      \axi_rdata_reg[31]_11\(31 downto 0) => slv_reg12(31 downto 0),
      \axi_rdata_reg[31]_12\(31 downto 0) => slv_reg13(31 downto 0),
      \axi_rdata_reg[31]_13\(31 downto 0) => slv_reg14(31 downto 0),
      \axi_rdata_reg[31]_14\(31 downto 0) => slv_reg15(31 downto 0),
      \axi_rdata_reg[31]_2\(31 downto 0) => slv_reg3(31 downto 0),
      \axi_rdata_reg[31]_3\(31 downto 0) => slv_reg4(31 downto 0),
      \axi_rdata_reg[31]_4\(31 downto 0) => slv_reg5(31 downto 0),
      \axi_rdata_reg[31]_5\(31 downto 0) => slv_reg6(31 downto 0),
      \axi_rdata_reg[31]_6\(31 downto 0) => slv_reg7(31 downto 0),
      \axi_rdata_reg[31]_7\(31 downto 0) => slv_reg8(31 downto 0),
      \axi_rdata_reg[31]_8\(31 downto 0) => slv_reg9(31 downto 0),
      \axi_rdata_reg[31]_9\(31 downto 0) => slv_reg10(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(5 downto 0),
      s00_axi_arready => \^s00_axi_arready\,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(5 downto 0),
      s00_axi_awready => \^s00_axi_awready\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
renderer3D_inst: entity work.cube_renderering_system_cube_renderer_controller_0_0_renderer3D
     port map (
      CLK => CLK,
      COOR_V(31 downto 0) => COOR_V(31 downto 0),
      VGA_RED(0) => VGA_RED(0),
      \cube_screen_vertices[0][0]\(31 downto 0) => slv_reg0(31 downto 0),
      \cube_screen_vertices[0][1]\(31 downto 0) => slv_reg1(31 downto 0),
      \cube_screen_vertices[1][0]\(31 downto 0) => slv_reg2(31 downto 0),
      \cube_screen_vertices[1][1]\(31 downto 0) => slv_reg3(31 downto 0),
      \cube_screen_vertices[2][0]\(31 downto 0) => slv_reg4(31 downto 0),
      \cube_screen_vertices[2][1]\(31 downto 0) => slv_reg5(31 downto 0),
      \cube_screen_vertices[3][0]\(31 downto 0) => slv_reg6(31 downto 0),
      \cube_screen_vertices[3][1]\(31 downto 0) => slv_reg7(31 downto 0),
      \cube_screen_vertices[4][0]\(31 downto 0) => slv_reg8(31 downto 0),
      \cube_screen_vertices[4][1]\(31 downto 0) => slv_reg9(31 downto 0),
      \cube_screen_vertices[5][0]\(31 downto 0) => slv_reg10(31 downto 0),
      \cube_screen_vertices[5][1]\(31 downto 0) => slv_reg11(31 downto 0),
      \cube_screen_vertices[6][0]\(31 downto 0) => slv_reg12(31 downto 0),
      \cube_screen_vertices[6][1]\(31 downto 0) => slv_reg13(31 downto 0),
      \cube_screen_vertices[7][0]\(31 downto 0) => slv_reg14(31 downto 0),
      \cube_screen_vertices[7][1]\(31 downto 0) => slv_reg15(31 downto 0),
      \point[0]\(31 downto 0) => COOR_H(31 downto 0)
    );
vga_controller_inst: entity work.cube_renderering_system_cube_renderer_controller_0_0_vga_controller
     port map (
      CLK => CLK,
      COOR_V(31 downto 0) => COOR_V(31 downto 0),
      VGA_HSYNC => VGA_HSYNC,
      VGA_VSYNC => VGA_VSYNC,
      \point[0]\(31 downto 0) => COOR_H(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cube_renderering_system_cube_renderer_controller_0_0 is
  port (
    CLK : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BTNC : in STD_LOGIC;
    BTNU : in STD_LOGIC;
    BTND : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    VGA_BLUE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_GREEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_RED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HSYNC : out STD_LOGIC;
    VGA_VSYNC : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute NotValidForBitStream of cube_renderering_system_cube_renderer_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cube_renderering_system_cube_renderer_controller_0_0 : entity is "cube_renderering_system_cube_renderer_controller_0_0,cube_renderer_controller_v2_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cube_renderering_system_cube_renderer_controller_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of cube_renderering_system_cube_renderer_controller_0_0 : entity is "cube_renderer_controller_v2_0,Vivado 2016.3";
end cube_renderering_system_cube_renderer_controller_0_0;

architecture STRUCTURE of cube_renderering_system_cube_renderer_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^sw\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^vga_red\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  LED(7 downto 0) <= \^sw\(7 downto 0);
  VGA_BLUE(3) <= \^vga_red\(0);
  VGA_BLUE(2) <= \^vga_red\(0);
  VGA_BLUE(1) <= \^vga_red\(0);
  VGA_BLUE(0) <= \^vga_red\(0);
  VGA_GREEN(3) <= \^vga_red\(0);
  VGA_GREEN(2) <= \^vga_red\(0);
  VGA_GREEN(1) <= \^vga_red\(0);
  VGA_GREEN(0) <= \^vga_red\(0);
  VGA_RED(3) <= \^vga_red\(0);
  VGA_RED(2) <= \^vga_red\(0);
  VGA_RED(1) <= \^vga_red\(0);
  VGA_RED(0) <= \^vga_red\(0);
  \^sw\(7 downto 0) <= SW(7 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.cube_renderering_system_cube_renderer_controller_0_0_cube_renderer_controller_v2_0
     port map (
      BTNC => BTNC,
      BTND => BTND,
      BTNL => BTNL,
      BTNR => BTNR,
      BTNU => BTNU,
      CLK => CLK,
      SW(7 downto 0) => \^sw\(7 downto 0),
      VGA_HSYNC => VGA_HSYNC,
      VGA_RED(0) => \^vga_red\(0),
      VGA_VSYNC => VGA_VSYNC,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(7 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(7 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
