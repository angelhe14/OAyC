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

-- DATE "03/17/2022 21:36:30"

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

ENTITY 	practica4 IS
    PORT (
	Edo_sig : OUT std_logic_vector(2 DOWNTO 0);
	W : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	Z : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	edoPres : OUT std_logic_vector(2 DOWNTO 0);
	O : OUT std_logic_vector(4 DOWNTO 0);
	prueba : OUT std_logic_vector(1 DOWNTO 0)
	);
END practica4;

-- Design Ports Information
-- Edo_sig[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_sig[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_sig[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Edo_sig : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_edoPres : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_prueba : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Edo_sig[2]~output_o\ : std_logic;
SIGNAL \Edo_sig[1]~output_o\ : std_logic;
SIGNAL \Edo_sig[0]~output_o\ : std_logic;
SIGNAL \edoPres[2]~output_o\ : std_logic;
SIGNAL \edoPres[1]~output_o\ : std_logic;
SIGNAL \edoPres[0]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \prueba[1]~output_o\ : std_logic;
SIGNAL \prueba[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|O~0_combout\ : std_logic;
SIGNAL \inst4|O~1_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|internal_value[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|O[2]~0_combout\ : std_logic;
SIGNAL \inst3|O[3]~0_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst3|O[1]~1_combout\ : std_logic;
SIGNAL \inst3|O[0]~2_combout\ : std_logic;
SIGNAL \inst9|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Edo_sig <= ww_Edo_sig;
ww_W <= W;
ww_X <= X;
ww_Y <= Y;
ww_Z <= Z;
ww_CLK <= CLK;
ww_RESET <= RESET;
edoPres <= ww_edoPres;
O <= ww_O;
prueba <= ww_prueba;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_Mux15~0_combout\ <= NOT \inst|Mux15~0_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X16_Y0_N30
\Edo_sig[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|O[2]~0_combout\,
	devoe => ww_devoe,
	o => \Edo_sig[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Edo_sig[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Edo_sig[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Edo_sig[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Edo_sig[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\edoPres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|internal_value\(2),
	devoe => ww_devoe,
	o => \edoPres[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\edoPres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|internal_value\(1),
	devoe => ww_devoe,
	o => \edoPres[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\edoPres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|internal_value\(0),
	devoe => ww_devoe,
	o => \edoPres[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\O[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\O[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|O[3]~0_combout\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|O[0]~2_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\prueba[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \prueba[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\prueba[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \prueba[0]~output_o\);

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

-- Location: FF_X19_Y1_N9
\inst9|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|O[2]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|internal_value\(2));

-- Location: IOIBUF_X20_Y0_N8
\Y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: LCCOMB_X19_Y1_N26
\inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (!\inst9|internal_value\(2) & \inst9|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|internal_value\(2),
	datad => \inst9|internal_value\(0),
	combout => \inst|Mux5~0_combout\);

-- Location: IOIBUF_X20_Y0_N15
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

-- Location: IOIBUF_X20_Y0_N1
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

-- Location: LCCOMB_X19_Y1_N16
\inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst9|internal_value\(2) & (!\inst9|internal_value\(0) & \inst9|internal_value\(1))) # (!\inst9|internal_value\(2) & (\inst9|internal_value\(0) & !\inst9|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|internal_value\(2),
	datac => \inst9|internal_value\(0),
	datad => \inst9|internal_value\(1),
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y1_N18
\inst4|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|O~0_combout\ = (\inst|Mux5~0_combout\ & ((\inst|Mux13~0_combout\ & (\Z~input_o\)) # (!\inst|Mux13~0_combout\ & ((\X~input_o\))))) # (!\inst|Mux5~0_combout\ & (((\inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~input_o\,
	datab => \X~input_o\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|Mux13~0_combout\,
	combout => \inst4|O~0_combout\);

-- Location: LCCOMB_X19_Y1_N20
\inst4|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|O~1_combout\ = (\inst|Mux5~0_combout\ & (((\inst4|O~0_combout\)))) # (!\inst|Mux5~0_combout\ & ((\inst4|O~0_combout\ & (\Y~input_o\)) # (!\inst4|O~0_combout\ & ((\W~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \W~input_o\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst4|O~0_combout\,
	combout => \inst4|O~1_combout\);

-- Location: LCCOMB_X19_Y1_N10
\inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst9|internal_value\(0) & ((\inst9|internal_value\(1) & ((\inst9|internal_value\(2)) # (\inst4|O~1_combout\))) # (!\inst9|internal_value\(1) & (!\inst9|internal_value\(2))))) # (!\inst9|internal_value\(0) & 
-- (((\inst9|internal_value\(2) & \inst4|O~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|internal_value\(1),
	datab => \inst9|internal_value\(0),
	datac => \inst9|internal_value\(2),
	datad => \inst4|O~1_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y1_N30
\inst9|internal_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|internal_value[0]~0_combout\ = !\inst|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux4~0_combout\,
	combout => \inst9|internal_value[0]~0_combout\);

-- Location: FF_X19_Y1_N31
\inst9|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|internal_value[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|internal_value\(0));

-- Location: LCCOMB_X19_Y1_N4
\inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst9|internal_value\(0) & (\inst9|internal_value\(1) $ (((\inst9|internal_value\(2)) # (!\inst4|O~1_combout\))))) # (!\inst9|internal_value\(0) & ((\inst9|internal_value\(2) & ((\inst4|O~1_combout\))) # 
-- (!\inst9|internal_value\(2) & (\inst9|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|internal_value\(1),
	datab => \inst9|internal_value\(0),
	datac => \inst9|internal_value\(2),
	datad => \inst4|O~1_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X19_Y1_N29
\inst9|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|internal_value\(1));

-- Location: LCCOMB_X19_Y1_N22
\inst2|O[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|O[2]~0_combout\ = (\inst4|O~1_combout\ & (((\inst9|internal_value\(0) & !\inst9|internal_value\(2))))) # (!\inst4|O~1_combout\ & (\inst9|internal_value\(1) & (\inst9|internal_value\(0) $ (\inst9|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|internal_value\(1),
	datab => \inst9|internal_value\(0),
	datac => \inst9|internal_value\(2),
	datad => \inst4|O~1_combout\,
	combout => \inst2|O[2]~0_combout\);

-- Location: LCCOMB_X19_Y1_N28
\inst3|O[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O[3]~0_combout\ = (\inst9|internal_value\(2) & (!\inst9|internal_value\(0) & ((\inst4|O~1_combout\) # (!\inst9|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|internal_value\(2),
	datab => \inst9|internal_value\(0),
	datac => \inst9|internal_value\(1),
	datad => \inst4|O~1_combout\,
	combout => \inst3|O[3]~0_combout\);

-- Location: LCCOMB_X19_Y1_N8
\inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = ((\inst9|internal_value\(2)) # (!\inst9|internal_value\(0))) # (!\inst9|internal_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|internal_value\(1),
	datac => \inst9|internal_value\(2),
	datad => \inst9|internal_value\(0),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X19_Y1_N24
\inst3|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O[1]~1_combout\ = (\inst9|internal_value\(1) & (((\inst9|internal_value\(2)) # (!\inst9|internal_value\(0))))) # (!\inst9|internal_value\(1) & ((\inst4|O~1_combout\) # (\inst9|internal_value\(0) $ (!\inst9|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|O~1_combout\,
	datab => \inst9|internal_value\(1),
	datac => \inst9|internal_value\(0),
	datad => \inst9|internal_value\(2),
	combout => \inst3|O[1]~1_combout\);

-- Location: LCCOMB_X19_Y1_N6
\inst3|O[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|O[0]~2_combout\ = (\inst9|internal_value\(1) & (((\inst9|internal_value\(2)) # (!\inst9|internal_value\(0))) # (!\inst4|O~1_combout\))) # (!\inst9|internal_value\(1) & (((!\inst9|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|O~1_combout\,
	datab => \inst9|internal_value\(1),
	datac => \inst9|internal_value\(0),
	datad => \inst9|internal_value\(2),
	combout => \inst3|O[0]~2_combout\);

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

ww_Edo_sig(2) <= \Edo_sig[2]~output_o\;

ww_Edo_sig(1) <= \Edo_sig[1]~output_o\;

ww_Edo_sig(0) <= \Edo_sig[0]~output_o\;

ww_edoPres(2) <= \edoPres[2]~output_o\;

ww_edoPres(1) <= \edoPres[1]~output_o\;

ww_edoPres(0) <= \edoPres[0]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(0) <= \O[0]~output_o\;

ww_prueba(1) <= \prueba[1]~output_o\;

ww_prueba(0) <= \prueba[0]~output_o\;
END structure;


