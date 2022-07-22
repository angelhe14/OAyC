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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "08/04/2021 00:18:24"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m68hc11 IS
    PORT (
	Z : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	IRQn : IN std_logic;
	XIRQn : IN std_logic;
	csnn : OUT std_logic;
	ACCA_D : OUT std_logic_vector(7 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(7 DOWNTO 0);
	AP_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	Debug_Q : OUT std_logic_vector(7 DOWNTO 0);
	Debug_Yupa : OUT std_logic_vector(7 DOWNTO 0);
	Edo_Pres : OUT std_logic_vector(11 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	X_D : OUT std_logic_vector(15 DOWNTO 0);
	Y_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END m68hc11;

-- Design Ports Information
-- Z	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csnn	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[15]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[12]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[8]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[15]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[12]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[12]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[11]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[9]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[8]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[15]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[14]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[13]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[9]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[8]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m68hc11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_IRQn : std_logic;
SIGNAL ww_XIRQn : std_logic;
SIGNAL ww_csnn : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Debug_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Debug_Yupa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Edo_Pres : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_X_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Y_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst7|inst2|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst2|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \csnn~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AP_D[15]~output_o\ : std_logic;
SIGNAL \AP_D[14]~output_o\ : std_logic;
SIGNAL \AP_D[13]~output_o\ : std_logic;
SIGNAL \AP_D[12]~output_o\ : std_logic;
SIGNAL \AP_D[11]~output_o\ : std_logic;
SIGNAL \AP_D[10]~output_o\ : std_logic;
SIGNAL \AP_D[9]~output_o\ : std_logic;
SIGNAL \AP_D[8]~output_o\ : std_logic;
SIGNAL \AP_D[7]~output_o\ : std_logic;
SIGNAL \AP_D[6]~output_o\ : std_logic;
SIGNAL \AP_D[5]~output_o\ : std_logic;
SIGNAL \AP_D[4]~output_o\ : std_logic;
SIGNAL \AP_D[3]~output_o\ : std_logic;
SIGNAL \AP_D[2]~output_o\ : std_logic;
SIGNAL \AP_D[1]~output_o\ : std_logic;
SIGNAL \AP_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \Debug_Q[7]~output_o\ : std_logic;
SIGNAL \Debug_Q[6]~output_o\ : std_logic;
SIGNAL \Debug_Q[5]~output_o\ : std_logic;
SIGNAL \Debug_Q[4]~output_o\ : std_logic;
SIGNAL \Debug_Q[3]~output_o\ : std_logic;
SIGNAL \Debug_Q[2]~output_o\ : std_logic;
SIGNAL \Debug_Q[1]~output_o\ : std_logic;
SIGNAL \Debug_Q[0]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[7]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[6]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[5]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[4]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[3]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[2]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[1]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[0]~output_o\ : std_logic;
SIGNAL \Edo_Pres[11]~output_o\ : std_logic;
SIGNAL \Edo_Pres[10]~output_o\ : std_logic;
SIGNAL \Edo_Pres[9]~output_o\ : std_logic;
SIGNAL \Edo_Pres[8]~output_o\ : std_logic;
SIGNAL \Edo_Pres[7]~output_o\ : std_logic;
SIGNAL \Edo_Pres[6]~output_o\ : std_logic;
SIGNAL \Edo_Pres[5]~output_o\ : std_logic;
SIGNAL \Edo_Pres[4]~output_o\ : std_logic;
SIGNAL \Edo_Pres[3]~output_o\ : std_logic;
SIGNAL \Edo_Pres[2]~output_o\ : std_logic;
SIGNAL \Edo_Pres[1]~output_o\ : std_logic;
SIGNAL \Edo_Pres[0]~output_o\ : std_logic;
SIGNAL \PC_D[15]~output_o\ : std_logic;
SIGNAL \PC_D[14]~output_o\ : std_logic;
SIGNAL \PC_D[13]~output_o\ : std_logic;
SIGNAL \PC_D[12]~output_o\ : std_logic;
SIGNAL \PC_D[11]~output_o\ : std_logic;
SIGNAL \PC_D[10]~output_o\ : std_logic;
SIGNAL \PC_D[9]~output_o\ : std_logic;
SIGNAL \PC_D[8]~output_o\ : std_logic;
SIGNAL \PC_D[7]~output_o\ : std_logic;
SIGNAL \PC_D[6]~output_o\ : std_logic;
SIGNAL \PC_D[5]~output_o\ : std_logic;
SIGNAL \PC_D[4]~output_o\ : std_logic;
SIGNAL \PC_D[3]~output_o\ : std_logic;
SIGNAL \PC_D[2]~output_o\ : std_logic;
SIGNAL \PC_D[1]~output_o\ : std_logic;
SIGNAL \PC_D[0]~output_o\ : std_logic;
SIGNAL \X_D[15]~output_o\ : std_logic;
SIGNAL \X_D[14]~output_o\ : std_logic;
SIGNAL \X_D[13]~output_o\ : std_logic;
SIGNAL \X_D[12]~output_o\ : std_logic;
SIGNAL \X_D[11]~output_o\ : std_logic;
SIGNAL \X_D[10]~output_o\ : std_logic;
SIGNAL \X_D[9]~output_o\ : std_logic;
SIGNAL \X_D[8]~output_o\ : std_logic;
SIGNAL \X_D[7]~output_o\ : std_logic;
SIGNAL \X_D[6]~output_o\ : std_logic;
SIGNAL \X_D[5]~output_o\ : std_logic;
SIGNAL \X_D[4]~output_o\ : std_logic;
SIGNAL \X_D[3]~output_o\ : std_logic;
SIGNAL \X_D[2]~output_o\ : std_logic;
SIGNAL \X_D[1]~output_o\ : std_logic;
SIGNAL \X_D[0]~output_o\ : std_logic;
SIGNAL \Y_D[15]~output_o\ : std_logic;
SIGNAL \Y_D[14]~output_o\ : std_logic;
SIGNAL \Y_D[13]~output_o\ : std_logic;
SIGNAL \Y_D[12]~output_o\ : std_logic;
SIGNAL \Y_D[11]~output_o\ : std_logic;
SIGNAL \Y_D[10]~output_o\ : std_logic;
SIGNAL \Y_D[9]~output_o\ : std_logic;
SIGNAL \Y_D[8]~output_o\ : std_logic;
SIGNAL \Y_D[7]~output_o\ : std_logic;
SIGNAL \Y_D[6]~output_o\ : std_logic;
SIGNAL \Y_D[5]~output_o\ : std_logic;
SIGNAL \Y_D[4]~output_o\ : std_logic;
SIGNAL \Y_D[3]~output_o\ : std_logic;
SIGNAL \Y_D[2]~output_o\ : std_logic;
SIGNAL \Y_D[1]~output_o\ : std_logic;
SIGNAL \Y_D[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst7|inst2|nCRI~q\ : std_logic;
SIGNAL \inst7|inst2|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal14~3_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal18~2_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[87]~18_combout\ : std_logic;
SIGNAL \inst7|inst1|data[14]~22_combout\ : std_logic;
SIGNAL \inst7|inst1|data[67]~33_combout\ : std_logic;
SIGNAL \inst7|inst2|nDUPA~q\ : std_logic;
SIGNAL \inst7|inst1|Equal8~0_combout\ : std_logic;
SIGNAL \inst7|inst2|nWB~q\ : std_logic;
SIGNAL \inst7|inst1|data[14]~30_combout\ : std_logic;
SIGNAL \inst7|inst1|data[71]~39_combout\ : std_logic;
SIGNAL \inst7|inst1|data[68]~48_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~7_combout\ : std_logic;
SIGNAL \inst7|inst2|EB[0]~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[71]~40_combout\ : std_logic;
SIGNAL \ACCB|C[7]~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[67]~38_combout\ : std_logic;
SIGNAL \inst7|inst2|nWA~q\ : std_logic;
SIGNAL \ACCA|B[7]~0_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~8_combout\ : std_logic;
SIGNAL \inst7|inst1|data[68]~16_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal14~7_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal10~0_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~2_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst1|data[44]~41_combout\ : std_logic;
SIGNAL \inst7|inst2|nERA1~q\ : std_logic;
SIGNAL \inst7|inst1|Equal17~0_combout\ : std_logic;
SIGNAL \inst7|inst2|RA[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|data[26]~12_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal16~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~13_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~14_combout\ : std_logic;
SIGNAL \inst7|inst1|data[26]~15_combout\ : std_logic;
SIGNAL \inst7|inst1|data[26]~17_combout\ : std_logic;
SIGNAL \inst7|inst2|nAS~q\ : std_logic;
SIGNAL \inst6|data[7]~en_q\ : std_logic;
SIGNAL \inst1|Yupa2[7]~2_combout\ : std_logic;
SIGNAL \ACCB|B[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~3_combout\ : std_logic;
SIGNAL \ACCA|C[7]~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~8_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~0_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \AUX|data_out~0_combout\ : std_logic;
SIGNAL \inst6|data[7]~1_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal7~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~19_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~44_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal19~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~45_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~46_combout\ : std_logic;
SIGNAL \inst7|inst1|data[27]~47_combout\ : std_logic;
SIGNAL \inst7|inst2|nCBD~q\ : std_logic;
SIGNAL \inst7|inst2|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \PC|Add0~16_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~4_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~5_combout\ : std_logic;
SIGNAL \inst7|inst2|liga[0]~6_combout\ : std_logic;
SIGNAL \inst7|inst1|data[28]~42_combout\ : std_logic;
SIGNAL \ACCB|C[0]~7_combout\ : std_logic;
SIGNAL \ACCA|C[0]~7_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~23_combout\ : std_logic;
SIGNAL \PC|Add0~17\ : std_logic;
SIGNAL \PC|Add0~18_combout\ : std_logic;
SIGNAL \ACCA|C[1]~6_combout\ : std_logic;
SIGNAL \ACCA|data_out[1]~6_combout\ : std_logic;
SIGNAL \ACCB|C[1]~6_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~6_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~8_combout\ : std_logic;
SIGNAL \inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[6]~43_combout\ : std_logic;
SIGNAL \inst7|inst2|CC~q\ : std_logic;
SIGNAL \ACCB|C[6]~1_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~5_combout\ : std_logic;
SIGNAL \ACCB|C[5]~2_combout\ : std_logic;
SIGNAL \ACCA|data_out[5]~2_combout\ : std_logic;
SIGNAL \ACCA|C[5]~2_combout\ : std_logic;
SIGNAL \ACCB|C[4]~3_combout\ : std_logic;
SIGNAL \ACCA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[43]~34_combout\ : std_logic;
SIGNAL \inst7|inst2|nERA0~q\ : std_logic;
SIGNAL \inst1|Yupa[7]~3_combout\ : std_logic;
SIGNAL \ACCB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~4_combout\ : std_logic;
SIGNAL \AUX|data_out~11_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~16_combout\ : std_logic;
SIGNAL \PC|Add0~19\ : std_logic;
SIGNAL \PC|Add0~20_combout\ : std_logic;
SIGNAL \PC|Add0~53_combout\ : std_logic;
SIGNAL \inst|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \PC|Add0~21\ : std_logic;
SIGNAL \PC|Add0~22_combout\ : std_logic;
SIGNAL \ACCB|C[3]~4_combout\ : std_logic;
SIGNAL \ACCA|C[3]~4_combout\ : std_logic;
SIGNAL \ACCA|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~14_combout\ : std_logic;
SIGNAL \AUX|data_out~1_combout\ : std_logic;
SIGNAL \AUX|data_out~2_combout\ : std_logic;
SIGNAL \AUX|data_out~3_combout\ : std_logic;
SIGNAL \AUX|data_out~4_combout\ : std_logic;
SIGNAL \PC|Add0~23\ : std_logic;
SIGNAL \PC|Add0~24_combout\ : std_logic;
SIGNAL \PC|Add0~51_combout\ : std_logic;
SIGNAL \inst|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \PC|Add0~25\ : std_logic;
SIGNAL \PC|Add0~26_combout\ : std_logic;
SIGNAL \PC|Add0~50_combout\ : std_logic;
SIGNAL \inst|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \PC|Add0~27\ : std_logic;
SIGNAL \PC|Add0~28_combout\ : std_logic;
SIGNAL \PC|Add0~49_combout\ : std_logic;
SIGNAL \inst|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \PC|Add0~29\ : std_logic;
SIGNAL \PC|Add0~30_combout\ : std_logic;
SIGNAL \PC|Add0~48_combout\ : std_logic;
SIGNAL \inst|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst1|Yupa2[3]~15_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~16_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \ACCB|C[2]~5_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~17_combout\ : std_logic;
SIGNAL \AUX|data_out~5_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst1|Yupa2[2]~18_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~19_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~5_combout\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~19_combout\ : std_logic;
SIGNAL \AUX|data_out~12_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~20_combout\ : std_logic;
SIGNAL \inst6|data[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~21_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~22_combout\ : std_logic;
SIGNAL \PC|Add0~52_combout\ : std_logic;
SIGNAL \inst|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst1|Yupa[4]~17_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~18_combout\ : std_logic;
SIGNAL \ACCA|data_out[4]~3_combout\ : std_logic;
SIGNAL \ACCA|C[4]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~15_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~11_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~12_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~13_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst1|Mux32~0_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~11_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~8_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst1|Yupa2[5]~9_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~10_combout\ : std_logic;
SIGNAL \ACCB|data_out[5]~2_combout\ : std_logic;
SIGNAL \inst1|Mux33~0_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~6_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst1|Yupa2[6]~6_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~7_combout\ : std_logic;
SIGNAL \ACCB|data_out[6]~1_combout\ : std_logic;
SIGNAL \inst1|Mux34~0_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst5|inst|valor_interno~q\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~27_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~20_combout\ : std_logic;
SIGNAL \AUX|data_out~6_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst1|Yupa2[1]~21_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~22_combout\ : std_logic;
SIGNAL \AUX|data_out~13_combout\ : std_logic;
SIGNAL \AUX|data_out~14_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~28_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~29_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~30_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~31_combout\ : std_logic;
SIGNAL \PC|Add0~54_combout\ : std_logic;
SIGNAL \inst|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \AUX|data_out~7_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~24_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~25_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst1|Mux27~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~32_combout\ : std_logic;
SIGNAL \AUX|data_out~15_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~33_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~34_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~35_combout\ : std_logic;
SIGNAL \PC|Add0~55_combout\ : std_logic;
SIGNAL \inst|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst1|Yupa2[7]~1_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~4_combout\ : std_logic;
SIGNAL \ACCB|data_out[7]~0_combout\ : std_logic;
SIGNAL \inst1|Mux35~0_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~0_combout\ : std_logic;
SIGNAL \AUX|data_out~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~1_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~2_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~5_combout\ : std_logic;
SIGNAL \inst8|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal3~1_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal3~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal3~3_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[87]~20_combout\ : std_logic;
SIGNAL \inst7|inst1|data[74]~28_combout\ : std_logic;
SIGNAL \inst7|inst1|data[86]~49_combout\ : std_logic;
SIGNAL \inst7|inst1|data[86]~26_combout\ : std_logic;
SIGNAL \inst7|inst1|data[74]~29_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal3~4_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal11~4_combout\ : std_logic;
SIGNAL \inst7|inst1|data[68]~50_combout\ : std_logic;
SIGNAL \inst7|inst1|data[68]~35_combout\ : std_logic;
SIGNAL \inst7|inst1|data[68]~36_combout\ : std_logic;
SIGNAL \ACCA|C[6]~1_combout\ : std_logic;
SIGNAL \ACCA|data_out[6]~1_combout\ : std_logic;
SIGNAL \AUX|data_out~9_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~7_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~9_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~10_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal14~5_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal14~4_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal14~6_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal15~0_combout\ : std_logic;
SIGNAL \inst7|inst2|BD~feeder_combout\ : std_logic;
SIGNAL \inst7|inst2|BD~q\ : std_logic;
SIGNAL \AUX|data_out~10_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~12_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~13_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~14_combout\ : std_logic;
SIGNAL \inst8|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal6~0_combout\ : std_logic;
SIGNAL \inst7|inst1|data[69]~37_combout\ : std_logic;
SIGNAL \ACCA|data_out[2]~5_combout\ : std_logic;
SIGNAL \ACCA|C[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~23_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~24_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~25_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~26_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst8|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal14~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal11~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal11~5_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal11~3_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal13~2_combout\ : std_logic;
SIGNAL \inst7|inst1|data[86]~25_combout\ : std_logic;
SIGNAL \inst7|inst1|data[86]~23_combout\ : std_logic;
SIGNAL \inst7|inst1|data[86]~24_combout\ : std_logic;
SIGNAL \inst7|inst1|data[86]~27_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst8|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal1~3_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal1~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal1~4_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal1~5_combout\ : std_logic;
SIGNAL \inst7|inst1|data[87]~21_combout\ : std_logic;
SIGNAL \inst7|inst3|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst7|inst3|SELECTOR~1_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal12~2_combout\ : std_logic;
SIGNAL \inst7|inst1|data[6]~32_combout\ : std_logic;
SIGNAL \inst7|inst2|CZ~q\ : std_logic;
SIGNAL \inst1|WideOr0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst7|inst1|data[14]~31_combout\ : std_logic;
SIGNAL \inst7|inst2|B4~q\ : std_logic;
SIGNAL \inst7|inst2|B3~feeder_combout\ : std_logic;
SIGNAL \inst7|inst2|B3~q\ : std_logic;
SIGNAL \inst5|inst10|output~3_combout\ : std_logic;
SIGNAL \inst5|inst10|output~5_combout\ : std_logic;
SIGNAL \inst5|inst10|output~6_combout\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst10|output~4_combout\ : std_logic;
SIGNAL \inst5|inst10|output~7_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \inst1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PC|data_out[15]~0_combout\ : std_logic;
SIGNAL \PC|data_out[14]~1_combout\ : std_logic;
SIGNAL \PC|data_out[13]~2_combout\ : std_logic;
SIGNAL \PC|data_out[12]~3_combout\ : std_logic;
SIGNAL \PC|data_out[11]~4_combout\ : std_logic;
SIGNAL \PC|data_out[10]~5_combout\ : std_logic;
SIGNAL \PC|data_out[9]~6_combout\ : std_logic;
SIGNAL \PC|data_out[8]~7_combout\ : std_logic;
SIGNAL \PC|Add0~31\ : std_logic;
SIGNAL \PC|Add0~32_combout\ : std_logic;
SIGNAL \PC|Equal0~0_combout\ : std_logic;
SIGNAL \PC|Add0~33\ : std_logic;
SIGNAL \PC|Add0~34_combout\ : std_logic;
SIGNAL \PC|Add0~35\ : std_logic;
SIGNAL \PC|Add0~36_combout\ : std_logic;
SIGNAL \PC|Add0~37\ : std_logic;
SIGNAL \PC|Add0~38_combout\ : std_logic;
SIGNAL \PC|Add0~39\ : std_logic;
SIGNAL \PC|Add0~40_combout\ : std_logic;
SIGNAL \PC|Add0~41\ : std_logic;
SIGNAL \PC|Add0~42_combout\ : std_logic;
SIGNAL \PC|Add0~43\ : std_logic;
SIGNAL \PC|Add0~44_combout\ : std_logic;
SIGNAL \PC|Add0~45\ : std_logic;
SIGNAL \PC|Add0~46_combout\ : std_logic;
SIGNAL \inst|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|inst2|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst2|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|inst2|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst2|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ACCA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst7|inst2|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \AUX|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|inst2|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst2|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_CC~q\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|inst2|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_CZ~q\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_nAS~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_IRQn <= IRQn;
ww_XIRQn <= XIRQn;
csnn <= ww_csnn;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AP_D <= ww_AP_D;
AUX_D <= ww_AUX_D;
Debug_Q <= ww_Debug_Q;
Debug_Yupa <= ww_Debug_Yupa;
Edo_Pres <= ww_Edo_Pres;
PC_D <= ww_PC_D;
X_D <= ww_X_D;
Y_D <= ww_Y_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst6|mem_rtl_0|auto_generated|ram_block1a1\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst6|mem_rtl_0|auto_generated|ram_block1a2\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst6|mem_rtl_0|auto_generated|ram_block1a3\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst6|mem_rtl_0|auto_generated|ram_block1a4\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst6|mem_rtl_0|auto_generated|ram_block1a5\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst6|mem_rtl_0|auto_generated|ram_block1a6\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst6|mem_rtl_0|auto_generated|ram_block1a7\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst7|inst2|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst2|nCRI~q\);

\inst7|inst2|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst2|nCBD~q\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\ <= NOT \inst7|inst2|nCBD~clkctrl_outclk\;
\inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\ <= NOT \inst7|inst2|nCRI~clkctrl_outclk\;
\inst7|inst2|ALT_INV_CC~q\ <= NOT \inst7|inst2|CC~q\;
\inst7|inst2|ALT_INV_EA\(1) <= NOT \inst7|inst2|EA\(1);
\inst7|inst2|ALT_INV_EA\(0) <= NOT \inst7|inst2|EA\(0);
\inst7|inst2|ALT_INV_nDUPA~q\ <= NOT \inst7|inst2|nDUPA~q\;
\inst7|inst2|ALT_INV_CZ~q\ <= NOT \inst7|inst2|CZ~q\;
\inst7|inst2|ALT_INV_nAS~q\ <= NOT \inst7|inst2|nAS~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y11_N9
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|valor_interno~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\csnn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst2|ALT_INV_nAS~q\,
	devoe => ww_devoe,
	o => \csnn~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\ACCA_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ACCA_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\ACCA_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\ACCA_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\ACCA_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\ACCA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\ACCA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\ACCA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\ACCB_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\ACCB_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\ACCB_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\ACCB_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\ACCB_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\ACCB_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\ACCB_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\ACCB_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\AP_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\AP_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\AP_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[13]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\AP_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\AP_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\AP_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\AP_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[9]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\AP_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\AP_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\AP_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\AP_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\AP_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\AP_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\AP_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\AP_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\AP_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\AUX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\AUX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\AUX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\AUX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\AUX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\AUX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\AUX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\AUX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\AUX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\AUX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\AUX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\AUX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\AUX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\AUX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\AUX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\AUX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\Debug_Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Debug_Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(6),
	devoe => ww_devoe,
	o => \Debug_Q[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Debug_Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(5),
	devoe => ww_devoe,
	o => \Debug_Q[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Debug_Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(4),
	devoe => ww_devoe,
	o => \Debug_Q[4]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\Debug_Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(3),
	devoe => ww_devoe,
	o => \Debug_Q[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Debug_Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(2),
	devoe => ww_devoe,
	o => \Debug_Q[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Debug_Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(1),
	devoe => ww_devoe,
	o => \Debug_Q[1]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\Debug_Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Q[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Debug_Yupa[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[7]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Debug_Yupa[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(6),
	devoe => ww_devoe,
	o => \Debug_Yupa[6]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\Debug_Yupa[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(5),
	devoe => ww_devoe,
	o => \Debug_Yupa[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\Debug_Yupa[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Debug_Yupa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(3),
	devoe => ww_devoe,
	o => \Debug_Yupa[3]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\Debug_Yupa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[2]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Debug_Yupa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(1),
	devoe => ww_devoe,
	o => \Debug_Yupa[1]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Debug_Yupa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Edo_Pres[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\Edo_Pres[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\Edo_Pres[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\Edo_Pres[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\Edo_Pres[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\Edo_Pres[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Edo_Pres[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Edo_Pres[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\Edo_Pres[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\Edo_Pres[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Edo_Pres[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Edo_Pres[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\PC_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(15),
	devoe => ww_devoe,
	o => \PC_D[15]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\PC_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(14),
	devoe => ww_devoe,
	o => \PC_D[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\PC_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(13),
	devoe => ww_devoe,
	o => \PC_D[13]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\PC_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(12),
	devoe => ww_devoe,
	o => \PC_D[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\PC_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(11),
	devoe => ww_devoe,
	o => \PC_D[11]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\PC_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(10),
	devoe => ww_devoe,
	o => \PC_D[10]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\PC_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(9),
	devoe => ww_devoe,
	o => \PC_D[9]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\PC_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(8),
	devoe => ww_devoe,
	o => \PC_D[8]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\PC_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(7),
	devoe => ww_devoe,
	o => \PC_D[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\PC_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(6),
	devoe => ww_devoe,
	o => \PC_D[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\PC_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(5),
	devoe => ww_devoe,
	o => \PC_D[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\PC_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(4),
	devoe => ww_devoe,
	o => \PC_D[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\PC_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(3),
	devoe => ww_devoe,
	o => \PC_D[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\PC_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(2),
	devoe => ww_devoe,
	o => \PC_D[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\PC_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(1),
	devoe => ww_devoe,
	o => \PC_D[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\PC_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(0),
	devoe => ww_devoe,
	o => \PC_D[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\X_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[15]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\X_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\X_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\X_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\X_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\X_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[10]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\X_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[9]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\X_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[8]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\X_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\X_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\X_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\X_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\X_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\X_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\X_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\X_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Y_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[15]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\Y_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[13]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Y_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\Y_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Y_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[10]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Y_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Y_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[8]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\Y_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Y_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[6]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\Y_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[5]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\Y_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\Y_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Y_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\Y_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Y_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X30_Y28_N16
\inst7|inst5|$00000|auto_generated|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ = (\inst7|inst4|valor_interno\(1) & !\inst7|inst3|SELECTOR~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst4|valor_interno\(1),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X28_Y28_N6
\inst7|inst4|valor_interno[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[1]~11_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ $ (VCC))) # (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & VCC))
-- \inst7|inst4|valor_interno[1]~12\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => VCC,
	combout => \inst7|inst4|valor_interno[1]~11_combout\,
	cout => \inst7|inst4|valor_interno[1]~12\);

-- Location: LCCOMB_X28_Y28_N8
\inst7|inst4|valor_interno[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[2]~13_combout\ = (\inst7|inst4|valor_interno[1]~12\ & (((\inst7|inst3|SELECTOR~1_combout\)) # (!\inst7|inst4|valor_interno\(2)))) # (!\inst7|inst4|valor_interno[1]~12\ & (((\inst7|inst4|valor_interno\(2) & 
-- !\inst7|inst3|SELECTOR~1_combout\)) # (GND)))
-- \inst7|inst4|valor_interno[2]~14\ = CARRY(((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno[1]~12\)) # (!\inst7|inst4|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(2),
	datab => \inst7|inst3|SELECTOR~1_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[1]~12\,
	combout => \inst7|inst4|valor_interno[2]~13_combout\,
	cout => \inst7|inst4|valor_interno[2]~14\);

-- Location: IOIBUF_X27_Y0_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G19
\RESET~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X28_Y28_N9
\inst7|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(2));

-- Location: LCCOMB_X28_Y28_N10
\inst7|inst4|valor_interno[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[3]~15_combout\ = (\inst7|inst4|valor_interno[2]~14\ & (\inst7|inst4|valor_interno\(3) & (!\inst7|inst3|SELECTOR~1_combout\ & VCC))) # (!\inst7|inst4|valor_interno[2]~14\ & ((((\inst7|inst4|valor_interno\(3) & 
-- !\inst7|inst3|SELECTOR~1_combout\)))))
-- \inst7|inst4|valor_interno[3]~16\ = CARRY((\inst7|inst4|valor_interno\(3) & (!\inst7|inst3|SELECTOR~1_combout\ & !\inst7|inst4|valor_interno[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(3),
	datab => \inst7|inst3|SELECTOR~1_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[2]~14\,
	combout => \inst7|inst4|valor_interno[3]~15_combout\,
	cout => \inst7|inst4|valor_interno[3]~16\);

-- Location: FF_X28_Y28_N11
\inst7|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(3));

-- Location: LCCOMB_X28_Y28_N12
\inst7|inst4|valor_interno[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[4]~17_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ & (!\inst7|inst4|valor_interno[3]~16\)) # (!\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ & ((\inst7|inst4|valor_interno[3]~16\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[4]~18\ = CARRY((!\inst7|inst4|valor_interno[3]~16\) # (!\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[3]~16\,
	combout => \inst7|inst4|valor_interno[4]~17_combout\,
	cout => \inst7|inst4|valor_interno[4]~18\);

-- Location: FF_X28_Y28_N13
\inst7|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(4));

-- Location: LCCOMB_X28_Y28_N14
\inst7|inst4|valor_interno[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[5]~19_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ & (\inst7|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ & (!\inst7|inst4|valor_interno[4]~18\ 
-- & VCC))
-- \inst7|inst4|valor_interno[5]~20\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ & !\inst7|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[4]~18\,
	combout => \inst7|inst4|valor_interno[5]~19_combout\,
	cout => \inst7|inst4|valor_interno[5]~20\);

-- Location: LCCOMB_X28_Y28_N16
\inst7|inst4|valor_interno[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[6]~21_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst7|inst4|valor_interno[5]~20\)) # (!\inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ & ((\inst7|inst4|valor_interno[5]~20\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[6]~22\ = CARRY((!\inst7|inst4|valor_interno[5]~20\) # (!\inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[5]~20\,
	combout => \inst7|inst4|valor_interno[6]~21_combout\,
	cout => \inst7|inst4|valor_interno[6]~22\);

-- Location: FF_X28_Y28_N17
\inst7|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(6));

-- Location: FF_X30_Y28_N9
\inst7|inst2|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst1|Equal1~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nCRI~q\);

-- Location: CLKCTRL_G10
\inst7|inst2|nCRI~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst2|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst2|nCRI~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y28_N20
\inst7|inst4|valor_interno[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[8]~25_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (!\inst7|inst4|valor_interno[7]~24\)) # (!\inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ & ((\inst7|inst4|valor_interno[7]~24\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[8]~26\ = CARRY((!\inst7|inst4|valor_interno[7]~24\) # (!\inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[7]~24\,
	combout => \inst7|inst4|valor_interno[8]~25_combout\,
	cout => \inst7|inst4|valor_interno[8]~26\);

-- Location: LCCOMB_X28_Y28_N22
\inst7|inst4|valor_interno[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[9]~27_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ & (\inst7|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ & (!\inst7|inst4|valor_interno[8]~26\ 
-- & VCC))
-- \inst7|inst4|valor_interno[9]~28\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ & !\inst7|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[8]~26\,
	combout => \inst7|inst4|valor_interno[9]~27_combout\,
	cout => \inst7|inst4|valor_interno[9]~28\);

-- Location: FF_X28_Y28_N23
\inst7|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(9));

-- Location: LCCOMB_X30_Y28_N8
\inst7|inst5|$00000|auto_generated|result_node[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ = (\inst7|inst4|valor_interno\(2) & !\inst7|inst3|SELECTOR~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst4|valor_interno\(2),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\);

-- Location: LCCOMB_X27_Y28_N14
\inst7|inst1|Equal14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal14~3_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(3),
	datab => \inst7|inst3|SELECTOR~1_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	combout => \inst7|inst1|Equal14~3_combout\);

-- Location: LCCOMB_X30_Y28_N10
\inst7|inst4|valor_interno[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[0]~33_combout\ = !\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst7|inst4|valor_interno[0]~33_combout\);

-- Location: FF_X30_Y28_N11
\inst7|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(0));

-- Location: LCCOMB_X30_Y28_N14
\inst7|inst1|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal18~2_combout\ = (!\inst7|inst3|SELECTOR~1_combout\ & (\inst7|inst1|Equal3~4_combout\ & (\inst7|inst4|valor_interno\(2) & \inst7|inst1|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst1|Equal3~4_combout\,
	datac => \inst7|inst4|valor_interno\(2),
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|Equal18~2_combout\);

-- Location: LCCOMB_X30_Y28_N20
\inst7|inst5|$00000|auto_generated|result_node[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ = (\inst7|inst4|valor_interno\(3) & !\inst7|inst3|SELECTOR~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst4|valor_interno\(3),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\);

-- Location: LCCOMB_X28_Y28_N24
\inst7|inst4|valor_interno[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[10]~29_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & (!\inst7|inst4|valor_interno[9]~28\)) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & ((\inst7|inst4|valor_interno[9]~28\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[10]~30\ = CARRY((!\inst7|inst4|valor_interno[9]~28\) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[9]~28\,
	combout => \inst7|inst4|valor_interno[10]~29_combout\,
	cout => \inst7|inst4|valor_interno[10]~30\);

-- Location: LCCOMB_X28_Y28_N26
\inst7|inst4|valor_interno[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[11]~31_combout\ = \inst7|inst4|valor_interno[10]~30\ $ (!\inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\,
	cin => \inst7|inst4|valor_interno[10]~30\,
	combout => \inst7|inst4|valor_interno[11]~31_combout\);

-- Location: FF_X28_Y28_N27
\inst7|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(11));

-- Location: LCCOMB_X29_Y29_N10
\inst7|inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal4~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst7|inst1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|Equal4~0_combout\);

-- Location: LCCOMB_X29_Y29_N28
\inst7|inst1|data[87]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[87]~18_combout\ = ((!\inst7|inst3|SELECTOR~1_combout\ & (\inst7|inst4|valor_interno\(1) & \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\))) # (!\inst7|inst1|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(1),
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal1~4_combout\,
	combout => \inst7|inst1|data[87]~18_combout\);

-- Location: LCCOMB_X29_Y29_N18
\inst7|inst1|data[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[14]~22_combout\ = (\inst7|inst1|data[87]~18_combout\ & (((\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\) # (!\inst7|inst1|Equal3~3_combout\)) # (!\inst7|inst1|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal3~4_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \inst7|inst1|Equal3~3_combout\,
	datad => \inst7|inst1|data[87]~18_combout\,
	combout => \inst7|inst1|data[14]~22_combout\);

-- Location: LCCOMB_X29_Y29_N26
\inst7|inst1|data[67]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[67]~33_combout\ = (\inst7|inst1|Equal12~2_combout\ & (!\inst7|inst1|Equal4~0_combout\ & \inst7|inst1|data[14]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal12~2_combout\,
	datab => \inst7|inst1|Equal4~0_combout\,
	datad => \inst7|inst1|data[14]~22_combout\,
	combout => \inst7|inst1|data[67]~33_combout\);

-- Location: FF_X29_Y29_N27
\inst7|inst2|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[67]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nDUPA~q\);

-- Location: LCCOMB_X28_Y29_N4
\inst7|inst1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal8~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & 
-- \inst7|inst1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|Equal8~0_combout\);

-- Location: FF_X28_Y29_N23
\inst7|inst2|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst1|Equal8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nWB~q\);

-- Location: LCCOMB_X29_Y29_N2
\inst7|inst1|data[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[14]~30_combout\ = (!\inst7|inst1|Equal4~0_combout\ & (!\inst7|inst1|Equal5~0_combout\ & \inst7|inst1|data[14]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal4~0_combout\,
	datab => \inst7|inst1|Equal5~0_combout\,
	datad => \inst7|inst1|data[14]~22_combout\,
	combout => \inst7|inst1|data[14]~30_combout\);

-- Location: LCCOMB_X28_Y29_N18
\inst7|inst1|data[71]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[71]~39_combout\ = ((\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\) # (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\)))) # (!\inst7|inst1|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|data[71]~39_combout\);

-- Location: LCCOMB_X29_Y29_N30
\inst7|inst1|data[68]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[68]~48_combout\ = (((!\inst7|inst3|SELECTOR~1_combout\ & \inst7|inst4|valor_interno\(1))) # (!\inst7|inst1|Equal3~3_combout\)) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \inst7|inst4|valor_interno\(1),
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|data[68]~48_combout\);

-- Location: LCCOMB_X29_Y29_N12
\inst7|inst2|liga[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~7_combout\ = (!\inst7|inst1|Equal4~0_combout\ & (\inst7|inst1|data[68]~48_combout\ & \inst7|inst1|data[14]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal4~0_combout\,
	datac => \inst7|inst1|data[68]~48_combout\,
	datad => \inst7|inst1|data[14]~22_combout\,
	combout => \inst7|inst2|liga[0]~7_combout\);

-- Location: LCCOMB_X29_Y29_N4
\inst7|inst2|EB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|EB[0]~0_combout\ = (\inst7|inst1|Equal5~0_combout\) # ((\inst7|inst1|Equal6~0_combout\) # (!\inst7|inst2|liga[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Equal5~0_combout\,
	datac => \inst7|inst1|Equal6~0_combout\,
	datad => \inst7|inst2|liga[0]~7_combout\,
	combout => \inst7|inst2|EB[0]~0_combout\);

-- Location: LCCOMB_X28_Y29_N12
\inst7|inst1|data[71]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[71]~40_combout\ = (\inst7|inst2|EB[0]~0_combout\ & (\inst7|inst1|data[14]~30_combout\ & (\inst7|inst1|data[71]~39_combout\))) # (!\inst7|inst2|EB[0]~0_combout\ & (((\inst7|inst1|Equal11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|data[14]~30_combout\,
	datab => \inst7|inst1|data[71]~39_combout\,
	datac => \inst7|inst1|Equal11~4_combout\,
	datad => \inst7|inst2|EB[0]~0_combout\,
	combout => \inst7|inst1|data[71]~40_combout\);

-- Location: FF_X28_Y29_N13
\inst7|inst2|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[71]~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|EB\(0));

-- Location: LCCOMB_X24_Y27_N14
\ACCB|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[7]~0_combout\ = (\inst7|inst2|nWB~q\) # (((\ACCB|data_out\(7)) # (!\inst7|inst2|EB\(0))) # (!\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \inst7|inst2|EA\(1),
	datac => \ACCB|data_out\(7),
	datad => \inst7|inst2|EB\(0),
	combout => \ACCB|C[7]~0_combout\);

-- Location: LCCOMB_X28_Y29_N8
\inst7|inst1|data[67]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[67]~38_combout\ = (\inst7|inst1|data[14]~22_combout\ & ((\inst7|inst1|Equal12~2_combout\) # (\inst7|inst1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Equal12~2_combout\,
	datac => \inst7|inst1|Equal4~0_combout\,
	datad => \inst7|inst1|data[14]~22_combout\,
	combout => \inst7|inst1|data[67]~38_combout\);

-- Location: FF_X28_Y29_N9
\inst7|inst2|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[67]~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nWA~q\);

-- Location: LCCOMB_X24_Y27_N12
\ACCA|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|B[7]~0_combout\ = (\inst7|inst2|EA\(0)) # ((\inst7|inst2|nWA~q\) # (!\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(0),
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|nWA~q\,
	combout => \ACCA|B[7]~0_combout\);

-- Location: LCCOMB_X30_Y29_N22
\inst7|inst2|liga[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~8_combout\ = ((\inst7|inst4|valor_interno\(1) & !\inst7|inst3|SELECTOR~1_combout\)) # (!\inst7|inst1|Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst4|valor_interno\(1),
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst1|Equal11~3_combout\,
	combout => \inst7|inst2|liga[0]~8_combout\);

-- Location: LCCOMB_X29_Y29_N6
\inst7|inst1|data[68]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[68]~16_combout\ = (((\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\)) # (!\inst7|inst1|Equal3~3_combout\)) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|data[68]~16_combout\);

-- Location: LCCOMB_X30_Y29_N26
\inst7|inst1|Equal14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal14~7_combout\ = (\inst7|inst1|Equal14~6_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datac => \inst7|inst4|valor_interno\(2),
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|Equal14~7_combout\);

-- Location: LCCOMB_X30_Y29_N0
\inst7|inst1|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal10~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst7|inst1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|Equal10~0_combout\);

-- Location: LCCOMB_X30_Y29_N18
\inst7|inst2|liga[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~2_combout\ = (!\inst7|inst1|Equal13~2_combout\ & (!\inst7|inst1|Equal10~0_combout\ & ((!\inst7|inst1|Equal14~7_combout\) # (!\inst7|inst1|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal13~2_combout\,
	datab => \inst7|inst1|Equal3~4_combout\,
	datac => \inst7|inst1|Equal14~7_combout\,
	datad => \inst7|inst1|Equal10~0_combout\,
	combout => \inst7|inst2|liga[0]~2_combout\);

-- Location: LCCOMB_X30_Y29_N24
\inst7|inst2|liga[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~3_combout\ = (\inst7|inst2|liga[0]~8_combout\ & (\inst7|inst1|data[68]~16_combout\ & \inst7|inst2|liga[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|liga[0]~8_combout\,
	datac => \inst7|inst1|data[68]~16_combout\,
	datad => \inst7|inst2|liga[0]~2_combout\,
	combout => \inst7|inst2|liga[0]~3_combout\);

-- Location: LCCOMB_X29_Y29_N22
\inst7|inst1|data[44]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[44]~41_combout\ = (\inst7|inst1|Equal15~0_combout\) # ((\inst7|inst2|liga[0]~7_combout\ & (\inst7|inst1|Equal18~2_combout\ & \inst7|inst2|liga[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal15~0_combout\,
	datab => \inst7|inst2|liga[0]~7_combout\,
	datac => \inst7|inst1|Equal18~2_combout\,
	datad => \inst7|inst2|liga[0]~3_combout\,
	combout => \inst7|inst1|data[44]~41_combout\);

-- Location: FF_X29_Y29_N23
\inst7|inst2|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[44]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nERA1~q\);

-- Location: LCCOMB_X27_Y29_N28
\inst7|inst1|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal17~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst7|inst1|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|Equal17~0_combout\);

-- Location: LCCOMB_X27_Y29_N30
\inst7|inst2|RA[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|RA[0]~feeder_combout\ = \inst7|inst1|Equal17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|Equal17~0_combout\,
	combout => \inst7|inst2|RA[0]~feeder_combout\);

-- Location: FF_X27_Y29_N31
\inst7|inst2|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|RA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|RA\(0));

-- Location: LCCOMB_X27_Y29_N24
\inst7|inst1|data[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[26]~12_combout\ = (!\inst7|inst1|Equal1~5_combout\ & (!\inst7|inst1|Equal15~0_combout\ & (!\inst7|inst1|Equal4~0_combout\ & !\inst7|inst1|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal1~5_combout\,
	datab => \inst7|inst1|Equal15~0_combout\,
	datac => \inst7|inst1|Equal4~0_combout\,
	datad => \inst7|inst1|Equal8~0_combout\,
	combout => \inst7|inst1|data[26]~12_combout\);

-- Location: LCCOMB_X30_Y28_N6
\inst7|inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal0~2_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & (\inst7|inst1|Equal1~4_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datab => \inst7|inst3|SELECTOR~1_combout\,
	datac => \inst7|inst4|valor_interno\(0),
	datad => \inst7|inst1|Equal1~4_combout\,
	combout => \inst7|inst1|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y29_N12
\inst7|inst1|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal16~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & 
-- \inst7|inst1|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|Equal16~0_combout\);

-- Location: LCCOMB_X28_Y29_N10
\inst7|inst1|data[27]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~13_combout\ = ((!\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\) # (!\inst7|inst1|Equal3~2_combout\)) # (!\inst7|inst1|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Equal3~4_combout\,
	datac => \inst7|inst1|Equal3~2_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	combout => \inst7|inst1|data[27]~13_combout\);

-- Location: LCCOMB_X27_Y29_N20
\inst7|inst1|data[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~14_combout\ = (!\inst7|inst1|Equal16~0_combout\ & (\inst7|inst1|data[27]~13_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\) # (!\inst7|inst1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal16~0_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|data[27]~13_combout\,
	datad => \inst7|inst1|Equal0~2_combout\,
	combout => \inst7|inst1|data[27]~14_combout\);

-- Location: LCCOMB_X27_Y29_N14
\inst7|inst1|data[26]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[26]~15_combout\ = (((\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & \inst7|inst1|Equal0~2_combout\)) # (!\inst7|inst1|data[27]~14_combout\)) # (!\inst7|inst1|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datab => \inst7|inst1|Equal17~0_combout\,
	datac => \inst7|inst1|Equal0~2_combout\,
	datad => \inst7|inst1|data[27]~14_combout\,
	combout => \inst7|inst1|data[26]~15_combout\);

-- Location: LCCOMB_X27_Y29_N26
\inst7|inst1|data[26]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[26]~17_combout\ = ((!\inst7|inst1|data[26]~15_combout\ & \inst7|inst2|liga[0]~3_combout\)) # (!\inst7|inst1|data[26]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|data[26]~12_combout\,
	datac => \inst7|inst1|data[26]~15_combout\,
	datad => \inst7|inst2|liga[0]~3_combout\,
	combout => \inst7|inst1|data[26]~17_combout\);

-- Location: FF_X27_Y29_N27
\inst7|inst2|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[26]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nAS~q\);

-- Location: FF_X27_Y29_N7
\inst6|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst2|nAS~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~en_q\);

-- Location: LCCOMB_X24_Y28_N22
\inst1|Yupa2[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~2_combout\ = (\inst7|inst2|BD~q\ & (((\inst6|data[7]~en_q\)))) # (!\inst7|inst2|BD~q\ & (\inst7|inst2|nERA1~q\ & (!\inst7|inst2|RA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|BD~q\,
	datab => \inst7|inst2|nERA1~q\,
	datac => \inst7|inst2|RA\(0),
	datad => \inst6|data[7]~en_q\,
	combout => \inst1|Yupa2[7]~2_combout\);

-- Location: LCCOMB_X26_Y28_N10
\ACCB|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|B[7]~0_combout\ = (\inst7|inst2|EB\(0)) # ((\inst7|inst2|nWB~q\) # (!\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EB\(0),
	datab => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|nWB~q\,
	combout => \ACCB|B[7]~0_combout\);

-- Location: LCCOMB_X24_Y28_N28
\inst1|Yupa2[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~3_combout\ = ((\inst7|inst2|nDUPA~q\) # ((\inst1|Yupa2[7]~2_combout\) # (!\ACCB|B[7]~0_combout\))) # (!\ACCA|B[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \inst7|inst2|nDUPA~q\,
	datac => \inst1|Yupa2[7]~2_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[7]~3_combout\);

-- Location: LCCOMB_X27_Y27_N4
\ACCA|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[7]~0_combout\ = (\ACCA|data_out\(7)) # ((\inst7|inst2|nWA~q\) # ((!\inst7|inst2|EA\(0)) # (!\inst7|inst2|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst7|inst2|nWA~q\,
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|EA\(0),
	combout => \ACCA|C[7]~0_combout\);

-- Location: LCCOMB_X27_Y27_N24
\ACCA|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[7]~0_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[7]~0_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \ACCA|C[7]~0_combout\,
	datad => \inst1|Yupa[7]~5_combout\,
	combout => \ACCA|data_out[7]~0_combout\);

-- Location: LCCOMB_X27_Y27_N30
\ACCA|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~8_combout\ = (\inst7|inst2|nWA~q\ & ((\inst7|inst2|EA\(0)) # (\inst7|inst2|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|EA\(0),
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|nWA~q\,
	combout => \ACCA|data_out[0]~8_combout\);

-- Location: FF_X27_Y27_N25
\ACCA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[7]~0_combout\,
	asdata => \inst1|Yupa2[7]~4_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(7));

-- Location: LCCOMB_X24_Y27_N30
\inst1|Yupa2[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~0_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|B[7]~0_combout\) # ((\ACCB|data_out\(7))))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(7) & ((\ACCB|B[7]~0_combout\) # (\ACCB|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|B[7]~0_combout\,
	datac => \ACCB|data_out\(7),
	datad => \ACCA|data_out\(7),
	combout => \inst1|Yupa2[7]~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\AUX|TRI_STATE_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_C~0_combout\ = (\inst7|inst2|RA\(0)) # ((\inst7|inst2|BD~q\) # (!\inst7|inst2|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|RA\(0),
	datab => \inst7|inst2|BD~q\,
	datad => \inst7|inst2|nERA1~q\,
	combout => \AUX|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X24_Y27_N18
\AUX|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~0_combout\ = (\inst7|inst2|RA\(0)) # (\inst1|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|RA\(0),
	datad => \inst1|Yupa2[7]~4_combout\,
	combout => \AUX|data_out~0_combout\);

-- Location: FF_X24_Y27_N19
\AUX|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(15));

-- Location: LCCOMB_X26_Y29_N26
\inst6|data[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~1_combout\ = (\inst6|data[7]~en_q\ & \inst7|inst2|BD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datad => \inst7|inst2|BD~q\,
	combout => \inst6|data[7]~1_combout\);

-- Location: LCCOMB_X30_Y28_N12
\inst7|inst1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal7~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & \inst7|inst1|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datad => \inst7|inst1|Equal3~2_combout\,
	combout => \inst7|inst1|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\inst7|inst1|data[27]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~19_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\) # ((!\inst7|inst1|Equal11~3_combout\)))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (((!\inst7|inst1|Equal7~0_combout\)) # (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|Equal11~3_combout\,
	datad => \inst7|inst1|Equal7~0_combout\,
	combout => \inst7|inst1|data[27]~19_combout\);

-- Location: LCCOMB_X30_Y28_N0
\inst7|inst1|data[27]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~44_combout\ = (\inst7|inst1|Equal18~2_combout\) # (((\inst7|inst1|Equal0~2_combout\ & \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\)) # (!\inst7|inst1|data[27]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal0~2_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|Equal18~2_combout\,
	datad => \inst7|inst1|data[27]~19_combout\,
	combout => \inst7|inst1|data[27]~44_combout\);

-- Location: LCCOMB_X27_Y29_N10
\inst7|inst1|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal19~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & 
-- \inst7|inst1|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|Equal19~0_combout\);

-- Location: LCCOMB_X27_Y29_N22
\inst7|inst1|data[27]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~45_combout\ = ((\inst7|inst1|Equal5~0_combout\) # ((\inst7|inst1|Equal11~3_combout\ & \inst7|inst1|Equal3~4_combout\))) # (!\inst7|inst1|Equal19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal19~0_combout\,
	datab => \inst7|inst1|Equal11~3_combout\,
	datac => \inst7|inst1|Equal3~4_combout\,
	datad => \inst7|inst1|Equal5~0_combout\,
	combout => \inst7|inst1|data[27]~45_combout\);

-- Location: LCCOMB_X27_Y29_N18
\inst7|inst1|data[27]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~46_combout\ = (\inst7|inst1|data[27]~44_combout\) # ((\inst7|inst1|Equal17~0_combout\) # ((\inst7|inst1|data[27]~45_combout\) # (!\inst7|inst1|data[26]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|data[27]~44_combout\,
	datab => \inst7|inst1|Equal17~0_combout\,
	datac => \inst7|inst1|data[27]~45_combout\,
	datad => \inst7|inst1|data[26]~12_combout\,
	combout => \inst7|inst1|data[27]~46_combout\);

-- Location: LCCOMB_X27_Y29_N0
\inst7|inst1|data[27]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[27]~47_combout\ = (((\inst7|inst1|Equal6~0_combout\) # (!\inst7|inst1|data[27]~46_combout\)) # (!\inst7|inst1|data[27]~14_combout\)) # (!\inst7|inst2|liga[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|liga[0]~2_combout\,
	datab => \inst7|inst1|data[27]~14_combout\,
	datac => \inst7|inst1|Equal6~0_combout\,
	datad => \inst7|inst1|data[27]~46_combout\,
	combout => \inst7|inst1|data[27]~47_combout\);

-- Location: FF_X27_Y29_N1
\inst7|inst2|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[27]~47_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nCBD~q\);

-- Location: CLKCTRL_G13
\inst7|inst2|nCBD~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst2|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst2|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y28_N0
\PC|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~16_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|Add0~17\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|Add0~16_combout\,
	cout => \PC|Add0~17\);

-- Location: LCCOMB_X28_Y29_N16
\inst7|inst2|liga[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~4_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\) # (((!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\)) # 
-- (!\inst7|inst1|Equal14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst2|liga[0]~4_combout\);

-- Location: LCCOMB_X29_Y29_N14
\inst7|inst2|liga[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~5_combout\ = (!\inst7|inst1|Equal4~0_combout\ & (\inst7|inst2|liga[0]~4_combout\ & (\inst7|inst1|data[68]~48_combout\ & \inst7|inst1|data[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal4~0_combout\,
	datab => \inst7|inst2|liga[0]~4_combout\,
	datac => \inst7|inst1|data[68]~48_combout\,
	datad => \inst7|inst1|data[14]~22_combout\,
	combout => \inst7|inst2|liga[0]~5_combout\);

-- Location: LCCOMB_X30_Y29_N6
\inst7|inst2|liga[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|liga[0]~6_combout\ = (\inst7|inst2|liga[0]~8_combout\ & (\inst7|inst2|liga[0]~2_combout\ & (\inst7|inst1|data[68]~16_combout\ & \inst7|inst2|liga[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|liga[0]~8_combout\,
	datab => \inst7|inst2|liga[0]~2_combout\,
	datac => \inst7|inst1|data[68]~16_combout\,
	datad => \inst7|inst2|liga[0]~5_combout\,
	combout => \inst7|inst2|liga[0]~6_combout\);

-- Location: LCCOMB_X30_Y29_N20
\inst7|inst1|data[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[28]~42_combout\ = (\inst7|inst1|Equal17~0_combout\) # (((\inst7|inst1|Equal18~2_combout\ & \inst7|inst2|liga[0]~6_combout\)) # (!\inst7|inst1|data[26]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal18~2_combout\,
	datab => \inst7|inst1|Equal17~0_combout\,
	datac => \inst7|inst1|data[26]~12_combout\,
	datad => \inst7|inst2|liga[0]~6_combout\,
	combout => \inst7|inst1|data[28]~42_combout\);

-- Location: FF_X30_Y29_N21
\inst7|inst2|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[28]~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|PC\(0));

-- Location: FF_X30_Y28_N15
\inst7|inst2|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|Equal18~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|PC\(2));

-- Location: LCCOMB_X25_Y27_N4
\ACCB|C[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[0]~7_combout\ = (\ACCB|data_out\(0)) # ((\inst7|inst2|nWB~q\) # ((!\inst7|inst2|EB\(0)) # (!\inst7|inst2|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst7|inst2|nWB~q\,
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|EB\(0),
	combout => \ACCB|C[0]~7_combout\);

-- Location: LCCOMB_X24_Y28_N30
\ACCA|C[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[0]~7_combout\ = (\ACCA|data_out\(0)) # (((\inst7|inst2|nWA~q\) # (!\inst7|inst2|EA\(1))) # (!\inst7|inst2|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \inst7|inst2|EA\(0),
	datac => \inst7|inst2|nWA~q\,
	datad => \inst7|inst2|EA\(1),
	combout => \ACCA|C[0]~7_combout\);

-- Location: LCCOMB_X25_Y28_N4
\ACCA|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~7_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[0]~7_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \ACCA|C[0]~7_combout\,
	datad => \inst1|Yupa[0]~35_combout\,
	combout => \ACCA|data_out[0]~7_combout\);

-- Location: FF_X25_Y28_N5
\ACCA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[0]~7_combout\,
	asdata => \inst1|Yupa2[0]~25_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(0));

-- Location: LCCOMB_X24_Y28_N8
\inst1|Yupa2[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~23_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(0)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(0) & ((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|data_out\(0),
	datac => \ACCA|data_out\(0),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[0]~23_combout\);

-- Location: LCCOMB_X20_Y28_N2
\PC|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~18_combout\ = (\PC|data_out\(1) & (!\PC|Add0~17\)) # (!\PC|data_out\(1) & ((\PC|Add0~17\) # (GND)))
-- \PC|Add0~19\ = CARRY((!\PC|Add0~17\) # (!\PC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datad => VCC,
	cin => \PC|Add0~17\,
	combout => \PC|Add0~18_combout\,
	cout => \PC|Add0~19\);

-- Location: LCCOMB_X27_Y27_N2
\ACCA|C[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[1]~6_combout\ = (((\ACCA|data_out\(1)) # (\inst7|inst2|nWA~q\)) # (!\inst7|inst2|EA\(0))) # (!\inst7|inst2|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \inst7|inst2|EA\(0),
	datac => \ACCA|data_out\(1),
	datad => \inst7|inst2|nWA~q\,
	combout => \ACCA|C[1]~6_combout\);

-- Location: LCCOMB_X25_Y28_N22
\ACCA|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[1]~6_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[1]~6_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \ACCA|C[1]~6_combout\,
	datad => \inst1|Yupa[1]~31_combout\,
	combout => \ACCA|data_out[1]~6_combout\);

-- Location: LCCOMB_X26_Y28_N22
\ACCB|C[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[1]~6_combout\ = (\ACCB|data_out\(1)) # ((\inst7|inst2|nWB~q\) # ((!\inst7|inst2|EA\(1)) # (!\inst7|inst2|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \inst7|inst2|nWB~q\,
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|EA\(1),
	combout => \ACCB|C[1]~6_combout\);

-- Location: LCCOMB_X26_Y28_N4
\ACCB|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~6_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[1]~6_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[1]~6_combout\,
	datab => \inst7|inst2|EB\(0),
	datad => \inst1|Yupa2[1]~22_combout\,
	combout => \ACCB|data_out[1]~6_combout\);

-- Location: LCCOMB_X26_Y28_N30
\ACCB|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~8_combout\ = (\inst7|inst2|nWB~q\ & ((\inst7|inst2|EB\(0)) # (\inst7|inst2|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EB\(0),
	datab => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|nWB~q\,
	combout => \ACCB|data_out[0]~8_combout\);

-- Location: FF_X26_Y28_N5
\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[1]~6_combout\,
	asdata => \inst1|Yupa[1]~31_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

-- Location: LCCOMB_X27_Y27_N6
\inst1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux29~0_combout\ = (\inst7|inst2|EA\(1) & ((\ACCB|data_out\(1)) # ((\inst7|inst2|nWB~q\) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \ACCB|data_out\(1),
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|nWB~q\,
	combout => \inst1|Mux29~0_combout\);

-- Location: LCCOMB_X29_Y29_N24
\inst7|inst1|data[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[6]~43_combout\ = (\inst7|inst1|data[68]~16_combout\ & (\inst7|inst1|Equal12~2_combout\ & \inst7|inst2|liga[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|data[68]~16_combout\,
	datac => \inst7|inst1|Equal12~2_combout\,
	datad => \inst7|inst2|liga[0]~7_combout\,
	combout => \inst7|inst1|data[6]~43_combout\);

-- Location: FF_X29_Y29_N25
\inst7|inst2|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[6]~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|CC~q\);

-- Location: LCCOMB_X26_Y27_N10
\ACCB|C[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[6]~1_combout\ = (\inst7|inst2|nWB~q\) # ((\ACCB|data_out\(6)) # ((!\inst7|inst2|EA\(1)) # (!\inst7|inst2|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \ACCB|data_out\(6),
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|EA\(1),
	combout => \ACCB|C[6]~1_combout\);

-- Location: LCCOMB_X26_Y27_N2
\inst1|Yupa2[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~5_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(6)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(6) & ((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|data_out\(6),
	datac => \ACCA|data_out\(6),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[6]~5_combout\);

-- Location: LCCOMB_X24_Y27_N16
\ACCB|C[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[5]~2_combout\ = (\inst7|inst2|nWB~q\) # (((\ACCB|data_out\(5)) # (!\inst7|inst2|EB\(0))) # (!\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \inst7|inst2|EA\(1),
	datac => \ACCB|data_out\(5),
	datad => \inst7|inst2|EB\(0),
	combout => \ACCB|C[5]~2_combout\);

-- Location: LCCOMB_X27_Y27_N20
\ACCA|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[5]~2_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[5]~2_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[5]~2_combout\,
	datab => \inst7|inst2|EA\(1),
	datad => \inst1|Yupa[5]~14_combout\,
	combout => \ACCA|data_out[5]~2_combout\);

-- Location: FF_X27_Y27_N21
\ACCA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[5]~2_combout\,
	asdata => \inst1|Yupa2[5]~10_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(5));

-- Location: LCCOMB_X27_Y27_N22
\ACCA|C[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[5]~2_combout\ = (\ACCA|data_out\(5)) # ((\inst7|inst2|nWA~q\) # ((!\inst7|inst2|EA\(0)) # (!\inst7|inst2|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst7|inst2|nWA~q\,
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|EA\(0),
	combout => \ACCA|C[5]~2_combout\);

-- Location: LCCOMB_X26_Y27_N20
\ACCB|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[4]~3_combout\ = (((\ACCB|data_out\(4)) # (\inst7|inst2|nWB~q\)) # (!\inst7|inst2|EA\(1))) # (!\inst7|inst2|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EB\(0),
	datab => \inst7|inst2|EA\(1),
	datac => \ACCB|data_out\(4),
	datad => \inst7|inst2|nWB~q\,
	combout => \ACCB|C[4]~3_combout\);

-- Location: LCCOMB_X28_Y29_N2
\ACCA|TRI_STATE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|TRI_STATE~0_combout\ = (!\inst7|inst2|EA\(1) & (!\inst7|inst2|nWA~q\ & \inst7|inst2|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|nWA~q\,
	datad => \inst7|inst2|EA\(0),
	combout => \ACCA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X27_Y29_N8
\inst7|inst1|data[43]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[43]~34_combout\ = (\inst7|inst1|Equal17~0_combout\) # ((\inst7|inst1|Equal18~2_combout\ & (\inst7|inst2|liga[0]~5_combout\ & \inst7|inst2|liga[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal17~0_combout\,
	datab => \inst7|inst1|Equal18~2_combout\,
	datac => \inst7|inst2|liga[0]~5_combout\,
	datad => \inst7|inst2|liga[0]~3_combout\,
	combout => \inst7|inst1|data[43]~34_combout\);

-- Location: FF_X27_Y29_N9
\inst7|inst2|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[43]~34_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nERA0~q\);

-- Location: LCCOMB_X27_Y29_N6
\inst1|Yupa[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~3_combout\ = (!\inst7|inst2|BD~q\ & ((\inst6|data[7]~en_q\) # ((!\inst7|inst2|RA\(0) & \inst7|inst2|nERA0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|RA\(0),
	datab => \inst7|inst2|nERA0~q\,
	datac => \inst6|data[7]~en_q\,
	datad => \inst7|inst2|BD~q\,
	combout => \inst1|Yupa[7]~3_combout\);

-- Location: LCCOMB_X28_Y29_N24
\ACCB|TRI_STATE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|TRI_STATE~0_combout\ = (!\inst7|inst2|EA\(1) & (!\inst7|inst2|nWB~q\ & \inst7|inst2|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|nWB~q\,
	datad => \inst7|inst2|EB\(0),
	combout => \ACCB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X28_Y29_N30
\inst1|Yupa[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~4_combout\ = (\ACCA|TRI_STATE~0_combout\) # ((\inst7|inst2|nDUPA~q\) # ((\inst1|Yupa[7]~3_combout\) # (\ACCB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \inst7|inst2|nDUPA~q\,
	datac => \inst1|Yupa[7]~3_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[7]~4_combout\);

-- Location: LCCOMB_X29_Y28_N24
\AUX|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~11_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(5))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datac => \inst1|Yupa[4]~18_combout\,
	datad => \inst7|inst2|BD~q\,
	combout => \AUX|data_out~11_combout\);

-- Location: FF_X29_Y28_N25
\AUX|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(4));

-- Location: LCCOMB_X27_Y29_N16
\AUX|TRI_STATE_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_D~0_combout\ = (\inst7|inst2|RA\(0)) # ((\inst7|inst2|BD~q\) # (!\inst7|inst2|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|RA\(0),
	datac => \inst7|inst2|nERA0~q\,
	datad => \inst7|inst2|BD~q\,
	combout => \AUX|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X29_Y28_N26
\inst1|Yupa[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~16_combout\ = (\ACCA|data_out\(4) & ((\AUX|data_out\(4)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(4) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \AUX|data_out\(4),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[4]~16_combout\);

-- Location: LCCOMB_X20_Y28_N4
\PC|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~20_combout\ = (\PC|data_out\(2) & (\PC|Add0~19\ $ (GND))) # (!\PC|data_out\(2) & (!\PC|Add0~19\ & VCC))
-- \PC|Add0~21\ = CARRY((\PC|data_out\(2) & !\PC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datad => VCC,
	cin => \PC|Add0~19\,
	combout => \PC|Add0~20_combout\,
	cout => \PC|Add0~21\);

-- Location: LCCOMB_X21_Y28_N0
\PC|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~53_combout\ = (\inst7|inst2|PC\(0) & ((\inst7|inst2|PC\(2) & ((\inst1|Yupa[2]~26_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|Add0~20_combout\)))) # (!\inst7|inst2|PC\(0) & (((\inst1|Yupa[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|Add0~20_combout\,
	datac => \inst7|inst2|PC\(2),
	datad => \inst1|Yupa[2]~26_combout\,
	combout => \PC|Add0~53_combout\);

-- Location: FF_X21_Y28_N1
\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

-- Location: LCCOMB_X21_Y28_N26
\inst|valor_interno[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[2]~feeder_combout\ = \PC|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(2),
	combout => \inst|valor_interno[2]~feeder_combout\);

-- Location: FF_X21_Y28_N27
\inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(2));

-- Location: LCCOMB_X20_Y28_N6
\PC|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~22_combout\ = (\PC|data_out\(3) & (!\PC|Add0~21\)) # (!\PC|data_out\(3) & ((\PC|Add0~21\) # (GND)))
-- \PC|Add0~23\ = CARRY((!\PC|Add0~21\) # (!\PC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|Add0~21\,
	combout => \PC|Add0~22_combout\,
	cout => \PC|Add0~23\);

-- Location: LCCOMB_X26_Y28_N20
\ACCB|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[3]~4_combout\ = (\ACCB|data_out\(3)) # ((\inst7|inst2|nWB~q\) # ((!\inst7|inst2|EA\(1)) # (!\inst7|inst2|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \inst7|inst2|nWB~q\,
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|EA\(1),
	combout => \ACCB|C[3]~4_combout\);

-- Location: LCCOMB_X26_Y28_N14
\ACCA|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[3]~4_combout\ = (\ACCA|data_out\(3)) # (((\inst7|inst2|nWA~q\) # (!\inst7|inst2|EA\(0))) # (!\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|nWA~q\,
	datad => \inst7|inst2|EA\(0),
	combout => \ACCA|C[3]~4_combout\);

-- Location: LCCOMB_X25_Y28_N2
\ACCA|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[3]~4_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[3]~4_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \ACCA|C[3]~4_combout\,
	datad => \inst1|Yupa[3]~22_combout\,
	combout => \ACCA|data_out[3]~4_combout\);

-- Location: FF_X25_Y28_N3
\ACCA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[3]~4_combout\,
	asdata => \inst1|Yupa2[3]~16_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(3));

-- Location: LCCOMB_X26_Y28_N0
\inst1|Yupa2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~14_combout\ = (\ACCB|data_out\(3) & ((\ACCA|data_out\(3)) # ((\ACCA|B[7]~0_combout\)))) # (!\ACCB|data_out\(3) & (\ACCB|B[7]~0_combout\ & ((\ACCA|data_out\(3)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \ACCA|data_out\(3),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[3]~14_combout\);

-- Location: LCCOMB_X27_Y27_N26
\AUX|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~1_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(15))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datac => \inst1|Yupa2[6]~7_combout\,
	datad => \inst7|inst2|RA\(0),
	combout => \AUX|data_out~1_combout\);

-- Location: FF_X27_Y27_N27
\AUX|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(14));

-- Location: LCCOMB_X25_Y27_N0
\AUX|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~2_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(14))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|RA\(0),
	datac => \AUX|data_out\(14),
	datad => \inst1|Yupa2[5]~10_combout\,
	combout => \AUX|data_out~2_combout\);

-- Location: FF_X25_Y27_N1
\AUX|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(13));

-- Location: LCCOMB_X25_Y27_N30
\AUX|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~3_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(13))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|RA\(0),
	datab => \AUX|data_out\(13),
	datad => \inst1|Yupa2[4]~13_combout\,
	combout => \AUX|data_out~3_combout\);

-- Location: FF_X25_Y27_N31
\AUX|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(12));

-- Location: LCCOMB_X26_Y29_N0
\AUX|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~4_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(12))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|RA\(0),
	datab => \AUX|data_out\(12),
	datac => \inst1|Yupa2[3]~16_combout\,
	combout => \AUX|data_out~4_combout\);

-- Location: FF_X26_Y29_N1
\AUX|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(11));

-- Location: LCCOMB_X20_Y28_N8
\PC|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~24_combout\ = (\PC|data_out\(4) & (\PC|Add0~23\ $ (GND))) # (!\PC|data_out\(4) & (!\PC|Add0~23\ & VCC))
-- \PC|Add0~25\ = CARRY((\PC|data_out\(4) & !\PC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(4),
	datad => VCC,
	cin => \PC|Add0~23\,
	combout => \PC|Add0~24_combout\,
	cout => \PC|Add0~25\);

-- Location: LCCOMB_X21_Y28_N12
\PC|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~51_combout\ = (\inst7|inst2|PC\(0) & ((\inst7|inst2|PC\(2) & ((\inst1|Yupa[4]~18_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|Add0~24_combout\)))) # (!\inst7|inst2|PC\(0) & (((\inst1|Yupa[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~24_combout\,
	datab => \inst7|inst2|PC\(0),
	datac => \inst1|Yupa[4]~18_combout\,
	datad => \inst7|inst2|PC\(2),
	combout => \PC|Add0~51_combout\);

-- Location: FF_X21_Y28_N13
\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~51_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

-- Location: LCCOMB_X21_Y28_N10
\inst|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[4]~feeder_combout\ = \PC|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(4),
	combout => \inst|valor_interno[4]~feeder_combout\);

-- Location: FF_X21_Y28_N11
\inst|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(4));

-- Location: LCCOMB_X20_Y28_N10
\PC|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~26_combout\ = (\PC|data_out\(5) & (!\PC|Add0~25\)) # (!\PC|data_out\(5) & ((\PC|Add0~25\) # (GND)))
-- \PC|Add0~27\ = CARRY((!\PC|Add0~25\) # (!\PC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|Add0~25\,
	combout => \PC|Add0~26_combout\,
	cout => \PC|Add0~27\);

-- Location: LCCOMB_X21_Y29_N8
\PC|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~50_combout\ = (\inst7|inst2|PC\(0) & ((\inst7|inst2|PC\(2) & ((\inst1|Yupa[5]~14_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|Add0~26_combout\)))) # (!\inst7|inst2|PC\(0) & (((\inst1|Yupa[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~26_combout\,
	datab => \inst7|inst2|PC\(0),
	datac => \inst1|Yupa[5]~14_combout\,
	datad => \inst7|inst2|PC\(2),
	combout => \PC|Add0~50_combout\);

-- Location: FF_X21_Y29_N9
\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~50_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

-- Location: LCCOMB_X21_Y28_N8
\inst|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[5]~feeder_combout\ = \PC|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(5),
	combout => \inst|valor_interno[5]~feeder_combout\);

-- Location: FF_X21_Y28_N9
\inst|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(5));

-- Location: LCCOMB_X20_Y28_N12
\PC|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~28_combout\ = (\PC|data_out\(6) & (\PC|Add0~27\ $ (GND))) # (!\PC|data_out\(6) & (!\PC|Add0~27\ & VCC))
-- \PC|Add0~29\ = CARRY((\PC|data_out\(6) & !\PC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|Add0~27\,
	combout => \PC|Add0~28_combout\,
	cout => \PC|Add0~29\);

-- Location: LCCOMB_X27_Y28_N4
\PC|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~49_combout\ = (\inst7|inst2|PC\(2) & (((\inst1|Yupa[6]~10_combout\)))) # (!\inst7|inst2|PC\(2) & ((\inst7|inst2|PC\(0) & (\PC|Add0~28_combout\)) # (!\inst7|inst2|PC\(0) & ((\inst1|Yupa[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~28_combout\,
	datab => \inst7|inst2|PC\(2),
	datac => \inst7|inst2|PC\(0),
	datad => \inst1|Yupa[6]~10_combout\,
	combout => \PC|Add0~49_combout\);

-- Location: FF_X27_Y28_N5
\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~49_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

-- Location: LCCOMB_X23_Y28_N14
\inst|valor_interno[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[6]~feeder_combout\ = \PC|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(6),
	combout => \inst|valor_interno[6]~feeder_combout\);

-- Location: FF_X23_Y28_N15
\inst|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(6));

-- Location: LCCOMB_X20_Y28_N14
\PC|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~30_combout\ = (\PC|data_out\(7) & (!\PC|Add0~29\)) # (!\PC|data_out\(7) & ((\PC|Add0~29\) # (GND)))
-- \PC|Add0~31\ = CARRY((!\PC|Add0~29\) # (!\PC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datad => VCC,
	cin => \PC|Add0~29\,
	combout => \PC|Add0~30_combout\,
	cout => \PC|Add0~31\);

-- Location: LCCOMB_X24_Y29_N30
\PC|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~48_combout\ = (\inst7|inst2|PC\(2) & (((\inst1|Yupa[7]~5_combout\)))) # (!\inst7|inst2|PC\(2) & ((\inst7|inst2|PC\(0) & (\PC|Add0~30_combout\)) # (!\inst7|inst2|PC\(0) & ((\inst1|Yupa[7]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datab => \inst7|inst2|PC\(0),
	datac => \PC|Add0~30_combout\,
	datad => \inst1|Yupa[7]~5_combout\,
	combout => \PC|Add0~48_combout\);

-- Location: FF_X24_Y29_N31
\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~48_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

-- Location: LCCOMB_X23_Y28_N28
\inst|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[7]~feeder_combout\ = \PC|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(7),
	combout => \inst|valor_interno[7]~feeder_combout\);

-- Location: FF_X23_Y28_N29
\inst|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(7));

-- Location: M9K_X22_Y28_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001F8001B0000000860000800C6",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_8t41:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_CLK~inputclkctrl_outclk\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y29_N20
\inst1|Yupa2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~15_combout\ = (\inst6|data[7]~1_combout\ & (\inst6|mem_rtl_0|auto_generated|ram_block1a3\ & ((\AUX|data_out\(11)) # (\AUX|TRI_STATE_C~0_combout\)))) # (!\inst6|data[7]~1_combout\ & ((\AUX|data_out\(11)) # ((\AUX|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~1_combout\,
	datab => \AUX|data_out\(11),
	datac => \AUX|TRI_STATE_C~0_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst1|Yupa2[3]~15_combout\);

-- Location: LCCOMB_X26_Y29_N30
\inst1|Yupa2[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~16_combout\ = ((\inst1|Yupa[3]~19_combout\ & (\inst1|Yupa2[3]~14_combout\ & \inst1|Yupa2[3]~15_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~19_combout\,
	datab => \inst1|Yupa2[3]~14_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[3]~15_combout\,
	combout => \inst1|Yupa2[3]~16_combout\);

-- Location: LCCOMB_X26_Y27_N26
\ACCB|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~4_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[3]~4_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EB\(0),
	datab => \ACCB|C[3]~4_combout\,
	datad => \inst1|Yupa2[3]~16_combout\,
	combout => \ACCB|data_out[3]~4_combout\);

-- Location: FF_X26_Y27_N27
\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[3]~4_combout\,
	asdata => \inst1|Yupa[3]~22_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

-- Location: LCCOMB_X27_Y27_N10
\inst1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = (\inst7|inst2|EA\(1) & ((\ACCB|data_out\(3)) # ((\inst7|inst2|nWB~q\) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|nWB~q\,
	combout => \inst1|Mux31~0_combout\);

-- Location: LCCOMB_X26_Y27_N14
\ACCB|C[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[2]~5_combout\ = (\inst7|inst2|nWB~q\) # ((\ACCB|data_out\(2)) # ((!\inst7|inst2|EA\(1)) # (!\inst7|inst2|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \ACCB|data_out\(2),
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|EA\(1),
	combout => \ACCB|C[2]~5_combout\);

-- Location: LCCOMB_X24_Y27_N4
\inst1|Yupa2[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~17_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(2)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(2) & ((\ACCB|data_out\(2)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|data_out\(2),
	datac => \ACCA|data_out\(2),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[2]~17_combout\);

-- Location: LCCOMB_X25_Y27_N12
\AUX|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~5_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(11))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(11),
	datac => \inst1|Yupa2[2]~19_combout\,
	datad => \inst7|inst2|RA\(0),
	combout => \AUX|data_out~5_combout\);

-- Location: FF_X25_Y27_N13
\AUX|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(10));

-- Location: LCCOMB_X25_Y27_N28
\inst1|Yupa2[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~18_combout\ = (\inst6|data[7]~1_combout\ & (\inst6|mem_rtl_0|auto_generated|ram_block1a2\ & ((\AUX|TRI_STATE_C~0_combout\) # (\AUX|data_out\(10))))) # (!\inst6|data[7]~1_combout\ & ((\AUX|TRI_STATE_C~0_combout\) # ((\AUX|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~1_combout\,
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \AUX|data_out\(10),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst1|Yupa2[2]~18_combout\);

-- Location: LCCOMB_X25_Y27_N22
\inst1|Yupa2[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~19_combout\ = ((\inst1|Yupa2[2]~17_combout\ & (\inst1|Yupa[2]~23_combout\ & \inst1|Yupa2[2]~18_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~3_combout\,
	datab => \inst1|Yupa2[2]~17_combout\,
	datac => \inst1|Yupa[2]~23_combout\,
	datad => \inst1|Yupa2[2]~18_combout\,
	combout => \inst1|Yupa2[2]~19_combout\);

-- Location: LCCOMB_X26_Y27_N0
\ACCB|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~5_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[2]~5_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EB\(0),
	datab => \ACCB|C[2]~5_combout\,
	datad => \inst1|Yupa2[2]~19_combout\,
	combout => \ACCB|data_out[2]~5_combout\);

-- Location: FF_X26_Y27_N1
\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[2]~5_combout\,
	asdata => \inst1|Yupa[2]~26_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

-- Location: LCCOMB_X27_Y27_N28
\inst1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = (\inst7|inst2|EA\(1) & ((\inst7|inst2|nWB~q\) # ((\ACCB|data_out\(2)) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \inst7|inst2|nWB~q\,
	datac => \ACCB|data_out\(2),
	datad => \inst7|inst2|EB\(0),
	combout => \inst1|Mux30~0_combout\);

-- Location: LCCOMB_X28_Y27_N10
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = ((\ACCA|C[1]~6_combout\ $ (\inst1|Mux29~0_combout\ $ (!\inst1|Add0~3\)))) # (GND)
-- \inst1|Add0~5\ = CARRY((\ACCA|C[1]~6_combout\ & ((\inst1|Mux29~0_combout\) # (!\inst1|Add0~3\))) # (!\ACCA|C[1]~6_combout\ & (\inst1|Mux29~0_combout\ & !\inst1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[1]~6_combout\,
	datab => \inst1|Mux29~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X28_Y27_N12
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\ACCA|C[2]~5_combout\ & ((\inst1|Mux30~0_combout\ & (\inst1|Add0~5\ & VCC)) # (!\inst1|Mux30~0_combout\ & (!\inst1|Add0~5\)))) # (!\ACCA|C[2]~5_combout\ & ((\inst1|Mux30~0_combout\ & (!\inst1|Add0~5\)) # (!\inst1|Mux30~0_combout\ 
-- & ((\inst1|Add0~5\) # (GND)))))
-- \inst1|Add0~7\ = CARRY((\ACCA|C[2]~5_combout\ & (!\inst1|Mux30~0_combout\ & !\inst1|Add0~5\)) # (!\ACCA|C[2]~5_combout\ & ((!\inst1|Add0~5\) # (!\inst1|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \inst1|Mux30~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X28_Y27_N14
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = ((\inst1|Mux31~0_combout\ $ (\ACCA|C[3]~4_combout\ $ (!\inst1|Add0~7\)))) # (GND)
-- \inst1|Add0~9\ = CARRY((\inst1|Mux31~0_combout\ & ((\ACCA|C[3]~4_combout\) # (!\inst1|Add0~7\))) # (!\inst1|Mux31~0_combout\ & (\ACCA|C[3]~4_combout\ & !\inst1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux31~0_combout\,
	datab => \ACCA|C[3]~4_combout\,
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X28_Y27_N27
\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~8_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

-- Location: LCCOMB_X28_Y27_N0
\inst1|Yupa[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~19_combout\ = (\inst1|Yupa_interno\(3)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(3),
	datad => \inst7|inst2|nDUPA~q\,
	combout => \inst1|Yupa[3]~19_combout\);

-- Location: LCCOMB_X24_Y28_N16
\AUX|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~12_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(4))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(4),
	datab => \inst7|inst2|BD~q\,
	datac => \inst1|Yupa[3]~22_combout\,
	combout => \AUX|data_out~12_combout\);

-- Location: FF_X24_Y28_N17
\AUX|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~12_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(3));

-- Location: LCCOMB_X25_Y28_N0
\inst1|Yupa[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~20_combout\ = (\AUX|data_out\(3) & ((\ACCA|data_out\(3)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(3) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(3)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \ACCA|data_out\(3),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[3]~20_combout\);

-- Location: LCCOMB_X26_Y29_N16
\inst6|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~0_combout\ = (\inst6|data[7]~en_q\ & !\inst7|inst2|BD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datad => \inst7|inst2|BD~q\,
	combout => \inst6|data[7]~0_combout\);

-- Location: LCCOMB_X26_Y28_N28
\inst1|Yupa[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~21_combout\ = (\ACCB|data_out\(3) & (((\inst6|mem_rtl_0|auto_generated|ram_block1a3\)) # (!\inst6|data[7]~0_combout\))) # (!\ACCB|data_out\(3) & (!\ACCB|TRI_STATE~0_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a3\) # 
-- (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \inst6|data[7]~0_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a3\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~21_combout\);

-- Location: LCCOMB_X25_Y28_N30
\inst1|Yupa[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~22_combout\ = ((\inst1|Yupa[3]~19_combout\ & (\inst1|Yupa[3]~20_combout\ & \inst1|Yupa[3]~21_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~19_combout\,
	datab => \inst1|Yupa[3]~20_combout\,
	datac => \inst1|Yupa[7]~4_combout\,
	datad => \inst1|Yupa[3]~21_combout\,
	combout => \inst1|Yupa[3]~22_combout\);

-- Location: LCCOMB_X21_Y28_N6
\PC|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~52_combout\ = (\inst7|inst2|PC\(0) & ((\inst7|inst2|PC\(2) & ((\inst1|Yupa[3]~22_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|Add0~22_combout\)))) # (!\inst7|inst2|PC\(0) & (((\inst1|Yupa[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~22_combout\,
	datab => \inst7|inst2|PC\(0),
	datac => \inst7|inst2|PC\(2),
	datad => \inst1|Yupa[3]~22_combout\,
	combout => \PC|Add0~52_combout\);

-- Location: FF_X21_Y28_N7
\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~52_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

-- Location: LCCOMB_X21_Y28_N4
\inst|valor_interno[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[3]~feeder_combout\ = \PC|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(3),
	combout => \inst|valor_interno[3]~feeder_combout\);

-- Location: FF_X21_Y28_N5
\inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(3));

-- Location: LCCOMB_X29_Y28_N16
\inst1|Yupa[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~17_combout\ = (\ACCB|data_out\(4) & (((\inst6|mem_rtl_0|auto_generated|ram_block1a4\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|data_out\(4) & (!\ACCB|TRI_STATE~0_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a4\) # 
-- (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \ACCB|TRI_STATE~0_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a4\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[4]~17_combout\);

-- Location: LCCOMB_X29_Y28_N30
\inst1|Yupa[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~18_combout\ = ((\inst1|Yupa[4]~15_combout\ & (\inst1|Yupa[4]~16_combout\ & \inst1|Yupa[4]~17_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[7]~4_combout\,
	datab => \inst1|Yupa[4]~15_combout\,
	datac => \inst1|Yupa[4]~16_combout\,
	datad => \inst1|Yupa[4]~17_combout\,
	combout => \inst1|Yupa[4]~18_combout\);

-- Location: LCCOMB_X25_Y28_N8
\ACCA|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[4]~3_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[4]~3_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst7|inst2|EA\(1),
	datad => \inst1|Yupa[4]~18_combout\,
	combout => \ACCA|data_out[4]~3_combout\);

-- Location: FF_X25_Y28_N9
\ACCA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[4]~3_combout\,
	asdata => \inst1|Yupa2[4]~13_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(4));

-- Location: LCCOMB_X28_Y28_N4
\ACCA|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[4]~3_combout\ = (\inst7|inst2|nWA~q\) # (((\ACCA|data_out\(4)) # (!\inst7|inst2|EA\(0))) # (!\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWA~q\,
	datab => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|EA\(0),
	datad => \ACCA|data_out\(4),
	combout => \ACCA|C[4]~3_combout\);

-- Location: LCCOMB_X28_Y27_N16
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|Mux32~0_combout\ & ((\ACCA|C[4]~3_combout\ & (\inst1|Add0~9\ & VCC)) # (!\ACCA|C[4]~3_combout\ & (!\inst1|Add0~9\)))) # (!\inst1|Mux32~0_combout\ & ((\ACCA|C[4]~3_combout\ & (!\inst1|Add0~9\)) # (!\ACCA|C[4]~3_combout\ & 
-- ((\inst1|Add0~9\) # (GND)))))
-- \inst1|Add0~11\ = CARRY((\inst1|Mux32~0_combout\ & (!\ACCA|C[4]~3_combout\ & !\inst1|Add0~9\)) # (!\inst1|Mux32~0_combout\ & ((!\inst1|Add0~9\) # (!\ACCA|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~0_combout\,
	datab => \ACCA|C[4]~3_combout\,
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X28_Y27_N17
\inst1|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(4));

-- Location: LCCOMB_X29_Y28_N20
\inst1|Yupa[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~15_combout\ = (\inst1|Banderas\(4)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Banderas\(4),
	datad => \inst7|inst2|nDUPA~q\,
	combout => \inst1|Yupa[4]~15_combout\);

-- Location: LCCOMB_X25_Y27_N26
\inst1|Yupa2[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~11_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(4)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(4) & ((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|data_out\(4),
	datac => \ACCA|data_out\(4),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[4]~11_combout\);

-- Location: LCCOMB_X25_Y27_N20
\inst1|Yupa2[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~12_combout\ = (\inst6|data[7]~1_combout\ & (\inst6|mem_rtl_0|auto_generated|ram_block1a4\ & ((\AUX|TRI_STATE_C~0_combout\) # (\AUX|data_out\(12))))) # (!\inst6|data[7]~1_combout\ & ((\AUX|TRI_STATE_C~0_combout\) # ((\AUX|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~1_combout\,
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \AUX|data_out\(12),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst1|Yupa2[4]~12_combout\);

-- Location: LCCOMB_X25_Y27_N2
\inst1|Yupa2[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~13_combout\ = ((\inst1|Yupa[4]~15_combout\ & (\inst1|Yupa2[4]~11_combout\ & \inst1|Yupa2[4]~12_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~3_combout\,
	datab => \inst1|Yupa[4]~15_combout\,
	datac => \inst1|Yupa2[4]~11_combout\,
	datad => \inst1|Yupa2[4]~12_combout\,
	combout => \inst1|Yupa2[4]~13_combout\);

-- Location: LCCOMB_X25_Y27_N16
\ACCB|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~3_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[4]~3_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[4]~3_combout\,
	datab => \inst7|inst2|EB\(0),
	datad => \inst1|Yupa2[4]~13_combout\,
	combout => \ACCB|data_out[4]~3_combout\);

-- Location: FF_X25_Y27_N17
\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[4]~3_combout\,
	asdata => \inst1|Yupa[4]~18_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

-- Location: LCCOMB_X27_Y27_N16
\inst1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~0_combout\ = (\inst7|inst2|EA\(1) & ((\ACCB|data_out\(4)) # ((\inst7|inst2|nWB~q\) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|nWB~q\,
	combout => \inst1|Mux32~0_combout\);

-- Location: LCCOMB_X28_Y27_N18
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = ((\inst1|Mux33~0_combout\ $ (\ACCA|C[5]~2_combout\ $ (!\inst1|Add0~11\)))) # (GND)
-- \inst1|Add0~13\ = CARRY((\inst1|Mux33~0_combout\ & ((\ACCA|C[5]~2_combout\) # (!\inst1|Add0~11\))) # (!\inst1|Mux33~0_combout\ & (\ACCA|C[5]~2_combout\ & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux33~0_combout\,
	datab => \ACCA|C[5]~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X28_Y27_N1
\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~12_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

-- Location: LCCOMB_X25_Y29_N16
\inst1|Yupa[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~11_combout\ = (\inst1|Yupa_interno\(5)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|nDUPA~q\,
	datad => \inst1|Yupa_interno\(5),
	combout => \inst1|Yupa[5]~11_combout\);

-- Location: LCCOMB_X26_Y27_N12
\inst1|Yupa2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~8_combout\ = (\ACCA|data_out\(5) & ((\ACCB|B[7]~0_combout\) # ((\ACCB|data_out\(5))))) # (!\ACCA|data_out\(5) & (\ACCA|B[7]~0_combout\ & ((\ACCB|B[7]~0_combout\) # (\ACCB|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCB|B[7]~0_combout\,
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|data_out\(5),
	combout => \inst1|Yupa2[5]~8_combout\);

-- Location: LCCOMB_X25_Y27_N18
\inst1|Yupa2[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~9_combout\ = (\inst6|data[7]~1_combout\ & (\inst6|mem_rtl_0|auto_generated|ram_block1a5\ & ((\AUX|data_out\(13)) # (\AUX|TRI_STATE_C~0_combout\)))) # (!\inst6|data[7]~1_combout\ & ((\AUX|data_out\(13)) # ((\AUX|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~1_combout\,
	datab => \AUX|data_out\(13),
	datac => \AUX|TRI_STATE_C~0_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \inst1|Yupa2[5]~9_combout\);

-- Location: LCCOMB_X25_Y27_N24
\inst1|Yupa2[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~10_combout\ = ((\inst1|Yupa[5]~11_combout\ & (\inst1|Yupa2[5]~8_combout\ & \inst1|Yupa2[5]~9_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~3_combout\,
	datab => \inst1|Yupa[5]~11_combout\,
	datac => \inst1|Yupa2[5]~8_combout\,
	datad => \inst1|Yupa2[5]~9_combout\,
	combout => \inst1|Yupa2[5]~10_combout\);

-- Location: LCCOMB_X25_Y27_N14
\ACCB|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[5]~2_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[5]~2_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[5]~2_combout\,
	datab => \inst7|inst2|EB\(0),
	datad => \inst1|Yupa2[5]~10_combout\,
	combout => \ACCB|data_out[5]~2_combout\);

-- Location: FF_X25_Y27_N15
\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[5]~2_combout\,
	asdata => \inst1|Yupa[5]~14_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

-- Location: LCCOMB_X24_Y27_N2
\inst1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~0_combout\ = (\inst7|inst2|EA\(1) & ((\inst7|inst2|nWB~q\) # ((\ACCB|data_out\(5)) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \inst7|inst2|EA\(1),
	datac => \ACCB|data_out\(5),
	datad => \inst7|inst2|EB\(0),
	combout => \inst1|Mux33~0_combout\);

-- Location: LCCOMB_X28_Y27_N20
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\ACCA|C[6]~1_combout\ & ((\inst1|Mux34~0_combout\ & (\inst1|Add0~13\ & VCC)) # (!\inst1|Mux34~0_combout\ & (!\inst1|Add0~13\)))) # (!\ACCA|C[6]~1_combout\ & ((\inst1|Mux34~0_combout\ & (!\inst1|Add0~13\)) # 
-- (!\inst1|Mux34~0_combout\ & ((\inst1|Add0~13\) # (GND)))))
-- \inst1|Add0~15\ = CARRY((\ACCA|C[6]~1_combout\ & (!\inst1|Mux34~0_combout\ & !\inst1|Add0~13\)) # (!\ACCA|C[6]~1_combout\ & ((!\inst1|Add0~13\) # (!\inst1|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[6]~1_combout\,
	datab => \inst1|Mux34~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X28_Y27_N21
\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

-- Location: LCCOMB_X28_Y27_N30
\inst1|Yupa[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~6_combout\ = (\inst1|Yupa_interno\(6)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Yupa_interno\(6),
	datad => \inst7|inst2|nDUPA~q\,
	combout => \inst1|Yupa[6]~6_combout\);

-- Location: LCCOMB_X27_Y27_N18
\inst1|Yupa2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~6_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a6\)) # (!\inst6|data[7]~1_combout\))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(14) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a6\) # 
-- (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \inst6|data[7]~1_combout\,
	datac => \AUX|data_out\(14),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst1|Yupa2[6]~6_combout\);

-- Location: LCCOMB_X27_Y27_N8
\inst1|Yupa2[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~7_combout\ = ((\inst1|Yupa2[6]~5_combout\ & (\inst1|Yupa[6]~6_combout\ & \inst1|Yupa2[6]~6_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[6]~5_combout\,
	datab => \inst1|Yupa[6]~6_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[6]~6_combout\,
	combout => \inst1|Yupa2[6]~7_combout\);

-- Location: LCCOMB_X26_Y27_N4
\ACCB|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[6]~1_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[6]~1_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[6]~1_combout\,
	datab => \inst7|inst2|EB\(0),
	datad => \inst1|Yupa2[6]~7_combout\,
	combout => \ACCB|data_out[6]~1_combout\);

-- Location: FF_X26_Y27_N5
\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[6]~1_combout\,
	asdata => \inst1|Yupa[6]~10_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

-- Location: LCCOMB_X26_Y27_N6
\inst1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux34~0_combout\ = (\inst7|inst2|EA\(1) & ((\inst7|inst2|nWB~q\) # ((\ACCB|data_out\(6)) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \ACCB|data_out\(6),
	datac => \inst7|inst2|EB\(0),
	datad => \inst7|inst2|EA\(1),
	combout => \inst1|Mux34~0_combout\);

-- Location: LCCOMB_X28_Y27_N22
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = ((\inst1|Mux35~0_combout\ $ (\ACCA|C[7]~0_combout\ $ (!\inst1|Add0~15\)))) # (GND)
-- \inst1|Add0~17\ = CARRY((\inst1|Mux35~0_combout\ & ((\ACCA|C[7]~0_combout\) # (!\inst1|Add0~15\))) # (!\inst1|Mux35~0_combout\ & (\ACCA|C[7]~0_combout\ & !\inst1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux35~0_combout\,
	datab => \ACCA|C[7]~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X28_Y27_N24
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: FF_X28_Y27_N25
\inst1|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(1));

-- Location: FF_X28_Y27_N7
\inst5|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_CC~q\,
	asdata => \inst1|Banderas\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|valor_interno~q\);

-- Location: LCCOMB_X28_Y27_N6
\inst1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_cout\ = CARRY((\inst5|inst|valor_interno~q\ & !\inst7|inst2|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|valor_interno~q\,
	datab => \inst7|inst2|EA\(1),
	datad => VCC,
	cout => \inst1|Add0~1_cout\);

-- Location: LCCOMB_X28_Y27_N8
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|Mux27~0_combout\ & ((\ACCA|C[0]~7_combout\ & (\inst1|Add0~1_cout\ & VCC)) # (!\ACCA|C[0]~7_combout\ & (!\inst1|Add0~1_cout\)))) # (!\inst1|Mux27~0_combout\ & ((\ACCA|C[0]~7_combout\ & (!\inst1|Add0~1_cout\)) # 
-- (!\ACCA|C[0]~7_combout\ & ((\inst1|Add0~1_cout\) # (GND)))))
-- \inst1|Add0~3\ = CARRY((\inst1|Mux27~0_combout\ & (!\ACCA|C[0]~7_combout\ & !\inst1|Add0~1_cout\)) # (!\inst1|Mux27~0_combout\ & ((!\inst1|Add0~1_cout\) # (!\ACCA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~0_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => VCC,
	cin => \inst1|Add0~1_cout\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X28_Y27_N31
\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~4_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

-- Location: LCCOMB_X26_Y28_N18
\inst1|Yupa[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~27_combout\ = (\inst1|Yupa_interno\(1)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|nDUPA~q\,
	datad => \inst1|Yupa_interno\(1),
	combout => \inst1|Yupa[1]~27_combout\);

-- Location: LCCOMB_X26_Y28_N8
\inst1|Yupa2[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~20_combout\ = (\ACCB|B[7]~0_combout\ & (((\ACCA|B[7]~0_combout\) # (\ACCA|data_out\(1))))) # (!\ACCB|B[7]~0_combout\ & (\ACCB|data_out\(1) & ((\ACCA|B[7]~0_combout\) # (\ACCA|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \ACCB|data_out\(1),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCA|data_out\(1),
	combout => \inst1|Yupa2[1]~20_combout\);

-- Location: LCCOMB_X26_Y28_N2
\AUX|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~6_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(10))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|RA\(0),
	datac => \AUX|data_out\(10),
	datad => \inst1|Yupa2[1]~22_combout\,
	combout => \AUX|data_out~6_combout\);

-- Location: FF_X26_Y28_N3
\AUX|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(9));

-- Location: LCCOMB_X26_Y28_N6
\inst1|Yupa2[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~21_combout\ = (\inst6|data[7]~1_combout\ & (\inst6|mem_rtl_0|auto_generated|ram_block1a1\ & ((\AUX|data_out\(9)) # (\AUX|TRI_STATE_C~0_combout\)))) # (!\inst6|data[7]~1_combout\ & ((\AUX|data_out\(9)) # ((\AUX|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~1_combout\,
	datab => \AUX|data_out\(9),
	datac => \AUX|TRI_STATE_C~0_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst1|Yupa2[1]~21_combout\);

-- Location: LCCOMB_X26_Y28_N12
\inst1|Yupa2[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~22_combout\ = ((\inst1|Yupa[1]~27_combout\ & (\inst1|Yupa2[1]~20_combout\ & \inst1|Yupa2[1]~21_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~3_combout\,
	datab => \inst1|Yupa[1]~27_combout\,
	datac => \inst1|Yupa2[1]~20_combout\,
	datad => \inst1|Yupa2[1]~21_combout\,
	combout => \inst1|Yupa2[1]~22_combout\);

-- Location: FF_X25_Y28_N23
\ACCA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[1]~6_combout\,
	asdata => \inst1|Yupa2[1]~22_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(1));

-- Location: LCCOMB_X29_Y28_N22
\AUX|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~13_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(3))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|BD~q\,
	datac => \AUX|data_out\(3),
	datad => \inst1|Yupa[2]~26_combout\,
	combout => \AUX|data_out~13_combout\);

-- Location: FF_X29_Y28_N23
\AUX|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(2));

-- Location: LCCOMB_X24_Y28_N14
\AUX|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~14_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(2))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(2),
	datab => \inst7|inst2|BD~q\,
	datad => \inst1|Yupa[1]~31_combout\,
	combout => \AUX|data_out~14_combout\);

-- Location: FF_X24_Y28_N15
\AUX|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~14_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(1));

-- Location: LCCOMB_X25_Y28_N12
\inst1|Yupa[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~28_combout\ = (\ACCA|data_out\(1) & ((\AUX|data_out\(1)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(1) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(1)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \AUX|data_out\(1),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[1]~28_combout\);

-- Location: LCCOMB_X26_Y28_N24
\inst1|Yupa[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~29_combout\ = (\inst7|inst2|BD~q\) # (\inst6|mem_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|BD~q\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst1|Yupa[1]~29_combout\);

-- Location: LCCOMB_X26_Y28_N26
\inst1|Yupa[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~30_combout\ = (\ACCB|data_out\(1) & (((\inst1|Yupa[1]~29_combout\)) # (!\inst6|data[7]~en_q\))) # (!\ACCB|data_out\(1) & (!\ACCB|TRI_STATE~0_combout\ & ((\inst1|Yupa[1]~29_combout\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \inst6|data[7]~en_q\,
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \inst1|Yupa[1]~29_combout\,
	combout => \inst1|Yupa[1]~30_combout\);

-- Location: LCCOMB_X25_Y28_N18
\inst1|Yupa[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~31_combout\ = ((\inst1|Yupa[1]~28_combout\ & (\inst1|Yupa[1]~27_combout\ & \inst1|Yupa[1]~30_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[1]~28_combout\,
	datab => \inst1|Yupa[1]~27_combout\,
	datac => \inst1|Yupa[7]~4_combout\,
	datad => \inst1|Yupa[1]~30_combout\,
	combout => \inst1|Yupa[1]~31_combout\);

-- Location: LCCOMB_X21_Y28_N2
\PC|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~54_combout\ = (\inst7|inst2|PC\(0) & ((\inst7|inst2|PC\(2) & ((\inst1|Yupa[1]~31_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|Add0~18_combout\)))) # (!\inst7|inst2|PC\(0) & (((\inst1|Yupa[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~18_combout\,
	datab => \inst7|inst2|PC\(0),
	datac => \inst7|inst2|PC\(2),
	datad => \inst1|Yupa[1]~31_combout\,
	combout => \PC|Add0~54_combout\);

-- Location: FF_X21_Y28_N3
\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~54_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

-- Location: LCCOMB_X21_Y28_N16
\inst|valor_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[1]~feeder_combout\ = \PC|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(1),
	combout => \inst|valor_interno[1]~feeder_combout\);

-- Location: FF_X21_Y28_N17
\inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(1));

-- Location: LCCOMB_X26_Y28_N16
\AUX|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~7_combout\ = (\inst7|inst2|RA\(0) & (\AUX|data_out\(9))) # (!\inst7|inst2|RA\(0) & ((\inst1|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(9),
	datac => \inst7|inst2|RA\(0),
	datad => \inst1|Yupa2[0]~25_combout\,
	combout => \AUX|data_out~7_combout\);

-- Location: FF_X26_Y28_N17
\AUX|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(8));

-- Location: LCCOMB_X24_Y28_N2
\inst1|Yupa2[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~24_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\inst6|data[7]~1_combout\))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(8) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \inst6|data[7]~1_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \AUX|data_out\(8),
	combout => \inst1|Yupa2[0]~24_combout\);

-- Location: LCCOMB_X24_Y28_N20
\inst1|Yupa2[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~25_combout\ = ((\inst1|Yupa[0]~32_combout\ & (\inst1|Yupa2[0]~23_combout\ & \inst1|Yupa2[0]~24_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~32_combout\,
	datab => \inst1|Yupa2[7]~3_combout\,
	datac => \inst1|Yupa2[0]~23_combout\,
	datad => \inst1|Yupa2[0]~24_combout\,
	combout => \inst1|Yupa2[0]~25_combout\);

-- Location: LCCOMB_X25_Y27_N6
\ACCB|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~7_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[0]~7_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[0]~7_combout\,
	datab => \inst7|inst2|EB\(0),
	datad => \inst1|Yupa2[0]~25_combout\,
	combout => \ACCB|data_out[0]~7_combout\);

-- Location: FF_X25_Y27_N7
\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[0]~7_combout\,
	asdata => \inst1|Yupa[0]~35_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

-- Location: LCCOMB_X25_Y27_N10
\inst1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux27~0_combout\ = (\inst7|inst2|EA\(1) & ((\ACCB|data_out\(0)) # ((\inst7|inst2|nWB~q\) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst7|inst2|nWB~q\,
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|EB\(0),
	combout => \inst1|Mux27~0_combout\);

-- Location: FF_X28_Y27_N29
\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~2_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

-- Location: LCCOMB_X24_Y28_N26
\inst1|Yupa[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~32_combout\ = (\inst1|Q\(0)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(0),
	datac => \inst7|inst2|nDUPA~q\,
	combout => \inst1|Yupa[0]~32_combout\);

-- Location: LCCOMB_X24_Y28_N0
\AUX|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~15_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(1))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|BD~q\,
	datab => \AUX|data_out\(1),
	datad => \inst1|Yupa[0]~35_combout\,
	combout => \AUX|data_out~15_combout\);

-- Location: FF_X24_Y28_N1
\AUX|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(0));

-- Location: LCCOMB_X24_Y28_N4
\inst1|Yupa[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~33_combout\ = (\ACCA|data_out\(0) & ((\AUX|data_out\(0)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(0) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(0)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \AUX|data_out\(0),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[0]~33_combout\);

-- Location: LCCOMB_X24_Y28_N18
\inst1|Yupa[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~34_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(0) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & 
-- (((\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \ACCB|data_out\(0),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[0]~34_combout\);

-- Location: LCCOMB_X24_Y28_N12
\inst1|Yupa[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~35_combout\ = ((\inst1|Yupa[0]~32_combout\ & (\inst1|Yupa[0]~33_combout\ & \inst1|Yupa[0]~34_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~32_combout\,
	datab => \inst1|Yupa[0]~33_combout\,
	datac => \inst1|Yupa[7]~4_combout\,
	datad => \inst1|Yupa[0]~34_combout\,
	combout => \inst1|Yupa[0]~35_combout\);

-- Location: LCCOMB_X21_Y28_N20
\PC|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~55_combout\ = (\inst7|inst2|PC\(0) & ((\inst7|inst2|PC\(2) & ((\inst1|Yupa[0]~35_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|Add0~16_combout\)))) # (!\inst7|inst2|PC\(0) & (((\inst1|Yupa[0]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~16_combout\,
	datab => \inst7|inst2|PC\(0),
	datac => \inst7|inst2|PC\(2),
	datad => \inst1|Yupa[0]~35_combout\,
	combout => \PC|Add0~55_combout\);

-- Location: FF_X21_Y28_N21
\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~55_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

-- Location: LCCOMB_X21_Y28_N18
\inst|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[0]~feeder_combout\ = \PC|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(0),
	combout => \inst|valor_interno[0]~feeder_combout\);

-- Location: FF_X21_Y28_N19
\inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(0));

-- Location: LCCOMB_X24_Y27_N0
\inst1|Yupa2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~1_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a7\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(15) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a7\) # 
-- (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(15),
	datac => \inst6|data[7]~1_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst1|Yupa2[7]~1_combout\);

-- Location: LCCOMB_X24_Y27_N10
\inst1|Yupa2[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~4_combout\ = ((\inst1|Yupa[7]~0_combout\ & (\inst1|Yupa2[7]~0_combout\ & \inst1|Yupa2[7]~1_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~3_combout\,
	datab => \inst1|Yupa[7]~0_combout\,
	datac => \inst1|Yupa2[7]~0_combout\,
	datad => \inst1|Yupa2[7]~1_combout\,
	combout => \inst1|Yupa2[7]~4_combout\);

-- Location: LCCOMB_X25_Y27_N8
\ACCB|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~0_combout\ = (\inst7|inst2|EB\(0) & (\ACCB|C[7]~0_combout\)) # (!\inst7|inst2|EB\(0) & ((\inst1|Yupa2[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[7]~0_combout\,
	datab => \inst7|inst2|EB\(0),
	datad => \inst1|Yupa2[7]~4_combout\,
	combout => \ACCB|data_out[7]~0_combout\);

-- Location: FF_X25_Y27_N9
\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[7]~0_combout\,
	asdata => \inst1|Yupa[7]~5_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

-- Location: LCCOMB_X26_Y27_N28
\inst1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux35~0_combout\ = (\inst7|inst2|EA\(1) & ((\inst7|inst2|nWB~q\) # ((\ACCB|data_out\(7)) # (!\inst7|inst2|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|nWB~q\,
	datab => \inst7|inst2|EA\(1),
	datac => \inst7|inst2|EB\(0),
	datad => \ACCB|data_out\(7),
	combout => \inst1|Mux35~0_combout\);

-- Location: FF_X28_Y27_N3
\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~16_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

-- Location: LCCOMB_X25_Y29_N12
\inst1|Yupa[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~0_combout\ = (\inst1|Banderas\(2)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|nDUPA~q\,
	datad => \inst1|Banderas\(2),
	combout => \inst1|Yupa[7]~0_combout\);

-- Location: LCCOMB_X25_Y29_N20
\AUX|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~8_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(8))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datac => \inst7|inst2|BD~q\,
	datad => \inst1|Yupa[7]~5_combout\,
	combout => \AUX|data_out~8_combout\);

-- Location: FF_X25_Y29_N21
\AUX|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(7));

-- Location: LCCOMB_X25_Y29_N2
\inst1|Yupa[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~1_combout\ = (\ACCA|data_out\(7) & ((\AUX|data_out\(7)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(7) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(7)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \AUX|data_out\(7),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[7]~1_combout\);

-- Location: LCCOMB_X25_Y29_N0
\inst1|Yupa[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~2_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(7) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a7\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a7\) # 
-- (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \ACCB|data_out\(7),
	datac => \inst6|data[7]~0_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst1|Yupa[7]~2_combout\);

-- Location: LCCOMB_X25_Y29_N18
\inst1|Yupa[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~5_combout\ = ((\inst1|Yupa[7]~0_combout\ & (\inst1|Yupa[7]~1_combout\ & \inst1|Yupa[7]~2_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[7]~0_combout\,
	datab => \inst1|Yupa[7]~4_combout\,
	datac => \inst1|Yupa[7]~1_combout\,
	datad => \inst1|Yupa[7]~2_combout\,
	combout => \inst1|Yupa[7]~5_combout\);

-- Location: LCCOMB_X25_Y29_N24
\inst8|valor_interno[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[11]~feeder_combout\ = \inst1|Yupa[7]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[7]~5_combout\,
	combout => \inst8|valor_interno[11]~feeder_combout\);

-- Location: FF_X25_Y29_N25
\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

-- Location: LCCOMB_X25_Y29_N30
\inst7|inst5|$00000|auto_generated|result_node[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & ((\inst8|valor_interno\(11)) # ((\inst7|inst4|valor_interno\(11) & !\inst7|inst3|SELECTOR~1_combout\)))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst7|inst4|valor_interno\(11) & (!\inst7|inst3|SELECTOR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst4|valor_interno\(11),
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst8|valor_interno\(11),
	combout => \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\);

-- Location: LCCOMB_X29_Y28_N28
\inst7|inst1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal3~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	combout => \inst7|inst1|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\inst7|inst1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal3~1_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ & \inst7|inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datad => \inst7|inst1|Equal3~0_combout\,
	combout => \inst7|inst1|Equal3~1_combout\);

-- Location: LCCOMB_X29_Y28_N18
\inst7|inst1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal3~2_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ & 
-- \inst7|inst1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datad => \inst7|inst1|Equal3~1_combout\,
	combout => \inst7|inst1|Equal3~2_combout\);

-- Location: LCCOMB_X29_Y28_N0
\inst7|inst1|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal3~3_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ & \inst7|inst1|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	datad => \inst7|inst1|Equal3~2_combout\,
	combout => \inst7|inst1|Equal3~3_combout\);

-- Location: LCCOMB_X29_Y29_N20
\inst7|inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal5~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst7|inst1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|Equal5~0_combout\);

-- Location: LCCOMB_X30_Y29_N2
\inst7|inst1|data[87]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[87]~20_combout\ = (\inst7|inst1|data[87]~18_combout\ & (\inst7|inst1|Equal5~0_combout\ $ (((\inst7|inst1|Equal18~2_combout\) # (!\inst7|inst1|data[27]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal18~2_combout\,
	datab => \inst7|inst1|Equal5~0_combout\,
	datac => \inst7|inst1|data[87]~18_combout\,
	datad => \inst7|inst1|data[27]~19_combout\,
	combout => \inst7|inst1|data[87]~20_combout\);

-- Location: FF_X30_Y29_N3
\inst7|inst2|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[87]~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|prueba\(0));

-- Location: LCCOMB_X30_Y29_N30
\inst7|inst1|data[74]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[74]~28_combout\ = (\inst7|inst1|Equal13~2_combout\ & (!\inst7|inst1|Equal5~0_combout\ & (!\inst7|inst1|Equal11~4_combout\ & \inst7|inst1|data[27]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal13~2_combout\,
	datab => \inst7|inst1|Equal5~0_combout\,
	datac => \inst7|inst1|Equal11~4_combout\,
	datad => \inst7|inst1|data[27]~19_combout\,
	combout => \inst7|inst1|data[74]~28_combout\);

-- Location: LCCOMB_X29_Y28_N6
\inst7|inst1|data[86]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[86]~49_combout\ = (\inst7|inst3|SELECTOR~1_combout\) # (((!\inst7|inst1|Equal3~3_combout\) # (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\)) # (!\inst7|inst4|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(1),
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|data[86]~49_combout\);

-- Location: LCCOMB_X30_Y29_N16
\inst7|inst1|data[86]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[86]~26_combout\ = (\inst7|inst1|data[86]~49_combout\ & ((\inst7|inst1|Equal18~2_combout\) # ((!\inst7|inst2|liga[0]~6_combout\) # (!\inst7|inst1|Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal18~2_combout\,
	datab => \inst7|inst1|Equal19~0_combout\,
	datac => \inst7|inst1|data[86]~49_combout\,
	datad => \inst7|inst2|liga[0]~6_combout\,
	combout => \inst7|inst1|data[86]~26_combout\);

-- Location: LCCOMB_X30_Y29_N4
\inst7|inst1|data[74]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[74]~29_combout\ = ((\inst7|inst2|liga[0]~7_combout\ & \inst7|inst1|data[74]~28_combout\)) # (!\inst7|inst1|data[86]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|liga[0]~7_combout\,
	datac => \inst7|inst1|data[74]~28_combout\,
	datad => \inst7|inst1|data[86]~26_combout\,
	combout => \inst7|inst1|data[74]~29_combout\);

-- Location: FF_X30_Y29_N5
\inst7|inst2|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[74]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|liga\(0));

-- Location: LCCOMB_X30_Y28_N18
\inst7|inst5|$00000|auto_generated|result_node[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ = (!\inst7|inst2|prueba\(0) & (\inst7|inst2|liga\(0) & (!\inst7|inst2|instruccion\(1) & \inst7|inst2|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|prueba\(0),
	datab => \inst7|inst2|liga\(0),
	datac => \inst7|inst2|instruccion\(1),
	datad => \inst7|inst2|instruccion\(0),
	combout => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X30_Y28_N4
\inst7|inst1|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal3~4_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # ((!\inst7|inst4|valor_interno\(1) & !\inst7|inst4|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(1),
	datac => \inst7|inst4|valor_interno\(0),
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst1|Equal3~4_combout\);

-- Location: LCCOMB_X28_Y29_N22
\inst7|inst1|Equal11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal11~4_combout\ = (\inst7|inst1|Equal3~4_combout\ & \inst7|inst1|Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Equal3~4_combout\,
	datad => \inst7|inst1|Equal11~3_combout\,
	combout => \inst7|inst1|Equal11~4_combout\);

-- Location: LCCOMB_X28_Y29_N14
\inst7|inst1|data[68]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[68]~50_combout\ = ((!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(1))))) # (!\inst7|inst1|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(1),
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|data[68]~50_combout\);

-- Location: LCCOMB_X28_Y29_N28
\inst7|inst1|data[68]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[68]~35_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst7|inst1|Equal11~3_combout\ & (\inst7|inst1|data[14]~22_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst1|Equal11~3_combout\,
	datac => \inst7|inst1|data[14]~22_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	combout => \inst7|inst1|data[68]~35_combout\);

-- Location: LCCOMB_X28_Y29_N20
\inst7|inst1|data[68]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[68]~36_combout\ = (\inst7|inst1|Equal11~4_combout\) # ((\inst7|inst1|Equal4~0_combout\) # ((\inst7|inst1|data[68]~50_combout\ & \inst7|inst1|data[68]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal11~4_combout\,
	datab => \inst7|inst1|Equal4~0_combout\,
	datac => \inst7|inst1|data[68]~50_combout\,
	datad => \inst7|inst1|data[68]~35_combout\,
	combout => \inst7|inst1|data[68]~36_combout\);

-- Location: FF_X28_Y29_N21
\inst7|inst2|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[68]~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|EA\(0));

-- Location: LCCOMB_X27_Y27_N0
\ACCA|C[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[6]~1_combout\ = (((\ACCA|data_out\(6)) # (\inst7|inst2|nWA~q\)) # (!\inst7|inst2|EA\(0))) # (!\inst7|inst2|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \inst7|inst2|EA\(0),
	datac => \ACCA|data_out\(6),
	datad => \inst7|inst2|nWA~q\,
	combout => \ACCA|C[6]~1_combout\);

-- Location: LCCOMB_X27_Y27_N14
\ACCA|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[6]~1_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[6]~1_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|EA\(1),
	datab => \ACCA|C[6]~1_combout\,
	datad => \inst1|Yupa[6]~10_combout\,
	combout => \ACCA|data_out[6]~1_combout\);

-- Location: FF_X27_Y27_N15
\ACCA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[6]~1_combout\,
	asdata => \inst1|Yupa2[6]~7_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(6));

-- Location: LCCOMB_X26_Y29_N14
\AUX|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~9_combout\ = (\inst7|inst2|BD~q\ & (\AUX|data_out\(7))) # (!\inst7|inst2|BD~q\ & ((\inst1|Yupa[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|BD~q\,
	datac => \AUX|data_out\(7),
	datad => \inst1|Yupa[6]~10_combout\,
	combout => \AUX|data_out~9_combout\);

-- Location: FF_X26_Y29_N15
\AUX|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(6));

-- Location: LCCOMB_X27_Y28_N6
\inst1|Yupa[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~7_combout\ = (\ACCA|data_out\(6) & (((\AUX|data_out\(6)) # (\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(6) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(6)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \ACCA|TRI_STATE~0_combout\,
	datac => \AUX|data_out\(6),
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[6]~7_combout\);

-- Location: LCCOMB_X27_Y28_N20
\inst1|Yupa[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~8_combout\ = (\inst7|inst2|BD~q\) # (\inst6|mem_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|BD~q\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst1|Yupa[6]~8_combout\);

-- Location: LCCOMB_X27_Y28_N2
\inst1|Yupa[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~9_combout\ = (\inst6|data[7]~en_q\ & (\inst1|Yupa[6]~8_combout\ & ((\ACCB|data_out\(6)) # (!\ACCB|TRI_STATE~0_combout\)))) # (!\inst6|data[7]~en_q\ & (((\ACCB|data_out\(6))) # (!\ACCB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \ACCB|TRI_STATE~0_combout\,
	datac => \ACCB|data_out\(6),
	datad => \inst1|Yupa[6]~8_combout\,
	combout => \inst1|Yupa[6]~9_combout\);

-- Location: LCCOMB_X27_Y28_N0
\inst1|Yupa[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~10_combout\ = ((\inst1|Yupa[6]~7_combout\ & (\inst1|Yupa[6]~6_combout\ & \inst1|Yupa[6]~9_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[6]~7_combout\,
	datab => \inst1|Yupa[6]~6_combout\,
	datac => \inst1|Yupa[7]~4_combout\,
	datad => \inst1|Yupa[6]~9_combout\,
	combout => \inst1|Yupa[6]~10_combout\);

-- Location: FF_X27_Y28_N17
\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[6]~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

-- Location: LCCOMB_X27_Y28_N22
\inst7|inst5|$00000|auto_generated|result_node[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\ = (\inst7|inst2|instruccion\(1) & (!\inst7|inst2|instruccion\(0) & \inst8|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|instruccion\(1),
	datab => \inst7|inst2|instruccion\(0),
	datad => \inst8|valor_interno\(10),
	combout => \inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\);

-- Location: LCCOMB_X27_Y28_N26
\inst7|inst1|Equal14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal14~5_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\) # ((\inst7|inst4|valor_interno\(10) & !\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\,
	datab => \inst7|inst4|valor_interno\(10),
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	combout => \inst7|inst1|Equal14~5_combout\);

-- Location: LCCOMB_X27_Y28_N24
\inst7|inst1|Equal14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal14~4_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\,
	combout => \inst7|inst1|Equal14~4_combout\);

-- Location: LCCOMB_X27_Y28_N8
\inst7|inst1|Equal14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal14~6_combout\ = (\inst7|inst1|Equal14~2_combout\ & (\inst7|inst1|Equal14~3_combout\ & (\inst7|inst1|Equal14~5_combout\ & \inst7|inst1|Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal14~2_combout\,
	datab => \inst7|inst1|Equal14~3_combout\,
	datac => \inst7|inst1|Equal14~5_combout\,
	datad => \inst7|inst1|Equal14~4_combout\,
	combout => \inst7|inst1|Equal14~6_combout\);

-- Location: LCCOMB_X27_Y29_N4
\inst7|inst1|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal15~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & 
-- \inst7|inst1|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|Equal15~0_combout\);

-- Location: LCCOMB_X27_Y29_N2
\inst7|inst2|BD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|BD~feeder_combout\ = \inst7|inst1|Equal15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|Equal15~0_combout\,
	combout => \inst7|inst2|BD~feeder_combout\);

-- Location: FF_X27_Y29_N3
\inst7|inst2|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|BD~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|BD~q\);

-- Location: LCCOMB_X25_Y29_N22
\AUX|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~10_combout\ = (\inst7|inst2|BD~q\ & ((\AUX|data_out\(6)))) # (!\inst7|inst2|BD~q\ & (\inst1|Yupa[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|BD~q\,
	datac => \inst1|Yupa[5]~14_combout\,
	datad => \AUX|data_out\(6),
	combout => \AUX|data_out~10_combout\);

-- Location: FF_X25_Y29_N23
\AUX|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(5));

-- Location: LCCOMB_X25_Y29_N6
\inst1|Yupa[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~12_combout\ = (\AUX|data_out\(5) & ((\ACCA|data_out\(5)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(5) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(5)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datab => \ACCA|data_out\(5),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[5]~12_combout\);

-- Location: LCCOMB_X25_Y29_N28
\inst1|Yupa[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~13_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(5) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a5\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a5\) # 
-- (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \ACCB|data_out\(5),
	datac => \inst6|data[7]~0_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \inst1|Yupa[5]~13_combout\);

-- Location: LCCOMB_X25_Y29_N26
\inst1|Yupa[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~14_combout\ = ((\inst1|Yupa[5]~12_combout\ & (\inst1|Yupa[5]~11_combout\ & \inst1|Yupa[5]~13_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[5]~12_combout\,
	datab => \inst1|Yupa[7]~4_combout\,
	datac => \inst1|Yupa[5]~11_combout\,
	datad => \inst1|Yupa[5]~13_combout\,
	combout => \inst1|Yupa[5]~14_combout\);

-- Location: LCCOMB_X25_Y29_N4
\inst8|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[9]~feeder_combout\ = \inst1|Yupa[5]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Yupa[5]~14_combout\,
	combout => \inst8|valor_interno[9]~feeder_combout\);

-- Location: FF_X25_Y29_N5
\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

-- Location: LCCOMB_X25_Y29_N14
\inst7|inst5|$00000|auto_generated|result_node[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & ((\inst8|valor_interno\(9)) # ((\inst7|inst4|valor_interno\(9) & !\inst7|inst3|SELECTOR~1_combout\)))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst7|inst4|valor_interno\(9) & ((!\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst4|valor_interno\(9),
	datac => \inst8|valor_interno\(9),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\);

-- Location: FF_X28_Y28_N25
\inst7|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(10));

-- Location: LCCOMB_X27_Y28_N30
\inst7|inst5|$00000|auto_generated|result_node[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ = (\inst7|inst4|valor_interno\(10) & (((\inst8|valor_interno\(10) & \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\)) # (!\inst7|inst3|SELECTOR~1_combout\))) # 
-- (!\inst7|inst4|valor_interno\(10) & (\inst8|valor_interno\(10) & ((\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(10),
	datab => \inst8|valor_interno\(10),
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\);

-- Location: LCCOMB_X28_Y29_N6
\inst7|inst1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal6~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\ & 
-- \inst7|inst1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~2_combout\,
	datad => \inst7|inst1|Equal3~3_combout\,
	combout => \inst7|inst1|Equal6~0_combout\);

-- Location: LCCOMB_X28_Y29_N26
\inst7|inst1|data[69]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[69]~37_combout\ = (!\inst7|inst1|Equal6~0_combout\ & (\inst7|inst1|Equal11~4_combout\ & (\inst7|inst2|liga[0]~7_combout\ & !\inst7|inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal6~0_combout\,
	datab => \inst7|inst1|Equal11~4_combout\,
	datac => \inst7|inst2|liga[0]~7_combout\,
	datad => \inst7|inst1|Equal5~0_combout\,
	combout => \inst7|inst1|data[69]~37_combout\);

-- Location: FF_X28_Y29_N27
\inst7|inst2|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[69]~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|EA\(1));

-- Location: LCCOMB_X25_Y28_N16
\ACCA|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[2]~5_combout\ = (\inst7|inst2|EA\(1) & (\ACCA|C[2]~5_combout\)) # (!\inst7|inst2|EA\(1) & ((\inst1|Yupa[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \inst7|inst2|EA\(1),
	datad => \inst1|Yupa[2]~26_combout\,
	combout => \ACCA|data_out[2]~5_combout\);

-- Location: FF_X25_Y28_N17
\ACCA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[2]~5_combout\,
	asdata => \inst1|Yupa2[2]~19_combout\,
	sload => \inst7|inst2|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(2));

-- Location: LCCOMB_X27_Y27_N12
\ACCA|C[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[2]~5_combout\ = (\ACCA|data_out\(2)) # (((\inst7|inst2|nWA~q\) # (!\inst7|inst2|EA\(1))) # (!\inst7|inst2|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \inst7|inst2|EA\(0),
	datac => \inst7|inst2|EA\(1),
	datad => \inst7|inst2|nWA~q\,
	combout => \ACCA|C[2]~5_combout\);

-- Location: FF_X28_Y27_N13
\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

-- Location: LCCOMB_X28_Y27_N28
\inst1|Yupa[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~23_combout\ = (\inst1|Yupa_interno\(2)) # (!\inst7|inst2|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(2),
	datad => \inst7|inst2|nDUPA~q\,
	combout => \inst1|Yupa[2]~23_combout\);

-- Location: LCCOMB_X29_Y28_N4
\inst1|Yupa[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~24_combout\ = (\AUX|data_out\(2) & ((\ACCA|data_out\(2)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(2) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(2)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(2),
	datab => \ACCA|data_out\(2),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[2]~24_combout\);

-- Location: LCCOMB_X29_Y28_N2
\inst1|Yupa[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~25_combout\ = (\ACCB|data_out\(2) & (((\inst6|mem_rtl_0|auto_generated|ram_block1a2\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|data_out\(2) & (!\ACCB|TRI_STATE~0_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a2\) # 
-- (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \ACCB|TRI_STATE~0_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[2]~25_combout\);

-- Location: LCCOMB_X29_Y28_N8
\inst1|Yupa[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~26_combout\ = ((\inst1|Yupa[2]~23_combout\ & (\inst1|Yupa[2]~24_combout\ & \inst1|Yupa[2]~25_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[2]~23_combout\,
	datab => \inst1|Yupa[7]~4_combout\,
	datac => \inst1|Yupa[2]~24_combout\,
	datad => \inst1|Yupa[2]~25_combout\,
	combout => \inst1|Yupa[2]~26_combout\);

-- Location: FF_X29_Y28_N21
\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[2]~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

-- Location: LCCOMB_X29_Y28_N14
\inst7|inst5|$00000|auto_generated|result_node[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & ((\inst8|valor_interno\(6)) # ((\inst7|inst4|valor_interno\(6) & !\inst7|inst3|SELECTOR~1_combout\)))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst7|inst4|valor_interno\(6) & (!\inst7|inst3|SELECTOR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst4|valor_interno\(6),
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst8|valor_interno\(6),
	combout => \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X28_Y28_N18
\inst7|inst4|valor_interno[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[7]~23_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ & (\inst7|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ & (!\inst7|inst4|valor_interno[6]~22\ 
-- & VCC))
-- \inst7|inst4|valor_interno[7]~24\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ & !\inst7|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[6]~22\,
	combout => \inst7|inst4|valor_interno[7]~23_combout\,
	cout => \inst7|inst4|valor_interno[7]~24\);

-- Location: FF_X28_Y28_N19
\inst7|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(7));

-- Location: LCCOMB_X25_Y28_N14
\inst8|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[7]~feeder_combout\ = \inst1|Yupa[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Yupa[3]~22_combout\,
	combout => \inst8|valor_interno[7]~feeder_combout\);

-- Location: FF_X25_Y28_N15
\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

-- Location: LCCOMB_X25_Y28_N24
\inst7|inst5|$00000|auto_generated|result_node[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\ = (\inst7|inst4|valor_interno\(7) & (((\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & \inst8|valor_interno\(7))) # (!\inst7|inst3|SELECTOR~1_combout\))) # 
-- (!\inst7|inst4|valor_interno\(7) & (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst8|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(7),
	datab => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst8|valor_interno\(7),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\);

-- Location: FF_X28_Y28_N21
\inst7|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(8));

-- Location: FF_X29_Y28_N13
\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[4]~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

-- Location: LCCOMB_X29_Y28_N10
\inst7|inst5|$00000|auto_generated|result_node[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & ((\inst8|valor_interno\(8)) # ((\inst7|inst4|valor_interno\(8) & !\inst7|inst3|SELECTOR~1_combout\)))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst7|inst4|valor_interno\(8) & ((!\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst4|valor_interno\(8),
	datac => \inst8|valor_interno\(8),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\);

-- Location: LCCOMB_X28_Y28_N30
\inst7|inst1|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal14~2_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\,
	combout => \inst7|inst1|Equal14~2_combout\);

-- Location: LCCOMB_X27_Y28_N28
\inst7|inst1|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal11~2_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(10),
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~14_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst7|inst1|Equal11~2_combout\);

-- Location: LCCOMB_X28_Y28_N2
\inst7|inst1|Equal11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal11~5_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(2),
	datab => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\,
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	combout => \inst7|inst1|Equal11~5_combout\);

-- Location: LCCOMB_X28_Y28_N0
\inst7|inst1|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal11~3_combout\ = (\inst7|inst1|Equal14~2_combout\ & (\inst7|inst1|Equal11~2_combout\ & (\inst7|inst1|Equal14~3_combout\ & \inst7|inst1|Equal11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal14~2_combout\,
	datab => \inst7|inst1|Equal11~2_combout\,
	datac => \inst7|inst1|Equal14~3_combout\,
	datad => \inst7|inst1|Equal11~5_combout\,
	combout => \inst7|inst1|Equal11~3_combout\);

-- Location: LCCOMB_X30_Y29_N12
\inst7|inst1|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal13~2_combout\ = (!\inst7|inst3|SELECTOR~1_combout\ & (\inst7|inst4|valor_interno\(1) & (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst7|inst1|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(1),
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal11~3_combout\,
	combout => \inst7|inst1|Equal13~2_combout\);

-- Location: LCCOMB_X30_Y29_N10
\inst7|inst1|data[86]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[86]~25_combout\ = (\inst7|inst1|Equal13~2_combout\) # ((\inst7|inst1|Equal5~0_combout\) # (!\inst7|inst1|data[27]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal13~2_combout\,
	datab => \inst7|inst1|Equal5~0_combout\,
	datad => \inst7|inst1|data[27]~19_combout\,
	combout => \inst7|inst1|data[86]~25_combout\);

-- Location: LCCOMB_X30_Y28_N28
\inst7|inst1|data[86]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[86]~23_combout\ = ((!\inst7|inst1|Equal11~3_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\) # (!\inst7|inst1|Equal14~6_combout\)))) # (!\inst7|inst1|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datab => \inst7|inst1|Equal11~3_combout\,
	datac => \inst7|inst1|Equal3~4_combout\,
	datad => \inst7|inst1|Equal14~6_combout\,
	combout => \inst7|inst1|data[86]~23_combout\);

-- Location: LCCOMB_X30_Y29_N8
\inst7|inst1|data[86]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[86]~24_combout\ = (\inst7|inst1|data[86]~23_combout\ & (\inst7|inst2|liga[0]~5_combout\ & ((\inst7|inst1|Equal18~2_combout\) # (!\inst7|inst2|liga[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal18~2_combout\,
	datab => \inst7|inst1|data[86]~23_combout\,
	datac => \inst7|inst2|liga[0]~5_combout\,
	datad => \inst7|inst2|liga[0]~6_combout\,
	combout => \inst7|inst1|data[86]~24_combout\);

-- Location: LCCOMB_X30_Y29_N14
\inst7|inst1|data[86]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[86]~27_combout\ = (\inst7|inst1|data[86]~25_combout\) # ((\inst7|inst1|data[86]~24_combout\) # (!\inst7|inst1|data[86]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|data[86]~25_combout\,
	datac => \inst7|inst1|data[86]~24_combout\,
	datad => \inst7|inst1|data[86]~26_combout\,
	combout => \inst7|inst1|data[86]~27_combout\);

-- Location: FF_X30_Y29_N15
\inst7|inst2|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[86]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|instruccion\(0));

-- Location: LCCOMB_X27_Y28_N16
\inst7|inst5|$00000|auto_generated|result_node[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ = (\inst7|inst2|instruccion\(1) & !\inst7|inst2|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|instruccion\(1),
	datad => \inst7|inst2|instruccion\(0),
	combout => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\inst8|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[4]~feeder_combout\ = \inst1|Yupa[0]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[0]~35_combout\,
	combout => \inst8|valor_interno[4]~feeder_combout\);

-- Location: FF_X24_Y28_N7
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X28_Y28_N28
\inst7|inst5|$00000|auto_generated|result_node[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ = (\inst7|inst4|valor_interno\(4) & (((\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & \inst8|valor_interno\(4))) # (!\inst7|inst3|SELECTOR~1_combout\))) # 
-- (!\inst7|inst4|valor_interno\(4) & (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & ((\inst8|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(4),
	datab => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst8|valor_interno\(4),
	combout => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\);

-- Location: FF_X28_Y28_N15
\inst7|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(5));

-- Location: LCCOMB_X25_Y28_N26
\inst8|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[5]~feeder_combout\ = \inst1|Yupa[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[1]~31_combout\,
	combout => \inst8|valor_interno[5]~feeder_combout\);

-- Location: FF_X25_Y28_N27
\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

-- Location: LCCOMB_X25_Y28_N20
\inst7|inst5|$00000|auto_generated|result_node[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\ = (\inst7|inst4|valor_interno\(5) & (((\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & \inst8|valor_interno\(5))) # (!\inst7|inst3|SELECTOR~1_combout\))) # 
-- (!\inst7|inst4|valor_interno\(5) & (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst8|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(5),
	datab => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst8|valor_interno\(5),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X25_Y28_N10
\inst7|inst1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal1~3_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\) # ((\inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\) # (\inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~7_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[11]~1_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	combout => \inst7|inst1|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y28_N30
\inst7|inst1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal1~2_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[4]~8_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	combout => \inst7|inst1|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y28_N24
\inst7|inst1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal1~4_combout\ = (!\inst7|inst1|Equal1~3_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (\inst7|inst1|Equal1~2_combout\ & \inst7|inst1|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal1~3_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datac => \inst7|inst1|Equal1~2_combout\,
	datad => \inst7|inst1|Equal11~2_combout\,
	combout => \inst7|inst1|Equal1~4_combout\);

-- Location: LCCOMB_X30_Y28_N22
\inst7|inst1|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal1~5_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst7|inst1|Equal1~4_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(1),
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst7|inst1|Equal1~4_combout\,
	combout => \inst7|inst1|Equal1~5_combout\);

-- Location: LCCOMB_X30_Y29_N28
\inst7|inst1|data[87]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[87]~21_combout\ = (\inst7|inst1|data[87]~20_combout\) # ((!\inst7|inst1|Equal1~5_combout\ & (\inst7|inst1|Equal0~2_combout\ & \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal1~5_combout\,
	datab => \inst7|inst1|Equal0~2_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst1|data[87]~20_combout\,
	combout => \inst7|inst1|data[87]~21_combout\);

-- Location: FF_X30_Y29_N29
\inst7|inst2|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[87]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|instruccion\(1));

-- Location: LCCOMB_X27_Y28_N18
\inst7|inst3|SELECTOR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|SELECTOR~0_combout\ = (\inst7|inst2|liga\(0)) # ((!\AUX|data_out\(15) & (!\inst7|inst2|BD~q\ & !\inst7|inst2|RA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \inst7|inst2|BD~q\,
	datac => \inst7|inst2|RA\(0),
	datad => \inst7|inst2|liga\(0),
	combout => \inst7|inst3|SELECTOR~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\inst7|inst3|SELECTOR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|SELECTOR~1_combout\ = (\inst7|inst2|instruccion\(0) & (((!\inst7|inst2|prueba\(0) & \inst7|inst3|SELECTOR~0_combout\)))) # (!\inst7|inst2|instruccion\(0) & (\inst7|inst2|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|instruccion\(1),
	datab => \inst7|inst2|instruccion\(0),
	datac => \inst7|inst2|prueba\(0),
	datad => \inst7|inst3|SELECTOR~0_combout\,
	combout => \inst7|inst3|SELECTOR~1_combout\);

-- Location: LCCOMB_X30_Y28_N26
\inst7|inst5|$00000|auto_generated|result_node[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\) # ((!\inst7|inst3|SELECTOR~1_combout\ & \inst7|inst4|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(0),
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\);

-- Location: FF_X28_Y28_N7
\inst7|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(1));

-- Location: LCCOMB_X28_Y29_N0
\inst7|inst1|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal12~2_combout\ = (\inst7|inst1|Equal11~3_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & ((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(1),
	datab => \inst7|inst1|Equal11~3_combout\,
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst7|inst1|Equal12~2_combout\);

-- Location: LCCOMB_X29_Y29_N16
\inst7|inst1|data[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[6]~32_combout\ = (\inst7|inst2|liga[0]~7_combout\ & ((\inst7|inst1|data[68]~16_combout\ & (\inst7|inst1|Equal12~2_combout\)) # (!\inst7|inst1|data[68]~16_combout\ & ((!\inst7|inst1|Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal12~2_combout\,
	datab => \inst7|inst1|data[68]~16_combout\,
	datac => \inst7|inst1|Equal6~0_combout\,
	datad => \inst7|inst2|liga[0]~7_combout\,
	combout => \inst7|inst1|data[6]~32_combout\);

-- Location: FF_X29_Y29_N17
\inst7|inst2|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[6]~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|CZ~q\);

-- Location: LCCOMB_X28_Y27_N26
\inst1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~1_combout\ = (\inst1|Add0~4_combout\) # ((\inst1|Add0~2_combout\) # ((\inst1|Add0~8_combout\) # (\inst1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|WideOr0~1_combout\);

-- Location: LCCOMB_X28_Y27_N2
\inst1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|Add0~12_combout\) # (\inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~12_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y27_N4
\inst1|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (!\inst1|Add0~16_combout\ & (!\inst1|Add0~14_combout\ & (!\inst1|WideOr0~1_combout\ & !\inst1|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|WideOr0~1_combout\,
	datad => \inst1|WideOr0~0_combout\,
	combout => \inst1|WideOr0~combout\);

-- Location: FF_X28_Y27_N5
\inst1|Banderas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|WideOr0~combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(0));

-- Location: LCCOMB_X29_Y29_N0
\inst7|inst1|data[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|data[14]~31_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst1|Equal7~0_combout\ & \inst7|inst1|data[14]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|Equal7~0_combout\,
	datad => \inst7|inst1|data[14]~30_combout\,
	combout => \inst7|inst1|data[14]~31_combout\);

-- Location: FF_X29_Y29_N1
\inst7|inst2|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|data[14]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|B4~q\);

-- Location: LCCOMB_X29_Y29_N8
\inst7|inst2|B3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|B3~feeder_combout\ = \inst7|inst1|Equal5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|Equal5~0_combout\,
	combout => \inst7|inst2|B3~feeder_combout\);

-- Location: FF_X29_Y29_N9
\inst7|inst2|B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|B3~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|B3~q\);

-- Location: LCCOMB_X26_Y27_N22
\inst5|inst10|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~3_combout\ = (\inst1|Banderas\(0) & (!\inst7|inst2|B4~q\ & !\inst7|inst2|B3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Banderas\(0),
	datac => \inst7|inst2|B4~q\,
	datad => \inst7|inst2|B3~q\,
	combout => \inst5|inst10|output~3_combout\);

-- Location: LCCOMB_X25_Y28_N6
\inst5|inst10|output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~5_combout\ = (!\ACCA|data_out\(4) & !\ACCA|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACCA|data_out\(4),
	datad => \ACCA|data_out\(3),
	combout => \inst5|inst10|output~5_combout\);

-- Location: LCCOMB_X25_Y28_N28
\inst5|inst10|output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~6_combout\ = (!\ACCA|data_out\(1) & (!\ACCA|data_out\(2) & (!\ACCA|data_out\(0) & \inst5|inst10|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \ACCA|data_out\(2),
	datac => \ACCA|data_out\(0),
	datad => \inst5|inst10|output~5_combout\,
	combout => \inst5|inst10|output~6_combout\);

-- Location: LCCOMB_X26_Y27_N16
\inst5|inst10|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (!\ACCB|data_out\(5) & (!\ACCB|data_out\(6) & (!\ACCB|data_out\(4) & !\ACCB|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \ACCB|data_out\(6),
	datac => \ACCB|data_out\(4),
	datad => \ACCB|data_out\(7),
	combout => \inst5|inst10|output~0_combout\);

-- Location: LCCOMB_X26_Y27_N18
\inst5|inst10|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (!\ACCB|data_out\(3) & (!\ACCB|data_out\(2) & (!\ACCB|data_out\(0) & !\ACCB|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \ACCB|data_out\(2),
	datac => \ACCB|data_out\(0),
	datad => \ACCB|data_out\(1),
	combout => \inst5|inst10|output~1_combout\);

-- Location: LCCOMB_X26_Y27_N8
\inst5|inst10|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = (\inst7|inst2|B4~q\ & ((\inst7|inst2|B3~q\) # ((\inst5|inst10|output~0_combout\ & \inst5|inst10|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|B3~q\,
	datab => \inst5|inst10|output~0_combout\,
	datac => \inst7|inst2|B4~q\,
	datad => \inst5|inst10|output~1_combout\,
	combout => \inst5|inst10|output~2_combout\);

-- Location: LCCOMB_X26_Y27_N24
\inst5|inst10|output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~4_combout\ = (!\ACCA|data_out\(5) & (!\ACCA|data_out\(7) & (!\ACCA|data_out\(6) & \inst7|inst2|B3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCA|data_out\(7),
	datac => \ACCA|data_out\(6),
	datad => \inst7|inst2|B3~q\,
	combout => \inst5|inst10|output~4_combout\);

-- Location: LCCOMB_X26_Y27_N30
\inst5|inst10|output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~7_combout\ = (\inst5|inst10|output~3_combout\) # ((\inst5|inst10|output~2_combout\) # ((\inst5|inst10|output~6_combout\ & \inst5|inst10|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst10|output~3_combout\,
	datab => \inst5|inst10|output~6_combout\,
	datac => \inst5|inst10|output~2_combout\,
	datad => \inst5|inst10|output~4_combout\,
	combout => \inst5|inst10|output~7_combout\);

-- Location: FF_X26_Y27_N31
\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

-- Location: FF_X28_Y27_N11
\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~14_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

-- Location: FF_X28_Y27_N19
\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

-- Location: FF_X28_Y27_N23
\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~10_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

-- Location: FF_X28_Y27_N9
\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~8_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

-- Location: FF_X28_Y27_N15
\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~6_combout\,
	sload => VCC,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

-- Location: LCCOMB_X29_Y27_N12
\inst1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[1]~feeder_combout\ = \inst1|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Q[1]~feeder_combout\);

-- Location: FF_X29_Y27_N13
\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[1]~feeder_combout\,
	ena => \inst7|inst2|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

-- Location: LCCOMB_X24_Y27_N24
\PC|data_out[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[15]~0_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[7]~4_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(15),
	datad => \inst1|Yupa2[7]~4_combout\,
	combout => \PC|data_out[15]~0_combout\);

-- Location: LCCOMB_X24_Y27_N6
\PC|data_out[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[14]~1_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[6]~7_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(14),
	datad => \inst1|Yupa2[6]~7_combout\,
	combout => \PC|data_out[14]~1_combout\);

-- Location: LCCOMB_X24_Y27_N8
\PC|data_out[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[13]~2_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[5]~10_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(13),
	datad => \inst1|Yupa2[5]~10_combout\,
	combout => \PC|data_out[13]~2_combout\);

-- Location: LCCOMB_X24_Y27_N22
\PC|data_out[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[12]~3_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[4]~13_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(12),
	datad => \inst1|Yupa2[4]~13_combout\,
	combout => \PC|data_out[12]~3_combout\);

-- Location: LCCOMB_X24_Y29_N24
\PC|data_out[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[11]~4_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[3]~16_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(11),
	datad => \inst1|Yupa2[3]~16_combout\,
	combout => \PC|data_out[11]~4_combout\);

-- Location: LCCOMB_X24_Y27_N20
\PC|data_out[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[10]~5_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[2]~19_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(10),
	datad => \inst1|Yupa2[2]~19_combout\,
	combout => \PC|data_out[10]~5_combout\);

-- Location: LCCOMB_X23_Y28_N16
\PC|data_out[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[9]~6_combout\ = (\inst7|inst2|PC\(2) & ((\inst1|Yupa2[1]~22_combout\))) # (!\inst7|inst2|PC\(2) & (\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(9),
	datad => \inst1|Yupa2[1]~22_combout\,
	combout => \PC|data_out[9]~6_combout\);

-- Location: LCCOMB_X23_Y28_N10
\PC|data_out[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~7_combout\ = (\inst7|inst2|PC\(2) & (\inst1|Yupa2[0]~25_combout\)) # (!\inst7|inst2|PC\(2) & ((\PC|data_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[0]~25_combout\,
	datab => \inst7|inst2|PC\(2),
	datac => \PC|data_out\(8),
	combout => \PC|data_out[8]~7_combout\);

-- Location: LCCOMB_X20_Y28_N16
\PC|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~32_combout\ = (\PC|data_out\(8) & (\PC|Add0~31\ $ (GND))) # (!\PC|data_out\(8) & (!\PC|Add0~31\ & VCC))
-- \PC|Add0~33\ = CARRY((\PC|data_out\(8) & !\PC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datad => VCC,
	cin => \PC|Add0~31\,
	combout => \PC|Add0~32_combout\,
	cout => \PC|Add0~33\);

-- Location: LCCOMB_X23_Y28_N24
\PC|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Equal0~0_combout\ = (!\inst7|inst2|PC\(2) & \inst7|inst2|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|PC\(2),
	datad => \inst7|inst2|PC\(0),
	combout => \PC|Equal0~0_combout\);

-- Location: FF_X23_Y28_N11
\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[8]~7_combout\,
	asdata => \PC|Add0~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

-- Location: LCCOMB_X20_Y28_N18
\PC|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~34_combout\ = (\PC|data_out\(9) & (!\PC|Add0~33\)) # (!\PC|data_out\(9) & ((\PC|Add0~33\) # (GND)))
-- \PC|Add0~35\ = CARRY((!\PC|Add0~33\) # (!\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datad => VCC,
	cin => \PC|Add0~33\,
	combout => \PC|Add0~34_combout\,
	cout => \PC|Add0~35\);

-- Location: FF_X23_Y28_N17
\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[9]~6_combout\,
	asdata => \PC|Add0~34_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

-- Location: LCCOMB_X20_Y28_N20
\PC|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~36_combout\ = (\PC|data_out\(10) & (\PC|Add0~35\ $ (GND))) # (!\PC|data_out\(10) & (!\PC|Add0~35\ & VCC))
-- \PC|Add0~37\ = CARRY((\PC|data_out\(10) & !\PC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|Add0~35\,
	combout => \PC|Add0~36_combout\,
	cout => \PC|Add0~37\);

-- Location: FF_X24_Y27_N21
\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[10]~5_combout\,
	asdata => \PC|Add0~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

-- Location: LCCOMB_X20_Y28_N22
\PC|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~38_combout\ = (\PC|data_out\(11) & (!\PC|Add0~37\)) # (!\PC|data_out\(11) & ((\PC|Add0~37\) # (GND)))
-- \PC|Add0~39\ = CARRY((!\PC|Add0~37\) # (!\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(11),
	datad => VCC,
	cin => \PC|Add0~37\,
	combout => \PC|Add0~38_combout\,
	cout => \PC|Add0~39\);

-- Location: FF_X24_Y29_N25
\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[11]~4_combout\,
	asdata => \PC|Add0~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

-- Location: LCCOMB_X20_Y28_N24
\PC|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~40_combout\ = (\PC|data_out\(12) & (\PC|Add0~39\ $ (GND))) # (!\PC|data_out\(12) & (!\PC|Add0~39\ & VCC))
-- \PC|Add0~41\ = CARRY((\PC|data_out\(12) & !\PC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datad => VCC,
	cin => \PC|Add0~39\,
	combout => \PC|Add0~40_combout\,
	cout => \PC|Add0~41\);

-- Location: FF_X24_Y27_N23
\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[12]~3_combout\,
	asdata => \PC|Add0~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

-- Location: LCCOMB_X20_Y28_N26
\PC|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~42_combout\ = (\PC|data_out\(13) & (!\PC|Add0~41\)) # (!\PC|data_out\(13) & ((\PC|Add0~41\) # (GND)))
-- \PC|Add0~43\ = CARRY((!\PC|Add0~41\) # (!\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(13),
	datad => VCC,
	cin => \PC|Add0~41\,
	combout => \PC|Add0~42_combout\,
	cout => \PC|Add0~43\);

-- Location: FF_X24_Y27_N9
\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[13]~2_combout\,
	asdata => \PC|Add0~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

-- Location: LCCOMB_X20_Y28_N28
\PC|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~44_combout\ = (\PC|data_out\(14) & (\PC|Add0~43\ $ (GND))) # (!\PC|data_out\(14) & (!\PC|Add0~43\ & VCC))
-- \PC|Add0~45\ = CARRY((\PC|data_out\(14) & !\PC|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datad => VCC,
	cin => \PC|Add0~43\,
	combout => \PC|Add0~44_combout\,
	cout => \PC|Add0~45\);

-- Location: FF_X24_Y27_N7
\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[14]~1_combout\,
	asdata => \PC|Add0~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

-- Location: LCCOMB_X20_Y28_N30
\PC|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~46_combout\ = \PC|Add0~45\ $ (\PC|data_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(15),
	cin => \PC|Add0~45\,
	combout => \PC|Add0~46_combout\);

-- Location: FF_X24_Y27_N25
\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[15]~0_combout\,
	asdata => \PC|Add0~46_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

-- Location: IOIBUF_X0_Y16_N15
\IRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\XIRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

ww_Z <= \Z~output_o\;

ww_csnn <= \csnn~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AP_D(15) <= \AP_D[15]~output_o\;

ww_AP_D(14) <= \AP_D[14]~output_o\;

ww_AP_D(13) <= \AP_D[13]~output_o\;

ww_AP_D(12) <= \AP_D[12]~output_o\;

ww_AP_D(11) <= \AP_D[11]~output_o\;

ww_AP_D(10) <= \AP_D[10]~output_o\;

ww_AP_D(9) <= \AP_D[9]~output_o\;

ww_AP_D(8) <= \AP_D[8]~output_o\;

ww_AP_D(7) <= \AP_D[7]~output_o\;

ww_AP_D(6) <= \AP_D[6]~output_o\;

ww_AP_D(5) <= \AP_D[5]~output_o\;

ww_AP_D(4) <= \AP_D[4]~output_o\;

ww_AP_D(3) <= \AP_D[3]~output_o\;

ww_AP_D(2) <= \AP_D[2]~output_o\;

ww_AP_D(1) <= \AP_D[1]~output_o\;

ww_AP_D(0) <= \AP_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_Debug_Q(7) <= \Debug_Q[7]~output_o\;

ww_Debug_Q(6) <= \Debug_Q[6]~output_o\;

ww_Debug_Q(5) <= \Debug_Q[5]~output_o\;

ww_Debug_Q(4) <= \Debug_Q[4]~output_o\;

ww_Debug_Q(3) <= \Debug_Q[3]~output_o\;

ww_Debug_Q(2) <= \Debug_Q[2]~output_o\;

ww_Debug_Q(1) <= \Debug_Q[1]~output_o\;

ww_Debug_Q(0) <= \Debug_Q[0]~output_o\;

ww_Debug_Yupa(7) <= \Debug_Yupa[7]~output_o\;

ww_Debug_Yupa(6) <= \Debug_Yupa[6]~output_o\;

ww_Debug_Yupa(5) <= \Debug_Yupa[5]~output_o\;

ww_Debug_Yupa(4) <= \Debug_Yupa[4]~output_o\;

ww_Debug_Yupa(3) <= \Debug_Yupa[3]~output_o\;

ww_Debug_Yupa(2) <= \Debug_Yupa[2]~output_o\;

ww_Debug_Yupa(1) <= \Debug_Yupa[1]~output_o\;

ww_Debug_Yupa(0) <= \Debug_Yupa[0]~output_o\;

ww_Edo_Pres(11) <= \Edo_Pres[11]~output_o\;

ww_Edo_Pres(10) <= \Edo_Pres[10]~output_o\;

ww_Edo_Pres(9) <= \Edo_Pres[9]~output_o\;

ww_Edo_Pres(8) <= \Edo_Pres[8]~output_o\;

ww_Edo_Pres(7) <= \Edo_Pres[7]~output_o\;

ww_Edo_Pres(6) <= \Edo_Pres[6]~output_o\;

ww_Edo_Pres(5) <= \Edo_Pres[5]~output_o\;

ww_Edo_Pres(4) <= \Edo_Pres[4]~output_o\;

ww_Edo_Pres(3) <= \Edo_Pres[3]~output_o\;

ww_Edo_Pres(2) <= \Edo_Pres[2]~output_o\;

ww_Edo_Pres(1) <= \Edo_Pres[1]~output_o\;

ww_Edo_Pres(0) <= \Edo_Pres[0]~output_o\;

ww_PC_D(15) <= \PC_D[15]~output_o\;

ww_PC_D(14) <= \PC_D[14]~output_o\;

ww_PC_D(13) <= \PC_D[13]~output_o\;

ww_PC_D(12) <= \PC_D[12]~output_o\;

ww_PC_D(11) <= \PC_D[11]~output_o\;

ww_PC_D(10) <= \PC_D[10]~output_o\;

ww_PC_D(9) <= \PC_D[9]~output_o\;

ww_PC_D(8) <= \PC_D[8]~output_o\;

ww_PC_D(7) <= \PC_D[7]~output_o\;

ww_PC_D(6) <= \PC_D[6]~output_o\;

ww_PC_D(5) <= \PC_D[5]~output_o\;

ww_PC_D(4) <= \PC_D[4]~output_o\;

ww_PC_D(3) <= \PC_D[3]~output_o\;

ww_PC_D(2) <= \PC_D[2]~output_o\;

ww_PC_D(1) <= \PC_D[1]~output_o\;

ww_PC_D(0) <= \PC_D[0]~output_o\;

ww_X_D(15) <= \X_D[15]~output_o\;

ww_X_D(14) <= \X_D[14]~output_o\;

ww_X_D(13) <= \X_D[13]~output_o\;

ww_X_D(12) <= \X_D[12]~output_o\;

ww_X_D(11) <= \X_D[11]~output_o\;

ww_X_D(10) <= \X_D[10]~output_o\;

ww_X_D(9) <= \X_D[9]~output_o\;

ww_X_D(8) <= \X_D[8]~output_o\;

ww_X_D(7) <= \X_D[7]~output_o\;

ww_X_D(6) <= \X_D[6]~output_o\;

ww_X_D(5) <= \X_D[5]~output_o\;

ww_X_D(4) <= \X_D[4]~output_o\;

ww_X_D(3) <= \X_D[3]~output_o\;

ww_X_D(2) <= \X_D[2]~output_o\;

ww_X_D(1) <= \X_D[1]~output_o\;

ww_X_D(0) <= \X_D[0]~output_o\;

ww_Y_D(15) <= \Y_D[15]~output_o\;

ww_Y_D(14) <= \Y_D[14]~output_o\;

ww_Y_D(13) <= \Y_D[13]~output_o\;

ww_Y_D(12) <= \Y_D[12]~output_o\;

ww_Y_D(11) <= \Y_D[11]~output_o\;

ww_Y_D(10) <= \Y_D[10]~output_o\;

ww_Y_D(9) <= \Y_D[9]~output_o\;

ww_Y_D(8) <= \Y_D[8]~output_o\;

ww_Y_D(7) <= \Y_D[7]~output_o\;

ww_Y_D(6) <= \Y_D[6]~output_o\;

ww_Y_D(5) <= \Y_D[5]~output_o\;

ww_Y_D(4) <= \Y_D[4]~output_o\;

ww_Y_D(3) <= \Y_D[3]~output_o\;

ww_Y_D(2) <= \Y_D[2]~output_o\;

ww_Y_D(1) <= \Y_D[1]~output_o\;

ww_Y_D(0) <= \Y_D[0]~output_o\;
END structure;


