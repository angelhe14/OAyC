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
-- Generated on "03/17/2022 18:40:36"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL edoPres : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL I0 : STD_LOGIC;
SIGNAL I1 : STD_LOGIC;
SIGNAL I2 : STD_LOGIC;
SIGNAL I3 : STD_LOGIC;
SIGNAL O : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT practica4
	PORT (
	clk : IN STD_LOGIC;
	edoPres : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	I0 : IN STD_LOGIC;
	I1 : IN STD_LOGIC;
	I2 : IN STD_LOGIC;
	I3 : IN STD_LOGIC;
	O : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	edoPres => edoPres,
	I0 => I0,
	I1 => I1,
	I2 => I2,
	I3 => I3,
	O => O,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 810000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- I0
t_prcs_I0: PROCESS
BEGIN
	I0 <= '0';
	WAIT FOR 20000 ps;
	I0 <= '1';
	WAIT FOR 90000 ps;
	I0 <= '0';
WAIT;
END PROCESS t_prcs_I0;

-- I1
t_prcs_I1: PROCESS
BEGIN
	I1 <= '0';
	WAIT FOR 90000 ps;
	I1 <= '1';
	WAIT FOR 100000 ps;
	I1 <= '0';
WAIT;
END PROCESS t_prcs_I1;

-- I2
t_prcs_I2: PROCESS
BEGIN
	I2 <= '0';
	WAIT FOR 140000 ps;
	I2 <= '1';
	WAIT FOR 80000 ps;
	I2 <= '0';
WAIT;
END PROCESS t_prcs_I2;

-- I3
t_prcs_I3: PROCESS
BEGIN
	I3 <= '0';
	WAIT FOR 190000 ps;
	I3 <= '1';
	WAIT FOR 120000 ps;
	I3 <= '0';
WAIT;
END PROCESS t_prcs_I3;
END practica4_arch;
