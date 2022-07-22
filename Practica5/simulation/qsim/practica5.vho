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

-- DATE "03/31/2022 21:01:11"

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

ENTITY 	practica5 IS
    PORT (
	VF : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	V : IN std_logic;
	W : IN std_logic;
	X : IN std_logic;
	Z : IN std_logic;
	Edo_presente : OUT std_logic_vector(2 DOWNTO 0);
	prueba : OUT std_logic_vector(2 DOWNTO 0);
	Salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica5;

-- Design Ports Information
-- VF	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_presente[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_presente[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_presente[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VF : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Edo_presente : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_prueba : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \VF~output_o\ : std_logic;
SIGNAL \Edo_presente[2]~output_o\ : std_logic;
SIGNAL \Edo_presente[1]~output_o\ : std_logic;
SIGNAL \Edo_presente[0]~output_o\ : std_logic;
SIGNAL \prueba[2]~output_o\ : std_logic;
SIGNAL \prueba[1]~output_o\ : std_logic;
SIGNAL \prueba[0]~output_o\ : std_logic;
SIGNAL \Salidas[3]~output_o\ : std_logic;
SIGNAL \Salidas[2]~output_o\ : std_logic;
SIGNAL \Salidas[1]~output_o\ : std_logic;
SIGNAL \Salidas[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \inst3|O~1_combout\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst3|O~0_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \inst3|O~2_combout\ : std_logic;
SIGNAL \inst3|O~3_combout\ : std_logic;
SIGNAL \inst8|inst|salida[2]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst|salida[0]~3_combout\ : std_logic;
SIGNAL \inst8|inst|salida[1]~1_combout\ : std_logic;
SIGNAL \inst8|inst|salida[1]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst8|inst1|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

VF <= ww_VF;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_V <= V;
ww_W <= W;
ww_X <= X;
ww_Z <= Z;
Edo_presente <= ww_Edo_presente;
prueba <= ww_prueba;
Salidas <= ww_Salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_Mux14~0_combout\ <= NOT \inst1|Mux14~0_combout\;
\inst1|ALT_INV_Mux12~0_combout\ <= NOT \inst1|Mux12~0_combout\;
\inst1|ALT_INV_Mux1~0_combout\ <= NOT \inst1|Mux1~0_combout\;
\inst1|ALT_INV_Mux3~0_combout\ <= NOT \inst1|Mux3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X58_Y54_N30
\VF~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \VF~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Edo_presente[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|internal_value\(2),
	devoe => ww_devoe,
	o => \Edo_presente[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Edo_presente[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|internal_value\(1),
	devoe => ww_devoe,
	o => \Edo_presente[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Edo_presente[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|internal_value\(0),
	devoe => ww_devoe,
	o => \Edo_presente[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\prueba[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \prueba[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\prueba[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \prueba[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\prueba[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \prueba[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\Salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Salidas[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => \Salidas[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\Salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Salidas[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Salidas[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N1
\Z~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X57_Y53_N22
\inst3|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O~1_combout\ = (\Z~input_o\ & (!\inst8|inst1|internal_value\(2) & (\inst8|inst1|internal_value\(1) & !\inst8|inst1|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~input_o\,
	datab => \inst8|inst1|internal_value\(2),
	datac => \inst8|inst1|internal_value\(1),
	datad => \inst8|inst1|internal_value\(0),
	combout => \inst3|O~1_combout\);

-- Location: IOIBUF_X58_Y54_N8
\W~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X57_Y53_N4
\inst3|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O~0_combout\ = (\W~input_o\ & (\inst8|inst1|internal_value\(2) & (!\inst8|inst1|internal_value\(1) & !\inst8|inst1|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \inst8|inst1|internal_value\(2),
	datac => \inst8|inst1|internal_value\(1),
	datad => \inst8|inst1|internal_value\(0),
	combout => \inst3|O~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\X~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\V~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

-- Location: LCCOMB_X57_Y53_N0
\inst3|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O~2_combout\ = (!\inst8|inst1|internal_value\(2) & ((\inst8|inst1|internal_value\(0) & (\X~input_o\)) # (!\inst8|inst1|internal_value\(0) & ((\V~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \V~input_o\,
	datac => \inst8|inst1|internal_value\(2),
	datad => \inst8|inst1|internal_value\(0),
	combout => \inst3|O~2_combout\);

-- Location: LCCOMB_X57_Y53_N6
\inst3|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O~3_combout\ = (\inst3|O~1_combout\) # ((\inst3|O~0_combout\) # ((!\inst8|inst1|internal_value\(1) & \inst3|O~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|O~1_combout\,
	datab => \inst8|inst1|internal_value\(1),
	datac => \inst3|O~0_combout\,
	datad => \inst3|O~2_combout\,
	combout => \inst3|O~3_combout\);

-- Location: LCCOMB_X57_Y53_N8
\inst8|inst|salida[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst|salida[2]~0_combout\ = (\inst8|inst1|internal_value\(1) & ((\inst8|inst1|internal_value\(2) & (!\inst8|inst1|internal_value\(0))) # (!\inst8|inst1|internal_value\(2) & ((!\inst3|O~3_combout\))))) # (!\inst8|inst1|internal_value\(1) & 
-- (\inst8|inst1|internal_value\(0) $ (\inst8|inst1|internal_value\(2) $ (\inst3|O~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(0),
	datab => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(2),
	datad => \inst3|O~3_combout\,
	combout => \inst8|inst|salida[2]~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X57_Y53_N9
\inst8|inst1|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|salida[2]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|internal_value\(2));

-- Location: LCCOMB_X57_Y53_N20
\inst8|inst|salida[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst|salida[0]~3_combout\ = (\inst8|inst1|internal_value\(1) & (\inst8|inst1|internal_value\(0) $ (((\inst3|O~3_combout\) # (!\inst8|inst1|internal_value\(2)))))) # (!\inst8|inst1|internal_value\(1) & (((!\inst3|O~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(2),
	datab => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst3|O~3_combout\,
	combout => \inst8|inst|salida[0]~3_combout\);

-- Location: FF_X57_Y53_N21
\inst8|inst1|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|salida[0]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|internal_value\(0));

-- Location: LCCOMB_X57_Y53_N2
\inst8|inst|salida[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst|salida[1]~1_combout\ = (!\inst8|inst1|internal_value\(1) & ((\inst8|inst1|internal_value\(0)) # (\inst3|O~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst3|O~2_combout\,
	combout => \inst8|inst|salida[1]~1_combout\);

-- Location: LCCOMB_X57_Y53_N14
\inst8|inst|salida[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst|salida[1]~2_combout\ = (\inst8|inst|salida[1]~1_combout\) # ((!\inst8|inst1|internal_value\(0) & ((\inst3|O~0_combout\) # (\inst3|O~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(0),
	datab => \inst3|O~0_combout\,
	datac => \inst3|O~1_combout\,
	datad => \inst8|inst|salida[1]~1_combout\,
	combout => \inst8|inst|salida[1]~2_combout\);

-- Location: FF_X57_Y53_N15
\inst8|inst1|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|salida[1]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|internal_value\(1));

-- Location: LCCOMB_X57_Y53_N10
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst8|inst1|internal_value\(1) & ((\inst8|inst1|internal_value\(2)) # (!\inst8|inst1|internal_value\(0)))) # (!\inst8|inst1|internal_value\(1) & (\inst8|inst1|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst8|inst1|internal_value\(2),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y53_N28
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst8|inst1|internal_value\(1) & ((\inst8|inst1|internal_value\(0)) # (\inst8|inst1|internal_value\(2)))) # (!\inst8|inst1|internal_value\(1) & (\inst8|inst1|internal_value\(0) & \inst8|inst1|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst8|inst1|internal_value\(2),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y53_N26
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst8|inst1|internal_value\(2)) # (\inst8|inst1|internal_value\(1) $ (!\inst8|inst1|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(2),
	datad => \inst8|inst1|internal_value\(0),
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y53_N16
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (!\inst8|inst1|internal_value\(0) & (\inst8|inst1|internal_value\(1) $ (\inst8|inst1|internal_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(2),
	datad => \inst8|inst1|internal_value\(0),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y53_N30
\inst1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = \inst8|inst1|internal_value\(1) $ (((\inst8|inst1|internal_value\(2)) # (\inst8|inst1|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(2),
	datad => \inst8|inst1|internal_value\(0),
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X57_Y53_N12
\inst1|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst8|inst1|internal_value\(2) & (((\inst8|inst1|internal_value\(0))))) # (!\inst8|inst1|internal_value\(2) & (\inst8|inst1|internal_value\(1) $ (((\inst8|inst1|internal_value\(0)) # (!\inst3|O~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|O~3_combout\,
	datab => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst8|inst1|internal_value\(2),
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y53_N18
\inst1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst8|inst1|internal_value\(2) & (((!\inst8|inst1|internal_value\(1))))) # (!\inst8|inst1|internal_value\(2) & (\inst8|inst1|internal_value\(0) $ (((\inst8|inst1|internal_value\(1)) # (!\inst3|O~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|O~3_combout\,
	datab => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst8|inst1|internal_value\(2),
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y53_N24
\inst1|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = (\inst3|O~3_combout\ & (\inst8|inst1|internal_value\(1) & (\inst8|inst1|internal_value\(0) $ (!\inst8|inst1|internal_value\(2))))) # (!\inst3|O~3_combout\ & (\inst8|inst1|internal_value\(0) & (\inst8|inst1|internal_value\(1) $ 
-- (!\inst8|inst1|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|O~3_combout\,
	datab => \inst8|inst1|internal_value\(1),
	datac => \inst8|inst1|internal_value\(0),
	datad => \inst8|inst1|internal_value\(2),
	combout => \inst1|Mux14~0_combout\);

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

ww_VF <= \VF~output_o\;

ww_Edo_presente(2) <= \Edo_presente[2]~output_o\;

ww_Edo_presente(1) <= \Edo_presente[1]~output_o\;

ww_Edo_presente(0) <= \Edo_presente[0]~output_o\;

ww_prueba(2) <= \prueba[2]~output_o\;

ww_prueba(1) <= \prueba[1]~output_o\;

ww_prueba(0) <= \prueba[0]~output_o\;

ww_Salidas(3) <= \Salidas[3]~output_o\;

ww_Salidas(2) <= \Salidas[2]~output_o\;

ww_Salidas(1) <= \Salidas[1]~output_o\;

ww_Salidas(0) <= \Salidas[0]~output_o\;
END structure;


