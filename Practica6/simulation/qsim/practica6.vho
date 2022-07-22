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

-- DATE "05/13/2022 11:48:48"

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

ENTITY 	practica6 IS
    PORT (
	Estado : OUT std_logic_vector(3 DOWNTO 0);
	X : IN std_logic;
	Y : IN std_logic;
	INT : IN std_logic;
	reloj : IN std_logic;
	reset : IN std_logic;
	ENTRADA_Transformacion : IN std_logic_vector(3 DOWNTO 0);
	ENTRADA_Interrupciones : IN std_logic_vector(3 DOWNTO 0);
	salida : OUT std_logic_vector(5 DOWNTO 0)
	);
END practica6;

-- Design Ports Information
-- Estado[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estado[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estado[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estado[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Transformacion[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Interrupciones[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Transformacion[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Interrupciones[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Transformacion[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Interrupciones[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Transformacion[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA_Interrupciones[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Estado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_INT : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ENTRADA_Transformacion : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENTRADA_Interrupciones : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst10|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Estado[3]~output_o\ : std_logic;
SIGNAL \Estado[2]~output_o\ : std_logic;
SIGNAL \Estado[1]~output_o\ : std_logic;
SIGNAL \Estado[0]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|Add0~13\ : std_logic;
SIGNAL \inst10|Add0~14_combout\ : std_logic;
SIGNAL \inst10|Add0~15\ : std_logic;
SIGNAL \inst10|Add0~16_combout\ : std_logic;
SIGNAL \inst10|Add0~17\ : std_logic;
SIGNAL \inst10|Add0~18_combout\ : std_logic;
SIGNAL \inst10|Add0~19\ : std_logic;
SIGNAL \inst10|Add0~20_combout\ : std_logic;
SIGNAL \inst10|Add0~21\ : std_logic;
SIGNAL \inst10|Add0~22_combout\ : std_logic;
SIGNAL \inst10|Add0~23\ : std_logic;
SIGNAL \inst10|Add0~24_combout\ : std_logic;
SIGNAL \inst10|Add0~25\ : std_logic;
SIGNAL \inst10|Add0~26_combout\ : std_logic;
SIGNAL \inst10|Add0~27\ : std_logic;
SIGNAL \inst10|Add0~28_combout\ : std_logic;
SIGNAL \inst10|Add0~29\ : std_logic;
SIGNAL \inst10|Add0~30_combout\ : std_logic;
SIGNAL \inst10|Add0~31\ : std_logic;
SIGNAL \inst10|Add0~32_combout\ : std_logic;
SIGNAL \inst10|Add0~33\ : std_logic;
SIGNAL \inst10|Add0~34_combout\ : std_logic;
SIGNAL \inst10|Add0~35\ : std_logic;
SIGNAL \inst10|Add0~36_combout\ : std_logic;
SIGNAL \inst10|Add0~37\ : std_logic;
SIGNAL \inst10|Add0~38_combout\ : std_logic;
SIGNAL \inst10|Add0~39\ : std_logic;
SIGNAL \inst10|Add0~40_combout\ : std_logic;
SIGNAL \inst10|Add0~41\ : std_logic;
SIGNAL \inst10|Add0~42_combout\ : std_logic;
SIGNAL \inst10|Add0~43\ : std_logic;
SIGNAL \inst10|Add0~44_combout\ : std_logic;
SIGNAL \inst10|Add0~45\ : std_logic;
SIGNAL \inst10|Add0~46_combout\ : std_logic;
SIGNAL \inst10|Add0~47\ : std_logic;
SIGNAL \inst10|Add0~48_combout\ : std_logic;
SIGNAL \inst10|Add0~49\ : std_logic;
SIGNAL \inst10|Add0~50_combout\ : std_logic;
SIGNAL \inst10|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \instsec|inst4|Add0~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst14|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|Mux4~0_combout\ : std_logic;
SIGNAL \inst14|Mux5~0_combout\ : std_logic;
SIGNAL \inst14|Mux0~0_combout\ : std_logic;
SIGNAL \inst8reg4|valor_interno~q\ : std_logic;
SIGNAL \INT~input_o\ : std_logic;
SIGNAL \instsec|inst3|selector~5_combout\ : std_logic;
SIGNAL \instsec|inst3|selector~6_combout\ : std_logic;
SIGNAL \inst14|Mux7~0_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[3]~1_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \instsec|inst3|selector~7_combout\ : std_logic;
SIGNAL \instsec|inst3|selector~8_combout\ : std_logic;
SIGNAL \instsec|inst3|selector~3_combout\ : std_logic;
SIGNAL \instsec|inst3|selector~4_combout\ : std_logic;
SIGNAL \instsec|inst3|selector~9_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[3]~2_combout\ : std_logic;
SIGNAL \instsec|inst4|Add0~1_combout\ : std_logic;
SIGNAL \ENTRADA_Transformacion[2]~input_o\ : std_logic;
SIGNAL \ENTRADA_Interrupciones[2]~input_o\ : std_logic;
SIGNAL \instsec|inst5|salida[2]~5_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[2]~6_combout\ : std_logic;
SIGNAL \inst14|Mux8~0_combout\ : std_logic;
SIGNAL \instsec|inst3|selector~2_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[3]~0_combout\ : std_logic;
SIGNAL \ENTRADA_Transformacion[1]~input_o\ : std_logic;
SIGNAL \inst14|Mux2~0_combout\ : std_logic;
SIGNAL \ENTRADA_Interrupciones[1]~input_o\ : std_logic;
SIGNAL \instsec|inst5|salida[1]~7_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[1]~8_combout\ : std_logic;
SIGNAL \inst14|Mux3~0_combout\ : std_logic;
SIGNAL \instsec|inst|valor_interno[0]~0_combout\ : std_logic;
SIGNAL \ENTRADA_Transformacion[0]~input_o\ : std_logic;
SIGNAL \ENTRADA_Interrupciones[0]~input_o\ : std_logic;
SIGNAL \instsec|inst5|salida[0]~9_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[0]~10_combout\ : std_logic;
SIGNAL \instsec|inst4|Add0~0_combout\ : std_logic;
SIGNAL \ENTRADA_Transformacion[3]~input_o\ : std_logic;
SIGNAL \inst14|Mux0~1_combout\ : std_logic;
SIGNAL \ENTRADA_Interrupciones[3]~input_o\ : std_logic;
SIGNAL \instsec|inst5|salida[3]~3_combout\ : std_logic;
SIGNAL \instsec|inst5|salida[3]~4_combout\ : std_logic;
SIGNAL \inst14|Mux9~0_combout\ : std_logic;
SIGNAL \inst14|Mux10~0_combout\ : std_logic;
SIGNAL \inst14|Mux11~0_combout\ : std_logic;
SIGNAL \inst14|Mux12~0_combout\ : std_logic;
SIGNAL \inst14|Mux13~0_combout\ : std_logic;
SIGNAL \inst14|Mux14~0_combout\ : std_logic;
SIGNAL \inst10|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \instsec|inst|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|valor_interno\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|valor_interno\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|valor_interno\ : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Estado <= ww_Estado;
ww_X <= X;
ww_Y <= Y;
ww_INT <= INT;
ww_reloj <= reloj;
ww_reset <= reset;
ww_ENTRADA_Transformacion <= ENTRADA_Transformacion;
ww_ENTRADA_Interrupciones <= ENTRADA_Interrupciones;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst10|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|cuenta\(25));

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
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

-- Location: IOOBUF_X49_Y54_N9
\Estado[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instsec|inst5|salida[3]~4_combout\,
	devoe => ww_devoe,
	o => \Estado[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Estado[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instsec|inst5|salida[2]~6_combout\,
	devoe => ww_devoe,
	o => \Estado[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\Estado[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instsec|inst5|salida[1]~8_combout\,
	devoe => ww_devoe,
	o => \Estado[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Estado[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instsec|inst5|salida[0]~10_combout\,
	devoe => ww_devoe,
	o => \Estado[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\salida[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|valor_interno\(5),
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\salida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|valor_interno\(4),
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|valor_interno\(3),
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|valor_interno\(2),
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|valor_interno\(1),
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|valor_interno\(0),
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\reloj~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G19
\reloj~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y2_N6
\inst10|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|cuenta\(0) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(0),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: FF_X45_Y2_N7
\inst10|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(0));

-- Location: LCCOMB_X45_Y2_N8
\inst10|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst10|cuenta\(1) & (!\inst10|Add0~1\)) # (!\inst10|cuenta\(1) & ((\inst10|Add0~1\) # (GND)))
-- \inst10|Add0~3\ = CARRY((!\inst10|Add0~1\) # (!\inst10|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(1),
	datad => VCC,
	cin => \inst10|Add0~1\,
	combout => \inst10|Add0~2_combout\,
	cout => \inst10|Add0~3\);

-- Location: FF_X45_Y2_N9
\inst10|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(1));

-- Location: LCCOMB_X45_Y2_N10
\inst10|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|cuenta\(2) & (\inst10|Add0~3\ $ (GND))) # (!\inst10|cuenta\(2) & (!\inst10|Add0~3\ & VCC))
-- \inst10|Add0~5\ = CARRY((\inst10|cuenta\(2) & !\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(2),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: FF_X45_Y2_N11
\inst10|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(2));

-- Location: LCCOMB_X45_Y2_N12
\inst10|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|cuenta\(3) & (!\inst10|Add0~5\)) # (!\inst10|cuenta\(3) & ((\inst10|Add0~5\) # (GND)))
-- \inst10|Add0~7\ = CARRY((!\inst10|Add0~5\) # (!\inst10|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(3),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: FF_X45_Y2_N13
\inst10|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(3));

-- Location: LCCOMB_X45_Y2_N14
\inst10|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|cuenta\(4) & (\inst10|Add0~7\ $ (GND))) # (!\inst10|cuenta\(4) & (!\inst10|Add0~7\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst10|cuenta\(4) & !\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(4),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: FF_X45_Y2_N15
\inst10|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(4));

-- Location: LCCOMB_X45_Y2_N16
\inst10|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = (\inst10|cuenta\(5) & (!\inst10|Add0~9\)) # (!\inst10|cuenta\(5) & ((\inst10|Add0~9\) # (GND)))
-- \inst10|Add0~11\ = CARRY((!\inst10|Add0~9\) # (!\inst10|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(5),
	datad => VCC,
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\,
	cout => \inst10|Add0~11\);

-- Location: FF_X45_Y2_N17
\inst10|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(5));

-- Location: LCCOMB_X45_Y2_N18
\inst10|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = (\inst10|cuenta\(6) & (\inst10|Add0~11\ $ (GND))) # (!\inst10|cuenta\(6) & (!\inst10|Add0~11\ & VCC))
-- \inst10|Add0~13\ = CARRY((\inst10|cuenta\(6) & !\inst10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(6),
	datad => VCC,
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\,
	cout => \inst10|Add0~13\);

-- Location: FF_X45_Y2_N19
\inst10|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(6));

-- Location: LCCOMB_X45_Y2_N20
\inst10|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~14_combout\ = (\inst10|cuenta\(7) & (!\inst10|Add0~13\)) # (!\inst10|cuenta\(7) & ((\inst10|Add0~13\) # (GND)))
-- \inst10|Add0~15\ = CARRY((!\inst10|Add0~13\) # (!\inst10|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(7),
	datad => VCC,
	cin => \inst10|Add0~13\,
	combout => \inst10|Add0~14_combout\,
	cout => \inst10|Add0~15\);

-- Location: FF_X45_Y2_N21
\inst10|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(7));

-- Location: LCCOMB_X45_Y2_N22
\inst10|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~16_combout\ = (\inst10|cuenta\(8) & (\inst10|Add0~15\ $ (GND))) # (!\inst10|cuenta\(8) & (!\inst10|Add0~15\ & VCC))
-- \inst10|Add0~17\ = CARRY((\inst10|cuenta\(8) & !\inst10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(8),
	datad => VCC,
	cin => \inst10|Add0~15\,
	combout => \inst10|Add0~16_combout\,
	cout => \inst10|Add0~17\);

-- Location: FF_X45_Y2_N23
\inst10|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(8));

-- Location: LCCOMB_X45_Y2_N24
\inst10|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~18_combout\ = (\inst10|cuenta\(9) & (!\inst10|Add0~17\)) # (!\inst10|cuenta\(9) & ((\inst10|Add0~17\) # (GND)))
-- \inst10|Add0~19\ = CARRY((!\inst10|Add0~17\) # (!\inst10|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(9),
	datad => VCC,
	cin => \inst10|Add0~17\,
	combout => \inst10|Add0~18_combout\,
	cout => \inst10|Add0~19\);

-- Location: FF_X45_Y2_N25
\inst10|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(9));

-- Location: LCCOMB_X45_Y2_N26
\inst10|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~20_combout\ = (\inst10|cuenta\(10) & (\inst10|Add0~19\ $ (GND))) # (!\inst10|cuenta\(10) & (!\inst10|Add0~19\ & VCC))
-- \inst10|Add0~21\ = CARRY((\inst10|cuenta\(10) & !\inst10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(10),
	datad => VCC,
	cin => \inst10|Add0~19\,
	combout => \inst10|Add0~20_combout\,
	cout => \inst10|Add0~21\);

-- Location: FF_X45_Y2_N27
\inst10|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(10));

-- Location: LCCOMB_X45_Y2_N28
\inst10|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~22_combout\ = (\inst10|cuenta\(11) & (!\inst10|Add0~21\)) # (!\inst10|cuenta\(11) & ((\inst10|Add0~21\) # (GND)))
-- \inst10|Add0~23\ = CARRY((!\inst10|Add0~21\) # (!\inst10|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(11),
	datad => VCC,
	cin => \inst10|Add0~21\,
	combout => \inst10|Add0~22_combout\,
	cout => \inst10|Add0~23\);

-- Location: FF_X45_Y2_N29
\inst10|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(11));

-- Location: LCCOMB_X45_Y2_N30
\inst10|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~24_combout\ = (\inst10|cuenta\(12) & (\inst10|Add0~23\ $ (GND))) # (!\inst10|cuenta\(12) & (!\inst10|Add0~23\ & VCC))
-- \inst10|Add0~25\ = CARRY((\inst10|cuenta\(12) & !\inst10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(12),
	datad => VCC,
	cin => \inst10|Add0~23\,
	combout => \inst10|Add0~24_combout\,
	cout => \inst10|Add0~25\);

-- Location: FF_X45_Y2_N31
\inst10|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(12));

-- Location: LCCOMB_X45_Y1_N0
\inst10|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~26_combout\ = (\inst10|cuenta\(13) & (!\inst10|Add0~25\)) # (!\inst10|cuenta\(13) & ((\inst10|Add0~25\) # (GND)))
-- \inst10|Add0~27\ = CARRY((!\inst10|Add0~25\) # (!\inst10|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(13),
	datad => VCC,
	cin => \inst10|Add0~25\,
	combout => \inst10|Add0~26_combout\,
	cout => \inst10|Add0~27\);

-- Location: FF_X45_Y1_N1
\inst10|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(13));

-- Location: LCCOMB_X45_Y1_N2
\inst10|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~28_combout\ = (\inst10|cuenta\(14) & (\inst10|Add0~27\ $ (GND))) # (!\inst10|cuenta\(14) & (!\inst10|Add0~27\ & VCC))
-- \inst10|Add0~29\ = CARRY((\inst10|cuenta\(14) & !\inst10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(14),
	datad => VCC,
	cin => \inst10|Add0~27\,
	combout => \inst10|Add0~28_combout\,
	cout => \inst10|Add0~29\);

-- Location: FF_X45_Y1_N3
\inst10|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(14));

-- Location: LCCOMB_X45_Y1_N4
\inst10|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~30_combout\ = (\inst10|cuenta\(15) & (!\inst10|Add0~29\)) # (!\inst10|cuenta\(15) & ((\inst10|Add0~29\) # (GND)))
-- \inst10|Add0~31\ = CARRY((!\inst10|Add0~29\) # (!\inst10|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(15),
	datad => VCC,
	cin => \inst10|Add0~29\,
	combout => \inst10|Add0~30_combout\,
	cout => \inst10|Add0~31\);

-- Location: FF_X45_Y1_N5
\inst10|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(15));

-- Location: LCCOMB_X45_Y1_N6
\inst10|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~32_combout\ = (\inst10|cuenta\(16) & (\inst10|Add0~31\ $ (GND))) # (!\inst10|cuenta\(16) & (!\inst10|Add0~31\ & VCC))
-- \inst10|Add0~33\ = CARRY((\inst10|cuenta\(16) & !\inst10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(16),
	datad => VCC,
	cin => \inst10|Add0~31\,
	combout => \inst10|Add0~32_combout\,
	cout => \inst10|Add0~33\);

-- Location: FF_X45_Y1_N7
\inst10|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(16));

-- Location: LCCOMB_X45_Y1_N8
\inst10|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~34_combout\ = (\inst10|cuenta\(17) & (!\inst10|Add0~33\)) # (!\inst10|cuenta\(17) & ((\inst10|Add0~33\) # (GND)))
-- \inst10|Add0~35\ = CARRY((!\inst10|Add0~33\) # (!\inst10|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(17),
	datad => VCC,
	cin => \inst10|Add0~33\,
	combout => \inst10|Add0~34_combout\,
	cout => \inst10|Add0~35\);

-- Location: FF_X45_Y1_N9
\inst10|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(17));

-- Location: LCCOMB_X45_Y1_N10
\inst10|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~36_combout\ = (\inst10|cuenta\(18) & (\inst10|Add0~35\ $ (GND))) # (!\inst10|cuenta\(18) & (!\inst10|Add0~35\ & VCC))
-- \inst10|Add0~37\ = CARRY((\inst10|cuenta\(18) & !\inst10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(18),
	datad => VCC,
	cin => \inst10|Add0~35\,
	combout => \inst10|Add0~36_combout\,
	cout => \inst10|Add0~37\);

-- Location: FF_X45_Y1_N11
\inst10|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(18));

-- Location: LCCOMB_X45_Y1_N12
\inst10|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~38_combout\ = (\inst10|cuenta\(19) & (!\inst10|Add0~37\)) # (!\inst10|cuenta\(19) & ((\inst10|Add0~37\) # (GND)))
-- \inst10|Add0~39\ = CARRY((!\inst10|Add0~37\) # (!\inst10|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(19),
	datad => VCC,
	cin => \inst10|Add0~37\,
	combout => \inst10|Add0~38_combout\,
	cout => \inst10|Add0~39\);

-- Location: FF_X45_Y1_N13
\inst10|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(19));

-- Location: LCCOMB_X45_Y1_N14
\inst10|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~40_combout\ = (\inst10|cuenta\(20) & (\inst10|Add0~39\ $ (GND))) # (!\inst10|cuenta\(20) & (!\inst10|Add0~39\ & VCC))
-- \inst10|Add0~41\ = CARRY((\inst10|cuenta\(20) & !\inst10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(20),
	datad => VCC,
	cin => \inst10|Add0~39\,
	combout => \inst10|Add0~40_combout\,
	cout => \inst10|Add0~41\);

-- Location: FF_X45_Y1_N15
\inst10|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(20));

-- Location: LCCOMB_X45_Y1_N16
\inst10|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~42_combout\ = (\inst10|cuenta\(21) & (!\inst10|Add0~41\)) # (!\inst10|cuenta\(21) & ((\inst10|Add0~41\) # (GND)))
-- \inst10|Add0~43\ = CARRY((!\inst10|Add0~41\) # (!\inst10|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(21),
	datad => VCC,
	cin => \inst10|Add0~41\,
	combout => \inst10|Add0~42_combout\,
	cout => \inst10|Add0~43\);

-- Location: FF_X45_Y1_N17
\inst10|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(21));

-- Location: LCCOMB_X45_Y1_N18
\inst10|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~44_combout\ = (\inst10|cuenta\(22) & (\inst10|Add0~43\ $ (GND))) # (!\inst10|cuenta\(22) & (!\inst10|Add0~43\ & VCC))
-- \inst10|Add0~45\ = CARRY((\inst10|cuenta\(22) & !\inst10|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(22),
	datad => VCC,
	cin => \inst10|Add0~43\,
	combout => \inst10|Add0~44_combout\,
	cout => \inst10|Add0~45\);

-- Location: FF_X45_Y1_N19
\inst10|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(22));

-- Location: LCCOMB_X45_Y1_N20
\inst10|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~46_combout\ = (\inst10|cuenta\(23) & (!\inst10|Add0~45\)) # (!\inst10|cuenta\(23) & ((\inst10|Add0~45\) # (GND)))
-- \inst10|Add0~47\ = CARRY((!\inst10|Add0~45\) # (!\inst10|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cuenta\(23),
	datad => VCC,
	cin => \inst10|Add0~45\,
	combout => \inst10|Add0~46_combout\,
	cout => \inst10|Add0~47\);

-- Location: FF_X45_Y1_N21
\inst10|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(23));

-- Location: LCCOMB_X45_Y1_N22
\inst10|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~48_combout\ = (\inst10|cuenta\(24) & (\inst10|Add0~47\ $ (GND))) # (!\inst10|cuenta\(24) & (!\inst10|Add0~47\ & VCC))
-- \inst10|Add0~49\ = CARRY((\inst10|cuenta\(24) & !\inst10|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cuenta\(24),
	datad => VCC,
	cin => \inst10|Add0~47\,
	combout => \inst10|Add0~48_combout\,
	cout => \inst10|Add0~49\);

-- Location: FF_X45_Y1_N23
\inst10|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(24));

-- Location: LCCOMB_X45_Y1_N24
\inst10|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~50_combout\ = \inst10|Add0~49\ $ (\inst10|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|cuenta\(25),
	cin => \inst10|Add0~49\,
	combout => \inst10|Add0~50_combout\);

-- Location: FF_X45_Y1_N25
\inst10|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst10|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cuenta\(25));

-- Location: CLKCTRL_G17
\inst10|cuenta[25]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|cuenta[25]~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y53_N14
\instsec|inst4|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst4|Add0~2_combout\ = \instsec|inst5|salida[1]~8_combout\ $ (\instsec|inst5|salida[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[0]~10_combout\,
	combout => \instsec|inst4|Add0~2_combout\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: FF_X50_Y53_N15
\instsec|inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \instsec|inst4|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instsec|inst|valor_interno\(1));

-- Location: LCCOMB_X51_Y53_N4
\inst14|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux1~0_combout\ = (!\instsec|inst5|salida[3]~4_combout\ & (\instsec|inst5|salida[0]~10_combout\ & (!\instsec|inst5|salida[1]~8_combout\ & !\instsec|inst5|salida[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[3]~4_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux1~0_combout\);

-- Location: FF_X51_Y53_N5
\inst3|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(2));

-- Location: LCCOMB_X51_Y53_N8
\inst14|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux4~0_combout\ = (\instsec|inst5|salida[0]~10_combout\ & ((\instsec|inst5|salida[3]~4_combout\ & (!\instsec|inst5|salida[1]~8_combout\ & !\instsec|inst5|salida[2]~6_combout\)) # (!\instsec|inst5|salida[3]~4_combout\ & 
-- ((\instsec|inst5|salida[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[1]~8_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[3]~4_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux4~0_combout\);

-- Location: FF_X51_Y53_N9
\inst5|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|valor_interno\(1));

-- Location: LCCOMB_X51_Y53_N18
\inst14|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux5~0_combout\ = (\instsec|inst5|salida[0]~10_combout\ & (\instsec|inst5|salida[2]~6_combout\ $ (!\instsec|inst5|salida[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[2]~6_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[0]~10_combout\,
	combout => \inst14|Mux5~0_combout\);

-- Location: FF_X51_Y53_N19
\inst5|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux5~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|valor_interno\(0));

-- Location: LCCOMB_X52_Y53_N28
\inst14|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~0_combout\ = (!\instsec|inst5|salida[3]~4_combout\ & (\instsec|inst5|salida[0]~10_combout\ & !\instsec|inst5|salida[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[0]~10_combout\,
	datad => \instsec|inst5|salida[1]~8_combout\,
	combout => \inst14|Mux0~0_combout\);

-- Location: FF_X52_Y53_N29
\inst8reg4|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8reg4|valor_interno~q\);

-- Location: IOIBUF_X49_Y54_N29
\INT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT,
	o => \INT~input_o\);

-- Location: LCCOMB_X52_Y53_N20
\instsec|inst3|selector~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~5_combout\ = (\INT~input_o\ & \inst4|valor_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INT~input_o\,
	datad => \inst4|valor_interno\(0),
	combout => \instsec|inst3|selector~5_combout\);

-- Location: LCCOMB_X52_Y53_N30
\instsec|inst3|selector~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~6_combout\ = (\inst5|valor_interno\(1) & (!\inst5|valor_interno\(0) & (\inst8reg4|valor_interno~q\ & \instsec|inst3|selector~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|valor_interno\(1),
	datab => \inst5|valor_interno\(0),
	datac => \inst8reg4|valor_interno~q\,
	datad => \instsec|inst3|selector~5_combout\,
	combout => \instsec|inst3|selector~6_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst14|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux7~0_combout\ = (\instsec|inst5|salida[3]~4_combout\ & (\instsec|inst5|salida[0]~10_combout\ & ((!\instsec|inst5|salida[2]~6_combout\)))) # (!\instsec|inst5|salida[3]~4_combout\ & (\instsec|inst5|salida[2]~6_combout\ & 
-- (\instsec|inst5|salida[0]~10_combout\ $ (!\instsec|inst5|salida[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[3]~4_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux7~0_combout\);

-- Location: FF_X51_Y53_N21
\inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux7~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor_interno\(1));

-- Location: LCCOMB_X51_Y53_N22
\instsec|inst5|salida[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[3]~1_combout\ = (\inst4|valor_interno\(0) & !\inst4|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|valor_interno\(0),
	datad => \inst4|valor_interno\(1),
	combout => \instsec|inst5|salida[3]~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X51_Y53_N10
\instsec|inst3|selector~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~7_combout\ = (!\inst5|valor_interno\(1) & ((\inst5|valor_interno\(0) & ((\Y~input_o\))) # (!\inst5|valor_interno\(0) & (\X~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \Y~input_o\,
	datac => \inst5|valor_interno\(1),
	datad => \inst5|valor_interno\(0),
	combout => \instsec|inst3|selector~7_combout\);

-- Location: LCCOMB_X52_Y53_N8
\instsec|inst3|selector~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~8_combout\ = (\inst8reg4|valor_interno~q\ & (\inst4|valor_interno\(0) & \instsec|inst3|selector~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8reg4|valor_interno~q\,
	datac => \inst4|valor_interno\(0),
	datad => \instsec|inst3|selector~7_combout\,
	combout => \instsec|inst3|selector~8_combout\);

-- Location: LCCOMB_X51_Y53_N24
\instsec|inst3|selector~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~3_combout\ = (\inst5|valor_interno\(1) & (\INT~input_o\ & !\inst5|valor_interno\(0))) # (!\inst5|valor_interno\(1) & ((\inst5|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT~input_o\,
	datac => \inst5|valor_interno\(1),
	datad => \inst5|valor_interno\(0),
	combout => \instsec|inst3|selector~3_combout\);

-- Location: LCCOMB_X52_Y53_N2
\instsec|inst3|selector~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~4_combout\ = (\inst5|valor_interno\(1) & (((\instsec|inst3|selector~3_combout\)))) # (!\inst5|valor_interno\(1) & ((\instsec|inst3|selector~3_combout\ & (\Y~input_o\)) # (!\instsec|inst3|selector~3_combout\ & ((\X~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|valor_interno\(1),
	datab => \Y~input_o\,
	datac => \X~input_o\,
	datad => \instsec|inst3|selector~3_combout\,
	combout => \instsec|inst3|selector~4_combout\);

-- Location: LCCOMB_X52_Y53_N6
\instsec|inst3|selector~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~9_combout\ = (\inst4|valor_interno\(0) & (((!\inst8reg4|valor_interno~q\ & !\instsec|inst3|selector~4_combout\)))) # (!\inst4|valor_interno\(0) & (\inst4|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|valor_interno\(1),
	datab => \inst8reg4|valor_interno~q\,
	datac => \inst4|valor_interno\(0),
	datad => \instsec|inst3|selector~4_combout\,
	combout => \instsec|inst3|selector~9_combout\);

-- Location: LCCOMB_X52_Y53_N16
\instsec|inst5|salida[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[3]~2_combout\ = (\instsec|inst5|salida[3]~1_combout\) # ((!\instsec|inst3|selector~6_combout\ & (!\instsec|inst3|selector~8_combout\ & !\instsec|inst3|selector~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst3|selector~6_combout\,
	datab => \instsec|inst5|salida[3]~1_combout\,
	datac => \instsec|inst3|selector~8_combout\,
	datad => \instsec|inst3|selector~9_combout\,
	combout => \instsec|inst5|salida[3]~2_combout\);

-- Location: LCCOMB_X50_Y53_N24
\instsec|inst4|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst4|Add0~1_combout\ = \instsec|inst5|salida[2]~6_combout\ $ (((\instsec|inst5|salida[0]~10_combout\ & \instsec|inst5|salida[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \instsec|inst4|Add0~1_combout\);

-- Location: FF_X50_Y53_N25
\instsec|inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \instsec|inst4|Add0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instsec|inst|valor_interno\(2));

-- Location: IOIBUF_X54_Y54_N22
\ENTRADA_Transformacion[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Transformacion(2),
	o => \ENTRADA_Transformacion[2]~input_o\);

-- Location: FF_X52_Y53_N21
\inst1|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Transformacion[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(2));

-- Location: IOIBUF_X56_Y54_N1
\ENTRADA_Interrupciones[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Interrupciones(2),
	o => \ENTRADA_Interrupciones[2]~input_o\);

-- Location: FF_X52_Y53_N27
\inst2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Interrupciones[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|valor_interno\(2));

-- Location: LCCOMB_X52_Y53_N26
\instsec|inst5|salida[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[2]~5_combout\ = (\instsec|inst5|salida[3]~2_combout\ & (((\instsec|inst5|salida[3]~0_combout\)))) # (!\instsec|inst5|salida[3]~2_combout\ & ((\instsec|inst5|salida[3]~0_combout\ & (\inst1|valor_interno\(2))) # 
-- (!\instsec|inst5|salida[3]~0_combout\ & ((\inst2|valor_interno\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(2),
	datab => \instsec|inst5|salida[3]~2_combout\,
	datac => \inst2|valor_interno\(2),
	datad => \instsec|inst5|salida[3]~0_combout\,
	combout => \instsec|inst5|salida[2]~5_combout\);

-- Location: LCCOMB_X51_Y53_N6
\instsec|inst5|salida[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[2]~6_combout\ = (\instsec|inst5|salida[3]~2_combout\ & ((\instsec|inst5|salida[2]~5_combout\ & ((\instsec|inst|valor_interno\(2)))) # (!\instsec|inst5|salida[2]~5_combout\ & (\inst3|valor_interno\(2))))) # 
-- (!\instsec|inst5|salida[3]~2_combout\ & (((\instsec|inst5|salida[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(2),
	datab => \instsec|inst5|salida[3]~2_combout\,
	datac => \instsec|inst|valor_interno\(2),
	datad => \instsec|inst5|salida[2]~5_combout\,
	combout => \instsec|inst5|salida[2]~6_combout\);

-- Location: LCCOMB_X52_Y53_N14
\inst14|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux8~0_combout\ = (\instsec|inst5|salida[3]~4_combout\ & (((!\instsec|inst5|salida[1]~8_combout\)) # (!\instsec|inst5|salida[0]~10_combout\))) # (!\instsec|inst5|salida[3]~4_combout\ & ((\instsec|inst5|salida[1]~8_combout\ & 
-- ((\instsec|inst5|salida[2]~6_combout\))) # (!\instsec|inst5|salida[1]~8_combout\ & (\instsec|inst5|salida[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[2]~6_combout\,
	datad => \instsec|inst5|salida[1]~8_combout\,
	combout => \inst14|Mux8~0_combout\);

-- Location: FF_X52_Y53_N15
\inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux8~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor_interno\(0));

-- Location: LCCOMB_X51_Y53_N14
\instsec|inst3|selector~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst3|selector~2_combout\ = (!\inst4|valor_interno\(0) & \inst4|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|valor_interno\(0),
	datad => \inst4|valor_interno\(1),
	combout => \instsec|inst3|selector~2_combout\);

-- Location: LCCOMB_X52_Y53_N18
\instsec|inst5|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[3]~0_combout\ = (\instsec|inst3|selector~2_combout\) # ((!\instsec|inst3|selector~8_combout\ & (!\instsec|inst3|selector~6_combout\ & !\instsec|inst3|selector~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst3|selector~2_combout\,
	datab => \instsec|inst3|selector~8_combout\,
	datac => \instsec|inst3|selector~6_combout\,
	datad => \instsec|inst3|selector~9_combout\,
	combout => \instsec|inst5|salida[3]~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\ENTRADA_Transformacion[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Transformacion(1),
	o => \ENTRADA_Transformacion[1]~input_o\);

-- Location: FF_X51_Y53_N13
\inst1|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Transformacion[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(1));

-- Location: LCCOMB_X51_Y53_N30
\inst14|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~0_combout\ = (!\instsec|inst5|salida[3]~4_combout\ & ((\instsec|inst5|salida[1]~8_combout\ & (!\instsec|inst5|salida[0]~10_combout\ & \instsec|inst5|salida[2]~6_combout\)) # (!\instsec|inst5|salida[1]~8_combout\ & 
-- (\instsec|inst5|salida[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[1]~8_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[3]~4_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux2~0_combout\);

-- Location: FF_X51_Y53_N31
\inst3|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(1));

-- Location: IOIBUF_X58_Y54_N29
\ENTRADA_Interrupciones[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Interrupciones(1),
	o => \ENTRADA_Interrupciones[1]~input_o\);

-- Location: FF_X51_Y53_N1
\inst2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Interrupciones[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|valor_interno\(1));

-- Location: LCCOMB_X51_Y53_N0
\instsec|inst5|salida[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[1]~7_combout\ = (\instsec|inst5|salida[3]~0_combout\ & (((\instsec|inst5|salida[3]~2_combout\)))) # (!\instsec|inst5|salida[3]~0_combout\ & ((\instsec|inst5|salida[3]~2_combout\ & (\inst3|valor_interno\(1))) # 
-- (!\instsec|inst5|salida[3]~2_combout\ & ((\inst2|valor_interno\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(1),
	datab => \instsec|inst5|salida[3]~0_combout\,
	datac => \inst2|valor_interno\(1),
	datad => \instsec|inst5|salida[3]~2_combout\,
	combout => \instsec|inst5|salida[1]~7_combout\);

-- Location: LCCOMB_X51_Y53_N12
\instsec|inst5|salida[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[1]~8_combout\ = (\instsec|inst5|salida[3]~0_combout\ & ((\instsec|inst5|salida[1]~7_combout\ & (\instsec|inst|valor_interno\(1))) # (!\instsec|inst5|salida[1]~7_combout\ & ((\inst1|valor_interno\(1)))))) # 
-- (!\instsec|inst5|salida[3]~0_combout\ & (((\instsec|inst5|salida[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst|valor_interno\(1),
	datab => \instsec|inst5|salida[3]~0_combout\,
	datac => \inst1|valor_interno\(1),
	datad => \instsec|inst5|salida[1]~7_combout\,
	combout => \instsec|inst5|salida[1]~8_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst14|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux3~0_combout\ = (!\instsec|inst5|salida[1]~8_combout\ & (!\instsec|inst5|salida[2]~6_combout\ & (\instsec|inst5|salida[0]~10_combout\ $ (\instsec|inst5|salida[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[1]~8_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[3]~4_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux3~0_combout\);

-- Location: FF_X51_Y53_N3
\inst3|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(0));

-- Location: LCCOMB_X50_Y53_N20
\instsec|inst|valor_interno[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst|valor_interno[0]~0_combout\ = !\instsec|inst5|salida[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instsec|inst5|salida[0]~10_combout\,
	combout => \instsec|inst|valor_interno[0]~0_combout\);

-- Location: FF_X50_Y53_N21
\instsec|inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \instsec|inst|valor_interno[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instsec|inst|valor_interno\(0));

-- Location: IOIBUF_X51_Y54_N1
\ENTRADA_Transformacion[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Transformacion(0),
	o => \ENTRADA_Transformacion[0]~input_o\);

-- Location: FF_X51_Y53_N15
\inst1|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Transformacion[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(0));

-- Location: IOIBUF_X54_Y54_N15
\ENTRADA_Interrupciones[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Interrupciones(0),
	o => \ENTRADA_Interrupciones[0]~input_o\);

-- Location: FF_X52_Y53_N13
\inst2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Interrupciones[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|valor_interno\(0));

-- Location: LCCOMB_X52_Y53_N12
\instsec|inst5|salida[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[0]~9_combout\ = (\instsec|inst5|salida[3]~2_combout\ & (((\instsec|inst5|salida[3]~0_combout\)))) # (!\instsec|inst5|salida[3]~2_combout\ & ((\instsec|inst5|salida[3]~0_combout\ & (\inst1|valor_interno\(0))) # 
-- (!\instsec|inst5|salida[3]~0_combout\ & ((\inst2|valor_interno\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(0),
	datab => \instsec|inst5|salida[3]~2_combout\,
	datac => \inst2|valor_interno\(0),
	datad => \instsec|inst5|salida[3]~0_combout\,
	combout => \instsec|inst5|salida[0]~9_combout\);

-- Location: LCCOMB_X52_Y53_N22
\instsec|inst5|salida[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[0]~10_combout\ = (\instsec|inst5|salida[3]~2_combout\ & ((\instsec|inst5|salida[0]~9_combout\ & ((\instsec|inst|valor_interno\(0)))) # (!\instsec|inst5|salida[0]~9_combout\ & (\inst3|valor_interno\(0))))) # 
-- (!\instsec|inst5|salida[3]~2_combout\ & (((\instsec|inst5|salida[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(0),
	datab => \instsec|inst5|salida[3]~2_combout\,
	datac => \instsec|inst|valor_interno\(0),
	datad => \instsec|inst5|salida[0]~9_combout\,
	combout => \instsec|inst5|salida[0]~10_combout\);

-- Location: LCCOMB_X52_Y53_N24
\instsec|inst4|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst4|Add0~0_combout\ = \instsec|inst5|salida[3]~4_combout\ $ (((\instsec|inst5|salida[0]~10_combout\ & (\instsec|inst5|salida[2]~6_combout\ & \instsec|inst5|salida[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[2]~6_combout\,
	datad => \instsec|inst5|salida[1]~8_combout\,
	combout => \instsec|inst4|Add0~0_combout\);

-- Location: FF_X52_Y53_N25
\instsec|inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \instsec|inst4|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instsec|inst|valor_interno\(3));

-- Location: IOIBUF_X49_Y54_N1
\ENTRADA_Transformacion[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Transformacion(3),
	o => \ENTRADA_Transformacion[3]~input_o\);

-- Location: FF_X52_Y53_N5
\inst1|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Transformacion[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(3));

-- Location: LCCOMB_X51_Y53_N16
\inst14|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~1_combout\ = (!\instsec|inst5|salida[3]~4_combout\ & (\instsec|inst5|salida[0]~10_combout\ & (!\instsec|inst5|salida[1]~8_combout\ & \instsec|inst5|salida[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[3]~4_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux0~1_combout\);

-- Location: FF_X51_Y53_N17
\inst3|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(3));

-- Location: IOIBUF_X69_Y54_N1
\ENTRADA_Interrupciones[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA_Interrupciones(3),
	o => \ENTRADA_Interrupciones[3]~input_o\);

-- Location: FF_X52_Y53_N11
\inst2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	asdata => \ENTRADA_Interrupciones[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|valor_interno\(3));

-- Location: LCCOMB_X52_Y53_N10
\instsec|inst5|salida[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[3]~3_combout\ = (\instsec|inst5|salida[3]~0_combout\ & (((\instsec|inst5|salida[3]~2_combout\)))) # (!\instsec|inst5|salida[3]~0_combout\ & ((\instsec|inst5|salida[3]~2_combout\ & (\inst3|valor_interno\(3))) # 
-- (!\instsec|inst5|salida[3]~2_combout\ & ((\inst2|valor_interno\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(3),
	datab => \instsec|inst5|salida[3]~0_combout\,
	datac => \inst2|valor_interno\(3),
	datad => \instsec|inst5|salida[3]~2_combout\,
	combout => \instsec|inst5|salida[3]~3_combout\);

-- Location: LCCOMB_X52_Y53_N4
\instsec|inst5|salida[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instsec|inst5|salida[3]~4_combout\ = (\instsec|inst5|salida[3]~0_combout\ & ((\instsec|inst5|salida[3]~3_combout\ & (\instsec|inst|valor_interno\(3))) # (!\instsec|inst5|salida[3]~3_combout\ & ((\inst1|valor_interno\(3)))))) # 
-- (!\instsec|inst5|salida[3]~0_combout\ & (((\instsec|inst5|salida[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst|valor_interno\(3),
	datab => \instsec|inst5|salida[3]~0_combout\,
	datac => \inst1|valor_interno\(3),
	datad => \instsec|inst5|salida[3]~3_combout\,
	combout => \instsec|inst5|salida[3]~4_combout\);

-- Location: LCCOMB_X52_Y53_N0
\inst14|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux9~0_combout\ = (\instsec|inst5|salida[3]~4_combout\ & (!\instsec|inst5|salida[1]~8_combout\ & (\instsec|inst5|salida[0]~10_combout\ $ (!\instsec|inst5|salida[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[2]~6_combout\,
	datad => \instsec|inst5|salida[1]~8_combout\,
	combout => \inst14|Mux9~0_combout\);

-- Location: FF_X52_Y53_N1
\inst9|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux9~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor_interno\(5));

-- Location: LCCOMB_X51_Y53_N28
\inst14|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux10~0_combout\ = (\instsec|inst5|salida[2]~6_combout\ & (\instsec|inst5|salida[3]~4_combout\ $ (((\instsec|inst5|salida[0]~10_combout\) # (!\instsec|inst5|salida[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[1]~8_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[3]~4_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux10~0_combout\);

-- Location: FF_X51_Y53_N29
\inst9|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux10~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor_interno\(4));

-- Location: LCCOMB_X51_Y53_N26
\inst14|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux11~0_combout\ = (\instsec|inst5|salida[1]~8_combout\ & (!\instsec|inst5|salida[3]~4_combout\ & (\instsec|inst5|salida[0]~10_combout\ $ (\instsec|inst5|salida[2]~6_combout\)))) # (!\instsec|inst5|salida[1]~8_combout\ & 
-- (\instsec|inst5|salida[0]~10_combout\ & ((\instsec|inst5|salida[3]~4_combout\) # (!\instsec|inst5|salida[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[1]~8_combout\,
	datab => \instsec|inst5|salida[0]~10_combout\,
	datac => \instsec|inst5|salida[3]~4_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux11~0_combout\);

-- Location: FF_X51_Y53_N27
\inst9|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux11~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor_interno\(3));

-- Location: LCCOMB_X50_Y53_N30
\inst14|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux12~0_combout\ = (\instsec|inst5|salida[0]~10_combout\ & (!\instsec|inst5|salida[2]~6_combout\ & (\instsec|inst5|salida[3]~4_combout\ $ (!\instsec|inst5|salida[1]~8_combout\)))) # (!\instsec|inst5|salida[0]~10_combout\ & 
-- (\instsec|inst5|salida[3]~4_combout\ & (!\instsec|inst5|salida[1]~8_combout\ & \instsec|inst5|salida[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux12~0_combout\);

-- Location: FF_X50_Y53_N31
\inst9|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux12~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor_interno\(2));

-- Location: LCCOMB_X50_Y53_N4
\inst14|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux13~0_combout\ = (\instsec|inst5|salida[1]~8_combout\ & ((\instsec|inst5|salida[3]~4_combout\ & (!\instsec|inst5|salida[0]~10_combout\ & \instsec|inst5|salida[2]~6_combout\)) # (!\instsec|inst5|salida[3]~4_combout\ & 
-- ((!\instsec|inst5|salida[2]~6_combout\))))) # (!\instsec|inst5|salida[1]~8_combout\ & (\instsec|inst5|salida[0]~10_combout\ & ((!\instsec|inst5|salida[2]~6_combout\) # (!\instsec|inst5|salida[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux13~0_combout\);

-- Location: FF_X50_Y53_N5
\inst9|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux13~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor_interno\(1));

-- Location: LCCOMB_X50_Y53_N2
\inst14|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux14~0_combout\ = (\instsec|inst5|salida[1]~8_combout\ & (!\instsec|inst5|salida[0]~10_combout\ & ((\instsec|inst5|salida[2]~6_combout\) # (!\instsec|inst5|salida[3]~4_combout\)))) # (!\instsec|inst5|salida[1]~8_combout\ & 
-- (((!\instsec|inst5|salida[3]~4_combout\ & !\instsec|inst5|salida[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instsec|inst5|salida[0]~10_combout\,
	datab => \instsec|inst5|salida[3]~4_combout\,
	datac => \instsec|inst5|salida[1]~8_combout\,
	datad => \instsec|inst5|salida[2]~6_combout\,
	combout => \inst14|Mux14~0_combout\);

-- Location: FF_X50_Y53_N3
\inst9|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|cuenta[25]~clkctrl_outclk\,
	d => \inst14|Mux14~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor_interno\(0));

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

ww_Estado(3) <= \Estado[3]~output_o\;

ww_Estado(2) <= \Estado[2]~output_o\;

ww_Estado(1) <= \Estado[1]~output_o\;

ww_Estado(0) <= \Estado[0]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


