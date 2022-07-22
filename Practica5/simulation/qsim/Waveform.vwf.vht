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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/31/2022 21:01:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica5_vhd_vec_tst IS
END practica5_vhd_vec_tst;
ARCHITECTURE practica5_arch OF practica5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Edo_presente : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL prueba : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL Salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL V : STD_LOGIC;
SIGNAL VF : STD_LOGIC;
SIGNAL W : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT practica5
	PORT (
	CLK : IN STD_LOGIC;
	Edo_presente : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	prueba : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RESET : IN STD_LOGIC;
	Salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	V : IN STD_LOGIC;
	VF : OUT STD_LOGIC;
	W : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica5
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Edo_presente => Edo_presente,
	prueba => prueba,
	RESET => RESET,
	Salidas => Salidas,
	V => V,
	VF => VF,
	W => W,
	X => X,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		CLK <= '0';
		WAIT FOR 30000 ps;
		CLK <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	CLK <= '0';
	WAIT FOR 30000 ps;
	CLK <= '1';
WAIT;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
	WAIT FOR 760000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- V
t_prcs_V: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		V <= '0';
		WAIT FOR 240000 ps;
		V <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	V <= '0';
WAIT;
END PROCESS t_prcs_V;

-- W
t_prcs_W: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		W <= '0';
		WAIT FOR 120000 ps;
		W <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	W <= '0';
WAIT;
END PROCESS t_prcs_W;

-- X
t_prcs_X: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		X <= '0';
		WAIT FOR 60000 ps;
		X <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Z
t_prcs_Z: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		Z <= '0';
		WAIT FOR 30000 ps;
		Z <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	Z <= '0';
	WAIT FOR 30000 ps;
	Z <= '1';
WAIT;
END PROCESS t_prcs_Z;
END practica5_arch;
