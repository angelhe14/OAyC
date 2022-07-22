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

-- DATE "06/06/2022 18:50:39"

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
	IX : OUT std_logic_vector(15 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	X_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END m68hc11;

-- Design Ports Information
-- Z	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csnn	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[15]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[13]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[10]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[10]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[14]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[12]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[10]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[9]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[8]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[11]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[10]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[15]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[13]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[12]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[11]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[8]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_IX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_X_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|inst13|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|inst13|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \IX[15]~output_o\ : std_logic;
SIGNAL \IX[14]~output_o\ : std_logic;
SIGNAL \IX[13]~output_o\ : std_logic;
SIGNAL \IX[12]~output_o\ : std_logic;
SIGNAL \IX[11]~output_o\ : std_logic;
SIGNAL \IX[10]~output_o\ : std_logic;
SIGNAL \IX[9]~output_o\ : std_logic;
SIGNAL \IX[8]~output_o\ : std_logic;
SIGNAL \IX[7]~output_o\ : std_logic;
SIGNAL \IX[6]~output_o\ : std_logic;
SIGNAL \IX[5]~output_o\ : std_logic;
SIGNAL \IX[4]~output_o\ : std_logic;
SIGNAL \IX[3]~output_o\ : std_logic;
SIGNAL \IX[2]~output_o\ : std_logic;
SIGNAL \IX[1]~output_o\ : std_logic;
SIGNAL \IX[0]~output_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~4_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~4_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~5_combout\ : std_logic;
SIGNAL \inst14|inst9|data[9]~224_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal16~4_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal16~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal12~2_combout\ : std_logic;
SIGNAL \inst14|inst13|liga[0]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~4_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal13~2_combout\ : std_logic;
SIGNAL \inst14|inst13|liga[0]~10_combout\ : std_logic;
SIGNAL \inst14|inst13|liga[0]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~90_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~91_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal21~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data~42_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal21~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal25~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~210_combout\ : std_logic;
SIGNAL \inst14|inst13|liga[0]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal35~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal49~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal49~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal43~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal43~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal51~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal33~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[13]~86_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal35~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal29~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~52_combout\ : std_logic;
SIGNAL \inst14|inst13|PC[0]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal10~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal63~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal5~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~87_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal35~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal28~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~213_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal37~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~212_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~74_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal45~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data~59_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal46~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal8~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data~75_combout\ : std_logic;
SIGNAL \inst14|inst9|data~76_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~72_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal51~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal48~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal32~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal51~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal32~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[74]~70_combout\ : std_logic;
SIGNAL \inst14|inst9|data~71_combout\ : std_logic;
SIGNAL \inst14|inst9|data~73_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal61~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~214_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal60~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal59~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~77_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~78_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal62~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~82_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~81_combout\ : std_logic;
SIGNAL \inst14|inst9|data~83_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal26~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal26~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data~211_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal9~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal41~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal40~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal50~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data~79_combout\ : std_logic;
SIGNAL \inst14|inst9|data~80_combout\ : std_logic;
SIGNAL \inst14|inst9|data~84_combout\ : std_logic;
SIGNAL \inst14|inst9|data~85_combout\ : std_logic;
SIGNAL \inst14|inst9|data~88_combout\ : std_logic;
SIGNAL \inst14|inst9|data[92]~89_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~92_combout\ : std_logic;
SIGNAL \inst14|inst9|data[92]~119_combout\ : std_logic;
SIGNAL \inst14|inst9|data[92]~140_combout\ : std_logic;
SIGNAL \inst14|inst13|vf~q\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \inst3|XIRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|XIRQ_flag~q\ : std_logic;
SIGNAL \inst14|inst9|Equal57~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal22~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[13]~116_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal20~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~57_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~60_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal24~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~115_combout\ : std_logic;
SIGNAL \inst14|inst9|data~117_combout\ : std_logic;
SIGNAL \inst14|inst9|data[94]~118_combout\ : std_logic;
SIGNAL \inst14|inst9|data[93]~215_combout\ : std_logic;
SIGNAL \inst14|inst9|data[94]~120_combout\ : std_logic;
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \inst3|IRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|IRQ_flag~q\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[92]~216_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal5~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal54~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~93_combout\ : std_logic;
SIGNAL \inst14|inst9|data~136_combout\ : std_logic;
SIGNAL \inst14|inst9|data~95_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~100_combout\ : std_logic;
SIGNAL \inst14|inst9|data~137_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~138_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~139_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~5_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~105_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~106_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~107_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~56_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~61_combout\ : std_logic;
SIGNAL \inst14|inst9|data~58_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~62_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~101_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~102_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~51_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal7~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~50_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~103_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~104_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~108_combout\ : std_logic;
SIGNAL \inst14|inst13|B4~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~97_combout\ : std_logic;
SIGNAL \inst14|inst9|data~96_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~98_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~109_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~113_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~114_combout\ : std_logic;
SIGNAL \inst14|inst9|data~133_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal19~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~134_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~135_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~48_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~124_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~125_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal36~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal68~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal68~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal67~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~110_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal66~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~127_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~128_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal52~2_combout\ : std_logic;
SIGNAL \inst14|inst13|PC[0]~2_combout\ : std_logic;
SIGNAL \inst14|inst13|PC[0]~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~129_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal38~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[74]~53_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~54_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~55_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~64_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~63_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~65_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~131_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~132_combout\ : std_logic;
SIGNAL \PC|data_out~4_combout\ : std_logic;
SIGNAL \PC|Add0~0_combout\ : std_logic;
SIGNAL \PC|data_out[6]~0_combout\ : std_logic;
SIGNAL \PC|Equal7~0_combout\ : std_logic;
SIGNAL \PC|Add0~1\ : std_logic;
SIGNAL \PC|Add0~2_combout\ : std_logic;
SIGNAL \PC|Add0~3\ : std_logic;
SIGNAL \PC|Add0~4_combout\ : std_logic;
SIGNAL \PC|Add0~5\ : std_logic;
SIGNAL \PC|Add0~6_combout\ : std_logic;
SIGNAL \PC|Add0~7\ : std_logic;
SIGNAL \PC|Add0~8_combout\ : std_logic;
SIGNAL \PC|Add0~9\ : std_logic;
SIGNAL \PC|Add0~10_combout\ : std_logic;
SIGNAL \PC|Add0~11\ : std_logic;
SIGNAL \PC|Add0~12_combout\ : std_logic;
SIGNAL \PC|Add0~13\ : std_logic;
SIGNAL \PC|Add0~14_combout\ : std_logic;
SIGNAL \PC|data_out[8]~6_combout\ : std_logic;
SIGNAL \PC|Add0~15\ : std_logic;
SIGNAL \PC|Add0~17\ : std_logic;
SIGNAL \PC|Add0~19\ : std_logic;
SIGNAL \PC|Add0~20_combout\ : std_logic;
SIGNAL \PC|Add0~21\ : std_logic;
SIGNAL \PC|Add0~22_combout\ : std_logic;
SIGNAL \PC|Add0~23\ : std_logic;
SIGNAL \PC|Add0~25\ : std_logic;
SIGNAL \PC|Add0~27\ : std_logic;
SIGNAL \PC|Add0~28_combout\ : std_logic;
SIGNAL \PC|Add0~29\ : std_logic;
SIGNAL \PC|Add0~30_combout\ : std_logic;
SIGNAL \PC|R15~0_combout\ : std_logic;
SIGNAL \PC|data_out[8]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~225_combout\ : std_logic;
SIGNAL \inst14|inst9|data[36]~190_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC1~q\ : std_logic;
SIGNAL \PC|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~6_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~67_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~171_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal70~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~172_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~165_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~164_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~166_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal55~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~219_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~162_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~163_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~46_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~168_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~167_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~169_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~170_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~173_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~174_combout\ : std_logic;
SIGNAL \inst14|inst9|data~153_combout\ : std_logic;
SIGNAL \inst14|inst9|data~154_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~175_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~176_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~177_combout\ : std_logic;
SIGNAL \inst14|inst13|nWA~q\ : std_logic;
SIGNAL \ACCA|B[7]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[24]~183_combout\ : std_logic;
SIGNAL \inst14|inst13|BD~q\ : std_logic;
SIGNAL \inst14|inst9|data[75]~220_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal56~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[25]~182_combout\ : std_logic;
SIGNAL \inst14|inst13|nRW~q\ : std_logic;
SIGNAL \BusAlta|PortR~9_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~156_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~185_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~158_combout\ : std_logic;
SIGNAL \inst14|inst9|data[9]~184_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~186_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~187_combout\ : std_logic;
SIGNAL \inst14|inst13|nDUPA~q\ : std_logic;
SIGNAL \inst14|inst9|data[76]~178_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~180_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~181_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~148_combout\ : std_logic;
SIGNAL \inst14|inst9|data[74]~179_combout\ : std_logic;
SIGNAL \inst14|inst13|nWB~q\ : std_logic;
SIGNAL \ACCB|B[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~121_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~189_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA1~q\ : std_logic;
SIGNAL \inst14|inst13|PC[0]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~122_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~123_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~126_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~130_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~5_combout\ : std_logic;
SIGNAL \AUX|data_out~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nHB~q\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~9_combout\ : std_logic;
SIGNAL \ACCA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC0~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[35]~188_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC0~q\ : std_logic;
SIGNAL \PC|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~160_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~157_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~159_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~161_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA0~q\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~8_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~10_combout\ : std_logic;
SIGNAL \ACCB|C[7]~0_combout\ : std_logic;
SIGNAL \ACCB|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~8_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~4_combout\ : std_logic;
SIGNAL \BusAlta|PortR[7]~10_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~44_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~43_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~45_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~47_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~49_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~66_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~q\ : std_logic;
SIGNAL \inst6|MEM_WRITE~0_combout\ : std_logic;
SIGNAL \inst6|MEM_READ~0_combout\ : std_logic;
SIGNAL \inst6|data[7]~en_q\ : std_logic;
SIGNAL \ACCB|C[0]~7_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~7_combout\ : std_logic;
SIGNAL \AUX|C[3]~1_combout\ : std_logic;
SIGNAL \ACCB|C[3]~4_combout\ : std_logic;
SIGNAL \AUX|data_out~8_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \ACCA|C[6]~1_combout\ : std_logic;
SIGNAL \ACCA|data_out[6]~1_combout\ : std_logic;
SIGNAL \AUX|data_out~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~208_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~203_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~204_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~205_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~206_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~207_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~209_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~q\ : std_logic;
SIGNAL \inst14|inst13|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \ACCA|C[2]~5_combout\ : std_logic;
SIGNAL \ACCA|data_out[2]~5_combout\ : std_logic;
SIGNAL \AUX|C[2]~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~195_combout\ : std_logic;
SIGNAL \inst14|inst13|nDUPA~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~196_combout\ : std_logic;
SIGNAL \inst14|inst9|data[60]~197_combout\ : std_logic;
SIGNAL \inst14|inst9|data[57]~68_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC0~6_combout\ : std_logic;
SIGNAL \inst14|inst9|data[62]~193_combout\ : std_logic;
SIGNAL \inst14|inst9|data[61]~194_combout\ : std_logic;
SIGNAL \inst14|inst9|data[70]~198_combout\ : std_logic;
SIGNAL \inst14|inst13|selbus~q\ : std_logic;
SIGNAL \inst1|Mux40~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~5_combout\ : std_logic;
SIGNAL \ACCB|C[2]~5_combout\ : std_logic;
SIGNAL \inst1|Mux40~0_combout\ : std_logic;
SIGNAL \inst1|Mux40~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[57]~199_combout\ : std_logic;
SIGNAL \inst1|Q[7]~0_combout\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|Mux40~1_combout\ : std_logic;
SIGNAL \inst1|Mux38~0_combout\ : std_logic;
SIGNAL \inst1|Mux38~1_combout\ : std_logic;
SIGNAL \inst1|Add0~11_combout\ : std_logic;
SIGNAL \inst14|inst9|data[65]~191_combout\ : std_logic;
SIGNAL \inst14|inst9|data[65]~192_combout\ : std_logic;
SIGNAL \inst1|Mux27~0_combout\ : std_logic;
SIGNAL \inst1|Mux30~1_combout\ : std_logic;
SIGNAL \inst1|Mux30~2_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \ACCA|C[1]~6_combout\ : std_logic;
SIGNAL \ACCA|data_out[1]~6_combout\ : std_logic;
SIGNAL \inst1|Mux29~1_combout\ : std_logic;
SIGNAL \inst1|Mux29~2_combout\ : std_logic;
SIGNAL \inst1|Mux37~2_combout\ : std_logic;
SIGNAL \inst1|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|Mux9~3_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst1|Mux9~2_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \BusAlta|PortR~8_combout\ : std_logic;
SIGNAL \inst1|Mux36~7_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~7_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~8_combout\ : std_logic;
SIGNAL \ACCA|C[0]~7_combout\ : std_logic;
SIGNAL \inst1|Mux27~1_combout\ : std_logic;
SIGNAL \inst1|Mux27~2_combout\ : std_logic;
SIGNAL \inst1|Mux36~6_combout\ : std_logic;
SIGNAL \inst1|Mux10~3_combout\ : std_logic;
SIGNAL \inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst1|Add0~17_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst14|inst9|data[57]~200_combout\ : std_logic;
SIGNAL \inst14|inst13|selmux~q\ : std_logic;
SIGNAL \inst14|inst9|data[73]~221_combout\ : std_logic;
SIGNAL \inst14|inst13|ACCSEC~q\ : std_logic;
SIGNAL \inst14|inst9|data[9]~201_combout\ : std_logic;
SIGNAL \inst14|inst9|data[9]~202_combout\ : std_logic;
SIGNAL \inst14|inst13|CC~q\ : std_logic;
SIGNAL \inst5|inst13|output~3_combout\ : std_logic;
SIGNAL \inst1|Mux35~2_combout\ : std_logic;
SIGNAL \inst1|Mux43~0_combout\ : std_logic;
SIGNAL \inst1|Mux43~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \ACCB|data_out[6]~1_combout\ : std_logic;
SIGNAL \ACCB|C[6]~1_combout\ : std_logic;
SIGNAL \inst1|Mux34~0_combout\ : std_logic;
SIGNAL \inst1|Mux42~2_combout\ : std_logic;
SIGNAL \inst1|Mux42~3_combout\ : std_logic;
SIGNAL \inst1|Mux42~4_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~15_combout\ : std_logic;
SIGNAL \ACCB|C[5]~2_combout\ : std_logic;
SIGNAL \ACCB|data_out[5]~2_combout\ : std_logic;
SIGNAL \AUX|data_out~2_combout\ : std_logic;
SIGNAL \AUX|C[5]~0_combout\ : std_logic;
SIGNAL \inst1|Mux33~0_combout\ : std_logic;
SIGNAL \inst1|Mux41~0_combout\ : std_logic;
SIGNAL \inst1|Mux41~1_combout\ : std_logic;
SIGNAL \inst1|Mux41~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \ACCB|C[4]~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~17_combout\ : std_logic;
SIGNAL \BusAlta|PortR[4]~16_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~111_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~223_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC2~q\ : std_logic;
SIGNAL \PC|TRI_STATE_E~0_combout\ : std_logic;
SIGNAL \ENTRADA~1_combout\ : std_logic;
SIGNAL \ENTRADA~2_combout\ : std_logic;
SIGNAL \ENTRADA~3_combout\ : std_logic;
SIGNAL \ENTRADA~4_combout\ : std_logic;
SIGNAL \ENTRADA~5_combout\ : std_logic;
SIGNAL \ENTRADA~6_combout\ : std_logic;
SIGNAL \ENTRADA~7_combout\ : std_logic;
SIGNAL \BusAlta|PortR[1]~22_combout\ : std_logic;
SIGNAL \BusAlta|PortR[2]~20_combout\ : std_logic;
SIGNAL \BusAlta|PortR[3]~18_combout\ : std_logic;
SIGNAL \BusAlta|PortR[5]~14_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \BusAlta|PortR[5]~15_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \BusAlta|PortR[3]~19_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \BusAlta|PortR[2]~21_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \BusAlta|PortR[1]~23_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \BusAlta|PortR[4]~17_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~16_combout\ : std_logic;
SIGNAL \AUX|data_out~3_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~18_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~19_combout\ : std_logic;
SIGNAL \inst1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux32~0_combout\ : std_logic;
SIGNAL \inst1|Mux40~4_combout\ : std_logic;
SIGNAL \inst1|Mux40~5_combout\ : std_logic;
SIGNAL \inst1|Mux40~6_combout\ : std_logic;
SIGNAL \inst1|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \ACCA|data_out[3]~4_combout\ : std_logic;
SIGNAL \ACCA|C[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mux31~1_combout\ : std_logic;
SIGNAL \inst1|Mux31~2_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|Mux39~2_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Mux7~4_combout\ : std_logic;
SIGNAL \inst1|Mux7~5_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|Mux39~0_combout\ : std_logic;
SIGNAL \inst1|Mux39~1_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~22_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|Mux6~3_combout\ : std_logic;
SIGNAL \inst5|inst4|SALIDA~4_combout\ : std_logic;
SIGNAL \inst5|inst4|SALIDA~5_combout\ : std_logic;
SIGNAL \inst5|inst4|SALIDA~6_combout\ : std_logic;
SIGNAL \inst5|inst4|SALIDA~3_combout\ : std_logic;
SIGNAL \inst5|inst4|SALIDA~7_combout\ : std_logic;
SIGNAL \inst5|inst4|SALIDA~8_combout\ : std_logic;
SIGNAL \ACCA|data_out[4]~3_combout\ : std_logic;
SIGNAL \ACCA|C[4]~3_combout\ : std_logic;
SIGNAL \inst1|Mux32~1_combout\ : std_logic;
SIGNAL \inst1|Mux32~2_combout\ : std_logic;
SIGNAL \inst1|Add0~7_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|Mux5~3_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~14_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~12_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~13_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~15_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~16_combout\ : std_logic;
SIGNAL \inst14|inst13|CH~q\ : std_logic;
SIGNAL \inst5|inst5|valor_interno~q\ : std_logic;
SIGNAL \inst1|Yupa[5]~17_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~18_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~19_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~40_combout\ : std_logic;
SIGNAL \ACCA|data_out[5]~2_combout\ : std_logic;
SIGNAL \ACCA|C[5]~2_combout\ : std_logic;
SIGNAL \inst1|Mux33~1_combout\ : std_logic;
SIGNAL \inst1|Mux33~2_combout\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~3_combout\ : std_logic;
SIGNAL \inst1|Mux34~1_combout\ : std_logic;
SIGNAL \inst1|Mux34~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst14|inst13|B0~q\ : std_logic;
SIGNAL \inst5|inst13|output~2_combout\ : std_logic;
SIGNAL \inst5|inst|valor_interno~q\ : std_logic;
SIGNAL \inst1|Add0~19_combout\ : std_logic;
SIGNAL \inst1|Add0~21_cout\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Mux10~4_combout\ : std_logic;
SIGNAL \inst1|Mux36~2_combout\ : std_logic;
SIGNAL \inst1|Mux36~3_combout\ : std_logic;
SIGNAL \inst1|Mux36~4_combout\ : std_logic;
SIGNAL \inst1|Mux36~5_combout\ : std_logic;
SIGNAL \inst1|Add0~15_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Mux9~4_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~30_combout\ : std_logic;
SIGNAL \AUX|C[1]~3_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~28_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~29_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~31_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~30_combout\ : std_logic;
SIGNAL \inst14|inst13|CV~q\ : std_logic;
SIGNAL \inst14|inst9|data[14]~218_combout\ : std_logic;
SIGNAL \inst14|inst9|data[12]~222_combout\ : std_logic;
SIGNAL \inst14|inst13|B2~q\ : std_logic;
SIGNAL \inst5|inst9|output~0_combout\ : std_logic;
SIGNAL \inst5|inst1|valor_interno~q\ : std_logic;
SIGNAL \inst1|Yupa[1]~32_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~31_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~33_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~34_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~43_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~6_combout\ : std_logic;
SIGNAL \ACCB|C[1]~6_combout\ : std_logic;
SIGNAL \inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst1|Mux37~0_combout\ : std_logic;
SIGNAL \inst1|Mux37~1_combout\ : std_logic;
SIGNAL \inst1|Add0~13_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Mux38~2_combout\ : std_logic;
SIGNAL \inst1|Mux8~3_combout\ : std_logic;
SIGNAL \inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~2_combout\ : std_logic;
SIGNAL \inst1|Mux8~4_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~26_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~24_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~25_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~27_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~25_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~26_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~27_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~28_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~29_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~42_combout\ : std_logic;
SIGNAL \AUX|data_out~13_combout\ : std_logic;
SIGNAL \AUX|data_out~14_combout\ : std_logic;
SIGNAL \AUX|data_out~15_combout\ : std_logic;
SIGNAL \ENTRADA~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \BusAlta|PortR[6]~12_combout\ : std_logic;
SIGNAL \BusAlta|PortR[6]~13_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~8_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~9_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~7_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~10_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~11_combout\ : std_logic;
SIGNAL \inst5|inst6|SALIDA~3_combout\ : std_logic;
SIGNAL \inst5|inst6|SALIDA~4_combout\ : std_logic;
SIGNAL \inst5|inst6|SALIDA~5_combout\ : std_logic;
SIGNAL \inst5|inst6|SALIDA~6_combout\ : std_logic;
SIGNAL \inst5|inst6|SALIDA~7_combout\ : std_logic;
SIGNAL \inst5|inst6|SALIDA~8_combout\ : std_logic;
SIGNAL \AUX|data_out~9_combout\ : std_logic;
SIGNAL \AUX|data_out~10_combout\ : std_logic;
SIGNAL \AUX|data_out~11_combout\ : std_logic;
SIGNAL \AUX|data_out~12_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~20_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~21_combout\ : std_logic;
SIGNAL \inst14|inst13|CN~q\ : std_logic;
SIGNAL \inst14|inst13|PC[0]~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~149_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~150_combout\ : std_logic;
SIGNAL \inst14|inst13|B4~q\ : std_logic;
SIGNAL \inst14|inst9|data[13]~151_combout\ : std_logic;
SIGNAL \inst14|inst9|data[13]~152_combout\ : std_logic;
SIGNAL \inst14|inst13|B3~q\ : std_logic;
SIGNAL \inst5|inst11|output~0_combout\ : std_logic;
SIGNAL \inst5|inst11|output~1_combout\ : std_logic;
SIGNAL \inst5|inst3|valor_interno~q\ : std_logic;
SIGNAL \inst1|Yupa[3]~22_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~23_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~24_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~41_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~20_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~21_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~23_combout\ : std_logic;
SIGNAL \AUX|data_out~4_combout\ : std_logic;
SIGNAL \AUX|data_out~5_combout\ : std_logic;
SIGNAL \AUX|data_out~6_combout\ : std_logic;
SIGNAL \AUX|data_out~7_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~33_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~34_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~32_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~35_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~36_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~36_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~37_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~38_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~35_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~39_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~44_combout\ : std_logic;
SIGNAL \BusAlta|PortR[0]~24_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[0]~25_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \BusAlta|PortR[7]~11_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~5_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~6_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~3_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~7_combout\ : std_logic;
SIGNAL \inst5|inst7|SALIDA~11_combout\ : std_logic;
SIGNAL \ACCA|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCA|C[7]~0_combout\ : std_logic;
SIGNAL \inst1|Mux35~0_combout\ : std_logic;
SIGNAL \inst1|Mux35~1_combout\ : std_logic;
SIGNAL \inst1|Mux43~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~1_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~2_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~3_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~6_combout\ : std_logic;
SIGNAL \PC|data_out~7_combout\ : std_logic;
SIGNAL \PC|data_out~8_combout\ : std_logic;
SIGNAL \PC|data_out[8]~9_combout\ : std_logic;
SIGNAL \PC|data_out~10_combout\ : std_logic;
SIGNAL \PC|data_out~11_combout\ : std_logic;
SIGNAL \PC|Add0~26_combout\ : std_logic;
SIGNAL \PC|data_out~12_combout\ : std_logic;
SIGNAL \PC|data_out~13_combout\ : std_logic;
SIGNAL \PC|Add0~24_combout\ : std_logic;
SIGNAL \PC|data_out~14_combout\ : std_logic;
SIGNAL \PC|data_out~15_combout\ : std_logic;
SIGNAL \PC|data_out~16_combout\ : std_logic;
SIGNAL \PC|data_out~17_combout\ : std_logic;
SIGNAL \PC|data_out~18_combout\ : std_logic;
SIGNAL \PC|data_out~19_combout\ : std_logic;
SIGNAL \PC|Add0~18_combout\ : std_logic;
SIGNAL \PC|data_out~20_combout\ : std_logic;
SIGNAL \PC|data_out~21_combout\ : std_logic;
SIGNAL \PC|Add0~16_combout\ : std_logic;
SIGNAL \PC|data_out~22_combout\ : std_logic;
SIGNAL \PC|data_out~23_combout\ : std_logic;
SIGNAL \PC|data_out~24_combout\ : std_logic;
SIGNAL \PC|data_out~25_combout\ : std_logic;
SIGNAL \PC|data_out~26_combout\ : std_logic;
SIGNAL \PC|data_out~27_combout\ : std_logic;
SIGNAL \PC|data_out~28_combout\ : std_logic;
SIGNAL \PC|data_out~29_combout\ : std_logic;
SIGNAL \PC|data_out~30_combout\ : std_logic;
SIGNAL \PC|data_out~31_combout\ : std_logic;
SIGNAL \PC|data_out~32_combout\ : std_logic;
SIGNAL \PC|data_out~33_combout\ : std_logic;
SIGNAL \PC|data_out~34_combout\ : std_logic;
SIGNAL \PC|data_out~35_combout\ : std_logic;
SIGNAL \PC|data_out~36_combout\ : std_logic;
SIGNAL \PC|data_out~37_combout\ : std_logic;
SIGNAL \PC|data_out~38_combout\ : std_logic;
SIGNAL \PC|data_out~39_combout\ : std_logic;
SIGNAL \PC|data_out~40_combout\ : std_logic;
SIGNAL \PC|data_out~41_combout\ : std_logic;
SIGNAL \PC|data_out~42_combout\ : std_logic;
SIGNAL \PC|data_out~43_combout\ : std_logic;
SIGNAL \PC|data_out~44_combout\ : std_logic;
SIGNAL \PC|data_out~2_combout\ : std_logic;
SIGNAL \PC|data_out~3_combout\ : std_logic;
SIGNAL \PC|data_out~5_combout\ : std_logic;
SIGNAL \PC|R0~0_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst14|inst6|$00001|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst14|inst7~combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst14|inst13|nCRI~feeder_combout\ : std_logic;
SIGNAL \inst14|inst13|nCRI~q\ : std_logic;
SIGNAL \inst14|inst13|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal51~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal58~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~143_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~144_combout\ : std_logic;
SIGNAL \inst14|inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal16~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal15~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~94_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~99_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~112_combout\ : std_logic;
SIGNAL \inst14|inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst8|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal9~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[80]~145_combout\ : std_logic;
SIGNAL \inst14|inst9|data[80]~146_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal10~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal10~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[87]~141_combout\ : std_logic;
SIGNAL \inst14|inst9|data[87]~142_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ : std_logic;
SIGNAL \inst8|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst8|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal8~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[70]~69_combout\ : std_logic;
SIGNAL \inst14|inst9|data[80]~217_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal17~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[78]~147_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~155_combout\ : std_logic;
SIGNAL \inst14|inst13|CZ~feeder_combout\ : std_logic;
SIGNAL \inst14|inst13|CZ~q\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst5|inst10|output~3_combout\ : std_logic;
SIGNAL \inst5|inst10|output~4_combout\ : std_logic;
SIGNAL \inst5|inst10|output~5_combout\ : std_logic;
SIGNAL \inst5|inst10|output~6_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst10|output~7_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \AUX|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ACCA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|inst13|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst13|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst13|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|UPA\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_CC~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CH~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_EB\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_EA\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_CZ~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nAS~q\ : std_logic;
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CV~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CN~q\ : std_logic;

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
IX <= ww_IX;
PC_D <= ww_PC_D;
X_D <= ww_X_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \BusAlta|PortR[7]~11_combout\ & \BusAlta|PortR[6]~13_combout\ & \BusAlta|PortR[5]~15_combout\ & \BusAlta|PortR[4]~17_combout\ & 
\BusAlta|PortR[3]~19_combout\ & \BusAlta|PortR[2]~21_combout\ & \BusAlta|PortR[1]~23_combout\ & \BusAlta|PortR[0]~25_combout\);

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

\inst14|inst13|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|inst13|nCRI~q\);

\inst14|inst13|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|inst13|nCBD~q\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst14|inst13|ALT_INV_CC~q\ <= NOT \inst14|inst13|CC~q\;
\inst14|inst13|ALT_INV_CH~q\ <= NOT \inst14|inst13|CH~q\;
\inst14|inst13|ALT_INV_nDUPA~q\ <= NOT \inst14|inst13|nDUPA~q\;
\inst14|inst13|ALT_INV_EB\(0) <= NOT \inst14|inst13|EB\(0);
\inst14|inst13|ALT_INV_EA\(0) <= NOT \inst14|inst13|EA\(0);
\inst14|inst13|ALT_INV_CZ~q\ <= NOT \inst14|inst13|CZ~q\;
\inst14|inst13|ALT_INV_nAS~q\ <= NOT \inst14|inst13|nAS~q\;
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\ <= NOT \inst14|inst13|nCBD~clkctrl_outclk\;
\inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\ <= NOT \inst14|inst13|nCRI~clkctrl_outclk\;
\inst14|inst13|ALT_INV_CV~q\ <= NOT \inst14|inst13|CV~q\;
\inst14|inst13|ALT_INV_CN~q\ <= NOT \inst14|inst13|CN~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X36_Y0_N23
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

-- Location: IOOBUF_X0_Y10_N23
\csnn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst13|ALT_INV_nAS~q\,
	devoe => ww_devoe,
	o => \csnn~output_o\);

-- Location: IOOBUF_X40_Y34_N9
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

-- Location: IOOBUF_X45_Y34_N9
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

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X47_Y34_N23
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X43_Y34_N23
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

-- Location: IOOBUF_X16_Y34_N9
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X53_Y24_N23
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

-- Location: IOOBUF_X53_Y11_N2
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

-- Location: IOOBUF_X43_Y34_N16
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

-- Location: IOOBUF_X53_Y15_N9
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

-- Location: IOOBUF_X53_Y22_N2
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

-- Location: IOOBUF_X53_Y9_N9
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X5_Y0_N2
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

-- Location: IOOBUF_X53_Y10_N16
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X43_Y0_N16
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

-- Location: IOOBUF_X1_Y34_N2
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X51_Y34_N2
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

-- Location: IOOBUF_X53_Y6_N16
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X20_Y34_N16
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

-- Location: IOOBUF_X53_Y22_N9
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X20_Y34_N23
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

-- Location: IOOBUF_X20_Y34_N9
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

-- Location: IOOBUF_X0_Y11_N2
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X14_Y34_N23
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X43_Y0_N23
\Debug_Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(7),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X38_Y34_N2
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

-- Location: IOOBUF_X36_Y0_N16
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X31_Y34_N9
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

-- Location: IOOBUF_X53_Y20_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X53_Y11_N9
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

-- Location: IOOBUF_X45_Y34_N2
\Debug_Yupa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Edo_Pres[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\Edo_Pres[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Edo_Pres[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\Edo_Pres[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Edo_Pres[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Edo_Pres[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Edo_Pres[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\Edo_Pres[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\Edo_Pres[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Edo_Pres[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Edo_Pres[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Edo_Pres[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\IX[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[15]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\IX[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\IX[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\IX[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[12]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\IX[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\IX[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[10]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\IX[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\IX[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\IX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\IX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\IX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\IX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\IX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \IX[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\IX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[2]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\IX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[1]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\IX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[0]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
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

-- Location: IOOBUF_X23_Y34_N23
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

-- Location: IOOBUF_X53_Y20_N16
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X53_Y21_N23
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

-- Location: IOOBUF_X49_Y34_N9
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

-- Location: IOOBUF_X34_Y34_N16
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

-- Location: IOOBUF_X14_Y34_N16
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

-- Location: IOOBUF_X16_Y34_N16
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

-- Location: IOOBUF_X11_Y34_N2
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

-- Location: IOOBUF_X16_Y34_N2
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X7_Y34_N16
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X51_Y34_N9
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

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X53_Y9_N16
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X53_Y12_N2
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

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X9_Y34_N9
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: LCCOMB_X26_Y17_N28
\inst14|inst4|valor_interno[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[0]~33_combout\ = !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst4|valor_interno[0]~33_combout\);

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

-- Location: FF_X26_Y17_N29
\inst14|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(0));

-- Location: LCCOMB_X30_Y15_N6
\inst14|inst4|valor_interno[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[1]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ $ (VCC))) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & VCC))
-- \inst14|inst4|valor_interno[1]~12\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => VCC,
	combout => \inst14|inst4|valor_interno[1]~11_combout\,
	cout => \inst14|inst4|valor_interno[1]~12\);

-- Location: LCCOMB_X30_Y15_N8
\inst14|inst4|valor_interno[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[2]~13_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst4|valor_interno[1]~12\)) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & 
-- ((\inst14|inst4|valor_interno[1]~12\) # (GND)))
-- \inst14|inst4|valor_interno[2]~14\ = CARRY((!\inst14|inst4|valor_interno[1]~12\) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[1]~12\,
	combout => \inst14|inst4|valor_interno[2]~13_combout\,
	cout => \inst14|inst4|valor_interno[2]~14\);

-- Location: LCCOMB_X30_Y15_N10
\inst14|inst4|valor_interno[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[3]~15_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (\inst14|inst4|valor_interno[2]~14\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & 
-- (!\inst14|inst4|valor_interno[2]~14\ & VCC))
-- \inst14|inst4|valor_interno[3]~16\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & !\inst14|inst4|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[2]~14\,
	combout => \inst14|inst4|valor_interno[3]~15_combout\,
	cout => \inst14|inst4|valor_interno[3]~16\);

-- Location: FF_X30_Y15_N11
\inst14|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(3));

-- Location: LCCOMB_X27_Y15_N20
\inst14|inst9|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst9|Equal2~3_combout\);

-- Location: LCCOMB_X28_Y15_N0
\inst14|inst9|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	combout => \inst14|inst9|Equal6~2_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst14|inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & 
-- \inst14|inst9|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst14|inst9|Equal6~2_combout\,
	combout => \inst14|inst9|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst14|inst9|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~4_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & (\inst14|inst9|Equal2~3_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & \inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datab => \inst14|inst9|Equal2~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal0~0_combout\,
	combout => \inst14|inst9|Equal2~4_combout\);

-- Location: LCCOMB_X27_Y17_N28
\inst14|inst9|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	combout => \inst14|inst9|Equal3~2_combout\);

-- Location: LCCOMB_X27_Y17_N8
\inst14|inst9|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst14|inst9|Equal3~3_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst14|inst9|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~4_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \inst14|inst9|Equal3~4_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst14|inst9|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~5_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst9|Equal3~2_combout\ & (\inst14|inst9|Equal3~3_combout\ & \inst14|inst9|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	datac => \inst14|inst9|Equal3~3_combout\,
	datad => \inst14|inst9|Equal3~4_combout\,
	combout => \inst14|inst9|Equal3~5_combout\);

-- Location: LCCOMB_X26_Y17_N12
\inst14|inst9|data[9]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[9]~224_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & ((!\inst14|inst9|Equal10~3_combout\))) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst9|Equal3~5_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~5_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst9|data[9]~224_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst14|inst9|Equal16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal16~4_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|Equal16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal16~3_combout\,
	combout => \inst14|inst9|Equal16~4_combout\);

-- Location: LCCOMB_X27_Y17_N2
\inst14|inst9|Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal16~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	combout => \inst14|inst9|Equal16~2_combout\);

-- Location: LCCOMB_X27_Y17_N24
\inst14|inst9|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (\inst14|inst9|Equal3~3_combout\ & (\inst14|inst9|Equal3~2_combout\ & \inst14|inst9|Equal16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datab => \inst14|inst9|Equal3~3_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal16~2_combout\,
	combout => \inst14|inst9|Equal18~2_combout\);

-- Location: LCCOMB_X27_Y17_N12
\inst14|inst9|Equal18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|Equal18~3_combout\);

-- Location: LCCOMB_X27_Y15_N2
\inst14|inst9|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst9|Equal12~2_combout\);

-- Location: LCCOMB_X26_Y17_N14
\inst14|inst13|liga[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|liga[0]~12_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ $ (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)) # (!\inst14|inst9|Equal16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst9|Equal16~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst13|liga[0]~12_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst14|inst9|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	combout => \inst14|inst9|Equal14~0_combout\);

-- Location: LCCOMB_X28_Y15_N10
\inst14|inst9|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~4_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & \inst14|inst9|Equal6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datad => \inst14|inst9|Equal6~2_combout\,
	combout => \inst14|inst9|Equal6~4_combout\);

-- Location: LCCOMB_X26_Y17_N8
\inst14|inst9|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst9|Equal14~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & \inst14|inst9|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \inst14|inst9|Equal14~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst9|Equal6~4_combout\,
	combout => \inst14|inst9|Equal14~1_combout\);

-- Location: LCCOMB_X27_Y15_N22
\inst14|inst9|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal13~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst9|Equal13~2_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst14|inst13|liga[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|liga[0]~10_combout\ = (!\inst14|inst9|Equal15~2_combout\ & (!\inst14|inst9|Equal13~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\) # (!\inst14|inst9|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~2_combout\,
	datab => \inst14|inst9|Equal14~1_combout\,
	datac => \inst14|inst9|Equal13~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst14|inst13|liga[0]~10_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst14|inst13|liga[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|liga[0]~13_combout\ = (\inst14|inst13|liga[0]~10_combout\ & (\inst14|inst9|data[70]~69_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # (!\inst14|inst9|Equal10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst9|Equal10~3_combout\,
	datac => \inst14|inst13|liga[0]~10_combout\,
	datad => \inst14|inst9|data[70]~69_combout\,
	combout => \inst14|inst13|liga[0]~13_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst14|inst9|data[91]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~90_combout\ = (!\inst14|inst9|Equal12~2_combout\ & (\inst14|inst13|liga[0]~13_combout\ & ((\inst14|inst9|Equal18~3_combout\) # (!\inst14|inst13|liga[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~3_combout\,
	datab => \inst14|inst9|Equal12~2_combout\,
	datac => \inst14|inst13|liga[0]~12_combout\,
	datad => \inst14|inst13|liga[0]~13_combout\,
	combout => \inst14|inst9|data[91]~90_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst14|inst9|data[91]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~91_combout\ = (\inst14|inst9|data[9]~224_combout\ & ((!\inst14|inst9|data[91]~90_combout\) # (!\inst14|inst9|Equal16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[9]~224_combout\,
	datab => \inst14|inst9|Equal16~4_combout\,
	datad => \inst14|inst9|data[91]~90_combout\,
	combout => \inst14|inst9|data[91]~91_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst14|inst9|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal21~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \inst14|inst9|Equal21~0_combout\);

-- Location: LCCOMB_X29_Y16_N12
\inst14|inst9|data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~42_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & 
-- \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	combout => \inst14|inst9|data~42_combout\);

-- Location: LCCOMB_X29_Y16_N20
\inst14|inst9|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal21~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst9|Equal21~0_combout\ & \inst14|inst9|data~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datac => \inst14|inst9|Equal21~0_combout\,
	datad => \inst14|inst9|data~42_combout\,
	combout => \inst14|inst9|Equal21~1_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst14|inst9|Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal25~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\) # ((!\inst14|inst9|Equal21~1_combout\) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst9|Equal21~1_combout\,
	combout => \inst14|inst9|Equal25~2_combout\);

-- Location: LCCOMB_X26_Y15_N24
\inst14|inst9|data~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~210_combout\ = (\inst14|inst9|Equal25~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # ((!\inst14|inst9|Equal18~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal25~2_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|data~210_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst14|inst13|liga[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|liga[0]~11_combout\ = (!\inst14|inst9|Equal18~3_combout\ & (!\inst14|inst9|Equal12~2_combout\ & (\inst14|inst13|liga[0]~12_combout\ & \inst14|inst13|liga[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~3_combout\,
	datab => \inst14|inst9|Equal12~2_combout\,
	datac => \inst14|inst13|liga[0]~12_combout\,
	datad => \inst14|inst13|liga[0]~13_combout\,
	combout => \inst14|inst13|liga[0]~11_combout\);

-- Location: LCCOMB_X28_Y16_N12
\inst14|inst9|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal35~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & 
-- \inst14|inst9|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datad => \inst14|inst9|Equal6~2_combout\,
	combout => \inst14|inst9|Equal35~0_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst14|inst9|Equal49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal49~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & \inst14|inst9|Equal35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst9|Equal35~0_combout\,
	combout => \inst14|inst9|Equal49~2_combout\);

-- Location: LCCOMB_X28_Y16_N18
\inst14|inst9|Equal49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal49~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst14|inst9|Equal49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal49~2_combout\,
	combout => \inst14|inst9|Equal49~3_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst14|inst9|Equal43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal43~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	combout => \inst14|inst9|Equal43~0_combout\);

-- Location: LCCOMB_X27_Y15_N0
\inst14|inst9|Equal43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal43~1_combout\ = (\inst14|inst9|Equal43~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (\inst14|inst9|Equal6~2_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal43~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \inst14|inst9|Equal6~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	combout => \inst14|inst9|Equal43~1_combout\);

-- Location: LCCOMB_X27_Y16_N8
\inst14|inst9|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	combout => \inst14|inst9|Equal27~0_combout\);

-- Location: LCCOMB_X27_Y16_N28
\inst14|inst9|Equal51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal51~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	combout => \inst14|inst9|Equal51~0_combout\);

-- Location: LCCOMB_X27_Y16_N12
\inst14|inst9|Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (\inst14|inst9|Equal27~0_combout\ & \inst14|inst9|Equal51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst9|Equal51~0_combout\,
	combout => \inst14|inst9|Equal27~1_combout\);

-- Location: LCCOMB_X27_Y16_N16
\inst14|inst9|Equal33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal33~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- \inst14|inst9|Equal27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal27~1_combout\,
	combout => \inst14|inst9|Equal33~2_combout\);

-- Location: LCCOMB_X27_Y18_N4
\inst14|inst9|data[13]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[13]~86_combout\ = (!\inst14|inst9|Equal33~2_combout\ & ((!\inst14|inst9|Equal43~1_combout\) # (!\inst14|inst9|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~3_combout\,
	datac => \inst14|inst9|Equal43~1_combout\,
	datad => \inst14|inst9|Equal33~2_combout\,
	combout => \inst14|inst9|data[13]~86_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst14|inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y16_N4
\inst14|inst9|Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal35~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & \inst14|inst9|Equal35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst9|Equal35~0_combout\,
	combout => \inst14|inst9|Equal35~2_combout\);

-- Location: LCCOMB_X28_Y16_N6
\inst14|inst9|Equal29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal29~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- \inst14|inst9|Equal27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal27~1_combout\,
	combout => \inst14|inst9|Equal29~2_combout\);

-- Location: LCCOMB_X28_Y16_N2
\inst14|inst9|data[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~52_combout\ = (!\inst14|inst9|Equal29~2_combout\ & (((!\inst14|inst9|Equal35~2_combout\) # (!\inst14|inst9|Equal0~1_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst9|Equal35~2_combout\,
	datad => \inst14|inst9|Equal29~2_combout\,
	combout => \inst14|inst9|data[14]~52_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst14|inst13|PC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|PC[0]~0_combout\ = (!\inst14|inst9|Equal49~3_combout\ & (\inst14|inst9|data[13]~86_combout\ & \inst14|inst9|data[14]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal49~3_combout\,
	datac => \inst14|inst9|data[13]~86_combout\,
	datad => \inst14|inst9|data[14]~52_combout\,
	combout => \inst14|inst13|PC[0]~0_combout\);

-- Location: LCCOMB_X28_Y15_N28
\inst14|inst9|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal10~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & 
-- \inst14|inst9|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datad => \inst14|inst9|Equal6~2_combout\,
	combout => \inst14|inst9|Equal10~2_combout\);

-- Location: LCCOMB_X25_Y15_N12
\inst14|inst9|Equal63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal63~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal63~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst14|inst9|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal5~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal5~2_combout\);

-- Location: LCCOMB_X25_Y15_N22
\inst14|inst9|data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~87_combout\ = ((!\inst14|inst9|Equal63~0_combout\ & ((!\inst14|inst9|Equal51~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\)))) # (!\inst14|inst9|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal63~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal5~2_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|data~87_combout\);

-- Location: LCCOMB_X28_Y16_N26
\inst14|inst9|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal35~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & 
-- \inst14|inst9|Equal35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst9|Equal35~0_combout\,
	combout => \inst14|inst9|Equal35~1_combout\);

-- Location: LCCOMB_X27_Y16_N14
\inst14|inst9|Equal28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal28~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- \inst14|inst9|Equal27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal27~1_combout\,
	combout => \inst14|inst9|Equal28~2_combout\);

-- Location: LCCOMB_X28_Y16_N10
\inst14|inst9|data[60]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~213_combout\ = (!\inst14|inst9|Equal28~2_combout\ & (((!\inst14|inst9|Equal35~1_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal35~1_combout\,
	datad => \inst14|inst9|Equal28~2_combout\,
	combout => \inst14|inst9|data[60]~213_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst14|inst9|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y16_N30
\inst14|inst9|Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal37~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & (\inst14|inst9|Equal2~3_combout\ & \inst14|inst9|Equal35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal35~0_combout\,
	combout => \inst14|inst9|Equal37~0_combout\);

-- Location: LCCOMB_X28_Y16_N16
\inst14|inst9|data[71]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~212_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\) # ((!\inst14|inst9|Equal35~1_combout\ & !\inst14|inst9|Equal27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal35~1_combout\,
	datad => \inst14|inst9|Equal27~1_combout\,
	combout => \inst14|inst9|data[71]~212_combout\);

-- Location: LCCOMB_X28_Y16_N0
\inst14|inst9|data[71]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~74_combout\ = (!\inst14|inst9|Equal37~0_combout\ & (\inst14|inst9|data[71]~212_combout\ & ((!\inst14|inst9|Equal1~0_combout\) # (!\inst14|inst9|Equal35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal35~1_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal37~0_combout\,
	datad => \inst14|inst9|data[71]~212_combout\,
	combout => \inst14|inst9|data[71]~74_combout\);

-- Location: LCCOMB_X27_Y15_N6
\inst14|inst9|Equal45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal45~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & 
-- \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal45~0_combout\);

-- Location: LCCOMB_X27_Y15_N30
\inst14|inst9|data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~59_combout\ = ((!\inst14|inst9|Equal45~0_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\) # (!\inst14|inst9|Equal43~1_combout\)))) # (!\inst14|inst9|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~1_combout\,
	datab => \inst14|inst9|Equal43~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst9|Equal45~0_combout\,
	combout => \inst14|inst9|data~59_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst14|inst9|Equal46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal46~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal45~0_combout\,
	combout => \inst14|inst9|Equal46~2_combout\);

-- Location: LCCOMB_X26_Y15_N18
\inst14|inst9|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal8~3_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal8~3_combout\);

-- Location: LCCOMB_X27_Y15_N16
\inst14|inst9|data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~75_combout\ = (!\inst14|inst9|Equal46~2_combout\ & (((!\inst14|inst9|Equal8~3_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst14|inst9|Equal46~2_combout\,
	datad => \inst14|inst9|Equal8~3_combout\,
	combout => \inst14|inst9|data~75_combout\);

-- Location: LCCOMB_X28_Y16_N14
\inst14|inst9|data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~76_combout\ = (\inst14|inst9|data[60]~213_combout\ & (\inst14|inst9|data[71]~74_combout\ & (\inst14|inst9|data~59_combout\ & \inst14|inst9|data~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~213_combout\,
	datab => \inst14|inst9|data[71]~74_combout\,
	datac => \inst14|inst9|data~59_combout\,
	datad => \inst14|inst9|data~75_combout\,
	combout => \inst14|inst9|data~76_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst14|inst9|data[44]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~72_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\) # (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\))) # (!\inst14|inst9|Equal51~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal51~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|data[44]~72_combout\);

-- Location: LCCOMB_X27_Y16_N30
\inst14|inst9|Equal51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal51~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & \inst14|inst9|Equal51~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|Equal51~3_combout\);

-- Location: LCCOMB_X27_Y15_N10
\inst14|inst9|Equal48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal48~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal45~0_combout\,
	combout => \inst14|inst9|Equal48~2_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst14|inst9|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal32~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst14|inst9|Equal32~0_combout\);

-- Location: LCCOMB_X27_Y16_N18
\inst14|inst9|Equal51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal51~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & \inst14|inst9|Equal51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datad => \inst14|inst9|Equal51~0_combout\,
	combout => \inst14|inst9|Equal51~1_combout\);

-- Location: LCCOMB_X27_Y16_N22
\inst14|inst9|Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal32~1_combout\ = (\inst14|inst9|Equal27~0_combout\ & (\inst14|inst9|Equal32~0_combout\ & \inst14|inst9|Equal51~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal27~0_combout\,
	datac => \inst14|inst9|Equal32~0_combout\,
	datad => \inst14|inst9|Equal51~1_combout\,
	combout => \inst14|inst9|Equal32~1_combout\);

-- Location: LCCOMB_X27_Y16_N2
\inst14|inst9|data[74]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[74]~70_combout\ = (!\inst14|inst9|Equal32~1_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\) # (!\inst14|inst9|Equal43~1_combout\)) # (!\inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal32~1_combout\,
	datad => \inst14|inst9|Equal43~1_combout\,
	combout => \inst14|inst9|data[74]~70_combout\);

-- Location: LCCOMB_X27_Y18_N22
\inst14|inst9|data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~71_combout\ = (!\inst14|inst9|Equal48~2_combout\ & (\inst14|inst9|data[74]~70_combout\ & ((!\inst14|inst9|Equal0~1_combout\) # (!\inst14|inst9|Equal51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal51~3_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst9|Equal48~2_combout\,
	datad => \inst14|inst9|data[74]~70_combout\,
	combout => \inst14|inst9|data~71_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst14|inst9|data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~73_combout\ = (\inst14|inst9|data[44]~72_combout\ & (\inst14|inst9|data~71_combout\ & ((!\inst14|inst9|Equal51~3_combout\) # (!\inst14|inst9|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|data[44]~72_combout\,
	datac => \inst14|inst9|data~71_combout\,
	datad => \inst14|inst9|Equal51~3_combout\,
	combout => \inst14|inst9|data~73_combout\);

-- Location: LCCOMB_X25_Y15_N10
\inst14|inst9|Equal61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal61~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst14|inst9|Equal2~3_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst9|Equal2~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal61~0_combout\);

-- Location: LCCOMB_X25_Y15_N8
\inst14|inst9|data[75]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~214_combout\ = (!\inst14|inst9|Equal61~0_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\) # (!\inst14|inst9|Equal63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal61~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal63~0_combout\,
	combout => \inst14|inst9|data[75]~214_combout\);

-- Location: LCCOMB_X25_Y15_N20
\inst14|inst9|Equal60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal60~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst9|Equal32~0_combout\ & \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal32~0_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal60~0_combout\);

-- Location: LCCOMB_X25_Y15_N26
\inst14|inst9|Equal59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal59~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst14|inst9|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal6~3_combout\,
	combout => \inst14|inst9|Equal59~2_combout\);

-- Location: LCCOMB_X25_Y15_N30
\inst14|inst9|data[90]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~77_combout\ = (!\inst14|inst9|Equal60~0_combout\ & (!\inst14|inst9|Equal59~2_combout\ & ((!\inst14|inst9|Equal63~0_combout\) # (!\inst14|inst9|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal60~0_combout\,
	datac => \inst14|inst9|Equal59~2_combout\,
	datad => \inst14|inst9|Equal63~0_combout\,
	combout => \inst14|inst9|data[90]~77_combout\);

-- Location: LCCOMB_X25_Y15_N4
\inst14|inst9|data[90]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~78_combout\ = (\inst14|inst9|data[75]~214_combout\ & (\inst14|inst9|data[90]~77_combout\ & !\inst14|inst9|Equal58~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[75]~214_combout\,
	datac => \inst14|inst9|data[90]~77_combout\,
	datad => \inst14|inst9|Equal58~2_combout\,
	combout => \inst14|inst9|data[90]~78_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst14|inst9|Equal62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal62~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst14|inst9|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal6~3_combout\,
	combout => \inst14|inst9|Equal62~2_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst14|inst9|data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~82_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|data~82_combout\);

-- Location: LCCOMB_X28_Y15_N14
\inst14|inst9|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst14|inst9|Equal2~2_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst14|inst9|data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~81_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & \inst14|inst9|data~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datad => \inst14|inst9|data~42_combout\,
	combout => \inst14|inst9|data~81_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst14|inst9|data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~83_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (\inst14|inst9|data~82_combout\ & (\inst14|inst9|Equal2~2_combout\ & \inst14|inst9|data~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datab => \inst14|inst9|data~82_combout\,
	datac => \inst14|inst9|Equal2~2_combout\,
	datad => \inst14|inst9|data~81_combout\,
	combout => \inst14|inst9|data~83_combout\);

-- Location: LCCOMB_X27_Y16_N26
\inst14|inst9|Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal26~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal26~0_combout\);

-- Location: LCCOMB_X27_Y16_N24
\inst14|inst9|Equal26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal26~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst9|Equal26~0_combout\ & (\inst14|inst9|data~42_combout\ & \inst14|inst9|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|data~42_combout\,
	datad => \inst14|inst9|Equal21~0_combout\,
	combout => \inst14|inst9|Equal26~1_combout\);

-- Location: LCCOMB_X27_Y16_N6
\inst14|inst9|data~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~211_combout\ = (!\inst14|inst9|Equal26~1_combout\ & (((!\inst14|inst9|Equal27~1_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|Equal26~1_combout\,
	combout => \inst14|inst9|data~211_combout\);

-- Location: LCCOMB_X26_Y15_N12
\inst14|inst9|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal9~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal9~2_combout\);

-- Location: LCCOMB_X27_Y15_N14
\inst14|inst9|Equal41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal41~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & \inst14|inst9|Equal43~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst9|Equal43~1_combout\,
	combout => \inst14|inst9|Equal41~0_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst14|inst9|Equal40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal40~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & (\inst14|inst9|Equal26~0_combout\ & \inst14|inst9|Equal35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datac => \inst14|inst9|Equal26~0_combout\,
	datad => \inst14|inst9|Equal35~0_combout\,
	combout => \inst14|inst9|Equal40~0_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst14|inst9|Equal50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal50~0_combout\ = (\inst14|inst9|Equal32~0_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & \inst14|inst9|Equal35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal32~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => \inst14|inst9|Equal35~0_combout\,
	combout => \inst14|inst9|Equal50~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\inst14|inst9|data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~79_combout\ = (!\inst14|inst9|Equal50~0_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\) # (!\inst14|inst9|Equal51~2_combout\)) # (!\inst14|inst9|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~2_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal50~0_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|data~79_combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst14|inst9|data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~80_combout\ = (!\inst14|inst9|Equal40~0_combout\ & (\inst14|inst9|data~79_combout\ & ((!\inst14|inst9|Equal41~0_combout\) # (!\inst14|inst9|Equal9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~2_combout\,
	datab => \inst14|inst9|Equal41~0_combout\,
	datac => \inst14|inst9|Equal40~0_combout\,
	datad => \inst14|inst9|data~79_combout\,
	combout => \inst14|inst9|data~80_combout\);

-- Location: LCCOMB_X27_Y18_N16
\inst14|inst9|data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~84_combout\ = (!\inst14|inst9|Equal62~2_combout\ & (\inst14|inst9|data~83_combout\ & (\inst14|inst9|data~211_combout\ & \inst14|inst9|data~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal62~2_combout\,
	datab => \inst14|inst9|data~83_combout\,
	datac => \inst14|inst9|data~211_combout\,
	datad => \inst14|inst9|data~80_combout\,
	combout => \inst14|inst9|data~84_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst14|inst9|data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~85_combout\ = (\inst14|inst9|data~76_combout\ & (\inst14|inst9|data~73_combout\ & (\inst14|inst9|data[90]~78_combout\ & \inst14|inst9|data~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~76_combout\,
	datab => \inst14|inst9|data~73_combout\,
	datac => \inst14|inst9|data[90]~78_combout\,
	datad => \inst14|inst9|data~84_combout\,
	combout => \inst14|inst9|data~85_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst14|inst9|data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~88_combout\ = ((\inst14|inst9|data~85_combout\) # (!\inst14|inst9|data~87_combout\)) # (!\inst14|inst13|PC[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC[0]~0_combout\,
	datac => \inst14|inst9|data~87_combout\,
	datad => \inst14|inst9|data~85_combout\,
	combout => \inst14|inst9|data~88_combout\);

-- Location: LCCOMB_X26_Y19_N18
\inst14|inst9|data[92]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[92]~89_combout\ = (\inst14|inst13|liga[0]~11_combout\ & ((\inst14|inst9|data~88_combout\) # (!\inst14|inst9|data~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~210_combout\,
	datac => \inst14|inst13|liga[0]~11_combout\,
	datad => \inst14|inst9|data~88_combout\,
	combout => \inst14|inst9|data[92]~89_combout\);

-- Location: LCCOMB_X26_Y19_N16
\inst14|inst9|data[91]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~92_combout\ = (\inst14|inst9|Equal2~4_combout\) # ((\inst14|inst9|data[92]~89_combout\) # (!\inst14|inst9|data[91]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~4_combout\,
	datac => \inst14|inst9|data[91]~91_combout\,
	datad => \inst14|inst9|data[92]~89_combout\,
	combout => \inst14|inst9|data[91]~92_combout\);

-- Location: FF_X26_Y19_N17
\inst14|inst13|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[91]~92_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(1));

-- Location: LCCOMB_X25_Y17_N22
\inst14|inst9|data[92]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[92]~119_combout\ = (!\inst14|inst9|Equal16~4_combout\ & (\inst14|inst9|data[9]~224_combout\ & ((\inst14|inst9|Equal17~2_combout\) # (!\inst14|inst9|data[91]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal16~4_combout\,
	datab => \inst14|inst9|data[9]~224_combout\,
	datac => \inst14|inst9|Equal17~2_combout\,
	datad => \inst14|inst9|data[91]~90_combout\,
	combout => \inst14|inst9|data[92]~119_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst14|inst9|data[92]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[92]~140_combout\ = (\inst14|inst9|Equal9~3_combout\) # ((\inst14|inst9|data[92]~89_combout\) # (!\inst14|inst9|data[92]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal9~3_combout\,
	datac => \inst14|inst9|data[92]~119_combout\,
	datad => \inst14|inst9|data[92]~89_combout\,
	combout => \inst14|inst9|data[92]~140_combout\);

-- Location: FF_X26_Y19_N27
\inst14|inst13|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[92]~140_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|vf~q\);

-- Location: IOIBUF_X18_Y0_N8
\XIRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

-- Location: LCCOMB_X25_Y18_N4
\inst3|XIRQ_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|XIRQ_flag~0_combout\ = (\inst3|XIRQ_flag~q\) # (!\XIRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|XIRQ_flag~q\,
	datad => \XIRQn~input_o\,
	combout => \inst3|XIRQ_flag~0_combout\);

-- Location: FF_X25_Y18_N5
\inst3|XIRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|XIRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|XIRQ_flag~q\);

-- Location: LCCOMB_X27_Y17_N18
\inst14|inst9|Equal57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal57~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst9|Equal51~2_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal51~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal57~2_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst14|inst9|Equal22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal22~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst9|Equal21~1_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal21~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst9|Equal22~2_combout\);

-- Location: LCCOMB_X27_Y17_N4
\inst14|inst9|data[13]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[13]~116_combout\ = (\inst14|inst9|data[74]~70_combout\ & (\inst14|inst9|Equal57~2_combout\ & (!\inst14|inst9|Equal48~2_combout\ & !\inst14|inst9|Equal22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[74]~70_combout\,
	datab => \inst14|inst9|Equal57~2_combout\,
	datac => \inst14|inst9|Equal48~2_combout\,
	datad => \inst14|inst9|Equal22~2_combout\,
	combout => \inst14|inst9|data[13]~116_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst14|inst9|Equal20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal20~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|Equal20~2_combout\);

-- Location: LCCOMB_X26_Y15_N0
\inst14|inst9|data[81]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~57_combout\ = (!\inst14|inst9|Equal40~0_combout\ & (!\inst14|inst9|Equal20~2_combout\ & ((!\inst14|inst9|Equal41~0_combout\) # (!\inst14|inst9|Equal9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~2_combout\,
	datab => \inst14|inst9|Equal41~0_combout\,
	datac => \inst14|inst9|Equal40~0_combout\,
	datad => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|data[81]~57_combout\);

-- Location: LCCOMB_X29_Y16_N14
\inst14|inst9|data[34]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~60_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\) # (((!\inst14|inst9|Equal5~2_combout\ & !\inst14|inst9|Equal0~1_combout\)) # (!\inst14|inst9|Equal21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal5~2_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|Equal21~1_combout\,
	combout => \inst14|inst9|data[34]~60_combout\);

-- Location: LCCOMB_X28_Y15_N18
\inst14|inst9|Equal24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal24~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- \inst14|inst9|Equal21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal21~1_combout\,
	combout => \inst14|inst9|Equal24~2_combout\);

-- Location: LCCOMB_X26_Y16_N8
\inst14|inst9|data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~115_combout\ = (\inst14|inst9|data[34]~60_combout\ & (!\inst14|inst9|Equal24~2_combout\ & \inst14|inst9|data~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[34]~60_combout\,
	datac => \inst14|inst9|Equal24~2_combout\,
	datad => \inst14|inst9|data~76_combout\,
	combout => \inst14|inst9|data~115_combout\);

-- Location: LCCOMB_X27_Y16_N20
\inst14|inst9|data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~117_combout\ = (\inst14|inst9|data~211_combout\ & (\inst14|inst9|data[13]~116_combout\ & (\inst14|inst9|data[81]~57_combout\ & \inst14|inst9|data~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~211_combout\,
	datab => \inst14|inst9|data[13]~116_combout\,
	datac => \inst14|inst9|data[81]~57_combout\,
	datad => \inst14|inst9|data~115_combout\,
	combout => \inst14|inst9|data~117_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst14|inst9|data[94]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[94]~118_combout\ = (\inst14|inst13|liga[0]~11_combout\ & (((\inst14|inst9|data~117_combout\) # (!\inst14|inst9|data~210_combout\)) # (!\inst14|inst13|PC[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC[0]~0_combout\,
	datab => \inst14|inst9|data~210_combout\,
	datac => \inst14|inst13|liga[0]~11_combout\,
	datad => \inst14|inst9|data~117_combout\,
	combout => \inst14|inst9|data[94]~118_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst14|inst9|data[93]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[93]~215_combout\ = ((\inst14|inst9|data[94]~118_combout\) # ((\inst14|inst9|data[91]~90_combout\ & \inst14|inst9|Equal16~4_combout\))) # (!\inst14|inst9|data[9]~224_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[91]~90_combout\,
	datab => \inst14|inst9|Equal16~4_combout\,
	datac => \inst14|inst9|data[9]~224_combout\,
	datad => \inst14|inst9|data[94]~118_combout\,
	combout => \inst14|inst9|data[93]~215_combout\);

-- Location: FF_X26_Y19_N25
\inst14|inst13|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[93]~215_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(0));

-- Location: LCCOMB_X26_Y19_N4
\inst14|inst9|data[94]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[94]~120_combout\ = (\inst14|inst9|Equal15~2_combout\) # ((\inst14|inst9|data[94]~118_combout\) # (!\inst14|inst9|data[92]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal15~2_combout\,
	datac => \inst14|inst9|data[92]~119_combout\,
	datad => \inst14|inst9|data[94]~118_combout\,
	combout => \inst14|inst9|data[94]~120_combout\);

-- Location: FF_X26_Y19_N5
\inst14|inst13|prueba[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[94]~120_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(1));

-- Location: IOIBUF_X18_Y34_N22
\IRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

-- Location: LCCOMB_X19_Y21_N4
\inst3|IRQ_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|IRQ_flag~0_combout\ = (\inst3|IRQ_flag~q\) # (!\IRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|IRQ_flag~q\,
	datad => \IRQn~input_o\,
	combout => \inst3|IRQ_flag~0_combout\);

-- Location: FF_X19_Y21_N5
\inst3|IRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|IRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|IRQ_flag~q\);

-- Location: LCCOMB_X26_Y19_N10
\inst14|inst6|$00001|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~0_combout\ = (\inst14|inst13|prueba\(0) & (\inst14|inst13|prueba\(1) & ((\inst3|XIRQ_flag~q\) # (\inst3|IRQ_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|XIRQ_flag~q\,
	datab => \inst14|inst13|prueba\(0),
	datac => \inst14|inst13|prueba\(1),
	datad => \inst3|IRQ_flag~q\,
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst14|inst9|data[92]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[92]~216_combout\ = (\inst14|inst9|data[91]~90_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # ((!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\) # (!\inst14|inst9|Equal16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst9|Equal16~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|data[91]~90_combout\,
	combout => \inst14|inst9|data[92]~216_combout\);

-- Location: LCCOMB_X26_Y17_N2
\inst14|inst9|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & \inst14|inst9|Equal14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|Equal14~2_combout\);

-- Location: LCCOMB_X26_Y17_N30
\inst14|inst9|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal5~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal3~5_combout\,
	combout => \inst14|inst9|Equal5~3_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst14|inst9|Equal54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal54~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & 
-- \inst14|inst9|Equal51~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|Equal54~2_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst14|inst9|data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~93_combout\ = ((!\inst14|inst9|Equal63~0_combout\ & ((!\inst14|inst9|Equal51~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\)))) # (!\inst14|inst9|Equal9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \inst14|inst9|Equal51~2_combout\,
	datac => \inst14|inst9|Equal9~2_combout\,
	datad => \inst14|inst9|Equal63~0_combout\,
	combout => \inst14|inst9|data~93_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst14|inst9|data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~136_combout\ = (!\inst14|inst9|Equal57~2_combout\ & (!\inst14|inst9|Equal54~2_combout\ & (!\inst14|inst9|data~93_combout\ & \inst14|inst9|data~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal57~2_combout\,
	datab => \inst14|inst9|Equal54~2_combout\,
	datac => \inst14|inst9|data~93_combout\,
	datad => \inst14|inst9|data~210_combout\,
	combout => \inst14|inst9|data~136_combout\);

-- Location: LCCOMB_X26_Y16_N14
\inst14|inst9|data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~95_combout\ = (\inst14|inst9|data~211_combout\ & (!\inst14|inst9|Equal50~0_combout\ & \inst14|inst9|data[81]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~211_combout\,
	datac => \inst14|inst9|Equal50~0_combout\,
	datad => \inst14|inst9|data[81]~57_combout\,
	combout => \inst14|inst9|data~95_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst14|inst9|data[81]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~100_combout\ = (!\inst14|inst9|Equal22~2_combout\ & (\inst14|inst13|PC[0]~0_combout\ & \inst14|inst9|data~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal22~2_combout\,
	datac => \inst14|inst13|PC[0]~0_combout\,
	datad => \inst14|inst9|data~73_combout\,
	combout => \inst14|inst9|data[81]~100_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst14|inst9|data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~137_combout\ = ((\inst14|inst9|data~136_combout\ & (\inst14|inst9|data~115_combout\ & \inst14|inst9|data[81]~100_combout\))) # (!\inst14|inst9|data~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~136_combout\,
	datab => \inst14|inst9|data~95_combout\,
	datac => \inst14|inst9|data~115_combout\,
	datad => \inst14|inst9|data[81]~100_combout\,
	combout => \inst14|inst9|data~137_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst14|inst9|data[97]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~138_combout\ = (!\inst14|inst9|Equal14~2_combout\ & (!\inst14|inst9|Equal5~3_combout\ & ((!\inst14|inst13|liga[0]~11_combout\) # (!\inst14|inst9|data~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal14~2_combout\,
	datab => \inst14|inst9|Equal5~3_combout\,
	datac => \inst14|inst9|data~137_combout\,
	datad => \inst14|inst13|liga[0]~11_combout\,
	combout => \inst14|inst9|data[97]~138_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst14|inst9|data[97]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~139_combout\ = (\inst14|inst9|Equal15~2_combout\) # ((\inst14|inst9|Equal10~4_combout\) # ((\inst14|inst9|data[92]~216_combout\) # (!\inst14|inst9|data[97]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~2_combout\,
	datab => \inst14|inst9|Equal10~4_combout\,
	datac => \inst14|inst9|data[92]~216_combout\,
	datad => \inst14|inst9|data[97]~138_combout\,
	combout => \inst14|inst9|data[97]~139_combout\);

-- Location: FF_X26_Y16_N23
\inst14|inst13|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[97]~139_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(4));

-- Location: LCCOMB_X27_Y15_N28
\inst14|inst9|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~5_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst14|inst9|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal6~3_combout\,
	combout => \inst14|inst9|Equal6~5_combout\);

-- Location: LCCOMB_X27_Y15_N18
\inst14|inst9|data[47]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~105_combout\ = (!\inst14|inst9|Equal24~2_combout\ & (((!\inst14|inst9|Equal45~0_combout\ & !\inst14|inst9|Equal35~1_combout\)) # (!\inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal45~0_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal35~1_combout\,
	datad => \inst14|inst9|Equal24~2_combout\,
	combout => \inst14|inst9|data[47]~105_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst14|inst9|data[81]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~106_combout\ = (!\inst14|inst9|Equal6~5_combout\ & (\inst14|inst9|Equal25~2_combout\ & \inst14|inst9|data[47]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal6~5_combout\,
	datac => \inst14|inst9|Equal25~2_combout\,
	datad => \inst14|inst9|data[47]~105_combout\,
	combout => \inst14|inst9|data[81]~106_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst14|inst9|data[81]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~107_combout\ = (!\inst14|inst9|Equal9~3_combout\ & (!\inst14|inst9|Equal4~2_combout\ & (!\inst14|inst9|Equal13~2_combout\ & !\inst14|inst9|Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|Equal4~2_combout\,
	datac => \inst14|inst9|Equal13~2_combout\,
	datad => \inst14|inst9|Equal12~2_combout\,
	combout => \inst14|inst9|data[81]~107_combout\);

-- Location: LCCOMB_X26_Y15_N16
\inst14|inst9|data[31]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~56_combout\ = (!\inst14|inst9|Equal37~0_combout\ & (((!\inst14|inst9|Equal8~3_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst14|inst9|Equal37~0_combout\,
	datad => \inst14|inst9|Equal8~3_combout\,
	combout => \inst14|inst9|data[31]~56_combout\);

-- Location: LCCOMB_X28_Y15_N30
\inst14|inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~2_combout\ = (\inst14|inst9|Equal0~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst9|Equal2~2_combout\ & \inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal2~2_combout\,
	datad => \inst14|inst9|Equal0~0_combout\,
	combout => \inst14|inst9|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst14|inst9|data[37]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~61_combout\ = (\inst14|inst9|data[34]~60_combout\ & !\inst14|inst9|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data[34]~60_combout\,
	datad => \inst14|inst9|Equal0~2_combout\,
	combout => \inst14|inst9|data[37]~61_combout\);

-- Location: LCCOMB_X26_Y17_N18
\inst14|inst9|data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~58_combout\ = (!\inst14|inst9|Equal5~3_combout\ & (!\inst14|inst9|Equal17~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\) # (!\inst14|inst9|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal5~3_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst9|Equal14~1_combout\,
	datad => \inst14|inst9|Equal17~2_combout\,
	combout => \inst14|inst9|data~58_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst14|inst9|data[37]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~62_combout\ = (\inst14|inst9|data~59_combout\ & (\inst14|inst9|data[37]~61_combout\ & (\inst14|inst9|data~58_combout\ & \inst14|inst9|data[71]~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~59_combout\,
	datab => \inst14|inst9|data[37]~61_combout\,
	datac => \inst14|inst9|data~58_combout\,
	datad => \inst14|inst9|data[71]~212_combout\,
	combout => \inst14|inst9|data[37]~62_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst14|inst9|data[81]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~101_combout\ = (\inst14|inst9|data[81]~57_combout\ & (\inst14|inst9|data~211_combout\ & (\inst14|inst9|data[31]~56_combout\ & \inst14|inst9|data[37]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[81]~57_combout\,
	datab => \inst14|inst9|data~211_combout\,
	datac => \inst14|inst9|data[31]~56_combout\,
	datad => \inst14|inst9|data[37]~62_combout\,
	combout => \inst14|inst9|data[81]~101_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst14|inst9|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~1_combout\ = (\inst14|inst9|Equal1~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst9|Equal2~2_combout\ & \inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst9|Equal2~2_combout\,
	datad => \inst14|inst9|Equal0~0_combout\,
	combout => \inst14|inst9|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y17_N22
\inst14|inst9|data[81]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~102_combout\ = (!\inst14|inst9|Equal1~1_combout\ & (((!\inst14|inst9|Equal16~3_combout\ & !\inst14|inst9|Equal18~2_combout\)) # (!\inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal16~3_combout\,
	datab => \inst14|inst9|Equal18~2_combout\,
	datac => \inst14|inst9|Equal1~0_combout\,
	datad => \inst14|inst9|Equal1~1_combout\,
	combout => \inst14|inst9|data[81]~102_combout\);

-- Location: LCCOMB_X27_Y17_N0
\inst14|inst9|data[60]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~51_combout\ = (!\inst14|inst9|Equal18~3_combout\ & (!\inst14|inst9|Equal15~2_combout\ & (!\inst14|inst9|Equal8~2_combout\ & !\inst14|inst9|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~3_combout\,
	datab => \inst14|inst9|Equal15~2_combout\,
	datac => \inst14|inst9|Equal8~2_combout\,
	datad => \inst14|inst9|Equal2~4_combout\,
	combout => \inst14|inst9|data[60]~51_combout\);

-- Location: LCCOMB_X27_Y16_N0
\inst14|inst9|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal7~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- \inst14|inst9|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal6~3_combout\,
	combout => \inst14|inst9|Equal7~2_combout\);

-- Location: LCCOMB_X26_Y17_N6
\inst14|inst9|data[60]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~50_combout\ = (\inst14|inst9|Equal0~1_combout\ & (((!\inst14|inst9|Equal3~5_combout\ & !\inst14|inst9|Equal10~3_combout\)))) # (!\inst14|inst9|Equal0~1_combout\ & (((!\inst14|inst9|Equal10~3_combout\)) # 
-- (!\inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal3~5_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst9|data[60]~50_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst14|inst9|data[81]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~103_combout\ = (\inst14|inst9|data[81]~102_combout\ & (\inst14|inst9|data[60]~51_combout\ & (!\inst14|inst9|Equal7~2_combout\ & \inst14|inst9|data[60]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[81]~102_combout\,
	datab => \inst14|inst9|data[60]~51_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|data[60]~50_combout\,
	combout => \inst14|inst9|data[81]~103_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst14|inst9|data[81]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~104_combout\ = (\inst14|inst9|data[60]~213_combout\ & \inst14|inst9|data[81]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data[60]~213_combout\,
	datad => \inst14|inst9|data[81]~103_combout\,
	combout => \inst14|inst9|data[81]~104_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst14|inst9|data[81]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~108_combout\ = (\inst14|inst9|data[81]~106_combout\ & (\inst14|inst9|data[81]~107_combout\ & (\inst14|inst9|data[81]~101_combout\ & \inst14|inst9|data[81]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[81]~106_combout\,
	datab => \inst14|inst9|data[81]~107_combout\,
	datac => \inst14|inst9|data[81]~101_combout\,
	datad => \inst14|inst9|data[81]~104_combout\,
	combout => \inst14|inst9|data[81]~108_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst14|inst13|B4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|B4~0_combout\ = (!\inst14|inst9|Equal57~2_combout\ & (\inst14|inst9|data~79_combout\ & (\inst14|inst9|data[81]~100_combout\ & \inst14|inst9|data[81]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal57~2_combout\,
	datab => \inst14|inst9|data~79_combout\,
	datac => \inst14|inst9|data[81]~100_combout\,
	datad => \inst14|inst9|data[81]~108_combout\,
	combout => \inst14|inst13|B4~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst14|inst9|data[90]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~97_combout\ = ((!\inst14|inst9|Equal18~2_combout\ & (!\inst14|inst9|Equal16~3_combout\ & !\inst14|inst9|Equal3~5_combout\))) # (!\inst14|inst9|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal18~2_combout\,
	datac => \inst14|inst9|Equal16~3_combout\,
	datad => \inst14|inst9|Equal3~5_combout\,
	combout => \inst14|inst9|data[90]~97_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst14|inst9|data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~96_combout\ = (\inst14|inst9|Equal25~2_combout\ & (\inst14|inst9|data~58_combout\ & !\inst14|inst9|Equal13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal25~2_combout\,
	datab => \inst14|inst9|data~58_combout\,
	datac => \inst14|inst9|Equal13~2_combout\,
	combout => \inst14|inst9|data~96_combout\);

-- Location: LCCOMB_X26_Y16_N2
\inst14|inst9|data[90]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~98_combout\ = (\inst14|inst9|data[90]~97_combout\ & (!\inst14|inst9|Equal10~4_combout\ & (\inst14|inst9|data~95_combout\ & \inst14|inst9|data~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[90]~97_combout\,
	datab => \inst14|inst9|Equal10~4_combout\,
	datac => \inst14|inst9|data~95_combout\,
	datad => \inst14|inst9|data~96_combout\,
	combout => \inst14|inst9|data[90]~98_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst14|inst9|data[81]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~109_combout\ = (\inst14|inst9|data~79_combout\ & (\inst14|inst9|data[81]~100_combout\ & \inst14|inst9|data[81]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data~79_combout\,
	datac => \inst14|inst9|data[81]~100_combout\,
	datad => \inst14|inst9|data[81]~108_combout\,
	combout => \inst14|inst9|data[81]~109_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst14|inst9|data[96]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~113_combout\ = (\inst14|inst13|PC[0]~0_combout\ & ((\inst14|inst13|B4~0_combout\) # (!\inst14|inst9|data[81]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|B4~0_combout\,
	datac => \inst14|inst13|PC[0]~0_combout\,
	datad => \inst14|inst9|data[81]~109_combout\,
	combout => \inst14|inst9|data[96]~113_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst14|inst9|data[96]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~114_combout\ = (((!\inst14|inst9|data~93_combout\ & \inst14|inst13|B4~0_combout\)) # (!\inst14|inst9|data[96]~113_combout\)) # (!\inst14|inst9|data[90]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~93_combout\,
	datab => \inst14|inst13|B4~0_combout\,
	datac => \inst14|inst9|data[90]~98_combout\,
	datad => \inst14|inst9|data[96]~113_combout\,
	combout => \inst14|inst9|data[96]~114_combout\);

-- Location: FF_X26_Y18_N21
\inst14|inst13|prueba[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[96]~114_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(3));

-- Location: LCCOMB_X26_Y16_N4
\inst14|inst9|data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~133_combout\ = (!\inst14|inst9|Equal22~2_combout\ & (\inst14|inst9|data[34]~60_combout\ & (!\inst14|inst9|Equal24~2_combout\ & !\inst14|inst9|Equal20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~2_combout\,
	datab => \inst14|inst9|data[34]~60_combout\,
	datac => \inst14|inst9|Equal24~2_combout\,
	datad => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|data~133_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst14|inst9|Equal19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal19~2_combout\ = (\inst14|inst9|Equal18~2_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~2_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal19~2_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst14|inst9|data[34]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~134_combout\ = (!\inst14|inst9|Equal25~2_combout\ & (!\inst14|inst9|Equal18~3_combout\ & (\inst14|inst9|data~133_combout\ & !\inst14|inst9|Equal19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal25~2_combout\,
	datab => \inst14|inst9|Equal18~3_combout\,
	datac => \inst14|inst9|data~133_combout\,
	datad => \inst14|inst9|Equal19~2_combout\,
	combout => \inst14|inst9|data[34]~134_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst14|inst9|data[34]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~135_combout\ = (\inst14|inst9|Equal12~2_combout\) # ((\inst14|inst13|liga[0]~12_combout\ & (\inst14|inst13|liga[0]~13_combout\ & \inst14|inst9|data[34]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|liga[0]~12_combout\,
	datab => \inst14|inst13|liga[0]~13_combout\,
	datac => \inst14|inst9|Equal12~2_combout\,
	datad => \inst14|inst9|data[34]~134_combout\,
	combout => \inst14|inst9|data[34]~135_combout\);

-- Location: FF_X23_Y18_N27
\inst14|inst13|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[34]~135_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(2));

-- Location: LCCOMB_X26_Y15_N22
\inst14|inst9|data[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~48_combout\ = (\inst14|inst9|data~210_combout\ & (((!\inst14|inst9|Equal16~3_combout\ & !\inst14|inst9|Equal41~0_combout\)) # (!\inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal16~3_combout\,
	datac => \inst14|inst9|Equal41~0_combout\,
	datad => \inst14|inst9|data~210_combout\,
	combout => \inst14|inst9|data[26]~48_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst14|inst9|data[44]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~124_combout\ = (!\inst14|inst9|Equal1~1_combout\ & (!\inst14|inst9|Equal32~1_combout\ & (!\inst14|inst9|Equal22~2_combout\ & \inst14|inst9|data[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~1_combout\,
	datab => \inst14|inst9|Equal32~1_combout\,
	datac => \inst14|inst9|Equal22~2_combout\,
	datad => \inst14|inst9|data[26]~48_combout\,
	combout => \inst14|inst9|data[44]~124_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst14|inst9|data[44]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~125_combout\ = (!\inst14|inst9|Equal28~2_combout\ & (!\inst14|inst9|Equal9~3_combout\ & (!\inst14|inst9|Equal7~2_combout\ & \inst14|inst9|data[44]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal28~2_combout\,
	datab => \inst14|inst9|Equal9~3_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|data[44]~124_combout\,
	combout => \inst14|inst9|data[44]~125_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst14|inst9|Equal36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal36~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal35~1_combout\,
	combout => \inst14|inst9|Equal36~2_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst14|inst9|Equal68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal68~2_combout\ = (\inst14|inst9|Equal3~4_combout\ & (\inst14|inst9|Equal3~3_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & \inst14|inst9|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~4_combout\,
	datab => \inst14|inst9|Equal3~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|Equal68~2_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst14|inst9|Equal68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal68~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|Equal68~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal68~2_combout\,
	combout => \inst14|inst9|Equal68~3_combout\);

-- Location: LCCOMB_X25_Y18_N10
\inst14|inst9|Equal67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal67~0_combout\ = (\inst14|inst9|Equal14~1_combout\ & \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal14~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst14|inst9|Equal67~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\inst14|inst9|data[90]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~110_combout\ = (\inst14|inst9|data[90]~77_combout\ & (\inst14|inst9|data[75]~214_combout\ & (\inst14|inst9|data~87_combout\ & !\inst14|inst9|Equal58~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[90]~77_combout\,
	datab => \inst14|inst9|data[75]~214_combout\,
	datac => \inst14|inst9|data~87_combout\,
	datad => \inst14|inst9|Equal58~2_combout\,
	combout => \inst14|inst9|data[90]~110_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst14|inst9|Equal66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal66~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst9|Equal63~0_combout\ & \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal63~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst9|Equal66~2_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst14|inst9|data[47]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~127_combout\ = (\inst14|inst9|Equal68~3_combout\ & (!\inst14|inst9|Equal67~0_combout\ & (\inst14|inst9|data[90]~110_combout\ & !\inst14|inst9|Equal66~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal68~3_combout\,
	datab => \inst14|inst9|Equal67~0_combout\,
	datac => \inst14|inst9|data[90]~110_combout\,
	datad => \inst14|inst9|Equal66~2_combout\,
	combout => \inst14|inst9|data[47]~127_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst14|inst9|data[44]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~128_combout\ = (\inst14|inst9|Equal62~2_combout\) # ((\inst14|inst9|Equal54~2_combout\) # ((\inst14|inst9|data[44]~72_combout\ & \inst14|inst9|data[47]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal62~2_combout\,
	datab => \inst14|inst9|data[44]~72_combout\,
	datac => \inst14|inst9|Equal54~2_combout\,
	datad => \inst14|inst9|data[47]~127_combout\,
	combout => \inst14|inst9|data[44]~128_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst14|inst9|Equal52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal52~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst9|Equal51~2_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst9|Equal51~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	combout => \inst14|inst9|Equal52~2_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst14|inst13|PC[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|PC[0]~2_combout\ = (\inst14|inst9|data~71_combout\ & (\inst14|inst13|PC[0]~0_combout\ & ((!\inst14|inst9|Equal49~2_combout\) # (!\inst14|inst9|Equal32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~71_combout\,
	datab => \inst14|inst9|Equal32~0_combout\,
	datac => \inst14|inst13|PC[0]~0_combout\,
	datad => \inst14|inst9|Equal49~2_combout\,
	combout => \inst14|inst13|PC[0]~2_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst14|inst13|PC[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|PC[0]~3_combout\ = (!\inst14|inst9|Equal22~2_combout\ & (!\inst14|inst9|Equal52~2_combout\ & (\inst14|inst13|PC[0]~2_combout\ & \inst14|inst9|data[81]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~2_combout\,
	datab => \inst14|inst9|Equal52~2_combout\,
	datac => \inst14|inst13|PC[0]~2_combout\,
	datad => \inst14|inst9|data[81]~108_combout\,
	combout => \inst14|inst13|PC[0]~3_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst14|inst9|data[44]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~129_combout\ = (!\inst14|inst9|Equal24~2_combout\ & (!\inst14|inst9|Equal36~2_combout\ & ((!\inst14|inst13|PC[0]~3_combout\) # (!\inst14|inst9|data[44]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal24~2_combout\,
	datab => \inst14|inst9|Equal36~2_combout\,
	datac => \inst14|inst9|data[44]~128_combout\,
	datad => \inst14|inst13|PC[0]~3_combout\,
	combout => \inst14|inst9|data[44]~129_combout\);

-- Location: LCCOMB_X28_Y16_N8
\inst14|inst9|Equal38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal38~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst9|Equal35~1_combout\ & \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal35~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst9|Equal38~2_combout\);

-- Location: LCCOMB_X27_Y19_N12
\inst14|inst9|data[74]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[74]~53_combout\ = (!\inst14|inst9|Equal33~2_combout\ & (\inst14|inst9|data[14]~52_combout\ & ((!\inst14|inst9|Equal2~3_combout\) # (!\inst14|inst9|Equal43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal43~1_combout\,
	datab => \inst14|inst9|Equal33~2_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|data[14]~52_combout\,
	combout => \inst14|inst9|data[74]~53_combout\);

-- Location: LCCOMB_X27_Y19_N2
\inst14|inst9|data[32]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~54_combout\ = (!\inst14|inst9|Equal38~2_combout\ & (!\inst14|inst9|Equal12~2_combout\ & (\inst14|inst9|data[9]~224_combout\ & \inst14|inst9|data[74]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal38~2_combout\,
	datab => \inst14|inst9|Equal12~2_combout\,
	datac => \inst14|inst9|data[9]~224_combout\,
	datad => \inst14|inst9|data[74]~53_combout\,
	combout => \inst14|inst9|data[32]~54_combout\);

-- Location: LCCOMB_X27_Y19_N16
\inst14|inst9|data[31]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~55_combout\ = (\inst14|inst9|data[60]~50_combout\ & (!\inst14|inst9|Equal49~3_combout\ & (\inst14|inst9|data[60]~51_combout\ & \inst14|inst9|data[32]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~50_combout\,
	datab => \inst14|inst9|Equal49~3_combout\,
	datac => \inst14|inst9|data[60]~51_combout\,
	datad => \inst14|inst9|data[32]~54_combout\,
	combout => \inst14|inst9|data[31]~55_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst14|inst9|data[37]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~64_combout\ = (!\inst14|inst9|Equal50~0_combout\ & (!\inst14|inst9|Equal6~5_combout\ & ((!\inst14|inst9|Equal51~3_combout\) # (!\inst14|inst9|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal50~0_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst9|Equal6~5_combout\,
	datad => \inst14|inst9|Equal51~3_combout\,
	combout => \inst14|inst9|data[37]~64_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst14|inst9|data[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~63_combout\ = (\inst14|inst9|data[81]~57_combout\ & (\inst14|inst9|data~211_combout\ & \inst14|inst9|data[37]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[81]~57_combout\,
	datac => \inst14|inst9|data~211_combout\,
	datad => \inst14|inst9|data[37]~62_combout\,
	combout => \inst14|inst9|data[37]~63_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst14|inst9|data[32]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~65_combout\ = (\inst14|inst9|data[31]~56_combout\ & (!\inst14|inst9|Equal48~2_combout\ & (\inst14|inst9|data[37]~64_combout\ & \inst14|inst9|data[37]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~56_combout\,
	datab => \inst14|inst9|Equal48~2_combout\,
	datac => \inst14|inst9|data[37]~64_combout\,
	datad => \inst14|inst9|data[37]~63_combout\,
	combout => \inst14|inst9|data[32]~65_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst14|inst9|data[32]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~131_combout\ = (\inst14|inst9|data[31]~55_combout\ & (!\inst14|inst13|PC[0]~3_combout\ & \inst14|inst9|data[32]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[31]~55_combout\,
	datac => \inst14|inst13|PC[0]~3_combout\,
	datad => \inst14|inst9|data[32]~65_combout\,
	combout => \inst14|inst9|data[32]~131_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst14|inst9|data[32]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~132_combout\ = ((\inst14|inst9|Equal46~2_combout\) # ((\inst14|inst9|data[32]~131_combout\) # (!\inst14|inst9|data[44]~129_combout\))) # (!\inst14|inst9|data[44]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[44]~125_combout\,
	datab => \inst14|inst9|Equal46~2_combout\,
	datac => \inst14|inst9|data[44]~129_combout\,
	datad => \inst14|inst9|data[32]~131_combout\,
	combout => \inst14|inst9|data[32]~132_combout\);

-- Location: FF_X23_Y18_N17
\inst14|inst13|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[32]~132_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(0));

-- Location: FF_X23_Y18_N1
\inst14|inst13|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal9~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(1));

-- Location: LCCOMB_X23_Y21_N16
\PC|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~4_combout\ = (!\inst14|inst13|PC\(2) & (\inst14|inst13|PC\(0) $ (\inst14|inst13|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(1),
	combout => \PC|data_out~4_combout\);

-- Location: LCCOMB_X25_Y21_N0
\PC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~0_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|Add0~1\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|Add0~0_combout\,
	cout => \PC|Add0~1\);

-- Location: LCCOMB_X23_Y21_N0
\PC|data_out[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[6]~0_combout\ = (\inst14|inst13|PC\(2) & (\inst14|inst13|PC\(0) $ (!\inst14|inst13|PC\(1)))) # (!\inst14|inst13|PC\(2) & ((!\inst14|inst13|PC\(1)) # (!\inst14|inst13|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(1),
	combout => \PC|data_out[6]~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\PC|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Equal7~0_combout\ = (!\inst14|inst13|PC\(1) & (!\inst14|inst13|PC\(2) & \inst14|inst13|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(1),
	datac => \inst14|inst13|PC\(2),
	datad => \inst14|inst13|PC\(0),
	combout => \PC|Equal7~0_combout\);

-- Location: LCCOMB_X25_Y21_N2
\PC|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~2_combout\ = (\PC|Equal7~0_combout\ & ((\PC|data_out\(1) & (!\PC|Add0~1\)) # (!\PC|data_out\(1) & ((\PC|Add0~1\) # (GND))))) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(1) & (\PC|Add0~1\ & VCC)) # (!\PC|data_out\(1) & (!\PC|Add0~1\))))
-- \PC|Add0~3\ = CARRY((\PC|Equal7~0_combout\ & ((!\PC|Add0~1\) # (!\PC|data_out\(1)))) # (!\PC|Equal7~0_combout\ & (!\PC|data_out\(1) & !\PC|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(1),
	datad => VCC,
	cin => \PC|Add0~1\,
	combout => \PC|Add0~2_combout\,
	cout => \PC|Add0~3\);

-- Location: LCCOMB_X25_Y21_N4
\PC|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~4_combout\ = ((\PC|data_out\(2) $ (\PC|Equal7~0_combout\ $ (\PC|Add0~3\)))) # (GND)
-- \PC|Add0~5\ = CARRY((\PC|data_out\(2) & ((!\PC|Add0~3\) # (!\PC|Equal7~0_combout\))) # (!\PC|data_out\(2) & (!\PC|Equal7~0_combout\ & !\PC|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~3\,
	combout => \PC|Add0~4_combout\,
	cout => \PC|Add0~5\);

-- Location: LCCOMB_X25_Y21_N6
\PC|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~6_combout\ = (\PC|Equal7~0_combout\ & ((\PC|data_out\(3) & (!\PC|Add0~5\)) # (!\PC|data_out\(3) & ((\PC|Add0~5\) # (GND))))) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(3) & (\PC|Add0~5\ & VCC)) # (!\PC|data_out\(3) & (!\PC|Add0~5\))))
-- \PC|Add0~7\ = CARRY((\PC|Equal7~0_combout\ & ((!\PC|Add0~5\) # (!\PC|data_out\(3)))) # (!\PC|Equal7~0_combout\ & (!\PC|data_out\(3) & !\PC|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|Add0~5\,
	combout => \PC|Add0~6_combout\,
	cout => \PC|Add0~7\);

-- Location: LCCOMB_X25_Y21_N8
\PC|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~8_combout\ = ((\PC|data_out\(4) $ (\PC|Equal7~0_combout\ $ (\PC|Add0~7\)))) # (GND)
-- \PC|Add0~9\ = CARRY((\PC|data_out\(4) & ((!\PC|Add0~7\) # (!\PC|Equal7~0_combout\))) # (!\PC|data_out\(4) & (!\PC|Equal7~0_combout\ & !\PC|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~7\,
	combout => \PC|Add0~8_combout\,
	cout => \PC|Add0~9\);

-- Location: LCCOMB_X25_Y21_N10
\PC|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~10_combout\ = (\PC|Equal7~0_combout\ & ((\PC|data_out\(5) & (!\PC|Add0~9\)) # (!\PC|data_out\(5) & ((\PC|Add0~9\) # (GND))))) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(5) & (\PC|Add0~9\ & VCC)) # (!\PC|data_out\(5) & (!\PC|Add0~9\))))
-- \PC|Add0~11\ = CARRY((\PC|Equal7~0_combout\ & ((!\PC|Add0~9\) # (!\PC|data_out\(5)))) # (!\PC|Equal7~0_combout\ & (!\PC|data_out\(5) & !\PC|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|Add0~9\,
	combout => \PC|Add0~10_combout\,
	cout => \PC|Add0~11\);

-- Location: LCCOMB_X25_Y21_N12
\PC|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~12_combout\ = ((\PC|Equal7~0_combout\ $ (\PC|data_out\(6) $ (\PC|Add0~11\)))) # (GND)
-- \PC|Add0~13\ = CARRY((\PC|Equal7~0_combout\ & (\PC|data_out\(6) & !\PC|Add0~11\)) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(6)) # (!\PC|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|Add0~11\,
	combout => \PC|Add0~12_combout\,
	cout => \PC|Add0~13\);

-- Location: LCCOMB_X25_Y21_N14
\PC|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~14_combout\ = (\PC|data_out\(7) & ((\PC|Equal7~0_combout\ & (!\PC|Add0~13\)) # (!\PC|Equal7~0_combout\ & (\PC|Add0~13\ & VCC)))) # (!\PC|data_out\(7) & ((\PC|Equal7~0_combout\ & ((\PC|Add0~13\) # (GND))) # (!\PC|Equal7~0_combout\ & 
-- (!\PC|Add0~13\))))
-- \PC|Add0~15\ = CARRY((\PC|data_out\(7) & (\PC|Equal7~0_combout\ & !\PC|Add0~13\)) # (!\PC|data_out\(7) & ((\PC|Equal7~0_combout\) # (!\PC|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~13\,
	combout => \PC|Add0~14_combout\,
	cout => \PC|Add0~15\);

-- Location: LCCOMB_X23_Y21_N6
\PC|data_out[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~6_combout\ = ((\inst14|inst13|PC\(0) & \inst14|inst13|PC\(1))) # (!\inst14|inst13|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(1),
	combout => \PC|data_out[8]~6_combout\);

-- Location: LCCOMB_X25_Y21_N16
\PC|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~16_combout\ = ((\PC|Equal7~0_combout\ $ (\PC|data_out\(8) $ (\PC|Add0~15\)))) # (GND)
-- \PC|Add0~17\ = CARRY((\PC|Equal7~0_combout\ & (\PC|data_out\(8) & !\PC|Add0~15\)) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(8)) # (!\PC|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(8),
	datad => VCC,
	cin => \PC|Add0~15\,
	combout => \PC|Add0~16_combout\,
	cout => \PC|Add0~17\);

-- Location: LCCOMB_X25_Y21_N18
\PC|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~18_combout\ = (\PC|data_out\(9) & ((\PC|Equal7~0_combout\ & (!\PC|Add0~17\)) # (!\PC|Equal7~0_combout\ & (\PC|Add0~17\ & VCC)))) # (!\PC|data_out\(9) & ((\PC|Equal7~0_combout\ & ((\PC|Add0~17\) # (GND))) # (!\PC|Equal7~0_combout\ & 
-- (!\PC|Add0~17\))))
-- \PC|Add0~19\ = CARRY((\PC|data_out\(9) & (\PC|Equal7~0_combout\ & !\PC|Add0~17\)) # (!\PC|data_out\(9) & ((\PC|Equal7~0_combout\) # (!\PC|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~17\,
	combout => \PC|Add0~18_combout\,
	cout => \PC|Add0~19\);

-- Location: LCCOMB_X25_Y21_N20
\PC|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~20_combout\ = ((\PC|Equal7~0_combout\ $ (\PC|data_out\(10) $ (\PC|Add0~19\)))) # (GND)
-- \PC|Add0~21\ = CARRY((\PC|Equal7~0_combout\ & (\PC|data_out\(10) & !\PC|Add0~19\)) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(10)) # (!\PC|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|Add0~19\,
	combout => \PC|Add0~20_combout\,
	cout => \PC|Add0~21\);

-- Location: LCCOMB_X25_Y21_N22
\PC|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~22_combout\ = (\PC|Equal7~0_combout\ & ((\PC|data_out\(11) & (!\PC|Add0~21\)) # (!\PC|data_out\(11) & ((\PC|Add0~21\) # (GND))))) # (!\PC|Equal7~0_combout\ & ((\PC|data_out\(11) & (\PC|Add0~21\ & VCC)) # (!\PC|data_out\(11) & (!\PC|Add0~21\))))
-- \PC|Add0~23\ = CARRY((\PC|Equal7~0_combout\ & ((!\PC|Add0~21\) # (!\PC|data_out\(11)))) # (!\PC|Equal7~0_combout\ & (!\PC|data_out\(11) & !\PC|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(11),
	datad => VCC,
	cin => \PC|Add0~21\,
	combout => \PC|Add0~22_combout\,
	cout => \PC|Add0~23\);

-- Location: LCCOMB_X25_Y21_N24
\PC|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~24_combout\ = ((\PC|data_out\(12) $ (\PC|Equal7~0_combout\ $ (\PC|Add0~23\)))) # (GND)
-- \PC|Add0~25\ = CARRY((\PC|data_out\(12) & ((!\PC|Add0~23\) # (!\PC|Equal7~0_combout\))) # (!\PC|data_out\(12) & (!\PC|Equal7~0_combout\ & !\PC|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~23\,
	combout => \PC|Add0~24_combout\,
	cout => \PC|Add0~25\);

-- Location: LCCOMB_X25_Y21_N26
\PC|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~26_combout\ = (\PC|data_out\(13) & ((\PC|Equal7~0_combout\ & (!\PC|Add0~25\)) # (!\PC|Equal7~0_combout\ & (\PC|Add0~25\ & VCC)))) # (!\PC|data_out\(13) & ((\PC|Equal7~0_combout\ & ((\PC|Add0~25\) # (GND))) # (!\PC|Equal7~0_combout\ & 
-- (!\PC|Add0~25\))))
-- \PC|Add0~27\ = CARRY((\PC|data_out\(13) & (\PC|Equal7~0_combout\ & !\PC|Add0~25\)) # (!\PC|data_out\(13) & ((\PC|Equal7~0_combout\) # (!\PC|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~25\,
	combout => \PC|Add0~26_combout\,
	cout => \PC|Add0~27\);

-- Location: LCCOMB_X25_Y21_N28
\PC|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~28_combout\ = ((\PC|data_out\(14) $ (\PC|Equal7~0_combout\ $ (\PC|Add0~27\)))) # (GND)
-- \PC|Add0~29\ = CARRY((\PC|data_out\(14) & ((!\PC|Add0~27\) # (!\PC|Equal7~0_combout\))) # (!\PC|data_out\(14) & (!\PC|Equal7~0_combout\ & !\PC|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(14),
	datab => \PC|Equal7~0_combout\,
	datad => VCC,
	cin => \PC|Add0~27\,
	combout => \PC|Add0~28_combout\,
	cout => \PC|Add0~29\);

-- Location: LCCOMB_X25_Y21_N30
\PC|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~30_combout\ = \PC|Equal7~0_combout\ $ (\PC|data_out\(15) $ (!\PC|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Equal7~0_combout\,
	datab => \PC|data_out\(15),
	cin => \PC|Add0~29\,
	combout => \PC|Add0~30_combout\);

-- Location: LCCOMB_X23_Y21_N4
\PC|R15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|R15~0_combout\ = (\inst14|inst13|PC\(1)) # ((\PC|data_out\(15)) # ((\inst14|inst13|PC\(0)) # (\inst14|inst13|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(1),
	datab => \PC|data_out\(15),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|R15~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\PC|data_out[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~1_combout\ = (\inst14|inst13|PC\(2) & \inst14|inst13|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datad => \inst14|inst13|PC\(1),
	combout => \PC|data_out[8]~1_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst14|inst9|data[72]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~225_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # (!\inst14|inst9|Equal10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|Equal10~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst9|data[72]~225_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst14|inst9|data[36]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[36]~190_combout\ = (\inst14|inst9|data[70]~69_combout\ & ((\inst14|inst9|Equal12~2_combout\) # ((!\inst14|inst9|data[72]~225_combout\) # (!\inst14|inst9|Equal25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal12~2_combout\,
	datab => \inst14|inst9|Equal25~2_combout\,
	datac => \inst14|inst9|data[72]~225_combout\,
	datad => \inst14|inst9|data[70]~69_combout\,
	combout => \inst14|inst9|data[36]~190_combout\);

-- Location: FF_X23_Y18_N31
\inst14|inst13|nEPC1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[36]~190_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC1~q\);

-- Location: LCCOMB_X23_Y18_N12
\PC|TRI_STATE_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_C~0_combout\ = (\inst14|inst13|nEPC1~q\ & (!\inst14|inst13|PC\(1) & (!\inst14|inst13|PC\(2) & !\inst14|inst13|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nEPC1~q\,
	datab => \inst14|inst13|PC\(1),
	datac => \inst14|inst13|PC\(2),
	datad => \inst14|inst13|PC\(0),
	combout => \PC|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X26_Y17_N4
\inst14|inst9|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~6_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal3~5_combout\,
	combout => \inst14|inst9|Equal3~6_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst14|inst9|data[73]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~67_combout\ = (!\inst14|inst9|Equal0~2_combout\ & (!\inst14|inst9|Equal2~4_combout\ & (!\inst14|inst9|Equal1~1_combout\ & !\inst14|inst9|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datab => \inst14|inst9|Equal2~4_combout\,
	datac => \inst14|inst9|Equal1~1_combout\,
	datad => \inst14|inst9|Equal3~6_combout\,
	combout => \inst14|inst9|data[73]~67_combout\);

-- Location: LCCOMB_X26_Y17_N16
\inst14|inst9|data[73]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~171_combout\ = (\inst14|inst9|Equal0~2_combout\) # ((\inst14|inst9|Equal2~4_combout\) # ((\inst14|inst9|Equal1~1_combout\) # (!\inst14|inst9|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datab => \inst14|inst9|Equal2~4_combout\,
	datac => \inst14|inst9|Equal3~6_combout\,
	datad => \inst14|inst9|Equal1~1_combout\,
	combout => \inst14|inst9|data[73]~171_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst14|inst9|Equal70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal70~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|Equal68~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal68~2_combout\,
	combout => \inst14|inst9|Equal70~2_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst14|inst9|data[73]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~172_combout\ = ((\inst14|inst9|data[73]~67_combout\ & \inst14|inst9|Equal70~2_combout\)) # (!\inst14|inst9|data[73]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~67_combout\,
	datac => \inst14|inst9|data[73]~171_combout\,
	datad => \inst14|inst9|Equal70~2_combout\,
	combout => \inst14|inst9|data[73]~172_combout\);

-- Location: FF_X25_Y20_N15
\inst14|inst13|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[73]~172_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(1));

-- Location: LCCOMB_X25_Y16_N12
\inst14|inst9|data[72]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~165_combout\ = (!\inst14|inst9|Equal10~3_combout\ & \inst14|inst9|data~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|Equal10~3_combout\,
	datad => \inst14|inst9|data~83_combout\,
	combout => \inst14|inst9|data[72]~165_combout\);

-- Location: LCCOMB_X25_Y16_N20
\inst14|inst9|data[72]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~164_combout\ = (!\inst14|inst9|Equal62~2_combout\ & (!\inst14|inst9|Equal68~3_combout\ & (!\inst14|inst9|Equal7~2_combout\ & !\inst14|inst9|Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal62~2_combout\,
	datab => \inst14|inst9|Equal68~3_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|Equal9~3_combout\,
	combout => \inst14|inst9|data[72]~164_combout\);

-- Location: LCCOMB_X25_Y16_N8
\inst14|inst9|data[72]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~166_combout\ = (\inst14|inst9|data[72]~165_combout\ & (\inst14|inst9|data[72]~164_combout\ & ((!\inst14|inst9|Equal68~2_combout\) # (!\inst14|inst9|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~165_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal68~2_combout\,
	datad => \inst14|inst9|data[72]~164_combout\,
	combout => \inst14|inst9|data[72]~166_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst14|inst9|Equal55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal55~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & \inst14|inst9|Equal51~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|Equal55~0_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst14|inst9|data[60]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~219_combout\ = (\inst14|inst9|data[60]~213_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # ((!\inst14|inst9|Equal55~0_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|data[60]~213_combout\,
	datad => \inst14|inst9|Equal55~0_combout\,
	combout => \inst14|inst9|data[60]~219_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst14|inst9|data[72]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~162_combout\ = (\inst14|inst9|Equal3~6_combout\) # ((\inst14|inst9|Equal4~2_combout\) # ((\inst14|inst9|Equal70~2_combout\) # (!\inst14|inst9|data[60]~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~6_combout\,
	datab => \inst14|inst9|Equal4~2_combout\,
	datac => \inst14|inst9|data[60]~219_combout\,
	datad => \inst14|inst9|Equal70~2_combout\,
	combout => \inst14|inst9|data[72]~162_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst14|inst9|data[72]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~163_combout\ = (\inst14|inst9|data[90]~110_combout\ & (!\inst14|inst9|Equal66~2_combout\ & ((!\inst14|inst9|Equal14~1_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst9|Equal14~1_combout\,
	datac => \inst14|inst9|data[90]~110_combout\,
	datad => \inst14|inst9|Equal66~2_combout\,
	combout => \inst14|inst9|data[72]~163_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst14|inst9|data[26]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~46_combout\ = ((!\inst14|inst9|Equal2~3_combout\ & ((!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\) # (!\inst14|inst9|Equal0~1_combout\)))) # (!\inst14|inst9|Equal51~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~3_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|data[26]~46_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst14|inst9|data[60]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~168_combout\ = (\inst14|inst9|data[60]~51_combout\ & \inst14|inst9|data[26]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data[60]~51_combout\,
	datad => \inst14|inst9|data[26]~46_combout\,
	combout => \inst14|inst9|data[60]~168_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst14|inst9|data[60]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~167_combout\ = (\inst14|inst9|data[47]~105_combout\ & (!\inst14|inst9|Equal52~2_combout\ & (!\inst14|inst9|Equal54~2_combout\ & \inst14|inst9|data[44]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[47]~105_combout\,
	datab => \inst14|inst9|Equal52~2_combout\,
	datac => \inst14|inst9|Equal54~2_combout\,
	datad => \inst14|inst9|data[44]~124_combout\,
	combout => \inst14|inst9|data[60]~167_combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst14|inst9|data[60]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~169_combout\ = (\inst14|inst9|data[60]~168_combout\ & (\inst14|inst13|PC[0]~0_combout\ & (\inst14|inst9|data[60]~167_combout\ & \inst14|inst9|data[32]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~168_combout\,
	datab => \inst14|inst13|PC[0]~0_combout\,
	datac => \inst14|inst9|data[60]~167_combout\,
	datad => \inst14|inst9|data[32]~65_combout\,
	combout => \inst14|inst9|data[60]~169_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst14|inst9|data[72]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~170_combout\ = (\inst14|inst9|data[72]~162_combout\) # ((\inst14|inst9|data[72]~166_combout\ & (\inst14|inst9|data[72]~163_combout\ & \inst14|inst9|data[60]~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~166_combout\,
	datab => \inst14|inst9|data[72]~162_combout\,
	datac => \inst14|inst9|data[72]~163_combout\,
	datad => \inst14|inst9|data[60]~169_combout\,
	combout => \inst14|inst9|data[72]~170_combout\);

-- Location: FF_X25_Y20_N5
\inst14|inst13|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[72]~170_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(0));

-- Location: LCCOMB_X28_Y15_N16
\inst14|inst9|data[71]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~173_combout\ = (\inst14|inst9|Equal0~2_combout\) # ((\inst14|inst9|Equal32~1_combout\) # ((\inst14|inst9|Equal29~2_combout\) # (\inst14|inst9|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datab => \inst14|inst9|Equal32~1_combout\,
	datac => \inst14|inst9|Equal29~2_combout\,
	datad => \inst14|inst9|Equal33~2_combout\,
	combout => \inst14|inst9|data[71]~173_combout\);

-- Location: LCCOMB_X27_Y16_N10
\inst14|inst9|data[71]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~174_combout\ = (((\inst14|inst9|data[71]~173_combout\) # (!\inst14|inst9|data[71]~74_combout\)) # (!\inst14|inst9|Equal38~2_combout\)) # (!\inst14|inst9|data~211_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~211_combout\,
	datab => \inst14|inst9|Equal38~2_combout\,
	datac => \inst14|inst9|data[71]~74_combout\,
	datad => \inst14|inst9|data[71]~173_combout\,
	combout => \inst14|inst9|data[71]~174_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst14|inst9|data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~153_combout\ = (!\inst14|inst9|Equal9~3_combout\ & (!\inst14|inst9|Equal6~5_combout\ & ((!\inst14|inst9|Equal10~3_combout\) # (!\inst14|inst9|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal10~3_combout\,
	datad => \inst14|inst9|Equal6~5_combout\,
	combout => \inst14|inst9|data~153_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst14|inst9|data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~154_combout\ = (\inst14|inst9|data~153_combout\ & (\inst14|inst9|data~96_combout\ & (\inst14|inst9|data~133_combout\ & \inst14|inst9|data[81]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~153_combout\,
	datab => \inst14|inst9|data~96_combout\,
	datac => \inst14|inst9|data~133_combout\,
	datad => \inst14|inst9|data[81]~103_combout\,
	combout => \inst14|inst9|data~154_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst14|inst9|data[71]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~175_combout\ = (!\inst14|inst9|Equal28~2_combout\ & (!\inst14|inst9|Equal4~2_combout\ & ((\inst14|inst9|data[71]~174_combout\) # (!\inst14|inst9|data~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal28~2_combout\,
	datab => \inst14|inst9|Equal4~2_combout\,
	datac => \inst14|inst9|data[71]~174_combout\,
	datad => \inst14|inst9|data~154_combout\,
	combout => \inst14|inst9|data[71]~175_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst14|inst9|data[75]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~176_combout\ = (!\inst14|inst9|Equal58~2_combout\ & (!\inst14|inst9|Equal60~0_combout\ & (!\inst14|inst9|Equal59~2_combout\ & \inst14|inst13|B4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal58~2_combout\,
	datab => \inst14|inst9|Equal60~0_combout\,
	datac => \inst14|inst9|Equal59~2_combout\,
	datad => \inst14|inst13|B4~0_combout\,
	combout => \inst14|inst9|data[75]~176_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst14|inst9|data[71]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~177_combout\ = ((\inst14|inst9|data~83_combout\ & \inst14|inst9|data[75]~176_combout\)) # (!\inst14|inst9|data[71]~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data~83_combout\,
	datac => \inst14|inst9|data[71]~175_combout\,
	datad => \inst14|inst9|data[75]~176_combout\,
	combout => \inst14|inst9|data[71]~177_combout\);

-- Location: FF_X25_Y19_N1
\inst14|inst13|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[71]~177_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWA~q\);

-- Location: LCCOMB_X25_Y20_N10
\ACCA|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|B[7]~0_combout\ = ((\inst14|inst13|EA\(0)) # (\inst14|inst13|nWA~q\)) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|nWA~q\,
	combout => \ACCA|B[7]~0_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst14|inst9|data[24]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[24]~183_combout\ = (\inst14|inst9|Equal22~2_combout\) # ((\inst14|inst9|Equal52~2_combout\ & (\inst14|inst9|data[81]~108_combout\ & \inst14|inst13|PC[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~2_combout\,
	datab => \inst14|inst9|Equal52~2_combout\,
	datac => \inst14|inst9|data[81]~108_combout\,
	datad => \inst14|inst13|PC[0]~2_combout\,
	combout => \inst14|inst9|data[24]~183_combout\);

-- Location: FF_X25_Y19_N27
\inst14|inst13|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[24]~183_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|BD~q\);

-- Location: LCCOMB_X25_Y15_N6
\inst14|inst9|data[75]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~220_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst9|Equal63~0_combout\ & (!\inst14|inst9|Equal62~2_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst9|Equal63~0_combout\,
	datac => \inst14|inst9|Equal62~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|data[75]~220_combout\);

-- Location: LCCOMB_X25_Y15_N24
\inst14|inst9|Equal56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal56~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & 
-- \inst14|inst9|Equal51~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|Equal56~2_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst14|inst9|data[25]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[25]~182_combout\ = (\inst14|inst9|Equal56~2_combout\) # ((\inst14|inst9|data[75]~220_combout\ & (\inst14|inst9|data[75]~214_combout\ & \inst14|inst9|data[75]~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[75]~220_combout\,
	datab => \inst14|inst9|data[75]~214_combout\,
	datac => \inst14|inst9|Equal56~2_combout\,
	datad => \inst14|inst9|data[75]~176_combout\,
	combout => \inst14|inst9|data[25]~182_combout\);

-- Location: FF_X25_Y19_N21
\inst14|inst13|nRW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[25]~182_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nRW~q\);

-- Location: LCCOMB_X25_Y19_N18
\BusAlta|PortR~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR~9_combout\ = (\inst14|inst13|BD~q\ & !\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR~9_combout\);

-- Location: LCCOMB_X25_Y17_N8
\inst14|inst9|data[58]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~156_combout\ = (!\inst14|inst9|Equal9~3_combout\ & (!\inst14|inst9|Equal4~2_combout\ & ((!\inst14|inst9|Equal10~3_combout\) # (!\inst14|inst9|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal10~3_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|data[58]~156_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst14|inst9|data[60]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~185_combout\ = (!\inst14|inst9|Equal13~2_combout\ & (((!\inst14|inst9|Equal5~2_combout\ & !\inst14|inst9|Equal9~2_combout\)) # (!\inst14|inst9|Equal55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal13~2_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal9~2_combout\,
	datad => \inst14|inst9|Equal55~0_combout\,
	combout => \inst14|inst9|data[60]~185_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst14|inst9|data[81]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~158_combout\ = (\inst14|inst9|data[31]~56_combout\ & (\inst14|inst9|data[60]~213_combout\ & (\inst14|inst9|data[37]~63_combout\ & \inst14|inst9|data[81]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~56_combout\,
	datab => \inst14|inst9|data[60]~213_combout\,
	datac => \inst14|inst9|data[37]~63_combout\,
	datad => \inst14|inst9|data[81]~103_combout\,
	combout => \inst14|inst9|data[81]~158_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst14|inst9|data[9]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[9]~184_combout\ = (\inst14|inst9|data[81]~100_combout\ & (\inst14|inst9|data~79_combout\ & (\inst14|inst9|data[81]~158_combout\ & \inst14|inst9|data[81]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[81]~100_combout\,
	datab => \inst14|inst9|data~79_combout\,
	datac => \inst14|inst9|data[81]~158_combout\,
	datad => \inst14|inst9|data[81]~106_combout\,
	combout => \inst14|inst9|data[9]~184_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst14|inst9|data[58]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~186_combout\ = ((\inst14|inst9|Equal59~2_combout\) # (!\inst14|inst9|data[9]~184_combout\)) # (!\inst14|inst9|data[60]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[60]~185_combout\,
	datac => \inst14|inst9|Equal59~2_combout\,
	datad => \inst14|inst9|data[9]~184_combout\,
	combout => \inst14|inst9|data[58]~186_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst14|inst9|data[58]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~187_combout\ = ((\inst14|inst9|data[75]~176_combout\ & (\inst14|inst9|data~83_combout\)) # (!\inst14|inst9|data[75]~176_combout\ & ((!\inst14|inst9|data[58]~186_combout\)))) # (!\inst14|inst9|data[58]~156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[58]~156_combout\,
	datab => \inst14|inst9|data~83_combout\,
	datac => \inst14|inst9|data[58]~186_combout\,
	datad => \inst14|inst9|data[75]~176_combout\,
	combout => \inst14|inst9|data[58]~187_combout\);

-- Location: FF_X25_Y19_N9
\inst14|inst13|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[58]~187_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nDUPA~q\);

-- Location: LCCOMB_X25_Y20_N16
\inst14|inst9|data[76]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[76]~178_combout\ = ((\inst14|inst9|data[73]~67_combout\ & \inst14|inst9|Equal59~2_combout\)) # (!\inst14|inst9|data[73]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~67_combout\,
	datac => \inst14|inst9|data[73]~171_combout\,
	datad => \inst14|inst9|Equal59~2_combout\,
	combout => \inst14|inst9|data[76]~178_combout\);

-- Location: FF_X25_Y20_N17
\inst14|inst13|EB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[76]~178_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(1));

-- Location: LCCOMB_X27_Y19_N10
\inst14|inst9|data[75]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~180_combout\ = (\inst14|inst9|Equal48~2_combout\) # ((\inst14|inst9|Equal59~2_combout\) # ((\inst14|inst9|Equal3~6_combout\) # (!\inst14|inst9|data[74]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal48~2_combout\,
	datab => \inst14|inst9|Equal59~2_combout\,
	datac => \inst14|inst9|data[74]~70_combout\,
	datad => \inst14|inst9|Equal3~6_combout\,
	combout => \inst14|inst9|data[75]~180_combout\);

-- Location: LCCOMB_X25_Y19_N6
\inst14|inst9|data[75]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~181_combout\ = (\inst14|inst9|data[75]~180_combout\) # ((\inst14|inst9|data[75]~220_combout\ & (\inst14|inst9|data[75]~214_combout\ & \inst14|inst9|data[75]~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[75]~220_combout\,
	datab => \inst14|inst9|data[75]~214_combout\,
	datac => \inst14|inst9|data[75]~180_combout\,
	datad => \inst14|inst9|data[75]~176_combout\,
	combout => \inst14|inst9|data[75]~181_combout\);

-- Location: FF_X25_Y19_N7
\inst14|inst13|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[75]~181_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(0));

-- Location: LCCOMB_X27_Y19_N20
\inst14|inst9|data[14]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~148_combout\ = (!\inst14|inst9|Equal22~2_combout\ & \inst14|inst9|data[81]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|Equal22~2_combout\,
	datad => \inst14|inst9|data[81]~108_combout\,
	combout => \inst14|inst9|data[14]~148_combout\);

-- Location: LCCOMB_X27_Y19_N22
\inst14|inst9|data[74]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[74]~179_combout\ = ((\inst14|inst9|data[74]~53_combout\ & (\inst14|inst9|Equal48~2_combout\ & \inst14|inst9|data[14]~148_combout\))) # (!\inst14|inst9|data[74]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[74]~53_combout\,
	datab => \inst14|inst9|Equal48~2_combout\,
	datac => \inst14|inst9|data[74]~70_combout\,
	datad => \inst14|inst9|data[14]~148_combout\,
	combout => \inst14|inst9|data[74]~179_combout\);

-- Location: FF_X27_Y19_N23
\inst14|inst13|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[74]~179_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWB~q\);

-- Location: LCCOMB_X26_Y20_N20
\ACCB|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|B[7]~0_combout\ = ((\inst14|inst13|EB\(0)) # (\inst14|inst13|nWB~q\)) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|B[7]~0_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst1|Yupa2[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~4_combout\ = (\inst14|inst13|nDUPA~q\) # ((\PC|TRI_STATE_C~0_combout\) # (!\ACCB|B[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datac => \PC|TRI_STATE_C~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[7]~4_combout\);

-- Location: LCCOMB_X25_Y19_N30
\inst14|inst9|data[46]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~121_combout\ = (!\inst14|inst9|Equal58~2_combout\ & (\inst14|inst9|Equal60~0_combout\ & (!\inst14|inst9|Equal59~2_combout\ & \inst14|inst13|B4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal58~2_combout\,
	datab => \inst14|inst9|Equal60~0_combout\,
	datac => \inst14|inst9|Equal59~2_combout\,
	datad => \inst14|inst13|B4~0_combout\,
	combout => \inst14|inst9|data[46]~121_combout\);

-- Location: LCCOMB_X25_Y19_N22
\inst14|inst9|data[48]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~189_combout\ = ((\inst14|inst9|Equal52~2_combout\) # ((\inst14|inst9|data[46]~121_combout\) # (\inst14|inst9|Equal22~2_combout\))) # (!\inst14|inst9|Equal25~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal25~2_combout\,
	datab => \inst14|inst9|Equal52~2_combout\,
	datac => \inst14|inst9|data[46]~121_combout\,
	datad => \inst14|inst9|Equal22~2_combout\,
	combout => \inst14|inst9|data[48]~189_combout\);

-- Location: FF_X25_Y19_N23
\inst14|inst13|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[48]~189_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA1~q\);

-- Location: LCCOMB_X26_Y16_N26
\inst14|inst13|PC[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|PC[0]~1_combout\ = (\inst14|inst13|PC[0]~0_combout\ & (\inst14|inst9|data~71_combout\ & (!\inst14|inst9|Equal50~0_combout\ & \inst14|inst9|data[81]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC[0]~0_combout\,
	datab => \inst14|inst9|data~71_combout\,
	datac => \inst14|inst9|Equal50~0_combout\,
	datad => \inst14|inst9|data[81]~108_combout\,
	combout => \inst14|inst13|PC[0]~1_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst14|inst9|data[46]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~122_combout\ = (\inst14|inst9|Equal22~2_combout\) # ((\inst14|inst9|data[46]~121_combout\) # ((\inst14|inst9|Equal52~2_combout\ & \inst14|inst13|PC[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~2_combout\,
	datab => \inst14|inst9|Equal52~2_combout\,
	datac => \inst14|inst13|PC[0]~1_combout\,
	datad => \inst14|inst9|data[46]~121_combout\,
	combout => \inst14|inst9|data[46]~122_combout\);

-- Location: FF_X26_Y16_N21
\inst14|inst13|RA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[46]~122_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(2));

-- Location: LCCOMB_X27_Y19_N8
\inst14|inst9|data[32]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~123_combout\ = (\inst14|inst9|data[60]~50_combout\ & (\inst14|inst9|data[60]~51_combout\ & \inst14|inst9|data[32]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~50_combout\,
	datac => \inst14|inst9|data[60]~51_combout\,
	datad => \inst14|inst9|data[32]~54_combout\,
	combout => \inst14|inst9|data[32]~123_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst14|inst9|data[44]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~126_combout\ = (!\inst14|inst9|Equal37~0_combout\ & (\inst14|inst9|data[37]~63_combout\ & (\inst14|inst9|Equal46~2_combout\ & \inst14|inst9|data[44]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal37~0_combout\,
	datab => \inst14|inst9|data[37]~63_combout\,
	datac => \inst14|inst9|Equal46~2_combout\,
	datad => \inst14|inst9|data[44]~125_combout\,
	combout => \inst14|inst9|data[44]~126_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst14|inst9|data[44]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~130_combout\ = (\inst14|inst9|Equal6~5_combout\) # (((\inst14|inst9|data[32]~123_combout\ & \inst14|inst9|data[44]~126_combout\)) # (!\inst14|inst9|data[44]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~5_combout\,
	datab => \inst14|inst9|data[32]~123_combout\,
	datac => \inst14|inst9|data[44]~129_combout\,
	datad => \inst14|inst9|data[44]~126_combout\,
	combout => \inst14|inst9|data[44]~130_combout\);

-- Location: FF_X24_Y18_N11
\inst14|inst13|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[44]~130_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(0));

-- Location: LCCOMB_X26_Y20_N24
\AUX|TRI_STATE_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_C~0_combout\ = ((\inst14|inst13|RA\(2)) # (\inst14|inst13|RA\(0))) # (!\inst14|inst13|nERA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nERA1~q\,
	datac => \inst14|inst13|RA\(2),
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst1|Yupa2[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~5_combout\ = ((\BusAlta|PortR~9_combout\) # ((\inst1|Yupa2[7]~4_combout\) # (!\AUX|TRI_STATE_C~0_combout\))) # (!\ACCA|B[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \BusAlta|PortR~9_combout\,
	datac => \inst1|Yupa2[7]~4_combout\,
	datad => \AUX|TRI_STATE_C~0_combout\,
	combout => \inst1|Yupa2[7]~5_combout\);

-- Location: LCCOMB_X26_Y20_N30
\AUX|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~0_combout\ = ((\inst1|Yupa2[7]~3_combout\) # (\inst14|inst13|RA\(0))) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~5_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~0_combout\);

-- Location: FF_X26_Y20_N31
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(15));

-- Location: FF_X24_Y19_N17
\inst14|inst13|nHB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal6~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nHB~q\);

-- Location: LCCOMB_X24_Y19_N6
\inst5|inst7|SALIDA~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~9_combout\ = (\inst14|inst13|nHB~q\) # ((\inst14|inst13|EB\(0) & (!\inst14|inst13|nWB~q\ & !\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|nHB~q\,
	combout => \inst5|inst7|SALIDA~9_combout\);

-- Location: LCCOMB_X26_Y19_N8
\ACCA|TRI_STATE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|TRI_STATE~0_combout\ = (!\inst14|inst13|nWA~q\ & (\inst14|inst13|EA\(0) & !\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst14|inst13|nEPC0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nEPC0~7_combout\ = (\inst14|inst9|data[70]~69_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\)) # (!\inst14|inst9|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[70]~69_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst13|nEPC0~7_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst14|inst9|data[35]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[35]~188_combout\ = (\inst14|inst13|nEPC0~7_combout\ & (((!\inst14|inst9|Equal25~2_combout\)))) # (!\inst14|inst13|nEPC0~7_combout\ & ((\inst14|inst9|Equal9~3_combout\) # ((\inst14|inst9|Equal8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|Equal25~2_combout\,
	datac => \inst14|inst9|Equal8~2_combout\,
	datad => \inst14|inst13|nEPC0~7_combout\,
	combout => \inst14|inst9|data[35]~188_combout\);

-- Location: FF_X24_Y17_N21
\inst14|inst13|nEPC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[35]~188_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC0~q\);

-- Location: LCCOMB_X24_Y17_N6
\PC|TRI_STATE_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_D~0_combout\ = (!\inst14|inst13|PC\(1) & (\inst14|inst13|nEPC0~q\ & (!\inst14|inst13|PC\(2) & !\inst14|inst13|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(1),
	datab => \inst14|inst13|nEPC0~q\,
	datac => \inst14|inst13|PC\(2),
	datad => \inst14|inst13|PC\(0),
	combout => \PC|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst14|inst9|data[47]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~160_combout\ = (!\inst14|inst9|Equal62~2_combout\ & (!\inst14|inst9|Equal13~2_combout\ & (!\inst14|inst9|Equal6~5_combout\ & \inst14|inst9|Equal25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal62~2_combout\,
	datab => \inst14|inst9|Equal13~2_combout\,
	datac => \inst14|inst9|Equal6~5_combout\,
	datad => \inst14|inst9|Equal25~2_combout\,
	combout => \inst14|inst9|data[47]~160_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst14|inst9|data[47]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~157_combout\ = ((\inst14|inst9|Equal50~0_combout\) # (!\inst14|inst9|data[81]~100_combout\)) # (!\inst14|inst9|data[58]~156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[58]~156_combout\,
	datac => \inst14|inst9|Equal50~0_combout\,
	datad => \inst14|inst9|data[81]~100_combout\,
	combout => \inst14|inst9|data[47]~157_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst14|inst9|data[47]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~159_combout\ = ((\inst14|inst9|data[47]~157_combout\) # (!\inst14|inst9|data[81]~158_combout\)) # (!\inst14|inst9|data[47]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[47]~127_combout\,
	datac => \inst14|inst9|data[81]~158_combout\,
	datad => \inst14|inst9|data[47]~157_combout\,
	combout => \inst14|inst9|data[47]~159_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst14|inst9|data[47]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~161_combout\ = (((\inst14|inst9|Equal54~2_combout\) # (!\inst14|inst9|data[47]~159_combout\)) # (!\inst14|inst9|data[47]~105_combout\)) # (!\inst14|inst9|data[47]~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[47]~160_combout\,
	datab => \inst14|inst9|data[47]~105_combout\,
	datac => \inst14|inst9|Equal54~2_combout\,
	datad => \inst14|inst9|data[47]~159_combout\,
	combout => \inst14|inst9|data[47]~161_combout\);

-- Location: FF_X24_Y18_N21
\inst14|inst13|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[47]~161_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA0~q\);

-- Location: LCCOMB_X24_Y18_N24
\inst5|inst7|SALIDA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~8_combout\ = (\inst14|inst13|nDUPA~q\) # ((!\inst14|inst13|RA\(0) & (\inst14|inst13|nERA0~q\ & !\inst14|inst13|RA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \inst14|inst13|nERA0~q\,
	datac => \inst14|inst13|RA\(2),
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst5|inst7|SALIDA~8_combout\);

-- Location: LCCOMB_X27_Y17_N10
\inst5|inst7|SALIDA~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~10_combout\ = (\inst5|inst7|SALIDA~9_combout\) # ((\ACCA|TRI_STATE~0_combout\) # ((\PC|TRI_STATE_D~0_combout\) # (\inst5|inst7|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|SALIDA~9_combout\,
	datab => \ACCA|TRI_STATE~0_combout\,
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \inst5|inst7|SALIDA~8_combout\,
	combout => \inst5|inst7|SALIDA~10_combout\);

-- Location: LCCOMB_X31_Y18_N30
\ACCB|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[7]~0_combout\ = ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(7)) # (!\inst14|inst13|EB\(0)))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \ACCB|data_out\(7),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[7]~0_combout\);

-- Location: LCCOMB_X28_Y18_N16
\ACCB|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~0_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[7]~0_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst5|inst7|SALIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|C[7]~0_combout\,
	datad => \inst5|inst7|SALIDA~11_combout\,
	combout => \ACCB|data_out[7]~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\ACCB|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~8_combout\ = (\inst14|inst13|nWB~q\ & ((\inst14|inst13|EB\(1)) # (\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[0]~8_combout\);

-- Location: FF_X28_Y18_N17
\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[7]~0_combout\,
	asdata => \inst1|Yupa2[7]~6_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

-- Location: LCCOMB_X24_Y19_N18
\inst5|inst7|SALIDA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~4_combout\ = (\ACCB|data_out\(7)) # ((\inst14|inst13|EB\(1)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \inst14|inst13|EB\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \inst5|inst7|SALIDA~4_combout\);

-- Location: LCCOMB_X24_Y18_N22
\BusAlta|PortR[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[7]~10_combout\ = ((\inst14|inst13|BD~q\ & ((\inst1|Yupa2[7]~6_combout\))) # (!\inst14|inst13|BD~q\ & (\inst5|inst7|SALIDA~11_combout\))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst5|inst7|SALIDA~11_combout\,
	datad => \inst1|Yupa2[7]~6_combout\,
	combout => \BusAlta|PortR[7]~10_combout\);

-- Location: LCCOMB_X28_Y16_N20
\inst14|inst9|data[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~44_combout\ = (!\inst14|inst9|Equal22~2_combout\ & (!\inst14|inst9|Equal1~1_combout\ & !\inst14|inst9|Equal32~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~2_combout\,
	datab => \inst14|inst9|Equal1~1_combout\,
	datad => \inst14|inst9|Equal32~1_combout\,
	combout => \inst14|inst9|data[26]~44_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst14|inst9|data[26]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~43_combout\ = (!\inst14|inst9|Equal24~2_combout\ & (((!\inst14|inst9|Equal9~2_combout\ & !\inst14|inst9|Equal1~0_combout\)) # (!\inst14|inst9|Equal51~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~2_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal24~2_combout\,
	datad => \inst14|inst9|Equal51~3_combout\,
	combout => \inst14|inst9|data[26]~43_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst14|inst9|data[26]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~45_combout\ = (\inst14|inst9|data[26]~44_combout\ & (\inst14|inst9|data[26]~43_combout\ & (!\inst14|inst9|Equal7~2_combout\ & !\inst14|inst9|Equal28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~44_combout\,
	datab => \inst14|inst9|data[26]~43_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|Equal28~2_combout\,
	combout => \inst14|inst9|data[26]~45_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst14|inst9|data[26]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~47_combout\ = (((\inst14|inst9|Equal46~2_combout\) # (!\inst14|inst9|data[26]~46_combout\)) # (!\inst14|inst9|Equal55~0_combout\)) # (!\inst14|inst9|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal55~0_combout\,
	datac => \inst14|inst9|Equal46~2_combout\,
	datad => \inst14|inst9|data[26]~46_combout\,
	combout => \inst14|inst9|data[26]~47_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst14|inst9|data[26]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~49_combout\ = (\inst14|inst9|data[26]~47_combout\) # (((\inst14|inst9|Equal36~2_combout\) # (\inst14|inst9|Equal9~3_combout\)) # (!\inst14|inst9|data[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~47_combout\,
	datab => \inst14|inst9|data[26]~48_combout\,
	datac => \inst14|inst9|Equal36~2_combout\,
	datad => \inst14|inst9|Equal9~3_combout\,
	combout => \inst14|inst9|data[26]~49_combout\);

-- Location: LCCOMB_X25_Y16_N6
\inst14|inst9|data[26]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~66_combout\ = ((!\inst14|inst9|data[26]~49_combout\ & (\inst14|inst9|data[32]~65_combout\ & \inst14|inst9|data[31]~55_combout\))) # (!\inst14|inst9|data[26]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~45_combout\,
	datab => \inst14|inst9|data[26]~49_combout\,
	datac => \inst14|inst9|data[32]~65_combout\,
	datad => \inst14|inst9|data[31]~55_combout\,
	combout => \inst14|inst9|data[26]~66_combout\);

-- Location: FF_X25_Y16_N7
\inst14|inst13|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[26]~66_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nAS~q\);

-- Location: LCCOMB_X21_Y18_N2
\inst6|MEM_WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|MEM_WRITE~0_combout\ = (\inst14|inst13|nRW~q\ & \inst14|inst13|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|nRW~q\,
	datad => \inst14|inst13|nAS~q\,
	combout => \inst6|MEM_WRITE~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst6|MEM_READ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|MEM_READ~0_combout\ = (!\inst14|inst13|nRW~q\ & \inst14|inst13|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|nRW~q\,
	datad => \inst14|inst13|nAS~q\,
	combout => \inst6|MEM_READ~0_combout\);

-- Location: FF_X21_Y18_N21
\inst6|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|MEM_READ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~en_q\);

-- Location: LCCOMB_X31_Y18_N20
\ACCB|C[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[0]~7_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(0))) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(0),
	combout => \ACCB|C[0]~7_combout\);

-- Location: LCCOMB_X28_Y18_N6
\ACCB|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~7_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[0]~7_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst1|Yupa[0]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[0]~7_combout\,
	datab => \inst14|inst13|EB\(1),
	datad => \inst1|Yupa[0]~44_combout\,
	combout => \ACCB|data_out[0]~7_combout\);

-- Location: LCCOMB_X23_Y19_N4
\AUX|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|C[3]~1_combout\ = (\AUX|data_out\(11)) # ((\inst14|inst13|RA\(0)) # ((\inst14|inst13|RA\(2)) # (!\inst14|inst13|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \inst14|inst13|RA\(0),
	datac => \inst14|inst13|nERA1~q\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|C[3]~1_combout\);

-- Location: LCCOMB_X31_Y18_N18
\ACCB|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[3]~4_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(3))) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(3),
	combout => \ACCB|C[3]~4_combout\);

-- Location: LCCOMB_X23_Y19_N8
\AUX|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~8_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(8))) # (!\inst14|inst13|RA\(2) & ((\inst5|inst7|SALIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(2),
	datac => \AUX|data_out\(8),
	datad => \inst5|inst7|SALIDA~11_combout\,
	combout => \AUX|data_out~8_combout\);

-- Location: FF_X23_Y19_N9
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(7));

-- Location: LCCOMB_X24_Y18_N30
\AUX|TRI_STATE_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_D~0_combout\ = ((\inst14|inst13|RA\(2)) # (\inst14|inst13|RA\(0))) # (!\inst14|inst13|nERA0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nERA0~q\,
	datac => \inst14|inst13|RA\(2),
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X32_Y19_N22
\ACCA|C[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[6]~1_combout\ = (\ACCA|data_out\(6)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[6]~1_combout\);

-- Location: LCCOMB_X26_Y20_N16
\ACCA|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[6]~1_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[6]~1_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst5|inst6|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[6]~1_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \ACCA|data_out[6]~1_combout\);

-- Location: LCCOMB_X26_Y20_N8
\AUX|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~1_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(15))) # (!\inst14|inst13|RA\(0) & (((\inst1|Yupa2[6]~10_combout\) # (!\inst1|Yupa2[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \inst1|Yupa2[7]~5_combout\,
	datac => \inst1|Yupa2[6]~10_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~1_combout\);

-- Location: FF_X26_Y20_N9
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(14));

-- Location: LCCOMB_X25_Y18_N24
\inst14|inst9|data[31]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~208_combout\ = (!\inst14|inst9|Equal67~0_combout\ & (((!\inst14|inst9|Equal63~0_combout\ & !\inst14|inst9|Equal55~0_combout\)) # (!\inst14|inst9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal67~0_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst9|Equal63~0_combout\,
	datad => \inst14|inst9|Equal55~0_combout\,
	combout => \inst14|inst9|data[31]~208_combout\);

-- Location: LCCOMB_X25_Y15_N14
\inst14|inst9|data[37]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~203_combout\ = (!\inst14|inst9|Equal61~0_combout\ & ((!\inst14|inst9|Equal51~2_combout\) # (!\inst14|inst9|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal61~0_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|data[37]~203_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst14|inst9|data[37]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~204_combout\ = (\inst14|inst9|data[37]~203_combout\ & (\inst14|inst9|data[37]~64_combout\ & (\inst14|inst9|data~93_combout\ & \inst14|inst9|data[37]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~203_combout\,
	datab => \inst14|inst9|data[37]~64_combout\,
	datac => \inst14|inst9|data~93_combout\,
	datad => \inst14|inst9|data[37]~63_combout\,
	combout => \inst14|inst9|data[37]~204_combout\);

-- Location: LCCOMB_X25_Y16_N2
\inst14|inst9|data[31]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~205_combout\ = (((\inst14|inst9|Equal55~0_combout\) # (\inst14|inst9|Equal28~2_combout\)) # (!\inst14|inst9|Equal1~0_combout\)) # (!\inst14|inst9|Equal68~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal68~2_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal55~0_combout\,
	datad => \inst14|inst9|Equal28~2_combout\,
	combout => \inst14|inst9|data[31]~205_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst14|inst9|data[31]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~206_combout\ = ((\inst14|inst9|data[31]~205_combout\) # ((\inst14|inst9|Equal48~2_combout\) # (!\inst14|inst9|data[90]~77_combout\))) # (!\inst14|inst9|data~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~87_combout\,
	datab => \inst14|inst9|data[31]~205_combout\,
	datac => \inst14|inst9|Equal48~2_combout\,
	datad => \inst14|inst9|data[90]~77_combout\,
	combout => \inst14|inst9|data[31]~206_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst14|inst9|data[31]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~207_combout\ = (\inst14|inst9|data[31]~206_combout\) # (((!\inst14|inst9|data[31]~55_combout\) # (!\inst14|inst9|data[60]~167_combout\)) # (!\inst14|inst9|data[72]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~206_combout\,
	datab => \inst14|inst9|data[72]~164_combout\,
	datac => \inst14|inst9|data[60]~167_combout\,
	datad => \inst14|inst9|data[31]~55_combout\,
	combout => \inst14|inst9|data[31]~207_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst14|inst9|data[31]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~209_combout\ = (((!\inst14|inst9|data[31]~207_combout\) # (!\inst14|inst9|data[37]~204_combout\)) # (!\inst14|inst9|data[31]~208_combout\)) # (!\inst14|inst9|data[31]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~56_combout\,
	datab => \inst14|inst9|data[31]~208_combout\,
	datac => \inst14|inst9|data[37]~204_combout\,
	datad => \inst14|inst9|data[31]~207_combout\,
	combout => \inst14|inst9|data[31]~209_combout\);

-- Location: FF_X25_Y16_N17
\inst14|inst13|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[31]~209_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCBD~q\);

-- Location: CLKCTRL_G17
\inst14|inst13|nCBD~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|inst13|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|inst13|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y20_N4
\ACCA|C[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[2]~5_combout\ = (\inst14|inst13|nWA~q\) # (((\ACCA|data_out\(2)) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(0),
	datac => \ACCA|data_out\(2),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[2]~5_combout\);

-- Location: LCCOMB_X28_Y20_N22
\ACCA|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[2]~5_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[2]~5_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[2]~5_combout\,
	datad => \inst1|Yupa[2]~42_combout\,
	combout => \ACCA|data_out[2]~5_combout\);

-- Location: LCCOMB_X23_Y19_N22
\AUX|C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|C[2]~2_combout\ = (\AUX|data_out\(10)) # ((\inst14|inst13|RA\(0)) # ((\inst14|inst13|RA\(2)) # (!\inst14|inst13|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(10),
	datab => \inst14|inst13|RA\(0),
	datac => \inst14|inst13|nERA1~q\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|C[2]~2_combout\);

-- Location: FF_X28_Y19_N15
\inst14|inst13|UPA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal7~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(4));

-- Location: LCCOMB_X26_Y20_N2
\inst14|inst9|data[60]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~195_combout\ = (\inst14|inst9|Equal7~2_combout\) # (!\inst14|inst9|data[60]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~50_combout\,
	datad => \inst14|inst9|Equal7~2_combout\,
	combout => \inst14|inst9|data[60]~195_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst14|inst13|nDUPA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nDUPA~0_combout\ = (!\inst14|inst9|Equal59~2_combout\ & (!\inst14|inst9|Equal58~2_combout\ & \inst14|inst13|B4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal59~2_combout\,
	datac => \inst14|inst9|Equal58~2_combout\,
	datad => \inst14|inst13|B4~0_combout\,
	combout => \inst14|inst13|nDUPA~0_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst14|inst9|data[60]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~196_combout\ = (\inst14|inst9|data[60]~185_combout\ & (\inst14|inst9|data[58]~156_combout\ & (\inst14|inst9|data[60]~219_combout\ & \inst14|inst9|data[60]~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~185_combout\,
	datab => \inst14|inst9|data[58]~156_combout\,
	datac => \inst14|inst9|data[60]~219_combout\,
	datad => \inst14|inst9|data[60]~169_combout\,
	combout => \inst14|inst9|data[60]~196_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst14|inst9|data[60]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[60]~197_combout\ = (\inst14|inst9|data[60]~195_combout\) # ((\inst14|inst13|nDUPA~0_combout\ & (\inst14|inst9|Equal70~2_combout\)) # (!\inst14|inst13|nDUPA~0_combout\ & ((\inst14|inst9|data[60]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[60]~195_combout\,
	datab => \inst14|inst9|Equal70~2_combout\,
	datac => \inst14|inst13|nDUPA~0_combout\,
	datad => \inst14|inst9|data[60]~196_combout\,
	combout => \inst14|inst9|data[60]~197_combout\);

-- Location: FF_X25_Y20_N9
\inst14|inst13|UPA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[60]~197_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(0));

-- Location: LCCOMB_X25_Y17_N16
\inst14|inst9|data[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[57]~68_combout\ = (!\inst14|inst9|Equal5~3_combout\ & (!\inst14|inst9|Equal4~2_combout\ & (\inst14|inst9|data[73]~67_combout\ & !\inst14|inst9|Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal5~3_combout\,
	datab => \inst14|inst9|Equal4~2_combout\,
	datac => \inst14|inst9|data[73]~67_combout\,
	datad => \inst14|inst9|Equal6~5_combout\,
	combout => \inst14|inst9|data[57]~68_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst14|inst13|nEPC0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nEPC0~6_combout\ = (\inst14|inst9|data[70]~69_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\) # (!\inst14|inst9|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal10~3_combout\,
	datac => \inst14|inst9|data[70]~69_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst13|nEPC0~6_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst14|inst9|data[62]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[62]~193_combout\ = (\inst14|inst13|nEPC0~6_combout\ & (((\inst14|inst9|Equal70~2_combout\)))) # (!\inst14|inst13|nEPC0~6_combout\ & (!\inst14|inst9|Equal9~3_combout\ & (\inst14|inst9|data[57]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|data[57]~68_combout\,
	datac => \inst14|inst9|Equal70~2_combout\,
	datad => \inst14|inst13|nEPC0~6_combout\,
	combout => \inst14|inst9|data[62]~193_combout\);

-- Location: FF_X24_Y17_N23
\inst14|inst13|UPA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[62]~193_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(2));

-- Location: LCCOMB_X24_Y17_N8
\inst14|inst9|data[61]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[61]~194_combout\ = (\inst14|inst13|nEPC0~6_combout\ & (((\inst14|inst9|Equal59~2_combout\)))) # (!\inst14|inst13|nEPC0~6_combout\ & (!\inst14|inst9|Equal9~3_combout\ & (\inst14|inst9|data[57]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|data[57]~68_combout\,
	datac => \inst14|inst9|Equal59~2_combout\,
	datad => \inst14|inst13|nEPC0~6_combout\,
	combout => \inst14|inst9|data[61]~194_combout\);

-- Location: FF_X24_Y17_N9
\inst14|inst13|UPA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[61]~194_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(1));

-- Location: LCCOMB_X24_Y17_N14
\inst14|inst9|data[70]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[70]~198_combout\ = (\inst14|inst9|data[70]~69_combout\ & ((\inst14|inst9|Equal10~4_combout\) # ((\inst14|inst9|Equal1~0_combout\ & \inst14|inst9|Equal10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal10~3_combout\,
	datac => \inst14|inst9|data[70]~69_combout\,
	datad => \inst14|inst9|Equal10~4_combout\,
	combout => \inst14|inst9|data[70]~198_combout\);

-- Location: FF_X24_Y17_N15
\inst14|inst13|selbus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[70]~198_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|selbus~q\);

-- Location: LCCOMB_X29_Y18_N4
\inst1|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~3_combout\ = (\inst14|inst13|UPA\(2) & (\inst14|inst13|selbus~q\ & ((\inst14|inst13|UPA\(0)) # (\inst14|inst13|UPA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(0),
	datab => \inst14|inst13|UPA\(2),
	datac => \inst14|inst13|UPA\(1),
	datad => \inst14|inst13|selbus~q\,
	combout => \inst1|Mux40~3_combout\);

-- Location: LCCOMB_X28_Y18_N2
\ACCB|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~5_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[2]~5_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst1|Yupa[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[2]~5_combout\,
	datab => \inst1|Yupa[2]~42_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[2]~5_combout\);

-- Location: FF_X28_Y18_N3
\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[2]~5_combout\,
	asdata => \inst1|Yupa2[2]~27_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

-- Location: LCCOMB_X31_Y18_N4
\ACCB|C[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[2]~5_combout\ = ((\ACCB|data_out\(2)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(2),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[2]~5_combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst1|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~0_combout\ = (!\inst14|inst13|UPA\(2) & \inst14|inst13|UPA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(2),
	datad => \inst14|inst13|UPA\(0),
	combout => \inst1|Mux40~0_combout\);

-- Location: LCCOMB_X31_Y19_N20
\inst1|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~2_combout\ = (\inst14|inst13|UPA\(2)) # ((\inst14|inst13|UPA\(1) & \inst14|inst13|UPA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|UPA\(2),
	datac => \inst14|inst13|UPA\(1),
	datad => \inst14|inst13|UPA\(0),
	combout => \inst1|Mux40~2_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst14|inst9|data[57]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[57]~199_combout\ = (!\inst14|inst9|Equal7~2_combout\ & (\inst14|inst9|data[57]~68_combout\ & ((\inst14|inst9|Equal8~2_combout\) # (\inst14|inst9|Equal70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal8~2_combout\,
	datab => \inst14|inst9|Equal70~2_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|data[57]~68_combout\,
	combout => \inst14|inst9|data[57]~199_combout\);

-- Location: FF_X24_Y17_N31
\inst14|inst13|UPA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[57]~199_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(7));

-- Location: LCCOMB_X24_Y19_N22
\inst1|Q[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[7]~0_combout\ = (!\inst14|inst13|UPA\(7) & !\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|UPA\(7),
	datac => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Q[7]~0_combout\);

-- Location: FF_X30_Y19_N13
\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux8~4_combout\,
	sload => VCC,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

-- Location: LCCOMB_X30_Y17_N28
\inst1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = (\inst14|inst13|UPA\(1) & ((\inst1|Q\(2)))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \inst14|inst13|UPA\(1),
	datad => \inst1|Q\(2),
	combout => \inst1|Mux30~0_combout\);

-- Location: LCCOMB_X30_Y18_N28
\inst1|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~1_combout\ = (\inst14|inst13|UPA\(0) & ((\inst14|inst13|UPA\(2)))) # (!\inst14|inst13|UPA\(0) & ((\inst14|inst13|UPA\(1)) # (!\inst14|inst13|UPA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datab => \inst14|inst13|UPA\(0),
	datad => \inst14|inst13|UPA\(2),
	combout => \inst1|Mux40~1_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst1|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux38~0_combout\ = (\inst1|Mux40~2_combout\ & (((\inst1|Yupa[2]~42_combout\ & \inst1|Mux40~1_combout\)))) # (!\inst1|Mux40~2_combout\ & ((\inst1|Mux30~0_combout\) # ((!\inst1|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~2_combout\,
	datab => \inst1|Mux30~0_combout\,
	datac => \inst1|Yupa[2]~42_combout\,
	datad => \inst1|Mux40~1_combout\,
	combout => \inst1|Mux38~0_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst1|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux38~1_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux38~0_combout\ & (\ACCA|C[2]~5_combout\)) # (!\inst1|Mux38~0_combout\ & ((\ACCB|C[2]~5_combout\))))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \ACCB|C[2]~5_combout\,
	datac => \inst1|Mux40~0_combout\,
	datad => \inst1|Mux38~0_combout\,
	combout => \inst1|Mux38~1_combout\);

-- Location: LCCOMB_X30_Y20_N30
\inst1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~11_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[2]~27_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(4),
	datab => \inst1|Mux40~3_combout\,
	datac => \inst1|Mux38~1_combout\,
	datad => \inst1|Yupa2[2]~27_combout\,
	combout => \inst1|Add0~11_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst14|inst9|data[65]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[65]~191_combout\ = (\inst14|inst9|Equal1~0_combout\ & (\inst14|inst9|Equal10~3_combout\ & (\inst14|inst9|data[70]~69_combout\ & !\inst14|inst9|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal10~3_combout\,
	datac => \inst14|inst9|data[70]~69_combout\,
	datad => \inst14|inst9|Equal10~4_combout\,
	combout => \inst14|inst9|data[65]~191_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst14|inst9|data[65]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[65]~192_combout\ = (\inst14|inst9|data[65]~191_combout\) # ((!\inst14|inst9|Equal0~2_combout\ & \inst14|inst9|Equal7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|data[65]~191_combout\,
	combout => \inst14|inst9|data[65]~192_combout\);

-- Location: FF_X24_Y17_N5
\inst14|inst13|UPA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[65]~192_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(5));

-- Location: LCCOMB_X30_Y18_N26
\inst1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux27~0_combout\ = (!\inst14|inst13|UPA\(1) & (\inst14|inst13|UPA\(0) & !\inst14|inst13|UPA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datab => \inst14|inst13|UPA\(0),
	datad => \inst14|inst13|UPA\(2),
	combout => \inst1|Mux27~0_combout\);

-- Location: LCCOMB_X31_Y18_N8
\inst1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~1_combout\ = (\inst14|inst13|UPA\(1) & (((\inst1|Q\(2) & !\inst14|inst13|UPA\(0))))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \inst1|Q\(2),
	datac => \inst14|inst13|UPA\(0),
	datad => \inst14|inst13|UPA\(1),
	combout => \inst1|Mux30~1_combout\);

-- Location: LCCOMB_X31_Y18_N6
\inst1|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~2_combout\ = (\ACCB|C[2]~5_combout\ & ((\inst1|Mux27~0_combout\) # ((\inst1|Mux30~1_combout\ & \inst14|inst13|UPA\(2))))) # (!\ACCB|C[2]~5_combout\ & (((\inst1|Mux30~1_combout\ & \inst14|inst13|UPA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[2]~5_combout\,
	datab => \inst1|Mux27~0_combout\,
	datac => \inst1|Mux30~1_combout\,
	datad => \inst14|inst13|UPA\(2),
	combout => \inst1|Mux30~2_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux30~2_combout\,
	combout => \inst1|Add0~12_combout\);

-- Location: LCCOMB_X28_Y20_N20
\ACCA|C[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[1]~6_combout\ = (((\inst14|inst13|nWA~q\) # (\ACCA|data_out\(1))) # (!\inst14|inst13|EA\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \ACCA|data_out\(1),
	combout => \ACCA|C[1]~6_combout\);

-- Location: LCCOMB_X28_Y20_N16
\ACCA|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[1]~6_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[1]~6_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[1]~6_combout\,
	datad => \inst1|Yupa[1]~43_combout\,
	combout => \ACCA|data_out[1]~6_combout\);

-- Location: FF_X29_Y19_N29
\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux9~4_combout\,
	sload => VCC,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

-- Location: LCCOMB_X30_Y18_N4
\inst1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux29~1_combout\ = (\inst14|inst13|UPA\(1) & (!\inst14|inst13|UPA\(0) & (\inst1|Q\(1)))) # (!\inst14|inst13|UPA\(1) & (((\ACCA|C[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datab => \inst14|inst13|UPA\(0),
	datac => \inst1|Q\(1),
	datad => \ACCA|C[1]~6_combout\,
	combout => \inst1|Mux29~1_combout\);

-- Location: LCCOMB_X31_Y18_N2
\inst1|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux29~2_combout\ = (\inst14|inst13|UPA\(2) & ((\inst1|Mux29~1_combout\) # ((\ACCB|C[1]~6_combout\ & \inst1|Mux27~0_combout\)))) # (!\inst14|inst13|UPA\(2) & (((\ACCB|C[1]~6_combout\ & \inst1|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(2),
	datab => \inst1|Mux29~1_combout\,
	datac => \ACCB|C[1]~6_combout\,
	datad => \inst1|Mux27~0_combout\,
	combout => \inst1|Mux29~2_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst1|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux37~2_combout\ = (\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[1]~31_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux37~1_combout\,
	datac => \inst1|Mux40~3_combout\,
	datad => \inst1|Yupa2[1]~31_combout\,
	combout => \inst1|Mux37~2_combout\);

-- Location: FF_X25_Y19_N19
\inst14|inst13|UPA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal59~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(6));

-- Location: LCCOMB_X30_Y20_N24
\inst1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~3_combout\ = (\inst14|inst13|UPA\(6) & \inst14|inst13|UPA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|UPA\(6),
	datad => \inst14|inst13|UPA\(5),
	combout => \inst1|Mux7~3_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~3_combout\ = (\inst1|Mux29~2_combout\ & (\inst1|Mux7~3_combout\ & (\inst14|inst13|UPA\(4) $ (!\inst1|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(4),
	datab => \inst1|Mux29~2_combout\,
	datac => \inst1|Mux37~2_combout\,
	datad => \inst1|Mux7~3_combout\,
	combout => \inst1|Mux9~3_combout\);

-- Location: LCCOMB_X28_Y19_N20
\inst1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (!\inst14|inst13|UPA\(6) & ((!\inst14|inst13|UPA\(4)) # (!\inst14|inst13|UPA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datab => \inst14|inst13|UPA\(4),
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst14|inst13|UPA\(5) & (!\inst14|inst13|UPA\(6) & \inst14|inst13|UPA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datab => \inst14|inst13|UPA\(6),
	datad => \inst14|inst13|UPA\(4),
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux29~2_combout\) # (\inst1|Mux37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux29~2_combout\,
	datac => \inst1|Mux3~2_combout\,
	datad => \inst1|Mux37~2_combout\,
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X31_Y19_N16
\inst1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = (\inst14|inst13|UPA\(6) & (\inst14|inst13|UPA\(5) $ (\inst1|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datac => \inst14|inst13|UPA\(6),
	datad => \inst1|Mux29~2_combout\,
	combout => \inst1|Mux9~1_combout\);

-- Location: LCCOMB_X29_Y16_N6
\inst1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~2_combout\ = (\inst1|Mux9~0_combout\) # ((\inst1|Mux9~1_combout\ & (\inst14|inst13|UPA\(4) $ (\inst1|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(4),
	datab => \inst1|Mux9~0_combout\,
	datac => \inst1|Mux9~1_combout\,
	datad => \inst1|Mux37~2_combout\,
	combout => \inst1|Mux9~2_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux29~2_combout\,
	combout => \inst1|Add0~14_combout\);

-- Location: LCCOMB_X30_Y18_N0
\BusAlta|PortR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR~8_combout\ = (!\inst14|inst13|nRW~q\ & !\inst14|inst13|BD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|nRW~q\,
	datad => \inst14|inst13|BD~q\,
	combout => \BusAlta|PortR~8_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst1|Mux36~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux36~7_combout\ = (\inst1|Yupa[0]~39_combout\) # ((!\inst14|inst13|UPA\(2) & ((!\inst14|inst13|UPA\(1)) # (!\inst14|inst13|UPA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(0),
	datab => \inst14|inst13|UPA\(2),
	datac => \inst14|inst13|UPA\(1),
	datad => \inst1|Yupa[0]~39_combout\,
	combout => \inst1|Mux36~7_combout\);

-- Location: LCCOMB_X28_Y20_N6
\ACCA|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~7_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[0]~7_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[0]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~44_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[0]~7_combout\);

-- Location: LCCOMB_X28_Y20_N26
\ACCA|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~8_combout\ = (\inst14|inst13|nWA~q\ & ((\inst14|inst13|EA\(1)) # (\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	combout => \ACCA|data_out[0]~8_combout\);

-- Location: FF_X28_Y20_N7
\ACCA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[0]~7_combout\,
	asdata => \inst1|Yupa2[0]~36_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(0));

-- Location: LCCOMB_X28_Y20_N2
\ACCA|C[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[0]~7_combout\ = (((\inst14|inst13|nWA~q\) # (\ACCA|data_out\(0))) # (!\inst14|inst13|EA\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \ACCA|data_out\(0),
	combout => \ACCA|C[0]~7_combout\);

-- Location: LCCOMB_X30_Y18_N14
\inst1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux27~1_combout\ = (\inst14|inst13|UPA\(1) & (\inst1|Q\(0) & (!\inst14|inst13|UPA\(0)))) # (!\inst14|inst13|UPA\(1) & (((\ACCA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst14|inst13|UPA\(0),
	datac => \ACCA|C[0]~7_combout\,
	datad => \inst14|inst13|UPA\(1),
	combout => \inst1|Mux27~1_combout\);

-- Location: LCCOMB_X31_Y18_N12
\inst1|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux27~2_combout\ = (\inst1|Mux27~1_combout\ & ((\inst14|inst13|UPA\(2)) # ((\inst1|Mux27~0_combout\ & \ACCB|C[0]~7_combout\)))) # (!\inst1|Mux27~1_combout\ & (\inst1|Mux27~0_combout\ & (\ACCB|C[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~1_combout\,
	datab => \inst1|Mux27~0_combout\,
	datac => \ACCB|C[0]~7_combout\,
	datad => \inst14|inst13|UPA\(2),
	combout => \inst1|Mux27~2_combout\);

-- Location: LCCOMB_X29_Y18_N14
\inst1|Mux36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux36~6_combout\ = (\inst1|Mux40~3_combout\ & (((\inst1|Yupa2[0]~35_combout\) # (!\inst1|Yupa2[7]~5_combout\)))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux36~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux36~5_combout\,
	datab => \inst1|Mux40~3_combout\,
	datac => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[0]~35_combout\,
	combout => \inst1|Mux36~6_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~3_combout\ = (\inst1|Mux27~2_combout\ & (\inst1|Mux7~3_combout\ & (\inst1|Mux36~6_combout\ $ (!\inst14|inst13|UPA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~2_combout\,
	datab => \inst1|Mux36~6_combout\,
	datac => \inst14|inst13|UPA\(4),
	datad => \inst1|Mux7~3_combout\,
	combout => \inst1|Mux10~3_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~1_combout\ = (\inst14|inst13|UPA\(6) & (\inst14|inst13|UPA\(5) $ (\inst1|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(6),
	datab => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux27~2_combout\,
	combout => \inst1|Mux10~1_combout\);

-- Location: LCCOMB_X29_Y18_N28
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux36~6_combout\) # (\inst1|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux3~2_combout\,
	datac => \inst1|Mux36~6_combout\,
	datad => \inst1|Mux27~2_combout\,
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y18_N22
\inst1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~2_combout\ = (\inst1|Mux10~0_combout\) # ((\inst1|Mux10~1_combout\ & (\inst14|inst13|UPA\(4) $ (\inst1|Mux36~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(4),
	datab => \inst1|Mux36~6_combout\,
	datac => \inst1|Mux10~1_combout\,
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|Mux10~2_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux27~2_combout\,
	combout => \inst1|Add0~17_combout\);

-- Location: LCCOMB_X30_Y20_N12
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst14|inst13|UPA\(5) & \inst14|inst13|UPA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datad => \inst14|inst13|UPA\(4),
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst14|inst9|data[57]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[57]~200_combout\ = (\inst14|inst9|data[57]~199_combout\) # (!\inst14|inst9|data[73]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data[57]~199_combout\,
	datad => \inst14|inst9|data[73]~171_combout\,
	combout => \inst14|inst9|data[57]~200_combout\);

-- Location: FF_X24_Y17_N17
\inst14|inst13|selmux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[57]~200_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|selmux~q\);

-- Location: LCCOMB_X25_Y20_N22
\inst14|inst9|data[73]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~221_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst9|Equal68~2_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|data[73]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst9|Equal68~2_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|data[73]~67_combout\,
	combout => \inst14|inst9|data[73]~221_combout\);

-- Location: FF_X25_Y20_N23
\inst14|inst13|ACCSEC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[73]~221_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|ACCSEC~q\);

-- Location: LCCOMB_X25_Y18_N28
\inst14|inst9|data[9]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[9]~201_combout\ = (\inst14|inst9|data~83_combout\ & (!\inst14|inst9|Equal12~2_combout\ & (\inst14|inst9|data[90]~110_combout\ & !\inst14|inst9|Equal62~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~83_combout\,
	datab => \inst14|inst9|Equal12~2_combout\,
	datac => \inst14|inst9|data[90]~110_combout\,
	datad => \inst14|inst9|Equal62~2_combout\,
	combout => \inst14|inst9|data[9]~201_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst14|inst9|data[9]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[9]~202_combout\ = (\inst14|inst9|Equal9~3_combout\) # (((\inst14|inst9|data[9]~184_combout\ & \inst14|inst9|data[9]~201_combout\)) # (!\inst14|inst9|data[9]~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|data[9]~184_combout\,
	datac => \inst14|inst9|data[9]~224_combout\,
	datad => \inst14|inst9|data[9]~201_combout\,
	combout => \inst14|inst9|data[9]~202_combout\);

-- Location: FF_X25_Y18_N15
\inst14|inst13|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[9]~202_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CC~q\);

-- Location: LCCOMB_X30_Y17_N20
\inst5|inst13|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst13|output~3_combout\ = (!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|nRW~q\) # (\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nRW~q\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst5|inst7|SALIDA~10_combout\,
	combout => \inst5|inst13|output~3_combout\);

-- Location: FF_X30_Y19_N11
\inst1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(7));

-- Location: LCCOMB_X30_Y17_N18
\inst1|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux35~2_combout\ = (\inst14|inst13|UPA\(1) & ((\inst1|Q\(7)))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datac => \inst14|inst13|UPA\(1),
	datad => \inst1|Q\(7),
	combout => \inst1|Mux35~2_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst1|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux43~0_combout\ = (\inst1|Mux40~2_combout\ & (\inst1|Mux40~1_combout\ & ((\inst5|inst7|SALIDA~11_combout\)))) # (!\inst1|Mux40~2_combout\ & (((\inst1|Mux35~2_combout\)) # (!\inst1|Mux40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~2_combout\,
	datab => \inst1|Mux40~1_combout\,
	datac => \inst1|Mux35~2_combout\,
	datad => \inst5|inst7|SALIDA~11_combout\,
	combout => \inst1|Mux43~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst1|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux43~1_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux43~0_combout\ & (\ACCA|C[7]~0_combout\)) # (!\inst1|Mux43~0_combout\ & ((\ACCB|C[7]~0_combout\))))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \ACCB|C[7]~0_combout\,
	datac => \inst1|Mux40~0_combout\,
	datad => \inst1|Mux43~0_combout\,
	combout => \inst1|Mux43~1_combout\);

-- Location: LCCOMB_X31_Y19_N2
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[7]~6_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux43~1_combout\,
	datad => \inst1|Yupa2[7]~6_combout\,
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\inst1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst1|Mux35~1_combout\ $ (\inst14|inst13|UPA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux35~1_combout\,
	datad => \inst14|inst13|UPA\(5),
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X28_Y18_N22
\ACCB|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[6]~1_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[6]~1_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst5|inst6|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|C[6]~1_combout\,
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \ACCB|data_out[6]~1_combout\);

-- Location: FF_X28_Y18_N23
\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[6]~1_combout\,
	asdata => \inst1|Yupa2[6]~11_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

-- Location: LCCOMB_X28_Y18_N24
\ACCB|C[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[6]~1_combout\ = (\ACCB|data_out\(6)) # (((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(1))) # (!\inst14|inst13|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(6),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|C[6]~1_combout\);

-- Location: LCCOMB_X31_Y19_N22
\inst1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux34~0_combout\ = (\inst14|inst13|UPA\(1) & (\inst1|Q\(6))) # (!\inst14|inst13|UPA\(1) & ((\ACCA|C[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst14|inst13|UPA\(1),
	datad => \ACCA|C[6]~1_combout\,
	combout => \inst1|Mux34~0_combout\);

-- Location: LCCOMB_X31_Y19_N24
\inst1|Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux42~2_combout\ = (\inst1|Mux40~1_combout\ & ((\inst1|Mux40~2_combout\ & ((\inst5|inst6|SALIDA~8_combout\))) # (!\inst1|Mux40~2_combout\ & (\inst1|Mux34~0_combout\)))) # (!\inst1|Mux40~1_combout\ & (((!\inst1|Mux40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux34~0_combout\,
	datab => \inst1|Mux40~1_combout\,
	datac => \inst1|Mux40~2_combout\,
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \inst1|Mux42~2_combout\);

-- Location: LCCOMB_X31_Y19_N26
\inst1|Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux42~3_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux42~2_combout\ & (\ACCA|C[6]~1_combout\)) # (!\inst1|Mux42~2_combout\ & ((\ACCB|C[6]~1_combout\))))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~0_combout\,
	datab => \ACCA|C[6]~1_combout\,
	datac => \ACCB|C[6]~1_combout\,
	datad => \inst1|Mux42~2_combout\,
	combout => \inst1|Mux42~3_combout\);

-- Location: LCCOMB_X31_Y19_N14
\inst1|Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux42~4_combout\ = (\inst1|Mux40~3_combout\ & (((\inst1|Yupa2[6]~10_combout\)) # (!\inst1|Yupa2[7]~5_combout\))) # (!\inst1|Mux40~3_combout\ & (((\inst1|Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst1|Yupa2[7]~5_combout\,
	datac => \inst1|Mux42~3_combout\,
	datad => \inst1|Yupa2[6]~10_combout\,
	combout => \inst1|Mux42~4_combout\);

-- Location: LCCOMB_X29_Y19_N2
\inst1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\inst1|Mux34~2_combout\ & (\inst14|inst13|UPA\(5) $ (\inst1|Mux42~4_combout\ $ (\inst14|inst13|UPA\(4))))) # (!\inst1|Mux34~2_combout\ & (\inst14|inst13|UPA\(5) & (\inst1|Mux42~4_combout\ $ (\inst14|inst13|UPA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux34~2_combout\,
	datab => \inst14|inst13|UPA\(5),
	datac => \inst1|Mux42~4_combout\,
	datad => \inst14|inst13|UPA\(4),
	combout => \inst1|Mux4~2_combout\);

-- Location: LCCOMB_X31_Y19_N8
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[6]~11_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux42~3_combout\,
	datad => \inst1|Yupa2[6]~11_combout\,
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst1|Yupa[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~15_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(5) & ((\AUX|TRI_STATE_D~0_combout\) # (\AUX|data_out\(5))))) # (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|TRI_STATE_D~0_combout\) # ((\AUX|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \AUX|TRI_STATE_D~0_combout\,
	datac => \AUX|data_out\(5),
	datad => \ACCA|data_out\(5),
	combout => \inst1|Yupa[5]~15_combout\);

-- Location: LCCOMB_X31_Y18_N28
\ACCB|C[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[5]~2_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(5))) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(5),
	combout => \ACCB|C[5]~2_combout\);

-- Location: LCCOMB_X28_Y18_N28
\ACCB|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[5]~2_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[5]~2_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst1|Yupa[5]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[5]~2_combout\,
	datab => \inst1|Yupa[5]~40_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[5]~2_combout\);

-- Location: LCCOMB_X23_Y19_N0
\AUX|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~2_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(14))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \AUX|data_out\(14),
	datac => \inst1|Yupa2[5]~15_combout\,
	combout => \AUX|data_out~2_combout\);

-- Location: FF_X23_Y19_N1
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(13));

-- Location: LCCOMB_X23_Y19_N16
\AUX|C[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|C[5]~0_combout\ = (\inst14|inst13|RA\(0)) # ((\AUX|data_out\(13)) # ((\inst14|inst13|RA\(2)) # (!\inst14|inst13|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \AUX|data_out\(13),
	datac => \inst14|inst13|nERA1~q\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|C[5]~0_combout\);

-- Location: FF_X29_Y19_N1
\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux5~3_combout\,
	sload => VCC,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

-- Location: LCCOMB_X32_Y19_N4
\inst1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~0_combout\ = (\inst14|inst13|UPA\(1) & ((\inst1|Q\(5)))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datab => \ACCA|C[5]~2_combout\,
	datad => \inst1|Q\(5),
	combout => \inst1|Mux33~0_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst1|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux41~0_combout\ = (\inst1|Mux40~1_combout\ & ((\inst1|Mux40~2_combout\ & ((\inst1|Yupa[5]~40_combout\))) # (!\inst1|Mux40~2_combout\ & (\inst1|Mux33~0_combout\)))) # (!\inst1|Mux40~1_combout\ & (((!\inst1|Mux40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux33~0_combout\,
	datab => \inst1|Mux40~1_combout\,
	datac => \inst1|Mux40~2_combout\,
	datad => \inst1|Yupa[5]~40_combout\,
	combout => \inst1|Mux41~0_combout\);

-- Location: LCCOMB_X30_Y19_N22
\inst1|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux41~1_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux41~0_combout\ & (\ACCA|C[5]~2_combout\)) # (!\inst1|Mux41~0_combout\ & ((\ACCB|C[5]~2_combout\))))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[5]~2_combout\,
	datab => \inst1|Mux40~0_combout\,
	datac => \ACCB|C[5]~2_combout\,
	datad => \inst1|Mux41~0_combout\,
	combout => \inst1|Mux41~1_combout\);

-- Location: LCCOMB_X30_Y19_N28
\inst1|Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux41~2_combout\ = (\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[5]~15_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux41~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datac => \inst1|Mux41~1_combout\,
	datad => \inst1|Yupa2[5]~15_combout\,
	combout => \inst1|Mux41~2_combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (\inst1|Mux33~2_combout\ & (\inst14|inst13|UPA\(4) $ (\inst1|Mux41~2_combout\ $ (\inst14|inst13|UPA\(5))))) # (!\inst1|Mux33~2_combout\ & (\inst14|inst13|UPA\(5) & (\inst14|inst13|UPA\(4) $ (\inst1|Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(4),
	datab => \inst1|Mux33~2_combout\,
	datac => \inst1|Mux41~2_combout\,
	datad => \inst14|inst13|UPA\(5),
	combout => \inst1|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y19_N26
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|Mux33~2_combout\) # ((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[5]~15_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst1|Mux33~2_combout\,
	datac => \inst1|Mux41~1_combout\,
	datad => \inst1|Yupa2[5]~15_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y19_N24
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[5]~15_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux41~1_combout\,
	datad => \inst1|Yupa2[5]~15_combout\,
	combout => \inst1|Add0~4_combout\);

-- Location: LCCOMB_X28_Y18_N14
\ACCB|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[4]~3_combout\ = ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(4)) # (!\inst14|inst13|EB\(0)))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \ACCB|data_out\(4),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[4]~3_combout\);

-- Location: LCCOMB_X28_Y18_N26
\ACCB|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~3_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[4]~3_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst5|inst4|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|C[4]~3_combout\,
	datad => \inst5|inst4|SALIDA~8_combout\,
	combout => \ACCB|data_out[4]~3_combout\);

-- Location: FF_X28_Y18_N27
\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[4]~3_combout\,
	asdata => \inst1|Yupa2[4]~19_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

-- Location: LCCOMB_X29_Y20_N8
\inst1|Yupa2[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~17_combout\ = (\ACCA|data_out\(4) & ((\ACCB|data_out\(4)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(4) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \ACCB|data_out\(4),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[4]~17_combout\);

-- Location: LCCOMB_X23_Y19_N30
\BusAlta|PortR[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[4]~16_combout\ = ((\inst14|inst13|BD~q\ & ((\inst1|Yupa2[4]~19_combout\))) # (!\inst14|inst13|BD~q\ & (\inst5|inst4|SALIDA~8_combout\))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst5|inst4|SALIDA~8_combout\,
	datad => \inst1|Yupa2[4]~19_combout\,
	combout => \BusAlta|PortR[4]~16_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst14|inst9|data[90]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~111_combout\ = (!\inst14|inst9|Equal62~2_combout\ & (!\inst14|inst9|Equal66~2_combout\ & (\inst14|inst9|data[90]~110_combout\ & \inst14|inst9|data[81]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal62~2_combout\,
	datab => \inst14|inst9|Equal66~2_combout\,
	datac => \inst14|inst9|data[90]~110_combout\,
	datad => \inst14|inst9|data[81]~109_combout\,
	combout => \inst14|inst9|data[90]~111_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst14|inst9|data[37]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~223_combout\ = ((\inst14|inst9|Equal14~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & \inst14|inst9|data[90]~111_combout\))) # (!\inst14|inst9|data[37]~204_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal14~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst9|data[37]~204_combout\,
	datad => \inst14|inst9|data[90]~111_combout\,
	combout => \inst14|inst9|data[37]~223_combout\);

-- Location: FF_X25_Y18_N3
\inst14|inst13|nEPC2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[37]~223_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC2~q\);

-- Location: LCCOMB_X23_Y18_N2
\PC|TRI_STATE_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_E~0_combout\ = (!\inst14|inst13|PC\(2) & (!\inst14|inst13|PC\(0) & (\inst14|inst13|nEPC2~q\ & !\inst14|inst13|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \inst14|inst13|PC\(0),
	datac => \inst14|inst13|nEPC2~q\,
	datad => \inst14|inst13|PC\(1),
	combout => \PC|TRI_STATE_E~0_combout\);

-- Location: LCCOMB_X23_Y18_N4
\ENTRADA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~1_combout\ = (\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(1)))) # (!\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(1),
	datac => \PC|data_out\(1),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~1_combout\);

-- Location: FF_X23_Y18_N5
\inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(1));

-- Location: LCCOMB_X23_Y18_N22
\ENTRADA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~2_combout\ = (\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(2)))) # (!\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(2),
	datac => \PC|data_out\(2),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~2_combout\);

-- Location: FF_X23_Y18_N23
\inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(2));

-- Location: LCCOMB_X23_Y18_N8
\ENTRADA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~3_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\PC|data_out\(3))) # (!\PC|TRI_STATE_E~0_combout\ & ((\AUX|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(3),
	datac => \AUX|data_out\(3),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~3_combout\);

-- Location: FF_X23_Y18_N9
\inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(3));

-- Location: LCCOMB_X23_Y18_N18
\ENTRADA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~4_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\PC|data_out\(4))) # (!\PC|TRI_STATE_E~0_combout\ & ((\AUX|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(4),
	datac => \AUX|data_out\(4),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~4_combout\);

-- Location: FF_X23_Y18_N19
\inst|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(4));

-- Location: LCCOMB_X23_Y18_N24
\ENTRADA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~5_combout\ = (\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(5)))) # (!\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datac => \PC|data_out\(5),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~5_combout\);

-- Location: FF_X23_Y18_N25
\inst|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(5));

-- Location: LCCOMB_X23_Y18_N10
\ENTRADA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~6_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\PC|data_out\(6))) # (!\PC|TRI_STATE_E~0_combout\ & ((\AUX|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \AUX|data_out\(6),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~6_combout\);

-- Location: FF_X23_Y18_N11
\inst|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(6));

-- Location: LCCOMB_X23_Y18_N28
\ENTRADA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~7_combout\ = (\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(7)))) # (!\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(7),
	datac => \PC|data_out\(7),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~7_combout\);

-- Location: FF_X23_Y18_N29
\inst|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(7));

-- Location: LCCOMB_X21_Y18_N26
\BusAlta|PortR[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[1]~22_combout\ = ((\inst14|inst13|BD~q\ & (\inst1|Yupa2[1]~31_combout\)) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[1]~43_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst1|Yupa2[1]~31_combout\,
	datad => \inst1|Yupa[1]~43_combout\,
	combout => \BusAlta|PortR[1]~22_combout\);

-- Location: LCCOMB_X21_Y18_N6
\BusAlta|PortR[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[2]~20_combout\ = ((\inst14|inst13|BD~q\ & (\inst1|Yupa2[2]~27_combout\)) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[2]~42_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst1|Yupa2[2]~27_combout\,
	datad => \inst1|Yupa[2]~42_combout\,
	combout => \BusAlta|PortR[2]~20_combout\);

-- Location: LCCOMB_X21_Y18_N30
\BusAlta|PortR[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[3]~18_combout\ = ((\inst14|inst13|BD~q\ & ((\inst1|Yupa2[3]~23_combout\))) # (!\inst14|inst13|BD~q\ & (\inst1|Yupa[3]~41_combout\))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst1|Yupa[3]~41_combout\,
	datad => \inst1|Yupa2[3]~23_combout\,
	combout => \BusAlta|PortR[3]~18_combout\);

-- Location: LCCOMB_X21_Y18_N4
\BusAlta|PortR[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[5]~14_combout\ = ((\inst14|inst13|BD~q\ & (\inst1|Yupa2[5]~15_combout\)) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[5]~40_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst1|Yupa2[5]~15_combout\,
	datad => \inst1|Yupa[5]~40_combout\,
	combout => \BusAlta|PortR[5]~14_combout\);

-- Location: M9K_X22_Y18_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800200001000AA0001400AA0001400500001000970000400C6000000086",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~inputclkctrl_outclk\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y18_N14
\BusAlta|PortR[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[5]~15_combout\ = (\inst6|data[7]~en_q\ & (((\BusAlta|PortR[5]~14_combout\ & \inst6|mem_rtl_0|auto_generated|ram_block1a5\)))) # (!\inst6|data[7]~en_q\ & (((\BusAlta|PortR[5]~14_combout\)) # (!\inst14|inst13|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \BusAlta|PortR[5]~14_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \BusAlta|PortR[5]~15_combout\);

-- Location: LCCOMB_X21_Y18_N8
\BusAlta|PortR[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[3]~19_combout\ = (\inst6|data[7]~en_q\ & (((\BusAlta|PortR[3]~18_combout\ & \inst6|mem_rtl_0|auto_generated|ram_block1a3\)))) # (!\inst6|data[7]~en_q\ & (((\BusAlta|PortR[3]~18_combout\)) # (!\inst14|inst13|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \BusAlta|PortR[3]~18_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \BusAlta|PortR[3]~19_combout\);

-- Location: LCCOMB_X21_Y18_N28
\BusAlta|PortR[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[2]~21_combout\ = (\BusAlta|PortR[2]~20_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a2\) # (!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[2]~20_combout\ & (!\inst14|inst13|nRW~q\ & ((!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[2]~20_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[2]~21_combout\);

-- Location: LCCOMB_X21_Y18_N0
\BusAlta|PortR[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[1]~23_combout\ = (\inst6|data[7]~en_q\ & (((\BusAlta|PortR[1]~22_combout\ & \inst6|mem_rtl_0|auto_generated|ram_block1a1\)))) # (!\inst6|data[7]~en_q\ & (((\BusAlta|PortR[1]~22_combout\)) # (!\inst14|inst13|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \BusAlta|PortR[1]~22_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \BusAlta|PortR[1]~23_combout\);

-- Location: LCCOMB_X21_Y18_N12
\BusAlta|PortR[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[4]~17_combout\ = (\inst6|data[7]~en_q\ & (((\BusAlta|PortR[4]~16_combout\ & \inst6|mem_rtl_0|auto_generated|ram_block1a4\)))) # (!\inst6|data[7]~en_q\ & (((\BusAlta|PortR[4]~16_combout\)) # (!\inst14|inst13|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \BusAlta|PortR[4]~16_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \BusAlta|PortR[4]~17_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst1|Yupa2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~16_combout\ = (\BusAlta|PortR~9_combout\ & (\BusAlta|PortR[4]~17_combout\ & ((\inst1|Banderas\(4)) # (!\inst14|inst13|nDUPA~q\)))) # (!\BusAlta|PortR~9_combout\ & (((\inst1|Banderas\(4))) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR~9_combout\,
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Banderas\(4),
	datad => \BusAlta|PortR[4]~17_combout\,
	combout => \inst1|Yupa2[4]~16_combout\);

-- Location: LCCOMB_X24_Y20_N24
\AUX|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~3_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(13))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(13),
	datac => \inst1|Yupa2[4]~19_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~3_combout\);

-- Location: FF_X24_Y20_N25
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(12));

-- Location: LCCOMB_X29_Y20_N18
\inst1|Yupa2[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~18_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\PC|data_out\(12)) # (!\PC|TRI_STATE_C~0_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(12) & ((\PC|data_out\(12)) # (!\PC|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(12),
	datac => \PC|TRI_STATE_C~0_combout\,
	datad => \PC|data_out\(12),
	combout => \inst1|Yupa2[4]~18_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst1|Yupa2[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~19_combout\ = ((\inst1|Yupa2[4]~17_combout\ & (\inst1|Yupa2[4]~16_combout\ & \inst1|Yupa2[4]~18_combout\))) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~5_combout\,
	datab => \inst1|Yupa2[4]~17_combout\,
	datac => \inst1|Yupa2[4]~16_combout\,
	datad => \inst1|Yupa2[4]~18_combout\,
	combout => \inst1|Yupa2[4]~19_combout\);

-- Location: LCCOMB_X28_Y20_N24
\inst1|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[4]~feeder_combout\ = \inst1|Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Mux6~3_combout\,
	combout => \inst1|Q[4]~feeder_combout\);

-- Location: FF_X28_Y20_N25
\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[4]~feeder_combout\,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

-- Location: LCCOMB_X28_Y20_N8
\inst1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~0_combout\ = (\inst14|inst13|UPA\(1) & ((\inst1|Q\(4)))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACCA|C[4]~3_combout\,
	datac => \inst14|inst13|UPA\(1),
	datad => \inst1|Q\(4),
	combout => \inst1|Mux32~0_combout\);

-- Location: LCCOMB_X29_Y20_N20
\inst1|Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~4_combout\ = (\inst1|Mux40~2_combout\ & (((\inst1|Mux40~1_combout\ & \inst5|inst4|SALIDA~8_combout\)))) # (!\inst1|Mux40~2_combout\ & ((\inst1|Mux32~0_combout\) # ((!\inst1|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~0_combout\,
	datab => \inst1|Mux40~2_combout\,
	datac => \inst1|Mux40~1_combout\,
	datad => \inst5|inst4|SALIDA~8_combout\,
	combout => \inst1|Mux40~4_combout\);

-- Location: LCCOMB_X29_Y20_N10
\inst1|Mux40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~5_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux40~4_combout\ & (\ACCA|C[4]~3_combout\)) # (!\inst1|Mux40~4_combout\ & ((\ACCB|C[4]~3_combout\))))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux40~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst1|Mux40~0_combout\,
	datac => \ACCB|C[4]~3_combout\,
	datad => \inst1|Mux40~4_combout\,
	combout => \inst1|Mux40~5_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst1|Mux40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux40~6_combout\ = (\inst1|Mux40~3_combout\ & (\inst1|Yupa2[4]~19_combout\)) # (!\inst1|Mux40~3_combout\ & ((\inst1|Mux40~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Yupa2[4]~19_combout\,
	datac => \inst1|Mux40~3_combout\,
	datad => \inst1|Mux40~5_combout\,
	combout => \inst1|Mux40~6_combout\);

-- Location: LCCOMB_X29_Y20_N30
\inst1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~2_combout\ = (\inst1|Mux32~2_combout\ & (\inst14|inst13|UPA\(5) $ (\inst14|inst13|UPA\(4) $ (\inst1|Mux40~6_combout\)))) # (!\inst1|Mux32~2_combout\ & (\inst14|inst13|UPA\(5) & (\inst14|inst13|UPA\(4) $ (\inst1|Mux40~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~2_combout\,
	datab => \inst14|inst13|UPA\(5),
	datac => \inst14|inst13|UPA\(4),
	datad => \inst1|Mux40~6_combout\,
	combout => \inst1|Mux6~2_combout\);

-- Location: LCCOMB_X29_Y20_N26
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|Mux32~2_combout\) # ((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[4]~19_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux40~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~2_combout\,
	datab => \inst1|Mux40~3_combout\,
	datac => \inst1|Mux40~5_combout\,
	datad => \inst1|Yupa2[4]~19_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y20_N24
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[4]~19_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux40~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~5_combout\,
	datab => \inst1|Mux40~3_combout\,
	datac => \inst14|inst13|UPA\(4),
	datad => \inst1|Yupa2[4]~19_combout\,
	combout => \inst1|Add0~6_combout\);

-- Location: LCCOMB_X28_Y20_N28
\ACCA|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[3]~4_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[3]~4_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[3]~4_combout\,
	datab => \inst1|Yupa[3]~41_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[3]~4_combout\);

-- Location: FF_X28_Y20_N29
\ACCA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[3]~4_combout\,
	asdata => \inst1|Yupa2[3]~23_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(3));

-- Location: LCCOMB_X28_Y20_N30
\ACCA|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[3]~4_combout\ = (((\inst14|inst13|nWA~q\) # (\ACCA|data_out\(3))) # (!\inst14|inst13|EA\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \ACCA|data_out\(3),
	combout => \ACCA|C[3]~4_combout\);

-- Location: LCCOMB_X32_Y19_N10
\inst1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~1_combout\ = (\inst14|inst13|UPA\(1) & (!\inst14|inst13|UPA\(0) & (\inst1|Q\(3)))) # (!\inst14|inst13|UPA\(1) & (((\ACCA|C[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datab => \inst14|inst13|UPA\(0),
	datac => \inst1|Q\(3),
	datad => \ACCA|C[3]~4_combout\,
	combout => \inst1|Mux31~1_combout\);

-- Location: LCCOMB_X32_Y19_N16
\inst1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~2_combout\ = (\inst1|Mux27~0_combout\ & ((\ACCB|C[3]~4_combout\) # ((\inst14|inst13|UPA\(2) & \inst1|Mux31~1_combout\)))) # (!\inst1|Mux27~0_combout\ & (((\inst14|inst13|UPA\(2) & \inst1|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~0_combout\,
	datab => \ACCB|C[3]~4_combout\,
	datac => \inst14|inst13|UPA\(2),
	datad => \inst1|Mux31~1_combout\,
	combout => \inst1|Mux31~2_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst14|inst13|UPA\(6) & (\inst1|Mux31~2_combout\ $ (\inst14|inst13|UPA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(6),
	datab => \inst1|Mux31~2_combout\,
	datac => \inst14|inst13|UPA\(5),
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst1|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux39~2_combout\ = (\inst1|Mux40~3_combout\ & (\inst1|Yupa2[3]~23_combout\)) # (!\inst1|Mux40~3_combout\ & ((\inst1|Mux39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datac => \inst1|Yupa2[3]~23_combout\,
	datad => \inst1|Mux39~1_combout\,
	combout => \inst1|Mux39~2_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux31~2_combout\) # (\inst1|Mux39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~2_combout\,
	datab => \inst1|Mux31~2_combout\,
	datad => \inst1|Mux39~2_combout\,
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (\inst1|Mux7~0_combout\) # ((\inst1|Mux7~1_combout\ & (\inst14|inst13|UPA\(4) $ (\inst1|Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~1_combout\,
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux7~0_combout\,
	datad => \inst1|Mux39~2_combout\,
	combout => \inst1|Mux7~2_combout\);

-- Location: LCCOMB_X28_Y19_N14
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux31~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux31~2_combout\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X30_Y19_N8
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|Add0~11_combout\ & ((\inst1|Add0~12_combout\ & (\inst1|Add0~25\ & VCC)) # (!\inst1|Add0~12_combout\ & (!\inst1|Add0~25\)))) # (!\inst1|Add0~11_combout\ & ((\inst1|Add0~12_combout\ & (!\inst1|Add0~25\)) # 
-- (!\inst1|Add0~12_combout\ & ((\inst1|Add0~25\) # (GND)))))
-- \inst1|Add0~27\ = CARRY((\inst1|Add0~11_combout\ & (!\inst1|Add0~12_combout\ & !\inst1|Add0~25\)) # (!\inst1|Add0~11_combout\ & ((!\inst1|Add0~25\) # (!\inst1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~11_combout\,
	datab => \inst1|Add0~12_combout\,
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X30_Y19_N10
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = ((\inst1|Add0~9_combout\ $ (\inst1|Add0~10_combout\ $ (!\inst1|Add0~27\)))) # (GND)
-- \inst1|Add0~29\ = CARRY((\inst1|Add0~9_combout\ & ((\inst1|Add0~10_combout\) # (!\inst1|Add0~27\))) # (!\inst1|Add0~9_combout\ & (\inst1|Add0~10_combout\ & !\inst1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~9_combout\,
	datab => \inst1|Add0~10_combout\,
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X28_Y19_N24
\inst1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~4_combout\ = (\inst1|Mux7~3_combout\ & (\inst1|Mux31~2_combout\ & (\inst14|inst13|UPA\(4) $ (!\inst1|Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~3_combout\,
	datab => \inst1|Mux31~2_combout\,
	datac => \inst14|inst13|UPA\(4),
	datad => \inst1|Mux39~2_combout\,
	combout => \inst1|Mux7~4_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~5_combout\ = (\inst1|Mux7~2_combout\) # ((\inst1|Mux7~4_combout\) # ((\inst1|Mux2~2_combout\ & \inst1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~2_combout\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|Mux7~4_combout\,
	combout => \inst1|Mux7~5_combout\);

-- Location: FF_X29_Y19_N19
\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux7~5_combout\,
	sload => VCC,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

-- Location: LCCOMB_X32_Y19_N24
\inst1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = (\inst14|inst13|UPA\(1) & (\inst1|Q\(3))) # (!\inst14|inst13|UPA\(1) & ((\ACCA|C[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datac => \inst1|Q\(3),
	datad => \ACCA|C[3]~4_combout\,
	combout => \inst1|Mux31~0_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst1|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux39~0_combout\ = (\inst1|Mux40~2_combout\ & (((\inst1|Yupa[3]~41_combout\ & \inst1|Mux40~1_combout\)))) # (!\inst1|Mux40~2_combout\ & ((\inst1|Mux31~0_combout\) # ((!\inst1|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux31~0_combout\,
	datab => \inst1|Mux40~2_combout\,
	datac => \inst1|Yupa[3]~41_combout\,
	datad => \inst1|Mux40~1_combout\,
	combout => \inst1|Mux39~0_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst1|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux39~1_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux39~0_combout\ & (\ACCA|C[3]~4_combout\)) # (!\inst1|Mux39~0_combout\ & ((\ACCB|C[3]~4_combout\))))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[3]~4_combout\,
	datab => \ACCB|C[3]~4_combout\,
	datac => \inst1|Mux40~0_combout\,
	datad => \inst1|Mux39~0_combout\,
	combout => \inst1|Mux39~1_combout\);

-- Location: FF_X29_Y19_N9
\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux7~5_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

-- Location: LCCOMB_X28_Y19_N10
\inst1|Yupa2[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~22_combout\ = (\BusAlta|PortR~9_combout\ & (\BusAlta|PortR[3]~19_combout\ & ((\inst1|Yupa_interno\(3)) # (!\inst14|inst13|nDUPA~q\)))) # (!\BusAlta|PortR~9_combout\ & ((\inst1|Yupa_interno\(3)) # ((!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR~9_combout\,
	datab => \inst1|Yupa_interno\(3),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \BusAlta|PortR[3]~19_combout\,
	combout => \inst1|Yupa2[3]~22_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|Yupa2[7]~5_combout\ & (((!\inst1|Yupa2[3]~22_combout\) # (!\inst1|Yupa2[3]~21_combout\)) # (!\AUX|C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|C[3]~1_combout\,
	datab => \inst1|Yupa2[3]~21_combout\,
	datac => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[3]~22_combout\,
	combout => \inst1|Add0~8_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((!\inst1|Add0~8_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst1|Mux39~1_combout\,
	datac => \inst14|inst13|UPA\(4),
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|Add0~9_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|Add0~7_combout\ & ((\inst1|Add0~6_combout\ & (\inst1|Add0~29\ & VCC)) # (!\inst1|Add0~6_combout\ & (!\inst1|Add0~29\)))) # (!\inst1|Add0~7_combout\ & ((\inst1|Add0~6_combout\ & (!\inst1|Add0~29\)) # 
-- (!\inst1|Add0~6_combout\ & ((\inst1|Add0~29\) # (GND)))))
-- \inst1|Add0~31\ = CARRY((\inst1|Add0~7_combout\ & (!\inst1|Add0~6_combout\ & !\inst1|Add0~29\)) # (!\inst1|Add0~7_combout\ & ((!\inst1|Add0~29\) # (!\inst1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~7_combout\,
	datab => \inst1|Add0~6_combout\,
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X29_Y19_N24
\inst1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux6~0_combout\) # ((\inst1|Add0~30_combout\ & \inst1|Mux2~2_combout\)))) # (!\inst1|Mux3~2_combout\ & (((\inst1|Add0~30_combout\ & \inst1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~2_combout\,
	datab => \inst1|Mux6~0_combout\,
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|Mux2~2_combout\,
	combout => \inst1|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~3_combout\ = (\inst1|Mux6~1_combout\) # ((\inst14|inst13|UPA\(6) & \inst1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(6),
	datab => \inst1|Mux6~2_combout\,
	datad => \inst1|Mux6~1_combout\,
	combout => \inst1|Mux6~3_combout\);

-- Location: FF_X29_Y19_N31
\inst1|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux6~3_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(4));

-- Location: LCCOMB_X24_Y19_N2
\inst5|inst4|SALIDA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4|SALIDA~4_combout\ = ((\ACCB|data_out\(4)) # ((\inst14|inst13|EB\(1)) # (\inst14|inst13|nWB~q\))) # (!\inst14|inst13|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|data_out\(4),
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|nWB~q\,
	combout => \inst5|inst4|SALIDA~4_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst5|inst4|SALIDA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4|SALIDA~5_combout\ = (!\inst14|inst13|nHB~q\ & ((\inst14|inst13|BD~q\) # ((\inst14|inst13|nRW~q\) # (\BusAlta|PortR[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nHB~q\,
	datac => \inst14|inst13|nRW~q\,
	datad => \BusAlta|PortR[4]~17_combout\,
	combout => \inst5|inst4|SALIDA~5_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst5|inst4|SALIDA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4|SALIDA~6_combout\ = (\inst5|inst4|SALIDA~4_combout\ & (\inst5|inst4|SALIDA~5_combout\ & ((\inst1|Banderas\(4)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(4),
	datab => \inst5|inst4|SALIDA~4_combout\,
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst5|inst4|SALIDA~5_combout\,
	combout => \inst5|inst4|SALIDA~6_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst5|inst4|SALIDA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4|SALIDA~3_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(4) & ((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(4)) # ((\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \AUX|data_out\(4),
	datac => \ACCA|data_out\(4),
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst5|inst4|SALIDA~3_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst5|inst4|SALIDA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4|SALIDA~7_combout\ = (\inst5|inst4|SALIDA~6_combout\ & (\inst5|inst4|SALIDA~3_combout\ & ((\PC|data_out\(4)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \PC|data_out\(4),
	datac => \inst5|inst4|SALIDA~6_combout\,
	datad => \inst5|inst4|SALIDA~3_combout\,
	combout => \inst5|inst4|SALIDA~7_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst5|inst4|SALIDA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4|SALIDA~8_combout\ = (\inst5|inst4|SALIDA~7_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|BD~q\) # (\inst14|inst13|nRW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|SALIDA~10_combout\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst5|inst4|SALIDA~7_combout\,
	combout => \inst5|inst4|SALIDA~8_combout\);

-- Location: LCCOMB_X29_Y20_N22
\ACCA|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[4]~3_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[4]~3_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst5|inst4|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \inst5|inst4|SALIDA~8_combout\,
	combout => \ACCA|data_out[4]~3_combout\);

-- Location: FF_X29_Y20_N23
\ACCA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[4]~3_combout\,
	asdata => \inst1|Yupa2[4]~19_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(4));

-- Location: LCCOMB_X28_Y20_N0
\ACCA|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[4]~3_combout\ = (((\inst14|inst13|nWA~q\) # (\ACCA|data_out\(4))) # (!\inst14|inst13|EA\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \ACCA|data_out\(4),
	combout => \ACCA|C[4]~3_combout\);

-- Location: LCCOMB_X28_Y20_N14
\inst1|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~1_combout\ = (\inst14|inst13|UPA\(1) & (!\inst14|inst13|UPA\(0) & ((\inst1|Q\(4))))) # (!\inst14|inst13|UPA\(1) & (((\ACCA|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(0),
	datab => \ACCA|C[4]~3_combout\,
	datac => \inst14|inst13|UPA\(1),
	datad => \inst1|Q\(4),
	combout => \inst1|Mux32~1_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst1|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~2_combout\ = (\inst1|Mux32~1_combout\ & ((\inst14|inst13|UPA\(2)) # ((\inst1|Mux27~0_combout\ & \ACCB|C[4]~3_combout\)))) # (!\inst1|Mux32~1_combout\ & (\inst1|Mux27~0_combout\ & (\ACCB|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~1_combout\,
	datab => \inst1|Mux27~0_combout\,
	datac => \ACCB|C[4]~3_combout\,
	datad => \inst14|inst13|UPA\(2),
	combout => \inst1|Mux32~2_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux32~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux32~2_combout\,
	combout => \inst1|Add0~7_combout\);

-- Location: LCCOMB_X30_Y19_N14
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = ((\inst1|Add0~5_combout\ $ (\inst1|Add0~4_combout\ $ (!\inst1|Add0~31\)))) # (GND)
-- \inst1|Add0~33\ = CARRY((\inst1|Add0~5_combout\ & ((\inst1|Add0~4_combout\) # (!\inst1|Add0~31\))) # (!\inst1|Add0~5_combout\ & (\inst1|Add0~4_combout\ & !\inst1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~5_combout\,
	datab => \inst1|Add0~4_combout\,
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X29_Y19_N12
\inst1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux5~0_combout\) # ((\inst1|Add0~32_combout\ & \inst1|Mux2~2_combout\)))) # (!\inst1|Mux3~2_combout\ & (((\inst1|Add0~32_combout\ & \inst1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~2_combout\,
	datab => \inst1|Mux5~0_combout\,
	datac => \inst1|Add0~32_combout\,
	datad => \inst1|Mux2~2_combout\,
	combout => \inst1|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~3_combout\ = (\inst1|Mux5~1_combout\) # ((\inst14|inst13|UPA\(6) & \inst1|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(6),
	datac => \inst1|Mux5~2_combout\,
	datad => \inst1|Mux5~1_combout\,
	combout => \inst1|Mux5~3_combout\);

-- Location: FF_X29_Y19_N5
\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux5~3_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

-- Location: LCCOMB_X31_Y19_N18
\inst1|Yupa2[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~14_combout\ = (\inst1|Yupa_interno\(5) & (((\BusAlta|PortR[5]~15_combout\)) # (!\BusAlta|PortR~9_combout\))) # (!\inst1|Yupa_interno\(5) & (!\inst14|inst13|nDUPA~q\ & ((\BusAlta|PortR[5]~15_combout\) # (!\BusAlta|PortR~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(5),
	datab => \BusAlta|PortR~9_combout\,
	datac => \BusAlta|PortR[5]~15_combout\,
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Yupa2[5]~14_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst1|Yupa2[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~12_combout\ = (\ACCA|data_out\(5) & ((\ACCB|data_out\(5)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(5) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(5)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCB|data_out\(5),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[5]~12_combout\);

-- Location: LCCOMB_X29_Y17_N8
\inst1|Yupa2[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~13_combout\ = (\inst1|Yupa2[5]~12_combout\ & ((\PC|data_out\(13)) # (!\PC|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(13),
	datac => \PC|TRI_STATE_C~0_combout\,
	datad => \inst1|Yupa2[5]~12_combout\,
	combout => \inst1|Yupa2[5]~13_combout\);

-- Location: LCCOMB_X30_Y19_N0
\inst1|Yupa2[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~15_combout\ = ((\AUX|C[5]~0_combout\ & (\inst1|Yupa2[5]~14_combout\ & \inst1|Yupa2[5]~13_combout\))) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|C[5]~0_combout\,
	datab => \inst1|Yupa2[5]~14_combout\,
	datac => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[5]~13_combout\,
	combout => \inst1|Yupa2[5]~15_combout\);

-- Location: FF_X28_Y18_N29
\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[5]~2_combout\,
	asdata => \inst1|Yupa2[5]~15_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

-- Location: LCCOMB_X28_Y18_N30
\inst1|Yupa[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~16_combout\ = (\inst14|inst13|EB\(1)) # ((\ACCB|data_out\(5)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(5),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Yupa[5]~16_combout\);

-- Location: FF_X25_Y17_N13
\inst14|inst13|CH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal4~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CH~q\);

-- Location: FF_X29_Y17_N23
\inst5|inst5|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CH~q\,
	asdata => \inst1|Banderas\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst5|valor_interno~q\);

-- Location: LCCOMB_X30_Y18_N6
\inst1|Yupa[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~17_combout\ = (\inst14|inst13|nDUPA~q\ & (\inst1|Yupa_interno\(5) & ((\BusAlta|PortR[5]~15_combout\) # (!\BusAlta|PortR~8_combout\)))) # (!\inst14|inst13|nDUPA~q\ & ((\BusAlta|PortR[5]~15_combout\) # ((!\BusAlta|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \BusAlta|PortR[5]~15_combout\,
	datac => \inst1|Yupa_interno\(5),
	datad => \BusAlta|PortR~8_combout\,
	combout => \inst1|Yupa[5]~17_combout\);

-- Location: LCCOMB_X29_Y17_N22
\inst1|Yupa[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~18_combout\ = (\inst1|Yupa[5]~16_combout\ & (\inst1|Yupa[5]~17_combout\ & ((\inst5|inst5|valor_interno~q\) # (!\inst14|inst13|nHB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[5]~16_combout\,
	datab => \inst14|inst13|nHB~q\,
	datac => \inst5|inst5|valor_interno~q\,
	datad => \inst1|Yupa[5]~17_combout\,
	combout => \inst1|Yupa[5]~18_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst1|Yupa[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~19_combout\ = (\inst1|Yupa[5]~15_combout\ & (\inst1|Yupa[5]~18_combout\ & ((\PC|data_out\(5)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \inst1|Yupa[5]~15_combout\,
	datac => \PC|data_out\(5),
	datad => \inst1|Yupa[5]~18_combout\,
	combout => \inst1|Yupa[5]~19_combout\);

-- Location: LCCOMB_X29_Y15_N18
\inst1|Yupa[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~40_combout\ = (\inst1|Yupa[5]~19_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|BD~q\) # (\inst14|inst13|nRW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst5|inst7|SALIDA~10_combout\,
	datad => \inst1|Yupa[5]~19_combout\,
	combout => \inst1|Yupa[5]~40_combout\);

-- Location: LCCOMB_X29_Y20_N4
\ACCA|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[5]~2_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[5]~2_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[5]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[5]~2_combout\,
	datad => \inst1|Yupa[5]~40_combout\,
	combout => \ACCA|data_out[5]~2_combout\);

-- Location: FF_X29_Y20_N5
\ACCA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[5]~2_combout\,
	asdata => \inst1|Yupa2[5]~15_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(5));

-- Location: LCCOMB_X32_Y19_N0
\ACCA|C[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[5]~2_combout\ = (\ACCA|data_out\(5)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[5]~2_combout\);

-- Location: LCCOMB_X32_Y19_N2
\inst1|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~1_combout\ = (\inst14|inst13|UPA\(1) & (((\inst1|Q\(5) & !\inst14|inst13|UPA\(0))))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(1),
	datab => \ACCA|C[5]~2_combout\,
	datac => \inst1|Q\(5),
	datad => \inst14|inst13|UPA\(0),
	combout => \inst1|Mux33~1_combout\);

-- Location: LCCOMB_X32_Y19_N12
\inst1|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~2_combout\ = (\inst1|Mux27~0_combout\ & ((\ACCB|C[5]~2_combout\) # ((\inst1|Mux33~1_combout\ & \inst14|inst13|UPA\(2))))) # (!\inst1|Mux27~0_combout\ & (\inst1|Mux33~1_combout\ & (\inst14|inst13|UPA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~0_combout\,
	datab => \inst1|Mux33~1_combout\,
	datac => \inst14|inst13|UPA\(2),
	datad => \ACCB|C[5]~2_combout\,
	combout => \inst1|Mux33~2_combout\);

-- Location: LCCOMB_X32_Y19_N18
\inst1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux33~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux33~2_combout\,
	combout => \inst1|Add0~5_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|Add0~3_combout\ & ((\inst1|Add0~2_combout\ & (\inst1|Add0~33\ & VCC)) # (!\inst1|Add0~2_combout\ & (!\inst1|Add0~33\)))) # (!\inst1|Add0~3_combout\ & ((\inst1|Add0~2_combout\ & (!\inst1|Add0~33\)) # 
-- (!\inst1|Add0~2_combout\ & ((\inst1|Add0~33\) # (GND)))))
-- \inst1|Add0~35\ = CARRY((\inst1|Add0~3_combout\ & (!\inst1|Add0~2_combout\ & !\inst1|Add0~33\)) # (!\inst1|Add0~3_combout\ & ((!\inst1|Add0~33\) # (!\inst1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|Add0~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X31_Y19_N28
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|Mux34~2_combout\) # ((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[6]~11_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux42~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~3_combout\,
	datab => \inst1|Mux34~2_combout\,
	datac => \inst1|Mux42~3_combout\,
	datad => \inst1|Yupa2[6]~11_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y19_N10
\inst1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|Mux2~2_combout\ & ((\inst1|Add0~34_combout\) # ((\inst1|Mux3~2_combout\ & \inst1|Mux4~0_combout\)))) # (!\inst1|Mux2~2_combout\ & (\inst1|Mux3~2_combout\ & ((\inst1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~2_combout\,
	datab => \inst1|Mux3~2_combout\,
	datac => \inst1|Add0~34_combout\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y19_N4
\inst1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~3_combout\ = (\inst1|Mux4~1_combout\) # ((\inst14|inst13|UPA\(6) & \inst1|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|UPA\(6),
	datac => \inst1|Mux4~2_combout\,
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|Mux4~3_combout\);

-- Location: FF_X31_Y19_N5
\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux4~3_combout\,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

-- Location: LCCOMB_X31_Y19_N30
\inst1|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux34~1_combout\ = (\inst14|inst13|UPA\(1) & (\inst1|Q\(6) & ((!\inst14|inst13|UPA\(0))))) # (!\inst14|inst13|UPA\(1) & (((\ACCA|C[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \ACCA|C[6]~1_combout\,
	datac => \inst14|inst13|UPA\(1),
	datad => \inst14|inst13|UPA\(0),
	combout => \inst1|Mux34~1_combout\);

-- Location: LCCOMB_X31_Y19_N0
\inst1|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux34~2_combout\ = (\ACCB|C[6]~1_combout\ & ((\inst1|Mux27~0_combout\) # ((\inst1|Mux34~1_combout\ & \inst14|inst13|UPA\(2))))) # (!\ACCB|C[6]~1_combout\ & (\inst1|Mux34~1_combout\ & (\inst14|inst13|UPA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[6]~1_combout\,
	datab => \inst1|Mux34~1_combout\,
	datac => \inst14|inst13|UPA\(2),
	datad => \inst1|Mux27~0_combout\,
	combout => \inst1|Mux34~2_combout\);

-- Location: LCCOMB_X31_Y19_N6
\inst1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \inst14|inst13|UPA\(5) $ (\inst1|Mux34~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|UPA\(5),
	datad => \inst1|Mux34~2_combout\,
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = ((\inst1|Add0~0_combout\ $ (\inst1|Add0~1_combout\ $ (!\inst1|Add0~35\)))) # (GND)
-- \inst1|Add0~37\ = CARRY((\inst1|Add0~0_combout\ & ((\inst1|Add0~1_combout\) # (!\inst1|Add0~35\))) # (!\inst1|Add0~0_combout\ & (\inst1|Add0~1_combout\ & !\inst1|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|Add0~1_combout\,
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X30_Y19_N20
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = \inst1|Add0~37\ $ (((\inst14|inst13|UPA\(4)) # (\inst14|inst13|UPA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|UPA\(4),
	datad => \inst14|inst13|UPA\(5),
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst14|inst13|UPA\(6) & (\inst14|inst13|UPA\(5) & (\inst14|inst13|UPA\(4)))) # (!\inst14|inst13|UPA\(6) & (\inst1|Add0~38_combout\ & ((!\inst14|inst13|UPA\(4)) # (!\inst14|inst13|UPA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datab => \inst14|inst13|UPA\(4),
	datac => \inst14|inst13|UPA\(6),
	datad => \inst1|Add0~38_combout\,
	combout => \inst1|Mux2~3_combout\);

-- Location: FF_X30_Y19_N31
\inst1|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux2~3_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(1));

-- Location: FF_X27_Y15_N23
\inst14|inst13|B0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|Equal13~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B0~q\);

-- Location: LCCOMB_X29_Y18_N20
\inst5|inst13|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst13|output~2_combout\ = (\inst14|inst13|B0~q\ & ((\inst5|inst13|output~3_combout\) # ((\inst1|Yupa[0]~39_combout\)))) # (!\inst14|inst13|B0~q\ & (((\inst1|Banderas\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst13|output~3_combout\,
	datab => \inst1|Banderas\(1),
	datac => \inst14|inst13|B0~q\,
	datad => \inst1|Yupa[0]~39_combout\,
	combout => \inst5|inst13|output~2_combout\);

-- Location: FF_X29_Y18_N21
\inst5|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CC~q\,
	d => \inst5|inst13|output~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|valor_interno~q\);

-- Location: LCCOMB_X30_Y20_N10
\inst1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~19_combout\ = (!\inst1|Add0~18_combout\ & ((\inst14|inst13|selmux~q\ & (\inst14|inst13|ACCSEC~q\)) # (!\inst14|inst13|selmux~q\ & ((\inst5|inst|valor_interno~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|selmux~q\,
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst5|inst|valor_interno~q\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|Add0~19_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_cout\ = CARRY((!\inst1|Add0~18_combout\ & \inst1|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Add0~19_combout\,
	datad => VCC,
	cout => \inst1|Add0~21_cout\);

-- Location: LCCOMB_X30_Y19_N4
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|Add0~16_combout\ & ((\inst1|Add0~17_combout\ & (\inst1|Add0~21_cout\ & VCC)) # (!\inst1|Add0~17_combout\ & (!\inst1|Add0~21_cout\)))) # (!\inst1|Add0~16_combout\ & ((\inst1|Add0~17_combout\ & (!\inst1|Add0~21_cout\)) # 
-- (!\inst1|Add0~17_combout\ & ((\inst1|Add0~21_cout\) # (GND)))))
-- \inst1|Add0~23\ = CARRY((\inst1|Add0~16_combout\ & (!\inst1|Add0~17_combout\ & !\inst1|Add0~21_cout\)) # (!\inst1|Add0~16_combout\ & ((!\inst1|Add0~21_cout\) # (!\inst1|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|Add0~17_combout\,
	datad => VCC,
	cin => \inst1|Add0~21_cout\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X29_Y19_N14
\inst1|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~4_combout\ = (\inst1|Mux10~3_combout\) # ((\inst1|Mux10~2_combout\) # ((\inst1|Mux2~2_combout\ & \inst1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~3_combout\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Mux10~2_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|Mux10~4_combout\);

-- Location: FF_X30_Y19_N5
\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux10~4_combout\,
	sload => VCC,
	ena => \inst1|Q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

-- Location: LCCOMB_X30_Y18_N18
\inst1|Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux36~2_combout\ = (\inst14|inst13|UPA\(1) & (\inst1|Q\(0))) # (!\inst14|inst13|UPA\(1) & ((\ACCA|C[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datac => \ACCA|C[0]~7_combout\,
	datad => \inst14|inst13|UPA\(1),
	combout => \inst1|Mux36~2_combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst1|Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux36~3_combout\ = (\inst1|Mux40~2_combout\ & (\inst1|Mux40~1_combout\)) # (!\inst1|Mux40~2_combout\ & ((\inst1|Mux36~2_combout\) # (!\inst1|Mux40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux40~2_combout\,
	datab => \inst1|Mux40~1_combout\,
	datad => \inst1|Mux36~2_combout\,
	combout => \inst1|Mux36~3_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst1|Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux36~4_combout\ = (\inst1|Mux36~3_combout\ & ((\inst1|Mux36~7_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & !\BusAlta|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|SALIDA~10_combout\,
	datab => \BusAlta|PortR~8_combout\,
	datac => \inst1|Mux36~7_combout\,
	datad => \inst1|Mux36~3_combout\,
	combout => \inst1|Mux36~4_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst1|Mux36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux36~5_combout\ = (\inst1|Mux36~4_combout\ & (((\ACCA|C[0]~7_combout\)) # (!\inst1|Mux40~0_combout\))) # (!\inst1|Mux36~4_combout\ & (\inst1|Mux40~0_combout\ & (\ACCB|C[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux36~4_combout\,
	datab => \inst1|Mux40~0_combout\,
	datac => \ACCB|C[0]~7_combout\,
	datad => \ACCA|C[0]~7_combout\,
	combout => \inst1|Mux36~5_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~15_combout\ = (\inst1|Yupa2[7]~5_combout\ & !\inst1|Yupa2[0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[0]~35_combout\,
	combout => \inst1|Add0~15_combout\);

-- Location: LCCOMB_X29_Y18_N16
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((!\inst1|Add0~15_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux36~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux36~5_combout\,
	datab => \inst1|Mux40~3_combout\,
	datac => \inst14|inst13|UPA\(4),
	datad => \inst1|Add0~15_combout\,
	combout => \inst1|Add0~16_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = ((\inst1|Add0~13_combout\ $ (\inst1|Add0~14_combout\ $ (!\inst1|Add0~23\)))) # (GND)
-- \inst1|Add0~25\ = CARRY((\inst1|Add0~13_combout\ & ((\inst1|Add0~14_combout\) # (!\inst1|Add0~23\))) # (!\inst1|Add0~13_combout\ & (\inst1|Add0~14_combout\ & !\inst1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~13_combout\,
	datab => \inst1|Add0~14_combout\,
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X29_Y19_N16
\inst1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~4_combout\ = (\inst1|Mux9~3_combout\) # ((\inst1|Mux9~2_combout\) # ((\inst1|Mux2~2_combout\ & \inst1|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux9~3_combout\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Mux9~2_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|Mux9~4_combout\);

-- Location: FF_X29_Y19_N17
\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux9~4_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

-- Location: LCCOMB_X30_Y18_N20
\inst1|Yupa2[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~30_combout\ = (\BusAlta|PortR~9_combout\ & (\BusAlta|PortR[1]~23_combout\ & ((\inst1|Yupa_interno\(1)) # (!\inst14|inst13|nDUPA~q\)))) # (!\BusAlta|PortR~9_combout\ & ((\inst1|Yupa_interno\(1)) # ((!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR~9_combout\,
	datab => \inst1|Yupa_interno\(1),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \BusAlta|PortR[1]~23_combout\,
	combout => \inst1|Yupa2[1]~30_combout\);

-- Location: LCCOMB_X23_Y19_N12
\AUX|C[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|C[1]~3_combout\ = (\AUX|data_out\(9)) # ((\inst14|inst13|RA\(0)) # ((\inst14|inst13|RA\(2)) # (!\inst14|inst13|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(9),
	datab => \inst14|inst13|RA\(0),
	datac => \inst14|inst13|nERA1~q\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|C[1]~3_combout\);

-- Location: LCCOMB_X28_Y20_N18
\inst1|Yupa2[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~28_combout\ = (\ACCB|data_out\(1) & ((\ACCA|data_out\(1)) # ((\ACCA|B[7]~0_combout\)))) # (!\ACCB|data_out\(1) & (\ACCB|B[7]~0_combout\ & ((\ACCA|data_out\(1)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \ACCA|data_out\(1),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[1]~28_combout\);

-- Location: LCCOMB_X28_Y20_N12
\inst1|Yupa2[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~29_combout\ = (\inst1|Yupa2[1]~28_combout\ & ((\PC|data_out\(9)) # (!\PC|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(9),
	datad => \inst1|Yupa2[1]~28_combout\,
	combout => \inst1|Yupa2[1]~29_combout\);

-- Location: LCCOMB_X29_Y16_N18
\inst1|Yupa2[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~31_combout\ = ((\inst1|Yupa2[1]~30_combout\ & (\AUX|C[1]~3_combout\ & \inst1|Yupa2[1]~29_combout\))) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[1]~30_combout\,
	datab => \AUX|C[1]~3_combout\,
	datac => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[1]~29_combout\,
	combout => \inst1|Yupa2[1]~31_combout\);

-- Location: FF_X28_Y20_N17
\ACCA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[1]~6_combout\,
	asdata => \inst1|Yupa2[1]~31_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(1));

-- Location: LCCOMB_X23_Y17_N8
\inst1|Yupa[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~30_combout\ = (\AUX|data_out\(1) & (((\ACCA|data_out\(1)) # (!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(1) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(1)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(1),
	datab => \AUX|TRI_STATE_D~0_combout\,
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \ACCA|data_out\(1),
	combout => \inst1|Yupa[1]~30_combout\);

-- Location: FF_X26_Y19_N31
\inst14|inst13|CV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|data~155_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CV~q\);

-- Location: LCCOMB_X26_Y18_N26
\inst14|inst9|data[14]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~218_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst9|Equal63~0_combout\ & \inst14|inst13|B4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst9|Equal63~0_combout\,
	datad => \inst14|inst13|B4~0_combout\,
	combout => \inst14|inst9|data[14]~218_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst14|inst9|data[12]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[12]~222_combout\ = ((\inst14|inst9|data[14]~218_combout\) # ((!\inst14|inst13|B4~0_combout\ & \inst14|inst9|data[81]~109_combout\))) # (!\inst14|inst13|PC[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC[0]~0_combout\,
	datab => \inst14|inst13|B4~0_combout\,
	datac => \inst14|inst9|data[14]~218_combout\,
	datad => \inst14|inst9|data[81]~109_combout\,
	combout => \inst14|inst9|data[12]~222_combout\);

-- Location: FF_X26_Y18_N25
\inst14|inst13|B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[12]~222_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B2~q\);

-- Location: LCCOMB_X30_Y18_N10
\inst5|inst9|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst9|output~0_combout\ = (\inst1|Banderas\(1) & !\inst14|inst13|B2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Banderas\(1),
	datad => \inst14|inst13|B2~q\,
	combout => \inst5|inst9|output~0_combout\);

-- Location: FF_X30_Y18_N11
\inst5|inst1|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CV~q\,
	d => \inst5|inst9|output~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|valor_interno~q\);

-- Location: LCCOMB_X30_Y18_N24
\inst1|Yupa[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~32_combout\ = (\inst14|inst13|nDUPA~q\ & (\inst1|Yupa_interno\(1) & ((\inst5|inst1|valor_interno~q\) # (!\inst14|inst13|nHB~q\)))) # (!\inst14|inst13|nDUPA~q\ & (((\inst5|inst1|valor_interno~q\) # (!\inst14|inst13|nHB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \inst1|Yupa_interno\(1),
	datac => \inst5|inst1|valor_interno~q\,
	datad => \inst14|inst13|nHB~q\,
	combout => \inst1|Yupa[1]~32_combout\);

-- Location: LCCOMB_X31_Y18_N10
\inst1|Yupa[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~31_combout\ = (\ACCB|data_out\(1)) # ((\inst14|inst13|nWB~q\) # ((\inst14|inst13|EB\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Yupa[1]~31_combout\);

-- Location: LCCOMB_X30_Y18_N30
\inst1|Yupa[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~33_combout\ = (\inst1|Yupa[1]~32_combout\ & (\inst1|Yupa[1]~31_combout\ & ((\BusAlta|PortR[1]~23_combout\) # (!\BusAlta|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[1]~32_combout\,
	datab => \BusAlta|PortR~8_combout\,
	datac => \inst1|Yupa[1]~31_combout\,
	datad => \BusAlta|PortR[1]~23_combout\,
	combout => \inst1|Yupa[1]~33_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst1|Yupa[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~34_combout\ = (\inst1|Yupa[1]~30_combout\ & (\inst1|Yupa[1]~33_combout\ & ((\PC|data_out\(1)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \PC|data_out\(1),
	datac => \inst1|Yupa[1]~30_combout\,
	datad => \inst1|Yupa[1]~33_combout\,
	combout => \inst1|Yupa[1]~34_combout\);

-- Location: LCCOMB_X29_Y16_N26
\inst1|Yupa[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~43_combout\ = (\inst1|Yupa[1]~34_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|nRW~q\) # (\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst5|inst7|SALIDA~10_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst1|Yupa[1]~34_combout\,
	combout => \inst1|Yupa[1]~43_combout\);

-- Location: LCCOMB_X28_Y18_N4
\ACCB|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~6_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[1]~6_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst1|Yupa[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|C[1]~6_combout\,
	datad => \inst1|Yupa[1]~43_combout\,
	combout => \ACCB|data_out[1]~6_combout\);

-- Location: FF_X28_Y18_N5
\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[1]~6_combout\,
	asdata => \inst1|Yupa2[1]~31_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

-- Location: LCCOMB_X31_Y18_N22
\ACCB|C[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[1]~6_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(1))) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(1),
	combout => \ACCB|C[1]~6_combout\);

-- Location: LCCOMB_X30_Y18_N2
\inst1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux29~0_combout\ = (\inst14|inst13|UPA\(1) & ((\inst1|Q\(1)))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACCA|C[1]~6_combout\,
	datac => \inst1|Q\(1),
	datad => \inst14|inst13|UPA\(1),
	combout => \inst1|Mux29~0_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst1|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux37~0_combout\ = (\inst1|Mux40~2_combout\ & (((\inst1|Yupa[1]~43_combout\ & \inst1|Mux40~1_combout\)))) # (!\inst1|Mux40~2_combout\ & ((\inst1|Mux29~0_combout\) # ((!\inst1|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux29~0_combout\,
	datab => \inst1|Mux40~2_combout\,
	datac => \inst1|Yupa[1]~43_combout\,
	datad => \inst1|Mux40~1_combout\,
	combout => \inst1|Mux37~0_combout\);

-- Location: LCCOMB_X29_Y16_N10
\inst1|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux37~1_combout\ = (\inst1|Mux40~0_combout\ & ((\inst1|Mux37~0_combout\ & ((\ACCA|C[1]~6_combout\))) # (!\inst1|Mux37~0_combout\ & (\ACCB|C[1]~6_combout\)))) # (!\inst1|Mux40~0_combout\ & (((\inst1|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[1]~6_combout\,
	datab => \ACCA|C[1]~6_combout\,
	datac => \inst1|Mux40~0_combout\,
	datad => \inst1|Mux37~0_combout\,
	combout => \inst1|Mux37~1_combout\);

-- Location: LCCOMB_X29_Y16_N16
\inst1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_combout\ = \inst14|inst13|UPA\(4) $ (((\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[1]~31_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux37~1_combout\,
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux40~3_combout\,
	datad => \inst1|Yupa2[1]~31_combout\,
	combout => \inst1|Add0~13_combout\);

-- Location: LCCOMB_X30_Y20_N2
\inst1|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux38~2_combout\ = (\inst1|Mux40~3_combout\ & ((\inst1|Yupa2[2]~27_combout\))) # (!\inst1|Mux40~3_combout\ & (\inst1|Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux40~3_combout\,
	datac => \inst1|Mux38~1_combout\,
	datad => \inst1|Yupa2[2]~27_combout\,
	combout => \inst1|Mux38~2_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~3_combout\ = (\inst1|Mux30~2_combout\ & (\inst1|Mux7~3_combout\ & (\inst14|inst13|UPA\(4) $ (!\inst1|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(4),
	datab => \inst1|Mux30~2_combout\,
	datac => \inst1|Mux7~3_combout\,
	datad => \inst1|Mux38~2_combout\,
	combout => \inst1|Mux8~3_combout\);

-- Location: LCCOMB_X30_Y20_N26
\inst1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~1_combout\ = (\inst14|inst13|UPA\(6) & (\inst14|inst13|UPA\(5) $ (\inst1|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datab => \inst14|inst13|UPA\(6),
	datad => \inst1|Mux30~2_combout\,
	combout => \inst1|Mux8~1_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux30~2_combout\) # (\inst1|Mux38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux30~2_combout\,
	datac => \inst1|Mux3~2_combout\,
	datad => \inst1|Mux38~2_combout\,
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~2_combout\ = (\inst1|Mux8~0_combout\) # ((\inst1|Mux8~1_combout\ & (\inst14|inst13|UPA\(4) $ (\inst1|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~1_combout\,
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux8~0_combout\,
	datad => \inst1|Mux38~2_combout\,
	combout => \inst1|Mux8~2_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~4_combout\ = (\inst1|Mux8~3_combout\) # ((\inst1|Mux8~2_combout\) # ((\inst1|Add0~26_combout\ & \inst1|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~26_combout\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Mux8~3_combout\,
	datad => \inst1|Mux8~2_combout\,
	combout => \inst1|Mux8~4_combout\);

-- Location: FF_X29_Y19_N27
\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux8~4_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

-- Location: LCCOMB_X25_Y19_N10
\inst1|Yupa2[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~26_combout\ = (\BusAlta|PortR~9_combout\ & (\BusAlta|PortR[2]~21_combout\ & ((\inst1|Yupa_interno\(2)) # (!\inst14|inst13|nDUPA~q\)))) # (!\BusAlta|PortR~9_combout\ & (((\inst1|Yupa_interno\(2))) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR~9_combout\,
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Yupa_interno\(2),
	datad => \BusAlta|PortR[2]~21_combout\,
	combout => \inst1|Yupa2[2]~26_combout\);

-- Location: LCCOMB_X28_Y20_N10
\inst1|Yupa2[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~24_combout\ = (\ACCA|data_out\(2) & ((\ACCB|data_out\(2)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(2) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(2)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \ACCB|data_out\(2),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[2]~24_combout\);

-- Location: LCCOMB_X29_Y20_N14
\inst1|Yupa2[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~25_combout\ = (\inst1|Yupa2[2]~24_combout\ & ((\PC|data_out\(10)) # (!\PC|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(10),
	datac => \PC|TRI_STATE_C~0_combout\,
	datad => \inst1|Yupa2[2]~24_combout\,
	combout => \inst1|Yupa2[2]~25_combout\);

-- Location: LCCOMB_X30_Y20_N16
\inst1|Yupa2[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~27_combout\ = ((\AUX|C[2]~2_combout\ & (\inst1|Yupa2[2]~26_combout\ & \inst1|Yupa2[2]~25_combout\))) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~5_combout\,
	datab => \AUX|C[2]~2_combout\,
	datac => \inst1|Yupa2[2]~26_combout\,
	datad => \inst1|Yupa2[2]~25_combout\,
	combout => \inst1|Yupa2[2]~27_combout\);

-- Location: FF_X28_Y20_N23
\ACCA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[2]~5_combout\,
	asdata => \inst1|Yupa2[2]~27_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(2));

-- Location: LCCOMB_X23_Y17_N2
\inst1|Yupa[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~25_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(2) & ((\AUX|data_out\(2)) # (\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(2)) # ((\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \AUX|data_out\(2),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|data_out\(2),
	combout => \inst1|Yupa[2]~25_combout\);

-- Location: LCCOMB_X31_Y18_N24
\inst1|Yupa[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~26_combout\ = (\inst14|inst13|EB\(1)) # ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(2)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \ACCB|data_out\(2),
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Yupa[2]~26_combout\);

-- Location: LCCOMB_X30_Y18_N8
\inst1|Yupa[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~27_combout\ = (\inst14|inst13|nDUPA~q\ & (\inst1|Yupa_interno\(2) & ((\BusAlta|PortR[2]~21_combout\) # (!\BusAlta|PortR~8_combout\)))) # (!\inst14|inst13|nDUPA~q\ & (((\BusAlta|PortR[2]~21_combout\)) # (!\BusAlta|PortR~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \BusAlta|PortR~8_combout\,
	datac => \inst1|Yupa_interno\(2),
	datad => \BusAlta|PortR[2]~21_combout\,
	combout => \inst1|Yupa[2]~27_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst1|Yupa[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~28_combout\ = (\inst1|Yupa[2]~26_combout\ & (\inst1|Yupa[2]~27_combout\ & ((\inst5|inst2|valor_interno~q\) # (!\inst14|inst13|nHB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|valor_interno~q\,
	datab => \inst14|inst13|nHB~q\,
	datac => \inst1|Yupa[2]~26_combout\,
	datad => \inst1|Yupa[2]~27_combout\,
	combout => \inst1|Yupa[2]~28_combout\);

-- Location: LCCOMB_X27_Y17_N20
\inst1|Yupa[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~29_combout\ = (\inst1|Yupa[2]~25_combout\ & (\inst1|Yupa[2]~28_combout\ & ((\PC|data_out\(2)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datab => \inst1|Yupa[2]~25_combout\,
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \inst1|Yupa[2]~28_combout\,
	combout => \inst1|Yupa[2]~29_combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst1|Yupa[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~42_combout\ = (\inst1|Yupa[2]~29_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|nRW~q\) # (\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|SALIDA~10_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst1|Yupa[2]~29_combout\,
	combout => \inst1|Yupa[2]~42_combout\);

-- Location: LCCOMB_X23_Y17_N0
\AUX|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~13_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(3))) # (!\inst14|inst13|RA\(2) & ((\inst1|Yupa[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \inst14|inst13|RA\(2),
	datad => \inst1|Yupa[2]~42_combout\,
	combout => \AUX|data_out~13_combout\);

-- Location: FF_X23_Y17_N1
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(2));

-- Location: LCCOMB_X23_Y17_N6
\AUX|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~14_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(2))) # (!\inst14|inst13|RA\(2) & ((\inst1|Yupa[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(2),
	datac => \inst14|inst13|RA\(2),
	datad => \inst1|Yupa[1]~43_combout\,
	combout => \AUX|data_out~14_combout\);

-- Location: FF_X23_Y17_N7
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(1));

-- Location: LCCOMB_X23_Y19_N20
\AUX|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~15_combout\ = (\inst14|inst13|RA\(2) & ((\AUX|data_out\(1)))) # (!\inst14|inst13|RA\(2) & (\inst1|Yupa[0]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~44_combout\,
	datab => \inst14|inst13|RA\(2),
	datad => \AUX|data_out\(1),
	combout => \AUX|data_out~15_combout\);

-- Location: FF_X23_Y19_N21
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(0));

-- Location: LCCOMB_X23_Y18_N6
\ENTRADA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~0_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\PC|data_out\(0))) # (!\PC|TRI_STATE_E~0_combout\ & ((\AUX|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(0),
	datac => \AUX|data_out\(0),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~0_combout\);

-- Location: FF_X23_Y18_N7
\inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \ENTRADA~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(0));

-- Location: LCCOMB_X21_Y18_N24
\BusAlta|PortR[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[6]~12_combout\ = ((\inst14|inst13|BD~q\ & (\inst1|Yupa2[6]~11_combout\)) # (!\inst14|inst13|BD~q\ & ((\inst5|inst6|SALIDA~8_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst1|Yupa2[6]~11_combout\,
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \BusAlta|PortR[6]~12_combout\);

-- Location: LCCOMB_X21_Y18_N18
\BusAlta|PortR[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[6]~13_combout\ = (\inst6|data[7]~en_q\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a6\ & \BusAlta|PortR[6]~12_combout\)))) # (!\inst6|data[7]~en_q\ & (((\BusAlta|PortR[6]~12_combout\)) # (!\inst14|inst13|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a6\,
	datad => \BusAlta|PortR[6]~12_combout\,
	combout => \BusAlta|PortR[6]~13_combout\);

-- Location: FF_X31_Y19_N23
\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Mux4~3_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

-- Location: LCCOMB_X25_Y19_N4
\inst1|Yupa2[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~8_combout\ = (\BusAlta|PortR~9_combout\ & (\BusAlta|PortR[6]~13_combout\ & ((\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\)))) # (!\BusAlta|PortR~9_combout\ & (((\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR~9_combout\,
	datab => \BusAlta|PortR[6]~13_combout\,
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Yupa_interno\(6),
	combout => \inst1|Yupa2[6]~8_combout\);

-- Location: LCCOMB_X26_Y20_N0
\inst1|Yupa2[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~9_combout\ = (\inst1|Yupa2[6]~8_combout\ & ((\AUX|TRI_STATE_C~0_combout\) # (\AUX|data_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \AUX|data_out\(14),
	datad => \inst1|Yupa2[6]~8_combout\,
	combout => \inst1|Yupa2[6]~9_combout\);

-- Location: LCCOMB_X26_Y20_N14
\inst1|Yupa2[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~7_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(6)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(6) & ((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\))))

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
	combout => \inst1|Yupa2[6]~7_combout\);

-- Location: LCCOMB_X26_Y21_N18
\inst1|Yupa2[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~10_combout\ = (\inst1|Yupa2[6]~9_combout\ & (\inst1|Yupa2[6]~7_combout\ & ((\PC|data_out\(14)) # (!\PC|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_C~0_combout\,
	datab => \inst1|Yupa2[6]~9_combout\,
	datac => \PC|data_out\(14),
	datad => \inst1|Yupa2[6]~7_combout\,
	combout => \inst1|Yupa2[6]~10_combout\);

-- Location: LCCOMB_X31_Y19_N12
\inst1|Yupa2[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~11_combout\ = (\inst1|Yupa2[6]~10_combout\) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[6]~10_combout\,
	datad => \inst1|Yupa2[7]~5_combout\,
	combout => \inst1|Yupa2[6]~11_combout\);

-- Location: FF_X26_Y20_N17
\ACCA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[6]~1_combout\,
	asdata => \inst1|Yupa2[6]~11_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(6));

-- Location: LCCOMB_X24_Y18_N26
\inst5|inst6|SALIDA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|SALIDA~3_combout\ = (\AUX|TRI_STATE_D~0_combout\ & (((\ACCA|data_out\(6)) # (!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|TRI_STATE_D~0_combout\ & (\AUX|data_out\(6) & ((\ACCA|data_out\(6)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_D~0_combout\,
	datab => \AUX|data_out\(6),
	datac => \ACCA|data_out\(6),
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst5|inst6|SALIDA~3_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst5|inst6|SALIDA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|SALIDA~4_combout\ = (\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(6)) # ((\inst14|inst13|EB\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \ACCB|data_out\(6),
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \inst5|inst6|SALIDA~4_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst5|inst6|SALIDA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|SALIDA~5_combout\ = (!\inst14|inst13|nHB~q\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst14|inst13|nHB~q\,
	datad => \BusAlta|PortR[6]~13_combout\,
	combout => \inst5|inst6|SALIDA~5_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst5|inst6|SALIDA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|SALIDA~6_combout\ = (\inst5|inst6|SALIDA~4_combout\ & (\inst5|inst6|SALIDA~5_combout\ & ((\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(6),
	datab => \inst5|inst6|SALIDA~4_combout\,
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst5|inst6|SALIDA~5_combout\,
	combout => \inst5|inst6|SALIDA~6_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst5|inst6|SALIDA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|SALIDA~7_combout\ = (\inst5|inst6|SALIDA~3_combout\ & (\inst5|inst6|SALIDA~6_combout\ & ((\PC|data_out\(6)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \PC|data_out\(6),
	datac => \inst5|inst6|SALIDA~3_combout\,
	datad => \inst5|inst6|SALIDA~6_combout\,
	combout => \inst5|inst6|SALIDA~7_combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst5|inst6|SALIDA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|SALIDA~8_combout\ = (\inst5|inst6|SALIDA~7_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|BD~q\) # (\inst14|inst13|nRW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst5|inst7|SALIDA~10_combout\,
	datad => \inst5|inst6|SALIDA~7_combout\,
	combout => \inst5|inst6|SALIDA~8_combout\);

-- Location: LCCOMB_X24_Y18_N28
\AUX|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~9_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(7))) # (!\inst14|inst13|RA\(2) & ((\inst5|inst6|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(7),
	datac => \inst14|inst13|RA\(2),
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \AUX|data_out~9_combout\);

-- Location: FF_X24_Y18_N29
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(6));

-- Location: LCCOMB_X23_Y19_N26
\AUX|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~10_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(6))) # (!\inst14|inst13|RA\(2) & ((\inst1|Yupa[5]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(6),
	datab => \inst14|inst13|RA\(2),
	datad => \inst1|Yupa[5]~40_combout\,
	combout => \AUX|data_out~10_combout\);

-- Location: FF_X23_Y19_N27
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(5));

-- Location: LCCOMB_X23_Y19_N24
\AUX|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~11_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(5))) # (!\inst14|inst13|RA\(2) & ((\inst5|inst4|SALIDA~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datac => \inst5|inst4|SALIDA~8_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~11_combout\);

-- Location: FF_X23_Y19_N25
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(4));

-- Location: LCCOMB_X23_Y19_N6
\AUX|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~12_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(4))) # (!\inst14|inst13|RA\(2) & ((\inst1|Yupa[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(4),
	datac => \inst1|Yupa[3]~41_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~12_combout\);

-- Location: FF_X23_Y19_N7
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
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(3));

-- Location: LCCOMB_X23_Y17_N24
\inst1|Yupa[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~20_combout\ = (\AUX|data_out\(3) & (((\ACCA|data_out\(3)) # (!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(3) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(3)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \AUX|TRI_STATE_D~0_combout\,
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \ACCA|data_out\(3),
	combout => \inst1|Yupa[3]~20_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst1|Yupa[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~21_combout\ = (\inst14|inst13|EB\(1)) # (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(3))) # (!\inst14|inst13|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(3),
	combout => \inst1|Yupa[3]~21_combout\);

-- Location: FF_X26_Y19_N9
\inst14|inst13|CN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|data~155_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CN~q\);

-- Location: LCCOMB_X27_Y19_N26
\inst14|inst13|PC[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|PC[0]~4_combout\ = (!\inst14|inst9|Equal32~1_combout\ & (!\inst14|inst9|Equal48~2_combout\ & ((!\inst14|inst9|Equal41~0_combout\) # (!\inst14|inst9|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal32~1_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal48~2_combout\,
	datad => \inst14|inst9|Equal41~0_combout\,
	combout => \inst14|inst13|PC[0]~4_combout\);

-- Location: LCCOMB_X27_Y19_N6
\inst14|inst9|data[14]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~149_combout\ = (\inst14|inst9|data[14]~52_combout\ & (\inst14|inst9|Equal49~3_combout\ & (\inst14|inst13|PC[0]~4_combout\ & \inst14|inst9|data[14]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[14]~52_combout\,
	datab => \inst14|inst9|Equal49~3_combout\,
	datac => \inst14|inst13|PC[0]~4_combout\,
	datad => \inst14|inst9|data[14]~148_combout\,
	combout => \inst14|inst9|data[14]~149_combout\);

-- Location: LCCOMB_X27_Y19_N0
\inst14|inst9|data[14]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~150_combout\ = ((\inst14|inst9|data[14]~218_combout\) # (\inst14|inst9|data[14]~149_combout\)) # (!\inst14|inst9|data[13]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[13]~86_combout\,
	datac => \inst14|inst9|data[14]~218_combout\,
	datad => \inst14|inst9|data[14]~149_combout\,
	combout => \inst14|inst9|data[14]~150_combout\);

-- Location: FF_X27_Y19_N1
\inst14|inst13|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[14]~150_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B4~q\);

-- Location: LCCOMB_X27_Y19_N4
\inst14|inst9|data[13]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[13]~151_combout\ = (\inst14|inst9|data[13]~116_combout\ & (\inst14|inst9|data[13]~86_combout\ & !\inst14|inst9|Equal49~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[13]~116_combout\,
	datac => \inst14|inst9|data[13]~86_combout\,
	datad => \inst14|inst9|Equal49~3_combout\,
	combout => \inst14|inst9|data[13]~151_combout\);

-- Location: LCCOMB_X27_Y19_N18
\inst14|inst9|data[13]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[13]~152_combout\ = ((\inst14|inst9|data[13]~151_combout\ & \inst14|inst9|data[81]~108_combout\)) # (!\inst14|inst9|data[14]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[14]~52_combout\,
	datac => \inst14|inst9|data[13]~151_combout\,
	datad => \inst14|inst9|data[81]~108_combout\,
	combout => \inst14|inst9|data[13]~152_combout\);

-- Location: FF_X27_Y19_N19
\inst14|inst13|B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[13]~152_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B3~q\);

-- Location: LCCOMB_X27_Y19_N28
\inst5|inst11|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~0_combout\ = (!\inst14|inst13|B4~q\ & ((\inst14|inst13|B3~q\ & (\ACCA|data_out\(7))) # (!\inst14|inst13|B3~q\ & ((\inst1|Banderas\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst14|inst13|B3~q\,
	datac => \inst14|inst13|B4~q\,
	datad => \inst1|Banderas\(2),
	combout => \inst5|inst11|output~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst5|inst11|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~1_combout\ = (\inst5|inst11|output~0_combout\) # ((\inst14|inst13|B4~q\ & (\ACCB|data_out\(7) & !\inst14|inst13|B3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \ACCB|data_out\(7),
	datac => \inst14|inst13|B3~q\,
	datad => \inst5|inst11|output~0_combout\,
	combout => \inst5|inst11|output~1_combout\);

-- Location: FF_X25_Y19_N3
\inst5|inst3|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CN~q\,
	d => \inst5|inst11|output~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|valor_interno~q\);

-- Location: LCCOMB_X29_Y18_N18
\inst1|Yupa[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~22_combout\ = (\inst14|inst13|nDUPA~q\ & (\inst1|Yupa_interno\(3) & ((\BusAlta|PortR[3]~19_combout\) # (!\BusAlta|PortR~8_combout\)))) # (!\inst14|inst13|nDUPA~q\ & (((\BusAlta|PortR[3]~19_combout\) # (!\BusAlta|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \inst1|Yupa_interno\(3),
	datac => \BusAlta|PortR~8_combout\,
	datad => \BusAlta|PortR[3]~19_combout\,
	combout => \inst1|Yupa[3]~22_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst1|Yupa[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~23_combout\ = (\inst1|Yupa[3]~21_combout\ & (\inst1|Yupa[3]~22_combout\ & ((\inst5|inst3|valor_interno~q\) # (!\inst14|inst13|nHB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nHB~q\,
	datab => \inst1|Yupa[3]~21_combout\,
	datac => \inst5|inst3|valor_interno~q\,
	datad => \inst1|Yupa[3]~22_combout\,
	combout => \inst1|Yupa[3]~23_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst1|Yupa[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~24_combout\ = (\inst1|Yupa[3]~20_combout\ & (\inst1|Yupa[3]~23_combout\ & ((\PC|data_out\(3)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \inst1|Yupa[3]~20_combout\,
	datac => \PC|data_out\(3),
	datad => \inst1|Yupa[3]~23_combout\,
	combout => \inst1|Yupa[3]~24_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst1|Yupa[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~41_combout\ = (\inst1|Yupa[3]~24_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|nRW~q\) # (\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst5|inst7|SALIDA~10_combout\,
	datad => \inst1|Yupa[3]~24_combout\,
	combout => \inst1|Yupa[3]~41_combout\);

-- Location: LCCOMB_X28_Y18_N0
\ACCB|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~4_combout\ = (\inst14|inst13|EB\(1) & (\ACCB|C[3]~4_combout\)) # (!\inst14|inst13|EB\(1) & ((\inst1|Yupa[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[3]~4_combout\,
	datab => \inst1|Yupa[3]~41_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[3]~4_combout\);

-- Location: FF_X28_Y18_N1
\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[3]~4_combout\,
	asdata => \inst1|Yupa2[3]~23_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

-- Location: LCCOMB_X28_Y19_N18
\inst1|Yupa2[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~20_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(3)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(3) & ((\ACCB|data_out\(3)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|data_out\(3),
	datac => \ACCA|data_out\(3),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[3]~20_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst1|Yupa2[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~21_combout\ = (\inst1|Yupa2[3]~20_combout\ & ((\PC|data_out\(11)) # (!\PC|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(11),
	datad => \inst1|Yupa2[3]~20_combout\,
	combout => \inst1|Yupa2[3]~21_combout\);

-- Location: LCCOMB_X28_Y19_N4
\inst1|Yupa2[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~23_combout\ = ((\AUX|C[3]~1_combout\ & (\inst1|Yupa2[3]~21_combout\ & \inst1|Yupa2[3]~22_combout\))) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|C[3]~1_combout\,
	datab => \inst1|Yupa2[3]~21_combout\,
	datac => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[3]~22_combout\,
	combout => \inst1|Yupa2[3]~23_combout\);

-- Location: LCCOMB_X23_Y19_N10
\AUX|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~4_combout\ = (\inst14|inst13|RA\(0) & ((\AUX|data_out\(12)))) # (!\inst14|inst13|RA\(0) & (\inst1|Yupa2[3]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \inst1|Yupa2[3]~23_combout\,
	datad => \AUX|data_out\(12),
	combout => \AUX|data_out~4_combout\);

-- Location: FF_X23_Y19_N11
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(11));

-- Location: LCCOMB_X23_Y19_N28
\AUX|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~5_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(11))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \inst1|Yupa2[2]~27_combout\,
	datac => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~5_combout\);

-- Location: FF_X23_Y19_N29
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(10));

-- Location: LCCOMB_X23_Y19_N18
\AUX|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~6_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(10))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(10),
	datac => \inst14|inst13|RA\(0),
	datad => \inst1|Yupa2[1]~31_combout\,
	combout => \AUX|data_out~6_combout\);

-- Location: FF_X23_Y19_N19
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(9));

-- Location: LCCOMB_X26_Y20_N6
\AUX|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~7_combout\ = (\inst14|inst13|RA\(0) & (((\AUX|data_out\(9))))) # (!\inst14|inst13|RA\(0) & (((\inst1|Yupa2[0]~35_combout\)) # (!\inst1|Yupa2[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \inst1|Yupa2[7]~5_combout\,
	datac => \AUX|data_out\(9),
	datad => \inst1|Yupa2[0]~35_combout\,
	combout => \AUX|data_out~7_combout\);

-- Location: FF_X26_Y20_N7
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
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(8));

-- Location: FF_X29_Y19_N15
\inst1|Yupa_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux10~4_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(0));

-- Location: LCCOMB_X25_Y19_N16
\inst1|Yupa2[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~33_combout\ = (\BusAlta|PortR[0]~25_combout\ & (((\inst1|Yupa_interno\(0))) # (!\inst14|inst13|nDUPA~q\))) # (!\BusAlta|PortR[0]~25_combout\ & (!\BusAlta|PortR~9_combout\ & ((\inst1|Yupa_interno\(0)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[0]~25_combout\,
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Yupa_interno\(0),
	datad => \BusAlta|PortR~9_combout\,
	combout => \inst1|Yupa2[0]~33_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst1|Yupa2[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~34_combout\ = (\inst1|Yupa2[0]~33_combout\ & ((\AUX|data_out\(8)) # (\AUX|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datac => \inst1|Yupa2[0]~33_combout\,
	datad => \AUX|TRI_STATE_C~0_combout\,
	combout => \inst1|Yupa2[0]~34_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst1|Yupa2[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~32_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(0)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(0) & ((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\))))

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
	combout => \inst1|Yupa2[0]~32_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst1|Yupa2[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~35_combout\ = (\inst1|Yupa2[0]~34_combout\ & (\inst1|Yupa2[0]~32_combout\ & ((\PC|data_out\(8)) # (!\PC|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_C~0_combout\,
	datab => \PC|data_out\(8),
	datac => \inst1|Yupa2[0]~34_combout\,
	datad => \inst1|Yupa2[0]~32_combout\,
	combout => \inst1|Yupa2[0]~35_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst1|Yupa2[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~36_combout\ = (\inst1|Yupa2[0]~35_combout\) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~5_combout\,
	datad => \inst1|Yupa2[0]~35_combout\,
	combout => \inst1|Yupa2[0]~36_combout\);

-- Location: FF_X28_Y18_N7
\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[0]~7_combout\,
	asdata => \inst1|Yupa2[0]~36_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

-- Location: LCCOMB_X31_Y18_N16
\inst1|Yupa[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~36_combout\ = (\ACCB|data_out\(0)) # ((\inst14|inst13|nWB~q\) # ((\inst14|inst13|EB\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Yupa[0]~36_combout\);

-- Location: LCCOMB_X30_Y18_N22
\inst1|Yupa[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~37_combout\ = (\inst14|inst13|nDUPA~q\ & (\inst1|Yupa_interno\(0) & ((\BusAlta|PortR[0]~25_combout\) # (!\BusAlta|PortR~8_combout\)))) # (!\inst14|inst13|nDUPA~q\ & (((\BusAlta|PortR[0]~25_combout\)) # (!\BusAlta|PortR~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \BusAlta|PortR~8_combout\,
	datac => \inst1|Yupa_interno\(0),
	datad => \BusAlta|PortR[0]~25_combout\,
	combout => \inst1|Yupa[0]~37_combout\);

-- Location: LCCOMB_X29_Y18_N8
\inst1|Yupa[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~38_combout\ = (\inst1|Yupa[0]~36_combout\ & (\inst1|Yupa[0]~37_combout\ & ((\inst5|inst|valor_interno~q\) # (!\inst14|inst13|nHB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nHB~q\,
	datab => \inst1|Yupa[0]~36_combout\,
	datac => \inst5|inst|valor_interno~q\,
	datad => \inst1|Yupa[0]~37_combout\,
	combout => \inst1|Yupa[0]~38_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst1|Yupa[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~35_combout\ = (\AUX|data_out\(0) & (((\ACCA|data_out\(0)) # (!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(0) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(0)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(0),
	datab => \AUX|TRI_STATE_D~0_combout\,
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \ACCA|data_out\(0),
	combout => \inst1|Yupa[0]~35_combout\);

-- Location: LCCOMB_X29_Y18_N10
\inst1|Yupa[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~39_combout\ = (\inst1|Yupa[0]~38_combout\ & (\inst1|Yupa[0]~35_combout\ & ((\PC|data_out\(0)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \PC|data_out\(0),
	datac => \inst1|Yupa[0]~38_combout\,
	datad => \inst1|Yupa[0]~35_combout\,
	combout => \inst1|Yupa[0]~39_combout\);

-- Location: LCCOMB_X27_Y17_N16
\inst1|Yupa[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~44_combout\ = (\inst1|Yupa[0]~39_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|BD~q\) # (\inst14|inst13|nRW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|SALIDA~10_combout\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst1|Yupa[0]~39_combout\,
	combout => \inst1|Yupa[0]~44_combout\);

-- Location: LCCOMB_X21_Y18_N22
\BusAlta|PortR[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[0]~24_combout\ = ((\inst14|inst13|BD~q\ & ((\inst1|Yupa2[0]~36_combout\))) # (!\inst14|inst13|BD~q\ & (\inst1|Yupa[0]~44_combout\))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst1|Yupa[0]~44_combout\,
	datad => \inst1|Yupa2[0]~36_combout\,
	combout => \BusAlta|PortR[0]~24_combout\);

-- Location: LCCOMB_X21_Y18_N16
\BusAlta|PortR[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[0]~25_combout\ = (\inst6|data[7]~en_q\ & (((\BusAlta|PortR[0]~24_combout\ & \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\inst6|data[7]~en_q\ & (((\BusAlta|PortR[0]~24_combout\)) # (!\inst14|inst13|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \BusAlta|PortR[0]~24_combout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \BusAlta|PortR[0]~25_combout\);

-- Location: LCCOMB_X21_Y18_N10
\BusAlta|PortR[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[7]~11_combout\ = (\BusAlta|PortR[7]~10_combout\ & (((\inst6|mem_rtl_0|auto_generated|ram_block1a7\) # (!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[7]~10_combout\ & (!\inst14|inst13|nRW~q\ & ((!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[7]~10_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a7\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[7]~11_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst5|inst7|SALIDA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~5_combout\ = (!\inst14|inst13|nHB~q\ & ((\inst14|inst13|BD~q\) # ((\inst14|inst13|nRW~q\) # (\BusAlta|PortR[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nHB~q\,
	datac => \inst14|inst13|nRW~q\,
	datad => \BusAlta|PortR[7]~11_combout\,
	combout => \inst5|inst7|SALIDA~5_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst5|inst7|SALIDA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~6_combout\ = (\inst5|inst7|SALIDA~4_combout\ & (\inst5|inst7|SALIDA~5_combout\ & ((\inst1|Banderas\(2)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(2),
	datab => \inst5|inst7|SALIDA~4_combout\,
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst5|inst7|SALIDA~5_combout\,
	combout => \inst5|inst7|SALIDA~6_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst5|inst7|SALIDA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~3_combout\ = (\AUX|data_out\(7) & (((\ACCA|data_out\(7))) # (!\ACCA|TRI_STATE~0_combout\))) # (!\AUX|data_out\(7) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(7)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(7),
	datab => \ACCA|TRI_STATE~0_combout\,
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|data_out\(7),
	combout => \inst5|inst7|SALIDA~3_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst5|inst7|SALIDA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~7_combout\ = (\inst5|inst7|SALIDA~6_combout\ & (\inst5|inst7|SALIDA~3_combout\ & ((\PC|data_out\(7)) # (!\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \PC|data_out\(7),
	datac => \inst5|inst7|SALIDA~6_combout\,
	datad => \inst5|inst7|SALIDA~3_combout\,
	combout => \inst5|inst7|SALIDA~7_combout\);

-- Location: LCCOMB_X30_Y17_N12
\inst5|inst7|SALIDA~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|SALIDA~11_combout\ = (\inst5|inst7|SALIDA~7_combout\) # ((!\inst5|inst7|SALIDA~10_combout\ & ((\inst14|inst13|BD~q\) # (\inst14|inst13|nRW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nRW~q\,
	datac => \inst5|inst7|SALIDA~10_combout\,
	datad => \inst5|inst7|SALIDA~7_combout\,
	combout => \inst5|inst7|SALIDA~11_combout\);

-- Location: LCCOMB_X27_Y19_N24
\ACCA|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[7]~0_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[7]~0_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst5|inst7|SALIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \inst5|inst7|SALIDA~11_combout\,
	combout => \ACCA|data_out[7]~0_combout\);

-- Location: FF_X27_Y19_N25
\ACCA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[7]~0_combout\,
	asdata => \inst1|Yupa2[7]~6_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(7));

-- Location: LCCOMB_X32_Y19_N8
\ACCA|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[7]~0_combout\ = ((\inst14|inst13|nWA~q\) # ((\ACCA|data_out\(7)) # (!\inst14|inst13|EA\(1)))) # (!\inst14|inst13|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datab => \inst14|inst13|nWA~q\,
	datac => \ACCA|data_out\(7),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[7]~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux35~0_combout\ = (\inst14|inst13|UPA\(1) & (((\inst1|Q\(7) & !\inst14|inst13|UPA\(0))))) # (!\inst14|inst13|UPA\(1) & (\ACCA|C[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \inst1|Q\(7),
	datac => \inst14|inst13|UPA\(0),
	datad => \inst14|inst13|UPA\(1),
	combout => \inst1|Mux35~0_combout\);

-- Location: LCCOMB_X31_Y18_N14
\inst1|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux35~1_combout\ = (\inst1|Mux35~0_combout\ & ((\inst14|inst13|UPA\(2)) # ((\inst1|Mux27~0_combout\ & \ACCB|C[7]~0_combout\)))) # (!\inst1|Mux35~0_combout\ & (\inst1|Mux27~0_combout\ & (\ACCB|C[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux35~0_combout\,
	datab => \inst1|Mux27~0_combout\,
	datac => \ACCB|C[7]~0_combout\,
	datad => \inst14|inst13|UPA\(2),
	combout => \inst1|Mux35~1_combout\);

-- Location: LCCOMB_X30_Y20_N6
\inst1|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux43~2_combout\ = (\inst1|Mux40~3_combout\ & (((\inst1|Yupa2[7]~3_combout\)) # (!\inst1|Yupa2[7]~5_combout\))) # (!\inst1|Mux40~3_combout\ & (((\inst1|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~5_combout\,
	datab => \inst1|Mux40~3_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Mux43~1_combout\,
	combout => \inst1|Mux43~2_combout\);

-- Location: LCCOMB_X30_Y20_N14
\inst1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|Mux3~2_combout\ & ((\inst1|Mux35~1_combout\) # (\inst1|Mux43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux35~1_combout\,
	datac => \inst1|Mux3~2_combout\,
	datad => \inst1|Mux43~2_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst14|inst13|UPA\(5) & (\inst14|inst13|UPA\(4) $ (\inst1|Mux35~1_combout\ $ (\inst1|Mux43~2_combout\)))) # (!\inst14|inst13|UPA\(5) & (\inst1|Mux35~1_combout\ & (\inst14|inst13|UPA\(4) $ (\inst1|Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(5),
	datab => \inst14|inst13|UPA\(4),
	datac => \inst1|Mux35~1_combout\,
	datad => \inst1|Mux43~2_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y20_N18
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst14|inst13|UPA\(6) & \inst1|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|UPA\(6),
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y19_N6
\inst1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst1|Mux3~3_combout\) # ((\inst1|Mux3~1_combout\) # ((\inst1|Mux2~2_combout\ & \inst1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~3_combout\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Mux3~1_combout\,
	datad => \inst1|Add0~36_combout\,
	combout => \inst1|Mux3~4_combout\);

-- Location: FF_X29_Y19_N7
\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux3~4_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

-- Location: LCCOMB_X25_Y19_N28
\inst1|Yupa2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~1_combout\ = (\inst1|Banderas\(2) & (((\BusAlta|PortR[7]~11_combout\) # (!\BusAlta|PortR~9_combout\)))) # (!\inst1|Banderas\(2) & (!\inst14|inst13|nDUPA~q\ & ((\BusAlta|PortR[7]~11_combout\) # (!\BusAlta|PortR~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(2),
	datab => \inst14|inst13|nDUPA~q\,
	datac => \BusAlta|PortR[7]~11_combout\,
	datad => \BusAlta|PortR~9_combout\,
	combout => \inst1|Yupa2[7]~1_combout\);

-- Location: LCCOMB_X26_Y20_N22
\inst1|Yupa2[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~2_combout\ = (\inst1|Yupa2[7]~1_combout\ & ((\AUX|data_out\(15)) # (\AUX|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datad => \inst1|Yupa2[7]~1_combout\,
	combout => \inst1|Yupa2[7]~2_combout\);

-- Location: LCCOMB_X26_Y20_N18
\inst1|Yupa2[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~0_combout\ = (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(7)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|B[7]~0_combout\ & (\ACCA|data_out\(7) & ((\ACCB|data_out\(7)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|B[7]~0_combout\,
	datab => \ACCB|data_out\(7),
	datac => \ACCA|data_out\(7),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[7]~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst1|Yupa2[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~3_combout\ = (\inst1|Yupa2[7]~2_combout\ & (\inst1|Yupa2[7]~0_combout\ & ((\PC|data_out\(15)) # (!\PC|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(15),
	datab => \PC|TRI_STATE_C~0_combout\,
	datac => \inst1|Yupa2[7]~2_combout\,
	datad => \inst1|Yupa2[7]~0_combout\,
	combout => \inst1|Yupa2[7]~3_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst1|Yupa2[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~6_combout\ = (\inst1|Yupa2[7]~3_combout\) # (!\inst1|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[7]~5_combout\,
	combout => \inst1|Yupa2[7]~6_combout\);

-- Location: LCCOMB_X26_Y21_N4
\PC|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~7_combout\ = (\PC|data_out[8]~6_combout\ & (\PC|data_out[8]~1_combout\)) # (!\PC|data_out[8]~6_combout\ & ((\PC|data_out[8]~1_combout\ & (\PC|data_out\(14))) # (!\PC|data_out[8]~1_combout\ & ((\inst1|Yupa2[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|data_out[8]~1_combout\,
	datac => \PC|data_out\(14),
	datad => \inst1|Yupa2[7]~6_combout\,
	combout => \PC|data_out~7_combout\);

-- Location: LCCOMB_X23_Y21_N28
\PC|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~8_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~7_combout\ & ((\PC|R15~0_combout\))) # (!\PC|data_out~7_combout\ & (\PC|Add0~30_combout\)))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|Add0~30_combout\,
	datac => \PC|R15~0_combout\,
	datad => \PC|data_out~7_combout\,
	combout => \PC|data_out~8_combout\);

-- Location: LCCOMB_X23_Y21_N26
\PC|data_out[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~9_combout\ = (\inst14|inst13|PC\(2)) # (\inst14|inst13|PC\(0) $ (\inst14|inst13|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(1),
	combout => \PC|data_out[8]~9_combout\);

-- Location: FF_X23_Y21_N29
\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

-- Location: LCCOMB_X26_Y21_N10
\PC|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~10_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out\(13)) # ((\PC|data_out[8]~6_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((\inst1|Yupa2[6]~11_combout\ & !\PC|data_out[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datab => \PC|data_out[8]~1_combout\,
	datac => \inst1|Yupa2[6]~11_combout\,
	datad => \PC|data_out[8]~6_combout\,
	combout => \PC|data_out~10_combout\);

-- Location: LCCOMB_X26_Y21_N8
\PC|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~11_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~10_combout\ & ((\PC|data_out\(15)))) # (!\PC|data_out~10_combout\ & (\PC|Add0~28_combout\)))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|Add0~28_combout\,
	datac => \PC|data_out\(15),
	datad => \PC|data_out~10_combout\,
	combout => \PC|data_out~11_combout\);

-- Location: FF_X26_Y21_N9
\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

-- Location: LCCOMB_X26_Y21_N16
\PC|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~12_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out\(12)) # ((\PC|data_out[8]~6_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((!\PC|data_out[8]~6_combout\ & \inst1|Yupa2[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datab => \PC|data_out[8]~1_combout\,
	datac => \PC|data_out[8]~6_combout\,
	datad => \inst1|Yupa2[5]~15_combout\,
	combout => \PC|data_out~12_combout\);

-- Location: LCCOMB_X26_Y21_N26
\PC|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~13_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~12_combout\ & (\PC|data_out\(14))) # (!\PC|data_out~12_combout\ & ((\PC|Add0~26_combout\))))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|data_out\(14),
	datac => \PC|Add0~26_combout\,
	datad => \PC|data_out~12_combout\,
	combout => \PC|data_out~13_combout\);

-- Location: FF_X26_Y21_N27
\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

-- Location: LCCOMB_X26_Y21_N22
\PC|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~14_combout\ = (\PC|data_out[8]~6_combout\ & (((\PC|data_out[8]~1_combout\)))) # (!\PC|data_out[8]~6_combout\ & ((\PC|data_out[8]~1_combout\ & (\PC|data_out\(11))) # (!\PC|data_out[8]~1_combout\ & ((\inst1|Yupa2[4]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|data_out\(11),
	datac => \inst1|Yupa2[4]~19_combout\,
	datad => \PC|data_out[8]~1_combout\,
	combout => \PC|data_out~14_combout\);

-- Location: LCCOMB_X26_Y21_N0
\PC|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~15_combout\ = (\PC|data_out~14_combout\ & ((\PC|data_out\(13)) # ((!\PC|data_out[8]~6_combout\)))) # (!\PC|data_out~14_combout\ & (((\PC|Add0~24_combout\ & \PC|data_out[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datab => \PC|Add0~24_combout\,
	datac => \PC|data_out~14_combout\,
	datad => \PC|data_out[8]~6_combout\,
	combout => \PC|data_out~15_combout\);

-- Location: FF_X26_Y21_N1
\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

-- Location: LCCOMB_X26_Y21_N28
\PC|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~16_combout\ = (\PC|data_out[8]~6_combout\ & (((\PC|data_out[8]~1_combout\)))) # (!\PC|data_out[8]~6_combout\ & ((\PC|data_out[8]~1_combout\ & (\PC|data_out\(10))) # (!\PC|data_out[8]~1_combout\ & ((\inst1|Yupa2[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|data_out\(10),
	datac => \inst1|Yupa2[3]~23_combout\,
	datad => \PC|data_out[8]~1_combout\,
	combout => \PC|data_out~16_combout\);

-- Location: LCCOMB_X26_Y21_N14
\PC|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~17_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~16_combout\ & ((\PC|data_out\(12)))) # (!\PC|data_out~16_combout\ & (\PC|Add0~22_combout\)))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|Add0~22_combout\,
	datac => \PC|data_out\(12),
	datad => \PC|data_out~16_combout\,
	combout => \PC|data_out~17_combout\);

-- Location: FF_X26_Y21_N15
\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

-- Location: LCCOMB_X26_Y21_N2
\PC|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~18_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out\(9)) # ((\PC|data_out[8]~6_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((\inst1|Yupa2[2]~27_combout\ & !\PC|data_out[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datab => \PC|data_out[8]~1_combout\,
	datac => \inst1|Yupa2[2]~27_combout\,
	datad => \PC|data_out[8]~6_combout\,
	combout => \PC|data_out~18_combout\);

-- Location: LCCOMB_X26_Y21_N24
\PC|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~19_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~18_combout\ & ((\PC|data_out\(11)))) # (!\PC|data_out~18_combout\ & (\PC|Add0~20_combout\)))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|Add0~20_combout\,
	datac => \PC|data_out\(11),
	datad => \PC|data_out~18_combout\,
	combout => \PC|data_out~19_combout\);

-- Location: FF_X26_Y21_N25
\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

-- Location: LCCOMB_X26_Y21_N20
\PC|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~20_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out\(8)) # ((\PC|data_out[8]~6_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((!\PC|data_out[8]~6_combout\ & \inst1|Yupa2[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datab => \PC|data_out[8]~1_combout\,
	datac => \PC|data_out[8]~6_combout\,
	datad => \inst1|Yupa2[1]~31_combout\,
	combout => \PC|data_out~20_combout\);

-- Location: LCCOMB_X26_Y21_N30
\PC|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~21_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~20_combout\ & (\PC|data_out\(10))) # (!\PC|data_out~20_combout\ & ((\PC|Add0~18_combout\))))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|data_out\(10),
	datac => \PC|Add0~18_combout\,
	datad => \PC|data_out~20_combout\,
	combout => \PC|data_out~21_combout\);

-- Location: FF_X26_Y21_N31
\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

-- Location: LCCOMB_X26_Y21_N6
\PC|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~22_combout\ = (\PC|data_out[8]~6_combout\ & (\PC|data_out[8]~1_combout\)) # (!\PC|data_out[8]~6_combout\ & ((\PC|data_out[8]~1_combout\ & ((\PC|data_out\(7)))) # (!\PC|data_out[8]~1_combout\ & (\inst1|Yupa2[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~6_combout\,
	datab => \PC|data_out[8]~1_combout\,
	datac => \inst1|Yupa2[0]~36_combout\,
	datad => \PC|data_out\(7),
	combout => \PC|data_out~22_combout\);

-- Location: LCCOMB_X26_Y21_N12
\PC|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~23_combout\ = (\PC|data_out[8]~6_combout\ & ((\PC|data_out~22_combout\ & (\PC|data_out\(9))) # (!\PC|data_out~22_combout\ & ((\PC|Add0~16_combout\))))) # (!\PC|data_out[8]~6_combout\ & (((\PC|data_out~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datab => \PC|data_out[8]~6_combout\,
	datac => \PC|Add0~16_combout\,
	datad => \PC|data_out~22_combout\,
	combout => \PC|data_out~23_combout\);

-- Location: FF_X26_Y21_N13
\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \PC|data_out[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

-- Location: LCCOMB_X23_Y21_N20
\PC|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~24_combout\ = (\PC|data_out[6]~0_combout\ & (((\PC|data_out[8]~1_combout\)))) # (!\PC|data_out[6]~0_combout\ & ((\PC|data_out[8]~1_combout\ & (\PC|data_out\(6))) # (!\PC|data_out[8]~1_combout\ & ((\inst5|inst7|SALIDA~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \PC|data_out[6]~0_combout\,
	datac => \PC|data_out[8]~1_combout\,
	datad => \inst5|inst7|SALIDA~11_combout\,
	combout => \PC|data_out~24_combout\);

-- Location: LCCOMB_X23_Y21_N2
\PC|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~25_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~24_combout\ & ((\PC|data_out\(8)))) # (!\PC|data_out~24_combout\ & (\PC|data_out\(7))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datab => \PC|data_out[6]~0_combout\,
	datac => \PC|data_out\(8),
	datad => \PC|data_out~24_combout\,
	combout => \PC|data_out~25_combout\);

-- Location: LCCOMB_X23_Y21_N30
\PC|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~26_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~14_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out~4_combout\,
	datac => \PC|Add0~14_combout\,
	datad => \PC|data_out~25_combout\,
	combout => \PC|data_out~26_combout\);

-- Location: FF_X23_Y21_N31
\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

-- Location: LCCOMB_X23_Y21_N8
\PC|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~27_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out[6]~0_combout\) # ((\PC|data_out\(5))))) # (!\PC|data_out[8]~1_combout\ & (!\PC|data_out[6]~0_combout\ & ((\inst5|inst6|SALIDA~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~1_combout\,
	datab => \PC|data_out[6]~0_combout\,
	datac => \PC|data_out\(5),
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \PC|data_out~27_combout\);

-- Location: LCCOMB_X23_Y21_N10
\PC|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~28_combout\ = (\PC|data_out~27_combout\ & (((\PC|data_out\(7)) # (!\PC|data_out[6]~0_combout\)))) # (!\PC|data_out~27_combout\ & (\PC|data_out\(6) & ((\PC|data_out[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \PC|data_out\(7),
	datac => \PC|data_out~27_combout\,
	datad => \PC|data_out[6]~0_combout\,
	combout => \PC|data_out~28_combout\);

-- Location: LCCOMB_X23_Y21_N12
\PC|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~29_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~12_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out~4_combout\,
	datac => \PC|Add0~12_combout\,
	datad => \PC|data_out~28_combout\,
	combout => \PC|data_out~29_combout\);

-- Location: FF_X23_Y21_N13
\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

-- Location: LCCOMB_X23_Y21_N24
\PC|data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~30_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out[6]~0_combout\) # ((\PC|data_out\(4))))) # (!\PC|data_out[8]~1_combout\ & (!\PC|data_out[6]~0_combout\ & ((\inst1|Yupa[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~1_combout\,
	datab => \PC|data_out[6]~0_combout\,
	datac => \PC|data_out\(4),
	datad => \inst1|Yupa[5]~40_combout\,
	combout => \PC|data_out~30_combout\);

-- Location: LCCOMB_X23_Y21_N18
\PC|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~31_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~30_combout\ & (\PC|data_out\(6))) # (!\PC|data_out~30_combout\ & ((\PC|data_out\(5)))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \PC|data_out[6]~0_combout\,
	datac => \PC|data_out\(5),
	datad => \PC|data_out~30_combout\,
	combout => \PC|data_out~31_combout\);

-- Location: LCCOMB_X23_Y21_N14
\PC|data_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~32_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~10_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out~4_combout\,
	datac => \PC|Add0~10_combout\,
	datad => \PC|data_out~31_combout\,
	combout => \PC|data_out~32_combout\);

-- Location: FF_X23_Y21_N15
\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

-- Location: LCCOMB_X24_Y21_N2
\PC|data_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~33_combout\ = (\PC|data_out[6]~0_combout\ & (((\PC|data_out[8]~1_combout\)))) # (!\PC|data_out[6]~0_combout\ & ((\PC|data_out[8]~1_combout\ & (\PC|data_out\(3))) # (!\PC|data_out[8]~1_combout\ & ((\inst5|inst4|SALIDA~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[6]~0_combout\,
	datab => \PC|data_out\(3),
	datac => \inst5|inst4|SALIDA~8_combout\,
	datad => \PC|data_out[8]~1_combout\,
	combout => \PC|data_out~33_combout\);

-- Location: LCCOMB_X24_Y21_N20
\PC|data_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~34_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~33_combout\ & ((\PC|data_out\(5)))) # (!\PC|data_out~33_combout\ & (\PC|data_out\(4))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datab => \PC|data_out\(5),
	datac => \PC|data_out[6]~0_combout\,
	datad => \PC|data_out~33_combout\,
	combout => \PC|data_out~34_combout\);

-- Location: LCCOMB_X24_Y21_N22
\PC|data_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~35_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~8_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out~4_combout\,
	datac => \PC|Add0~8_combout\,
	datad => \PC|data_out~34_combout\,
	combout => \PC|data_out~35_combout\);

-- Location: FF_X24_Y21_N23
\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

-- Location: LCCOMB_X24_Y21_N10
\PC|data_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~36_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out\(2)) # ((\PC|data_out[6]~0_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((!\PC|data_out[6]~0_combout\ & \inst1|Yupa[3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datab => \PC|data_out[8]~1_combout\,
	datac => \PC|data_out[6]~0_combout\,
	datad => \inst1|Yupa[3]~41_combout\,
	combout => \PC|data_out~36_combout\);

-- Location: LCCOMB_X24_Y21_N12
\PC|data_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~37_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~36_combout\ & (\PC|data_out\(4))) # (!\PC|data_out~36_combout\ & ((\PC|data_out\(3)))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datab => \PC|data_out\(3),
	datac => \PC|data_out[6]~0_combout\,
	datad => \PC|data_out~36_combout\,
	combout => \PC|data_out~37_combout\);

-- Location: LCCOMB_X24_Y21_N24
\PC|data_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~38_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~6_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~6_combout\,
	datac => \PC|data_out~4_combout\,
	datad => \PC|data_out~37_combout\,
	combout => \PC|data_out~38_combout\);

-- Location: FF_X24_Y21_N25
\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

-- Location: LCCOMB_X24_Y21_N26
\PC|data_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~39_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|data_out\(1)) # ((\PC|data_out[6]~0_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((!\PC|data_out[6]~0_combout\ & \inst1|Yupa[2]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~1_combout\,
	datab => \PC|data_out\(1),
	datac => \PC|data_out[6]~0_combout\,
	datad => \inst1|Yupa[2]~42_combout\,
	combout => \PC|data_out~39_combout\);

-- Location: LCCOMB_X24_Y21_N16
\PC|data_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~40_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~39_combout\ & (\PC|data_out\(3))) # (!\PC|data_out~39_combout\ & ((\PC|data_out\(2)))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[6]~0_combout\,
	datab => \PC|data_out\(3),
	datac => \PC|data_out~39_combout\,
	datad => \PC|data_out\(2),
	combout => \PC|data_out~40_combout\);

-- Location: LCCOMB_X24_Y21_N30
\PC|data_out~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~41_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~4_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Add0~4_combout\,
	datac => \PC|data_out~4_combout\,
	datad => \PC|data_out~40_combout\,
	combout => \PC|data_out~41_combout\);

-- Location: FF_X24_Y21_N31
\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

-- Location: LCCOMB_X24_Y21_N18
\PC|data_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~42_combout\ = (\PC|data_out[6]~0_combout\ & (((\PC|data_out[8]~1_combout\)))) # (!\PC|data_out[6]~0_combout\ & ((\PC|data_out[8]~1_combout\ & (\PC|data_out\(0))) # (!\PC|data_out[8]~1_combout\ & ((\inst1|Yupa[1]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[6]~0_combout\,
	datab => \PC|data_out\(0),
	datac => \PC|data_out[8]~1_combout\,
	datad => \inst1|Yupa[1]~43_combout\,
	combout => \PC|data_out~42_combout\);

-- Location: LCCOMB_X24_Y21_N0
\PC|data_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~43_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~42_combout\ & ((\PC|data_out\(2)))) # (!\PC|data_out~42_combout\ & (\PC|data_out\(1))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[6]~0_combout\,
	datab => \PC|data_out\(1),
	datac => \PC|data_out\(2),
	datad => \PC|data_out~42_combout\,
	combout => \PC|data_out~43_combout\);

-- Location: LCCOMB_X24_Y21_N8
\PC|data_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~44_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~2_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~2_combout\,
	datac => \PC|data_out~4_combout\,
	datad => \PC|data_out~43_combout\,
	combout => \PC|data_out~44_combout\);

-- Location: FF_X24_Y21_N9
\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

-- Location: LCCOMB_X24_Y21_N6
\PC|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~2_combout\ = (\PC|data_out[8]~1_combout\ & ((\PC|R0~0_combout\) # ((\PC|data_out[6]~0_combout\)))) # (!\PC|data_out[8]~1_combout\ & (((!\PC|data_out[6]~0_combout\ & \inst1|Yupa[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[8]~1_combout\,
	datab => \PC|R0~0_combout\,
	datac => \PC|data_out[6]~0_combout\,
	datad => \inst1|Yupa[0]~44_combout\,
	combout => \PC|data_out~2_combout\);

-- Location: LCCOMB_X24_Y21_N28
\PC|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~3_combout\ = (\PC|data_out[6]~0_combout\ & ((\PC|data_out~2_combout\ & ((\PC|data_out\(1)))) # (!\PC|data_out~2_combout\ & (\PC|data_out\(0))))) # (!\PC|data_out[6]~0_combout\ & (((\PC|data_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out[6]~0_combout\,
	datab => \PC|data_out\(0),
	datac => \PC|data_out\(1),
	datad => \PC|data_out~2_combout\,
	combout => \PC|data_out~3_combout\);

-- Location: LCCOMB_X24_Y21_N4
\PC|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out~5_combout\ = (\PC|data_out~4_combout\ & (\PC|Add0~0_combout\)) # (!\PC|data_out~4_combout\ & ((\PC|data_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out~4_combout\,
	datac => \PC|Add0~0_combout\,
	datad => \PC|data_out~3_combout\,
	combout => \PC|data_out~5_combout\);

-- Location: FF_X24_Y21_N5
\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

-- Location: LCCOMB_X23_Y18_N0
\PC|R0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|R0~0_combout\ = (\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # ((\inst14|inst13|PC\(1)) # (\PC|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \inst14|inst13|PC\(0),
	datac => \inst14|inst13|PC\(1),
	datad => \PC|data_out\(0),
	combout => \PC|R0~0_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst14|inst6|$00001|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~1_combout\ = (!\inst14|inst13|prueba\(1) & ((\AUX|data_out\(15)) # ((\inst14|inst13|RA\(0)) # (\inst14|inst13|RA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \inst14|inst13|RA\(0),
	datac => \inst14|inst13|prueba\(1),
	datad => \inst14|inst13|RA\(2),
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst14|inst6|$00001|auto_generated|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~2_combout\ = (\inst14|inst13|prueba\(0) & (\PC|R0~0_combout\ & (!\inst14|inst13|prueba\(1)))) # (!\inst14|inst13|prueba\(0) & (((\inst14|inst6|$00001|auto_generated|result_node[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R0~0_combout\,
	datab => \inst14|inst13|prueba\(0),
	datac => \inst14|inst13|prueba\(1),
	datad => \inst14|inst6|$00001|auto_generated|result_node[0]~1_combout\,
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst14|inst6|$00001|auto_generated|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~3_combout\ = (!\inst14|inst13|prueba\(4) & (\inst14|inst13|prueba\(3) & ((\inst14|inst6|$00001|auto_generated|result_node[0]~0_combout\) # 
-- (\inst14|inst6|$00001|auto_generated|result_node[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst6|$00001|auto_generated|result_node[0]~0_combout\,
	datab => \inst14|inst13|prueba\(4),
	datac => \inst14|inst13|prueba\(3),
	datad => \inst14|inst6|$00001|auto_generated|result_node[0]~2_combout\,
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X27_Y19_N30
\inst14|inst6|$00001|auto_generated|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~4_combout\ = (\inst14|inst13|prueba\(1) & ((\inst1|Banderas\(2)) # ((\inst14|inst13|prueba\(4))))) # (!\inst14|inst13|prueba\(1) & (((\inst1|Q\(7) & !\inst14|inst13|prueba\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(2),
	datab => \inst14|inst13|prueba\(1),
	datac => \inst1|Q\(7),
	datad => \inst14|inst13|prueba\(4),
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst14|inst6|$00001|auto_generated|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~5_combout\ = (!\inst14|inst13|prueba\(3) & ((\inst14|inst6|$00001|auto_generated|result_node[0]~4_combout\ & (!\inst14|inst13|prueba\(0))) # (!\inst14|inst6|$00001|auto_generated|result_node[0]~4_combout\ 
-- & ((\inst14|inst13|prueba\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(3),
	datab => \inst14|inst13|prueba\(0),
	datac => \inst14|inst6|$00001|auto_generated|result_node[0]~4_combout\,
	datad => \inst14|inst13|prueba\(4),
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X29_Y17_N24
\inst14|inst6|$00001|auto_generated|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~6_combout\ = ((\inst14|inst13|prueba\(1) & ((\inst5|inst2|valor_interno~q\))) # (!\inst14|inst13|prueba\(1) & (\inst5|inst|valor_interno~q\))) # (!\inst14|inst13|prueba\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(1),
	datab => \inst14|inst13|prueba\(4),
	datac => \inst5|inst|valor_interno~q\,
	datad => \inst5|inst2|valor_interno~q\,
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X29_Y17_N26
\inst14|inst6|$00001|auto_generated|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst6|$00001|auto_generated|result_node[0]~7_combout\ = (\inst14|inst6|$00001|auto_generated|result_node[0]~5_combout\ & ((\inst14|inst13|prueba\(0) & (\inst5|inst5|valor_interno~q\)) # (!\inst14|inst13|prueba\(0) & 
-- ((\inst14|inst6|$00001|auto_generated|result_node[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst6|$00001|auto_generated|result_node[0]~5_combout\,
	datab => \inst14|inst13|prueba\(0),
	datac => \inst5|inst5|valor_interno~q\,
	datad => \inst14|inst6|$00001|auto_generated|result_node[0]~6_combout\,
	combout => \inst14|inst6|$00001|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X28_Y17_N18
\inst14|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst7~combout\ = \inst14|inst13|vf~q\ $ (((\inst14|inst6|$00001|auto_generated|result_node[0]~3_combout\) # (\inst14|inst6|$00001|auto_generated|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|vf~q\,
	datac => \inst14|inst6|$00001|auto_generated|result_node[0]~3_combout\,
	datad => \inst14|inst6|$00001|auto_generated|result_node[0]~7_combout\,
	combout => \inst14|inst7~combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst14|inst3|SELECTOR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~0_combout\ = (\inst14|inst13|instruccion\(0) & ((!\inst14|inst7~combout\))) # (!\inst14|inst13|instruccion\(0) & (\inst14|inst13|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst7~combout\,
	combout => \inst14|inst3|SELECTOR~0_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst14|inst4|valor_interno[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[4]~17_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (!\inst14|inst4|valor_interno[3]~16\)) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & ((\inst14|inst4|valor_interno[3]~16\) 
-- # (GND)))
-- \inst14|inst4|valor_interno[4]~18\ = CARRY((!\inst14|inst4|valor_interno[3]~16\) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[3]~16\,
	combout => \inst14|inst4|valor_interno[4]~17_combout\,
	cout => \inst14|inst4|valor_interno[4]~18\);

-- Location: LCCOMB_X30_Y15_N14
\inst14|inst4|valor_interno[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[5]~19_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & 
-- (!\inst14|inst4|valor_interno[4]~18\ & VCC))
-- \inst14|inst4|valor_interno[5]~20\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & !\inst14|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[4]~18\,
	combout => \inst14|inst4|valor_interno[5]~19_combout\,
	cout => \inst14|inst4|valor_interno[5]~20\);

-- Location: FF_X30_Y15_N15
\inst14|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(5));

-- Location: LCCOMB_X28_Y15_N26
\inst14|inst13|nCRI~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nCRI~feeder_combout\ = \inst14|inst9|Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst9|Equal1~1_combout\,
	combout => \inst14|inst13|nCRI~feeder_combout\);

-- Location: FF_X28_Y15_N27
\inst14|inst13|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst13|nCRI~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCRI~q\);

-- Location: CLKCTRL_G15
\inst14|inst13|nCRI~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|inst13|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|inst13|nCRI~clkctrl_outclk\);

-- Location: FF_X29_Y16_N25
\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[1]~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

-- Location: LCCOMB_X29_Y16_N22
\inst14|inst5|$00000|auto_generated|result_node[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst3|Equal1~0_combout\ & \inst8|valor_interno\(5))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~0_combout\,
	datab => \inst14|inst4|valor_interno\(5),
	datac => \inst14|inst3|Equal1~0_combout\,
	datad => \inst8|valor_interno\(5),
	combout => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\);

-- Location: LCCOMB_X30_Y15_N16
\inst14|inst4|valor_interno[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[6]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (!\inst14|inst4|valor_interno[5]~20\)) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & ((\inst14|inst4|valor_interno[5]~20\) 
-- # (GND)))
-- \inst14|inst4|valor_interno[6]~22\ = CARRY((!\inst14|inst4|valor_interno[5]~20\) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[5]~20\,
	combout => \inst14|inst4|valor_interno[6]~21_combout\,
	cout => \inst14|inst4|valor_interno[6]~22\);

-- Location: FF_X30_Y15_N17
\inst14|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(6));

-- Location: FF_X30_Y17_N29
\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[2]~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

-- Location: LCCOMB_X30_Y17_N26
\inst14|inst5|$00000|auto_generated|result_node[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(6))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst4|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst14|inst4|valor_interno\(6),
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst8|valor_interno\(6),
	combout => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\);

-- Location: LCCOMB_X30_Y15_N18
\inst14|inst4|valor_interno[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[7]~23_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & 
-- (!\inst14|inst4|valor_interno[6]~22\ & VCC))
-- \inst14|inst4|valor_interno[7]~24\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & !\inst14|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[6]~22\,
	combout => \inst14|inst4|valor_interno[7]~23_combout\,
	cout => \inst14|inst4|valor_interno[7]~24\);

-- Location: FF_X30_Y15_N19
\inst14|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(7));

-- Location: FF_X28_Y19_N21
\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[3]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

-- Location: LCCOMB_X28_Y15_N4
\inst14|inst5|$00000|auto_generated|result_node[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst3|Equal1~0_combout\ & \inst8|valor_interno\(7))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(7),
	datab => \inst14|inst3|Equal1~0_combout\,
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst8|valor_interno\(7),
	combout => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst14|inst4|valor_interno[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[8]~25_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & (!\inst14|inst4|valor_interno[7]~24\)) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & ((\inst14|inst4|valor_interno[7]~24\) 
-- # (GND)))
-- \inst14|inst4|valor_interno[8]~26\ = CARRY((!\inst14|inst4|valor_interno[7]~24\) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[7]~24\,
	combout => \inst14|inst4|valor_interno[8]~25_combout\,
	cout => \inst14|inst4|valor_interno[8]~26\);

-- Location: FF_X30_Y15_N21
\inst14|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(8));

-- Location: FF_X28_Y16_N21
\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst5|inst4|SALIDA~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

-- Location: LCCOMB_X28_Y16_N22
\inst14|inst5|$00000|auto_generated|result_node[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst3|Equal1~0_combout\ & \inst8|valor_interno\(8))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(8),
	datab => \inst14|inst3|Equal1~0_combout\,
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst8|valor_interno\(8),
	combout => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\);

-- Location: LCCOMB_X27_Y16_N4
\inst14|inst9|Equal51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal51~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- \inst14|inst9|Equal51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~5_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal51~1_combout\,
	combout => \inst14|inst9|Equal51~2_combout\);

-- Location: LCCOMB_X25_Y15_N16
\inst14|inst9|Equal58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal58~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & 
-- \inst14|inst9|Equal51~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal51~2_combout\,
	combout => \inst14|inst9|Equal58~2_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst14|inst9|data[81]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~143_combout\ = (\inst14|inst9|Equal17~2_combout\) # ((\inst14|inst9|Equal14~2_combout\) # ((\inst14|inst9|Equal50~0_combout\) # (!\inst14|inst9|data[81]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal17~2_combout\,
	datab => \inst14|inst9|Equal14~2_combout\,
	datac => \inst14|inst9|Equal50~0_combout\,
	datad => \inst14|inst9|data[81]~57_combout\,
	combout => \inst14|inst9|data[81]~143_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst14|inst9|data[81]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~144_combout\ = (\inst14|inst9|data[81]~143_combout\) # ((!\inst14|inst9|Equal58~2_combout\ & (\inst14|inst9|Equal66~2_combout\ & \inst14|inst13|B4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal58~2_combout\,
	datab => \inst14|inst9|data[81]~143_combout\,
	datac => \inst14|inst9|Equal66~2_combout\,
	datad => \inst14|inst13|B4~0_combout\,
	combout => \inst14|inst9|data[81]~144_combout\);

-- Location: FF_X26_Y18_N31
\inst14|inst13|liga[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[81]~144_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(3));

-- Location: LCCOMB_X28_Y17_N30
\inst14|inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|Equal1~1_combout\ = (\inst14|inst13|instruccion\(0) & !\inst14|inst13|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst3|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst14|inst5|$00000|auto_generated|result_node[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst13|liga\(3) & \inst14|inst3|Equal1~1_combout\)))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(3),
	datab => \inst14|inst13|liga\(3),
	datac => \inst14|inst3|Equal1~1_combout\,
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\);

-- Location: FF_X30_Y15_N13
\inst14|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(4));

-- Location: FF_X27_Y17_N29
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[0]~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X27_Y17_N26
\inst14|inst5|$00000|auto_generated|result_node[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst3|Equal1~0_combout\ & \inst8|valor_interno\(4))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(4),
	datab => \inst14|inst3|Equal1~0_combout\,
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst8|valor_interno\(4),
	combout => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\);

-- Location: LCCOMB_X27_Y17_N30
\inst14|inst9|Equal16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal16~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (\inst14|inst9|Equal3~2_combout\ & (\inst14|inst9|Equal3~3_combout\ & \inst14|inst9|Equal16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	datac => \inst14|inst9|Equal3~3_combout\,
	datad => \inst14|inst9|Equal16~2_combout\,
	combout => \inst14|inst9|Equal16~3_combout\);

-- Location: LCCOMB_X27_Y17_N14
\inst14|inst9|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst9|Equal16~3_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst9|Equal16~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal15~2_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst14|inst9|data[90]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~94_combout\ = (\inst14|inst9|Equal15~2_combout\) # ((\inst14|inst9|Equal18~3_combout\) # ((\inst14|inst9|Equal9~3_combout\) # (!\inst14|inst9|data~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~2_combout\,
	datab => \inst14|inst9|Equal18~3_combout\,
	datac => \inst14|inst9|data~93_combout\,
	datad => \inst14|inst9|Equal9~3_combout\,
	combout => \inst14|inst9|data[90]~94_combout\);

-- Location: LCCOMB_X27_Y18_N28
\inst14|inst9|data[90]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~99_combout\ = (\inst14|inst9|data[90]~94_combout\) # (((!\inst14|inst9|data[90]~98_combout\) # (!\inst14|inst9|data~87_combout\)) # (!\inst14|inst13|PC[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[90]~94_combout\,
	datab => \inst14|inst13|PC[0]~0_combout\,
	datac => \inst14|inst9|data~87_combout\,
	datad => \inst14|inst9|data[90]~98_combout\,
	combout => \inst14|inst9|data[90]~99_combout\);

-- Location: LCCOMB_X27_Y18_N20
\inst14|inst9|data[90]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~112_combout\ = (\inst14|inst9|data[90]~99_combout\) # ((\inst14|inst9|data~83_combout\ & \inst14|inst9|data[90]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[90]~99_combout\,
	datac => \inst14|inst9|data~83_combout\,
	datad => \inst14|inst9|data[90]~111_combout\,
	combout => \inst14|inst9|data[90]~112_combout\);

-- Location: FF_X27_Y18_N21
\inst14|inst13|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[90]~112_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(0));

-- Location: LCCOMB_X28_Y17_N12
\inst14|inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|Equal1~0_combout\ = (!\inst14|inst13|instruccion\(0) & \inst14|inst13|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst3|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst14|inst4|valor_interno[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[10]~29_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst4|valor_interno[9]~28\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- ((\inst14|inst4|valor_interno[9]~28\) # (GND)))
-- \inst14|inst4|valor_interno[10]~30\ = CARRY((!\inst14|inst4|valor_interno[9]~28\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[9]~28\,
	combout => \inst14|inst4|valor_interno[10]~29_combout\,
	cout => \inst14|inst4|valor_interno[10]~30\);

-- Location: LCCOMB_X30_Y15_N26
\inst14|inst4|valor_interno[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[11]~31_combout\ = \inst14|inst4|valor_interno[10]~30\ $ (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	cin => \inst14|inst4|valor_interno[10]~30\,
	combout => \inst14|inst4|valor_interno[11]~31_combout\);

-- Location: FF_X30_Y15_N27
\inst14|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(11));

-- Location: LCCOMB_X30_Y17_N16
\inst8|valor_interno[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[11]~feeder_combout\ = \inst5|inst7|SALIDA~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst7|SALIDA~11_combout\,
	combout => \inst8|valor_interno[11]~feeder_combout\);

-- Location: FF_X30_Y17_N17
\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

-- Location: LCCOMB_X30_Y17_N6
\inst14|inst5|$00000|auto_generated|result_node[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(11))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst4|valor_interno\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst14|inst4|valor_interno\(11),
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst8|valor_interno\(11),
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\);

-- Location: LCCOMB_X28_Y15_N22
\inst14|inst9|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & \inst14|inst9|Equal10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal6~3_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst14|inst9|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal9~3_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- \inst14|inst9|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => \inst14|inst9|Equal6~3_combout\,
	combout => \inst14|inst9|Equal9~3_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst14|inst9|data[80]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[80]~145_combout\ = (\inst14|inst9|Equal9~3_combout\ & (!\inst14|inst9|Equal8~2_combout\ & (!\inst14|inst9|Equal7~2_combout\ & \inst14|inst9|data[57]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~3_combout\,
	datab => \inst14|inst9|Equal8~2_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|data[57]~68_combout\,
	combout => \inst14|inst9|data[80]~145_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst14|inst9|data[80]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[80]~146_combout\ = (\inst14|inst9|data[80]~145_combout\) # ((\inst14|inst9|Equal10~4_combout\ & \inst14|inst9|data[70]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal10~4_combout\,
	datac => \inst14|inst9|data[70]~69_combout\,
	datad => \inst14|inst9|data[80]~145_combout\,
	combout => \inst14|inst9|data[80]~146_combout\);

-- Location: FF_X24_Y17_N25
\inst14|inst13|liga[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[80]~146_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(2));

-- Location: FF_X30_Y15_N9
\inst14|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(2));

-- Location: LCCOMB_X27_Y15_N24
\inst14|inst5|$00000|auto_generated|result_node[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst13|liga\(2) & ((\inst14|inst3|Equal1~1_combout\)))) # (!\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst4|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|liga\(2),
	datab => \inst14|inst4|valor_interno\(2),
	datac => \inst14|inst3|Equal1~1_combout\,
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\);

-- Location: LCCOMB_X27_Y15_N12
\inst14|inst9|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal10~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & 
-- \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal10~3_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst14|inst9|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal10~4_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & \inst14|inst9|Equal10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst9|Equal10~4_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst14|inst9|data[87]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[87]~141_combout\ = (\inst14|inst9|Equal18~3_combout\ & (!\inst14|inst9|Equal12~2_combout\ & (\inst14|inst13|liga[0]~12_combout\ & \inst14|inst13|liga[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~3_combout\,
	datab => \inst14|inst9|Equal12~2_combout\,
	datac => \inst14|inst13|liga[0]~12_combout\,
	datad => \inst14|inst13|liga[0]~13_combout\,
	combout => \inst14|inst9|data[87]~141_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst14|inst9|data[87]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[87]~142_combout\ = (\inst14|inst9|Equal10~4_combout\) # ((\inst14|inst9|Equal9~3_combout\) # ((\inst14|inst9|Equal15~2_combout\) # (\inst14|inst9|data[87]~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal10~4_combout\,
	datab => \inst14|inst9|Equal9~3_combout\,
	datac => \inst14|inst9|Equal15~2_combout\,
	datad => \inst14|inst9|data[87]~141_combout\,
	combout => \inst14|inst9|data[87]~142_combout\);

-- Location: FF_X25_Y17_N5
\inst14|inst13|liga[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[87]~142_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(9));

-- Location: LCCOMB_X28_Y17_N26
\inst14|inst5|$00000|auto_generated|result_node[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\ = (\inst14|inst13|instruccion\(0) & ((\inst14|inst13|instruccion\(1) & ((!\inst3|IRQ_flag~q\))) # (!\inst14|inst13|instruccion\(1) & (\inst14|inst13|liga\(9))))) # 
-- (!\inst14|inst13|instruccion\(0) & (((\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|liga\(9),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst13|instruccion\(1),
	datad => \inst3|IRQ_flag~q\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\);

-- Location: LCCOMB_X30_Y15_N22
\inst14|inst4|valor_interno[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[9]~27_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & (\inst14|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & 
-- (!\inst14|inst4|valor_interno[8]~26\ & VCC))
-- \inst14|inst4|valor_interno[9]~28\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ & !\inst14|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[8]~26\,
	combout => \inst14|inst4|valor_interno[9]~27_combout\,
	cout => \inst14|inst4|valor_interno[9]~28\);

-- Location: FF_X30_Y15_N23
\inst14|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(9));

-- Location: LCCOMB_X28_Y17_N24
\inst14|inst5|$00000|auto_generated|result_node[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ = (\inst14|inst13|instruccion\(0) & ((\inst14|inst7~combout\ & (\inst14|inst4|valor_interno\(9))) # (!\inst14|inst7~combout\ & 
-- ((\inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\))))) # (!\inst14|inst13|instruccion\(0) & ((\inst14|inst4|valor_interno\(9)) # ((\inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(9),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\,
	datad => \inst14|inst7~combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\);

-- Location: LCCOMB_X29_Y15_N4
\inst8|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[9]~feeder_combout\ = \inst1|Yupa[5]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[5]~40_combout\,
	combout => \inst8|valor_interno[9]~feeder_combout\);

-- Location: FF_X29_Y15_N5
\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

-- Location: LCCOMB_X28_Y15_N6
\inst14|inst5|$00000|auto_generated|result_node[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & (((\inst14|inst13|instruccion\(0)) # (\inst8|valor_interno\(9))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\,
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datad => \inst8|valor_interno\(9),
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~4_combout\);

-- Location: FF_X30_Y15_N25
\inst14|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(10));

-- Location: LCCOMB_X29_Y15_N28
\inst8|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[10]~feeder_combout\ = \inst5|inst6|SALIDA~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|SALIDA~8_combout\,
	combout => \inst8|valor_interno[10]~feeder_combout\);

-- Location: FF_X29_Y15_N29
\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

-- Location: LCCOMB_X29_Y15_N6
\inst14|inst5|$00000|auto_generated|result_node[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst3|Equal1~0_combout\ & \inst8|valor_interno\(10))))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(10),
	datab => \inst14|inst3|Equal1~0_combout\,
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst8|valor_interno\(10),
	combout => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst14|inst9|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal8~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst9|Equal2~3_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & \inst14|inst9|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst9|Equal2~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst14|inst9|Equal10~2_combout\,
	combout => \inst14|inst9|Equal8~2_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst14|inst9|data[70]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[70]~69_combout\ = (!\inst14|inst9|Equal8~2_combout\ & (!\inst14|inst9|Equal9~3_combout\ & (!\inst14|inst9|Equal7~2_combout\ & \inst14|inst9|data[57]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal8~2_combout\,
	datab => \inst14|inst9|Equal9~3_combout\,
	datac => \inst14|inst9|Equal7~2_combout\,
	datad => \inst14|inst9|data[57]~68_combout\,
	combout => \inst14|inst9|data[70]~69_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst14|inst9|data[80]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[80]~217_combout\ = (\inst14|inst9|data[70]~69_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & \inst14|inst9|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[70]~69_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \inst14|inst9|Equal10~3_combout\,
	combout => \inst14|inst9|data[80]~217_combout\);

-- Location: FF_X24_Y17_N11
\inst14|inst13|liga[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[80]~217_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(1));

-- Location: FF_X30_Y15_N7
\inst14|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(1));

-- Location: LCCOMB_X28_Y17_N22
\inst14|inst5|$00000|auto_generated|result_node[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst13|liga\(1) & ((\inst14|inst3|Equal1~1_combout\)))) # (!\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst4|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|liga\(1),
	datab => \inst14|inst4|valor_interno\(1),
	datac => \inst14|inst3|Equal1~1_combout\,
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\);

-- Location: LCCOMB_X27_Y17_N6
\inst14|inst9|Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal17~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\ & (\inst14|inst9|Equal16~3_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \inst14|inst9|Equal16~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	combout => \inst14|inst9|Equal17~2_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst14|inst9|data[78]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[78]~147_combout\ = (\inst14|inst9|Equal9~3_combout\) # (((\inst14|inst9|Equal17~2_combout\ & \inst14|inst9|data[92]~216_combout\)) # (!\inst14|inst9|data[97]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal17~2_combout\,
	datab => \inst14|inst9|Equal9~3_combout\,
	datac => \inst14|inst9|data[92]~216_combout\,
	datad => \inst14|inst9|data[97]~138_combout\,
	combout => \inst14|inst9|data[78]~147_combout\);

-- Location: FF_X26_Y16_N25
\inst14|inst13|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[78]~147_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(0));

-- Location: LCCOMB_X28_Y17_N16
\inst14|inst5|$00000|auto_generated|result_node[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (((\inst14|inst13|liga\(0) & \inst14|inst3|Equal1~1_combout\)))) # (!\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst4|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(0),
	datab => \inst14|inst13|liga\(0),
	datac => \inst14|inst3|Equal1~1_combout\,
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst14|inst9|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\ & (\inst14|inst9|Equal3~5_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~13_combout\,
	datac => \inst14|inst9|Equal3~5_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \inst14|inst9|Equal4~2_combout\);

-- Location: LCCOMB_X26_Y19_N14
\inst14|inst9|data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~155_combout\ = (\inst14|inst9|Equal4~2_combout\) # ((\inst14|inst9|data~154_combout\ & \inst14|inst9|data~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal4~2_combout\,
	datac => \inst14|inst9|data~154_combout\,
	datad => \inst14|inst9|data~88_combout\,
	combout => \inst14|inst9|data~155_combout\);

-- Location: LCCOMB_X26_Y19_N28
\inst14|inst13|CZ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|CZ~feeder_combout\ = \inst14|inst9|data~155_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data~155_combout\,
	combout => \inst14|inst13|CZ~feeder_combout\);

-- Location: FF_X26_Y19_N29
\inst14|inst13|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst13|CZ~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CZ~q\);

-- Location: LCCOMB_X29_Y19_N28
\inst1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|Mux10~4_combout\) # ((\inst1|Mux9~4_combout\) # ((\inst14|inst13|UPA\(6) & \inst1|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|UPA\(6),
	datab => \inst1|Mux10~4_combout\,
	datac => \inst1|Mux9~4_combout\,
	datad => \inst1|Mux4~2_combout\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~1_combout\ = (\inst1|Mux8~4_combout\) # ((\inst1|WideOr0~0_combout\) # ((\inst1|Mux7~5_combout\) # (\inst1|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~4_combout\,
	datab => \inst1|WideOr0~0_combout\,
	datac => \inst1|Mux7~5_combout\,
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|WideOr0~1_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst1|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (!\inst1|Mux3~4_combout\ & (!\inst1|Mux6~3_combout\ & (!\inst1|Mux5~3_combout\ & !\inst1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux6~3_combout\,
	datac => \inst1|Mux5~3_combout\,
	datad => \inst1|WideOr0~1_combout\,
	combout => \inst1|WideOr0~combout\);

-- Location: FF_X29_Y19_N21
\inst1|Banderas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|WideOr0~combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(0));

-- Location: LCCOMB_X28_Y17_N14
\inst5|inst10|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~3_combout\ = (!\inst14|inst13|B4~q\ & (!\inst14|inst13|B3~q\ & \inst1|Banderas\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|B4~q\,
	datac => \inst14|inst13|B3~q\,
	datad => \inst1|Banderas\(0),
	combout => \inst5|inst10|output~3_combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst5|inst10|output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~4_combout\ = (!\ACCA|data_out\(5) & (\inst14|inst13|B3~q\ & (!\ACCA|data_out\(6) & !\ACCA|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst14|inst13|B3~q\,
	datac => \ACCA|data_out\(6),
	datad => \ACCA|data_out\(7),
	combout => \inst5|inst10|output~4_combout\);

-- Location: LCCOMB_X29_Y17_N10
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

-- Location: LCCOMB_X29_Y17_N4
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

-- Location: LCCOMB_X28_Y18_N10
\inst5|inst10|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (!\ACCB|data_out\(0) & (!\ACCB|data_out\(2) & (!\ACCB|data_out\(1) & !\ACCB|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \ACCB|data_out\(2),
	datac => \ACCB|data_out\(1),
	datad => \ACCB|data_out\(3),
	combout => \inst5|inst10|output~1_combout\);

-- Location: LCCOMB_X28_Y18_N8
\inst5|inst10|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (!\ACCB|data_out\(4) & (!\ACCB|data_out\(5) & (!\ACCB|data_out\(6) & !\ACCB|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \ACCB|data_out\(5),
	datac => \ACCB|data_out\(6),
	datad => \ACCB|data_out\(7),
	combout => \inst5|inst10|output~0_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst5|inst10|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = (\inst14|inst13|B4~q\ & ((\inst14|inst13|B3~q\) # ((\inst5|inst10|output~1_combout\ & \inst5|inst10|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst10|output~1_combout\,
	datab => \inst14|inst13|B3~q\,
	datac => \inst5|inst10|output~0_combout\,
	datad => \inst14|inst13|B4~q\,
	combout => \inst5|inst10|output~2_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst5|inst10|output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~7_combout\ = (\inst5|inst10|output~3_combout\) # ((\inst5|inst10|output~2_combout\) # ((\inst5|inst10|output~4_combout\ & \inst5|inst10|output~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst10|output~3_combout\,
	datab => \inst5|inst10|output~4_combout\,
	datac => \inst5|inst10|output~6_combout\,
	datad => \inst5|inst10|output~2_combout\,
	combout => \inst5|inst10|output~7_combout\);

-- Location: FF_X29_Y17_N17
\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

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

ww_IX(15) <= \IX[15]~output_o\;

ww_IX(14) <= \IX[14]~output_o\;

ww_IX(13) <= \IX[13]~output_o\;

ww_IX(12) <= \IX[12]~output_o\;

ww_IX(11) <= \IX[11]~output_o\;

ww_IX(10) <= \IX[10]~output_o\;

ww_IX(9) <= \IX[9]~output_o\;

ww_IX(8) <= \IX[8]~output_o\;

ww_IX(7) <= \IX[7]~output_o\;

ww_IX(6) <= \IX[6]~output_o\;

ww_IX(5) <= \IX[5]~output_o\;

ww_IX(4) <= \IX[4]~output_o\;

ww_IX(3) <= \IX[3]~output_o\;

ww_IX(2) <= \IX[2]~output_o\;

ww_IX(1) <= \IX[1]~output_o\;

ww_IX(0) <= \IX[0]~output_o\;

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
END structure;


