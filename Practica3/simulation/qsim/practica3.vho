-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "03/10/2022 22:03:53"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica3 IS
    PORT (
	edoPres : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	entradaA : IN std_logic_vector(3 DOWNTO 0);
	liga : OUT std_logic_vector(2 DOWNTO 0);
	salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica3;

-- Design Ports Information
-- edoPres[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_edoPres : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entradaA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_liga : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \edoPres[2]~output_o\ : std_logic;
SIGNAL \edoPres[1]~output_o\ : std_logic;
SIGNAL \edoPres[0]~output_o\ : std_logic;
SIGNAL \liga[2]~output_o\ : std_logic;
SIGNAL \liga[1]~output_o\ : std_logic;
SIGNAL \liga[0]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst|internal_value[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

edoPres <= ww_edoPres;
ww_clk <= clk;
ww_reset <= reset;
ww_entradaA <= entradaA;
liga <= ww_liga;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst3|ALT_INV_Mux5~0_combout\ <= NOT \inst3|Mux5~0_combout\;
\inst3|ALT_INV_Mux2~0_combout\ <= NOT \inst3|Mux2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X26_Y39_N16
\edoPres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|internal_value\(2),
	devoe => ww_devoe,
	o => \edoPres[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\edoPres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|internal_value\(1),
	devoe => ww_devoe,
	o => \edoPres[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\edoPres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|internal_value\(0),
	devoe => ww_devoe,
	o => \edoPres[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\liga[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \liga[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\liga[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \liga[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\liga[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \liga[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y39_N1
\entradaA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\entradaA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\entradaA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\entradaA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

-- Location: LCCOMB_X30_Y37_N24
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\entradaA[2]~input_o\ & (!\entradaA[3]~input_o\ & ((\entradaA[1]~input_o\)))) # (!\entradaA[2]~input_o\ & (\entradaA[3]~input_o\ & (!\entradaA[0]~input_o\ & !\entradaA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \entradaA[0]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X30_Y37_N25
\inst|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|internal_value\(2));

-- Location: LCCOMB_X30_Y37_N18
\inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (!\entradaA[3]~input_o\ & (\entradaA[2]~input_o\ $ (\entradaA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux1~0_combout\);

-- Location: FF_X30_Y37_N19
\inst|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|internal_value\(1));

-- Location: LCCOMB_X30_Y37_N30
\inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\entradaA[2]~input_o\ & ((\entradaA[3]~input_o\) # ((\entradaA[1]~input_o\) # (!\entradaA[0]~input_o\)))) # (!\entradaA[2]~input_o\ & (\entradaA[1]~input_o\ $ (((!\entradaA[3]~input_o\ & \entradaA[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \entradaA[0]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y37_N12
\inst|internal_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|internal_value[0]~0_combout\ = !\inst3|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mux2~0_combout\,
	combout => \inst|internal_value[0]~0_combout\);

-- Location: FF_X30_Y37_N13
\inst|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|internal_value[0]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|internal_value\(0));

-- Location: LCCOMB_X30_Y37_N16
\inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\entradaA[2]~input_o\ & (!\entradaA[3]~input_o\ & (\entradaA[0]~input_o\ & \entradaA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \entradaA[0]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y37_N10
\inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (!\entradaA[2]~input_o\ & ((\entradaA[3]~input_o\ & (\entradaA[0]~input_o\ & !\entradaA[1]~input_o\)) # (!\entradaA[3]~input_o\ & (!\entradaA[0]~input_o\ & \entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \entradaA[0]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y37_N28
\inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\entradaA[3]~input_o\) # ((\entradaA[2]~input_o\ & (\entradaA[0]~input_o\ & \entradaA[1]~input_o\)) # (!\entradaA[2]~input_o\ & ((\entradaA[0]~input_o\) # (\entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \entradaA[0]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y37_N22
\inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (!\entradaA[3]~input_o\ & ((\entradaA[2]~input_o\ & (!\entradaA[0]~input_o\ & !\entradaA[1]~input_o\)) # (!\entradaA[2]~input_o\ & (\entradaA[0]~input_o\ & \entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \entradaA[0]~input_o\,
	datad => \entradaA[1]~input_o\,
	combout => \inst3|Mux6~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_edoPres(2) <= \edoPres[2]~output_o\;

ww_edoPres(1) <= \edoPres[1]~output_o\;

ww_edoPres(0) <= \edoPres[0]~output_o\;

ww_liga(2) <= \liga[2]~output_o\;

ww_liga(1) <= \liga[1]~output_o\;

ww_liga(0) <= \liga[0]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


