-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "12/13/2024 08:54:34"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Maquina3Bits IS
    PORT (
	clk : IN std_logic;
	x : IN std_logic;
	salida : OUT std_logic_vector(16 DOWNTO 0)
	);
END Maquina3Bits;

-- Design Ports Information


ARCHITECTURE structure OF Maquina3Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_salida : std_logic_vector(16 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97COUT1_121\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_130\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_131\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_132\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_133\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_134\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_135\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_122\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_123\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_124\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_125\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_126\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_127\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_128\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_129\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_136\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_137\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_138\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \clkint~regout\ : std_logic;
SIGNAL \x~combout\ : std_logic;
SIGNAL \state.s2~regout\ : std_logic;
SIGNAL \state.s3~regout\ : std_logic;
SIGNAL \state.s4~regout\ : std_logic;
SIGNAL \state.s5~regout\ : std_logic;
SIGNAL \state.s6~regout\ : std_logic;
SIGNAL \state.s0~regout\ : std_logic;
SIGNAL \state.s1~regout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL counTime : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_x <= x;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X4_Y1_N3
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (!counTime(0))
-- \Add0~97\ = CARRY((counTime(0)))
-- \Add0~97COUT1_121\ = CARRY((counTime(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_121\);

-- Location: LC_X4_Y1_N4
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (counTime(1) $ ((\Add0~97\)))
-- \Add0~92\ = CARRY(((!\Add0~97COUT1_121\) # (!counTime(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(1),
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout => \Add0~92\);

-- Location: LC_X4_Y1_N5
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (counTime(2) $ ((!\Add0~92\)))
-- \Add0~87\ = CARRY(((counTime(2) & !\Add0~92\)))
-- \Add0~87COUT1_122\ = CARRY(((counTime(2) & !\Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(2),
	cin => \Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_122\);

-- Location: LC_X5_Y1_N5
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = counTime(12) $ ((((!\Add0~37\))))
-- \Add0~22\ = CARRY((counTime(12) & ((!\Add0~37\))))
-- \Add0~22COUT1_130\ = CARRY((counTime(12) & ((!\Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(12),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_130\);

-- Location: LC_X5_Y1_N6
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (counTime(13) $ (((!\Add0~37\ & \Add0~22\) # (\Add0~37\ & \Add0~22COUT1_130\))))
-- \Add0~32\ = CARRY(((!\Add0~22\) # (!counTime(13))))
-- \Add0~32COUT1_131\ = CARRY(((!\Add0~22COUT1_130\) # (!counTime(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(13),
	cin => \Add0~37\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_131\);

-- Location: LC_X6_Y1_N8
\counTime[13]\ : maxii_lcell
-- Equation(s):
-- counTime(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(13));

-- Location: LC_X5_Y1_N7
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (counTime(14) $ ((!(!\Add0~37\ & \Add0~32\) # (\Add0~37\ & \Add0~32COUT1_131\))))
-- \Add0~27\ = CARRY(((counTime(14) & !\Add0~32\)))
-- \Add0~27COUT1_132\ = CARRY(((counTime(14) & !\Add0~32COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(14),
	cin => \Add0~37\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_132\);

-- Location: LC_X3_Y1_N8
\counTime[14]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (counTime(12) & (!counTime(11) & (!counTime[14] & !counTime(13))))
-- counTime(14) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(12),
	datab => counTime(11),
	datac => \Add0~25_combout\,
	datad => counTime(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => counTime(14));

-- Location: LC_X5_Y1_N8
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (counTime(15) $ (((!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_132\))))
-- \Add0~2\ = CARRY(((!\Add0~27\) # (!counTime(15))))
-- \Add0~2COUT1_133\ = CARRY(((!\Add0~27COUT1_132\) # (!counTime(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(15),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_133\);

-- Location: LC_X7_Y1_N2
\counTime[15]\ : maxii_lcell
-- Equation(s):
-- counTime(15) = DFFEAS((\Add0~0_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Add0~0_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(15));

-- Location: LC_X5_Y1_N9
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = counTime(16) $ ((((!(!\Add0~37\ & \Add0~2\) # (\Add0~37\ & \Add0~2COUT1_133\)))))
-- \Add0~17\ = CARRY((counTime(16) & ((!\Add0~2COUT1_133\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(16),
	cin => \Add0~37\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X6_Y1_N7
\counTime[16]\ : maxii_lcell
-- Equation(s):
-- counTime(16) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(16));

-- Location: LC_X6_Y1_N0
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (counTime(17) $ ((\Add0~17\)))
-- \Add0~12\ = CARRY(((!\Add0~17\) # (!counTime(17))))
-- \Add0~12COUT1_134\ = CARRY(((!\Add0~17\) # (!counTime(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(17),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_134\);

-- Location: LC_X7_Y1_N5
\counTime[17]\ : maxii_lcell
-- Equation(s):
-- counTime(17) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(17));

-- Location: LC_X6_Y1_N1
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (counTime(18) $ ((!(!\Add0~17\ & \Add0~12\) # (\Add0~17\ & \Add0~12COUT1_134\))))
-- \Add0~7\ = CARRY(((counTime(18) & !\Add0~12\)))
-- \Add0~7COUT1_135\ = CARRY(((counTime(18) & !\Add0~12COUT1_134\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(18),
	cin => \Add0~17\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_135\);

-- Location: LC_X7_Y1_N4
\counTime[18]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!counTime(17) & (counTime(15) & (!counTime[18] & !counTime(16))))
-- counTime(18) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(17),
	datab => counTime(15),
	datac => \Add0~5_combout\,
	datad => counTime(16),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => counTime(18));

-- Location: LC_X6_Y1_N2
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (counTime(19) $ (((!\Add0~17\ & \Add0~7\) # (\Add0~17\ & \Add0~7COUT1_135\))))
-- \Add0~82\ = CARRY(((!\Add0~7\) # (!counTime(19))))
-- \Add0~82COUT1_136\ = CARRY(((!\Add0~7COUT1_135\) # (!counTime(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(19),
	cin => \Add0~17\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_136\);

-- Location: LC_X7_Y1_N8
\counTime[19]\ : maxii_lcell
-- Equation(s):
-- counTime(19) = DFFEAS((\Add0~80_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Equal0~4_combout\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(19));

-- Location: LC_X3_Y1_N6
\counTime[2]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (!counTime(1) & (!counTime(0) & (!counTime[2] & counTime(19))))
-- counTime(2) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(1),
	datab => counTime(0),
	datac => \Add0~85_combout\,
	datad => counTime(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => counTime(2));

-- Location: LC_X4_Y1_N6
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (counTime(3) $ (((!\Add0~92\ & \Add0~87\) # (\Add0~92\ & \Add0~87COUT1_122\))))
-- \Add0~77\ = CARRY(((!\Add0~87\) # (!counTime(3))))
-- \Add0~77COUT1_123\ = CARRY(((!\Add0~87COUT1_122\) # (!counTime(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(3),
	cin => \Add0~92\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_123\);

-- Location: LC_X3_Y1_N7
\counTime[3]\ : maxii_lcell
-- Equation(s):
-- counTime(3) = DFFEAS((((\Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(3));

-- Location: LC_X4_Y1_N7
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (counTime(4) $ ((!(!\Add0~92\ & \Add0~77\) # (\Add0~92\ & \Add0~77COUT1_123\))))
-- \Add0~72\ = CARRY(((counTime(4) & !\Add0~77\)))
-- \Add0~72COUT1_124\ = CARRY(((counTime(4) & !\Add0~77COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(4),
	cin => \Add0~92\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_124\);

-- Location: LC_X3_Y1_N2
\counTime[4]\ : maxii_lcell
-- Equation(s):
-- counTime(4) = DFFEAS((((\Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(4));

-- Location: LC_X4_Y1_N8
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = counTime(5) $ (((((!\Add0~92\ & \Add0~72\) # (\Add0~92\ & \Add0~72COUT1_124\)))))
-- \Add0~67\ = CARRY(((!\Add0~72\)) # (!counTime(5)))
-- \Add0~67COUT1_125\ = CARRY(((!\Add0~72COUT1_124\)) # (!counTime(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(5),
	cin => \Add0~92\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_125\);

-- Location: LC_X3_Y1_N9
\counTime[5]\ : maxii_lcell
-- Equation(s):
-- counTime(5) = DFFEAS((((\Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(5));

-- Location: LC_X4_Y1_N9
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = counTime(6) $ ((((!(!\Add0~92\ & \Add0~67\) # (\Add0~92\ & \Add0~67COUT1_125\)))))
-- \Add0~62\ = CARRY((counTime(6) & ((!\Add0~67COUT1_125\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(6),
	cin => \Add0~92\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X3_Y1_N1
\counTime[6]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (!counTime(4) & (!counTime(3) & (!counTime[6] & !counTime(5))))
-- counTime(6) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(4),
	datab => counTime(3),
	datac => \Add0~60_combout\,
	datad => counTime(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => counTime(6));

-- Location: LC_X5_Y1_N0
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (counTime(7) $ ((\Add0~62\)))
-- \Add0~52\ = CARRY(((!\Add0~62\) # (!counTime(7))))
-- \Add0~52COUT1_126\ = CARRY(((!\Add0~62\) # (!counTime(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(7),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_126\);

-- Location: LC_X3_Y1_N5
\counTime[7]\ : maxii_lcell
-- Equation(s):
-- counTime(7) = DFFEAS((\Add0~50_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Equal0~4_combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(7));

-- Location: LC_X5_Y1_N1
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (counTime(8) $ ((!(!\Add0~62\ & \Add0~52\) # (\Add0~62\ & \Add0~52COUT1_126\))))
-- \Add0~57\ = CARRY(((counTime(8) & !\Add0~52\)))
-- \Add0~57COUT1_127\ = CARRY(((counTime(8) & !\Add0~52COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(8),
	cin => \Add0~62\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_127\);

-- Location: LC_X4_Y1_N2
\counTime[8]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (counTime(7) & (counTime(9) & (!counTime[8] & counTime(10))))
-- counTime(8) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(7),
	datab => counTime(9),
	datac => \Add0~55_combout\,
	datad => counTime(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => counTime(8));

-- Location: LC_X5_Y1_N2
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = counTime(9) $ (((((!\Add0~62\ & \Add0~57\) # (\Add0~62\ & \Add0~57COUT1_127\)))))
-- \Add0~47\ = CARRY(((!\Add0~57\)) # (!counTime(9)))
-- \Add0~47COUT1_128\ = CARRY(((!\Add0~57COUT1_127\)) # (!counTime(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(9),
	cin => \Add0~62\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_128\);

-- Location: LC_X4_Y1_N1
\counTime[9]\ : maxii_lcell
-- Equation(s):
-- counTime(9) = DFFEAS((\Add0~45_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Equal0~5\,
	datac => \Add0~45_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(9));

-- Location: LC_X5_Y1_N3
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (counTime(10) $ ((!(!\Add0~62\ & \Add0~47\) # (\Add0~62\ & \Add0~47COUT1_128\))))
-- \Add0~42\ = CARRY(((counTime(10) & !\Add0~47\)))
-- \Add0~42COUT1_129\ = CARRY(((counTime(10) & !\Add0~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(10),
	cin => \Add0~62\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_129\);

-- Location: LC_X3_Y1_N4
\counTime[10]\ : maxii_lcell
-- Equation(s):
-- counTime(10) = DFFEAS((\Add0~40_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Equal0~4_combout\,
	datad => \Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(10));

-- Location: LC_X5_Y1_N4
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (counTime(11) $ (((!\Add0~62\ & \Add0~42\) # (\Add0~62\ & \Add0~42COUT1_129\))))
-- \Add0~37\ = CARRY(((!\Add0~42COUT1_129\) # (!counTime(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(11),
	cin => \Add0~62\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X6_Y1_N9
\counTime[11]\ : maxii_lcell
-- Equation(s):
-- counTime(11) = DFFEAS((((\Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(11));

-- Location: LC_X4_Y1_N0
\counTime[12]\ : maxii_lcell
-- Equation(s):
-- counTime(12) = DFFEAS((\Add0~20_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Add0~20_combout\,
	datac => \Equal0~5\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(12));

-- Location: LC_X3_Y1_N3
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1\ & (\Equal0~3\ & (\Equal0~2\ & \Equal0~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1\,
	datab => \Equal0~3\,
	datac => \Equal0~2\,
	datad => \Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X3_Y1_N0
\counTime[0]\ : maxii_lcell
-- Equation(s):
-- counTime(0) = DFFEAS((\Add0~95_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Add0~95_combout\,
	datac => \Equal0~6\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(0));

-- Location: LC_X7_Y1_N9
\counTime[1]\ : maxii_lcell
-- Equation(s):
-- counTime(1) = DFFEAS((((\Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(1));

-- Location: LC_X6_Y1_N5
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = counTime(22) $ ((((!\Add0~112\))))
-- \Add0~117\ = CARRY((counTime(22) & ((!\Add0~112\))))
-- \Add0~117COUT1_138\ = CARRY((counTime(22) & ((!\Add0~112\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(22),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_138\);

-- Location: LC_X7_Y1_N7
\counTime[22]\ : maxii_lcell
-- Equation(s):
-- counTime(22) = DFFEAS((((\Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(22));

-- Location: LC_X6_Y1_N3
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = counTime(20) $ ((((!(!\Add0~17\ & \Add0~82\) # (\Add0~17\ & \Add0~82COUT1_136\)))))
-- \Add0~102\ = CARRY((counTime(20) & ((!\Add0~82\))))
-- \Add0~102COUT1_137\ = CARRY((counTime(20) & ((!\Add0~82COUT1_136\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(20),
	cin => \Add0~17\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_137\);

-- Location: LC_X7_Y1_N3
\counTime[20]\ : maxii_lcell
-- Equation(s):
-- counTime(20) = DFFEAS((\Add0~100_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Equal0~4_combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(20));

-- Location: LC_X6_Y1_N4
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = counTime(21) $ (((((!\Add0~17\ & \Add0~102\) # (\Add0~17\ & \Add0~102COUT1_137\)))))
-- \Add0~112\ = CARRY(((!\Add0~102COUT1_137\)) # (!counTime(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(21),
	cin => \Add0~17\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X7_Y1_N1
\counTime[21]\ : maxii_lcell
-- Equation(s):
-- \Equal0~6\ = (counTime(23) & (!counTime(22) & (!counTime[21] & counTime(20))))
-- counTime(21) = DFFEAS(\Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(23),
	datab => counTime(22),
	datac => \Add0~110_combout\,
	datad => counTime(20),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => counTime(21));

-- Location: LC_X6_Y1_N6
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (((!\Add0~112\ & \Add0~117\) # (\Add0~112\ & \Add0~117COUT1_138\) $ (counTime(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => counTime(23),
	cin => \Add0~112\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\);

-- Location: LC_X7_Y1_N6
\counTime[23]\ : maxii_lcell
-- Equation(s):
-- counTime(23) = DFFEAS((\Add0~105_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Add0~105_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(23));

-- Location: LC_X2_Y3_N2
clkint : maxii_lcell
-- Equation(s):
-- \clkint~regout\ = DFFEAS(\clkint~regout\ $ (((\Equal0~6\ & (\Equal0~4_combout\ & \Equal0~5\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \clkint~regout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkint~regout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x,
	combout => \x~combout\);

-- Location: LC_X4_Y3_N9
\state.s2\ : maxii_lcell
-- Equation(s):
-- \state.s2~regout\ = DFFEAS((\x~combout\ & (((\state.s1~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s2~regout\);

-- Location: LC_X4_Y3_N6
\state.s3\ : maxii_lcell
-- Equation(s):
-- \state.s3~regout\ = DFFEAS((!\x~combout\ & (((\state.s1~regout\) # (\state.s2~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s1~regout\,
	datad => \state.s2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s3~regout\);

-- Location: LC_X4_Y3_N7
\state.s4\ : maxii_lcell
-- Equation(s):
-- \state.s4~regout\ = DFFEAS((\x~combout\ & (((\state.s3~regout\) # (\state.s2~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s3~regout\,
	datad => \state.s2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s4~regout\);

-- Location: LC_X4_Y3_N8
\state.s5\ : maxii_lcell
-- Equation(s):
-- \state.s5~regout\ = DFFEAS((!\x~combout\ & (((\state.s4~regout\) # (\state.s3~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s4~regout\,
	datad => \state.s3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s5~regout\);

-- Location: LC_X4_Y3_N5
\state.s6\ : maxii_lcell
-- Equation(s):
-- \state.s6~regout\ = DFFEAS((\x~combout\ & (((\state.s4~regout\) # (\state.s5~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s4~regout\,
	datad => \state.s5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s6~regout\);

-- Location: LC_X4_Y3_N1
\state.s0\ : maxii_lcell
-- Equation(s):
-- \state.s0~regout\ = DFFEAS((\x~combout\) # (((!\state.s6~regout\ & !\state.s5~regout\))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s6~regout\,
	datad => \state.s5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s0~regout\);

-- Location: LC_X4_Y3_N0
\state.s1\ : maxii_lcell
-- Equation(s):
-- \state.s1~regout\ = DFFEAS((((\x~combout\ & \state.s6~regout\)) # (!\state.s0~regout\)), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\,
	datac => \state.s6~regout\,
	datad => \state.s0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s1~regout\);

-- Location: LC_X4_Y3_N2
\WideOr4~0\ : maxii_lcell
-- Equation(s):
-- \WideOr4~0_combout\ = ((!\state.s1~regout\ & (!\state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~regout\,
	datac => \state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~0_combout\);

-- Location: LC_X4_Y3_N4
\WideOr5~0\ : maxii_lcell
-- Equation(s):
-- \WideOr5~0_combout\ = (!\state.s3~regout\ & (((!\state.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~regout\,
	datac => \state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~0_combout\);

-- Location: LC_X4_Y3_N3
\WideOr6~0\ : maxii_lcell
-- Equation(s):
-- \WideOr6~0_combout\ = (\state.s4~regout\) # ((\state.s2~regout\) # ((\state.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~regout\,
	datab => \state.s2~regout\,
	datac => \state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~0_combout\);

-- Location: LC_X5_Y3_N5
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\WideOr5~0_combout\ & ((\WideOr6~0_combout\ $ (!\state.s0~regout\)))) # (!\WideOr5~0_combout\ & (((\WideOr4~0_combout\ & \state.s0~regout\)) # (!\WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e30f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X5_Y3_N3
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = ((\WideOr4~0_combout\ & (\WideOr5~0_combout\ & \WideOr6~0_combout\)) # (!\WideOr4~0_combout\ & (!\WideOr5~0_combout\))) # (!\state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "91ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X5_Y3_N7
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\WideOr6~0_combout\ & (((\WideOr5~0_combout\ & \state.s0~regout\)))) # (!\WideOr6~0_combout\ & (((!\state.s0~regout\)) # (!\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c50f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X5_Y3_N9
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (!\WideOr6~0_combout\ & (((!\WideOr4~0_combout\ & !\WideOr5~0_combout\)) # (!\state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "010f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X5_Y3_N2
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\WideOr4~0_combout\ & (\WideOr6~0_combout\ $ (((!\WideOr5~0_combout\ & \state.s0~regout\))))) # (!\WideOr4~0_combout\ & (\WideOr6~0_combout\ & ((!\state.s0~regout\) # (!\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "92f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X5_Y3_N4
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\state.s0~regout\ & ((\WideOr4~0_combout\) # (\WideOr5~0_combout\ $ (!\WideOr6~0_combout\)))) # (!\state.s0~regout\ & (((!\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X5_Y3_N8
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\WideOr5~0_combout\ & ((\WideOr6~0_combout\ & ((!\state.s0~regout\))) # (!\WideOr6~0_combout\ & (\WideOr4~0_combout\ & \state.s0~regout\)))) # (!\WideOr5~0_combout\ & (((\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "38f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X5_Y3_N6
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\state.s0~regout\ & (!\WideOr5~0_combout\ & (\WideOr4~0_combout\ $ (\WideOr6~0_combout\)))) # (!\state.s0~regout\ & (((\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "12f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(0));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~0_combout\,
	oe => VCC,
	padio => ww_salida(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~0_combout\,
	oe => VCC,
	padio => ww_salida(4));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(5));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(6));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	oe => VCC,
	padio => ww_salida(7));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(8));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(9));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(10));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(11));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_salida(12));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_salida(13));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	oe => VCC,
	padio => ww_salida(14));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_salida(15));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(16));
END structure;


