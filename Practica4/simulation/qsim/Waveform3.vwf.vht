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
-- Generated on "03/17/2022 21:36:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica4_vhd_vec_tst IS
END practica4_vhd_vec_tst;
ARCHITECTURE practica4_arch OF practica4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Edo_sig : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL edoPres : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL O : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL W : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT practica4
	PORT (
	CLK : IN STD_LOGIC;
	Edo_sig : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	edoPres : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	O : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RESET : IN STD_LOGIC;
	W : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica4
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Edo_sig => Edo_sig,
	edoPres => edoPres,
	O => O,
	prueba => prueba,
	RESET => RESET,
	W => W,
	X => X,
	Y => Y,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
	WAIT FOR 870000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- W
t_prcs_W: PROCESS
BEGIN
	W <= '0';
	WAIT FOR 10000 ps;
	W <= '1';
	WAIT FOR 200000 ps;
	W <= '0';
WAIT;
END PROCESS t_prcs_W;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 170000 ps;
	X <= '1';
	WAIT FOR 170000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
	WAIT FOR 130000 ps;
	Y <= '1';
	WAIT FOR 160000 ps;
	Y <= '0';
WAIT;
END PROCESS t_prcs_Y;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '0';
	WAIT FOR 190000 ps;
	Z <= '1';
	WAIT FOR 290000 ps;
	Z <= '0';
WAIT;
END PROCESS t_prcs_Z;
END practica4_arch;
