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
-- Generated on "03/10/2022 21:13:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica3_vhd_vec_tst IS
END practica3_vhd_vec_tst;
ARCHITECTURE practica3_arch OF practica3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL edoPres : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL entradaA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL liga : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT practica3
	PORT (
	clk : IN STD_LOGIC;
	edoPres : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	entradaA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	liga : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : practica3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	edoPres => edoPres,
	entradaA => entradaA,
	liga => liga,
	reset => reset,
	salidas => salidas
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 4
	LOOP
		clk <= '0';
		WAIT FOR 100000 ps;
		clk <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- entradaA[3]
t_prcs_entradaA_3: PROCESS
BEGIN
	entradaA(3) <= '0';
	WAIT FOR 800000 ps;
	entradaA(3) <= '1';
WAIT;
END PROCESS t_prcs_entradaA_3;
-- entradaA[2]
t_prcs_entradaA_2: PROCESS
BEGIN
	entradaA(2) <= '0';
	WAIT FOR 400000 ps;
	entradaA(2) <= '1';
	WAIT FOR 400000 ps;
	entradaA(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_2;
-- entradaA[1]
t_prcs_entradaA_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entradaA(1) <= '0';
		WAIT FOR 200000 ps;
		entradaA(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	entradaA(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_1;
-- entradaA[0]
t_prcs_entradaA_0: PROCESS
BEGIN
LOOP
	entradaA(0) <= '0';
	WAIT FOR 100000 ps;
	entradaA(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entradaA_0;
END practica3_arch;