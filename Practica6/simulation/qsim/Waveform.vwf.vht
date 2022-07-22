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
-- Generated on "05/13/2022 11:49:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica6_vhd_vec_tst IS
END practica6_vhd_vec_tst;
ARCHITECTURE practica6_arch OF practica6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ENTRADA_Interrupciones : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENTRADA_Transformacion : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL INT : STD_LOGIC;
SIGNAL reloj : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT practica6
	PORT (
	ENTRADA_Interrupciones : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ENTRADA_Transformacion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	INT : IN STD_LOGIC;
	reloj : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica6
	PORT MAP (
-- list connections between master ports and signals
	ENTRADA_Interrupciones => ENTRADA_Interrupciones,
	ENTRADA_Transformacion => ENTRADA_Transformacion,
	Estado => Estado,
	INT => INT,
	reloj => reloj,
	reset => reset,
	salida => salida,
	X => X,
	Y => Y
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 440000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- reloj
t_prcs_reloj: PROCESS
BEGIN
LOOP
	reloj <= '0';
	WAIT FOR 10000 ps;
	reloj <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_reloj;

-- INT
t_prcs_INT: PROCESS
BEGIN
	INT <= '0';
	WAIT FOR 520000 ps;
	INT <= '1';
	WAIT FOR 470000 ps;
	INT <= '0';
WAIT;
END PROCESS t_prcs_INT;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 310000 ps;
	X <= '1';
	WAIT FOR 340000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
	WAIT FOR 180000 ps;
	Y <= '1';
	WAIT FOR 170000 ps;
	Y <= '0';
	WAIT FOR 330000 ps;
	Y <= '1';
	WAIT FOR 290000 ps;
	Y <= '0';
WAIT;
END PROCESS t_prcs_Y;
-- ENTRADA_Interrupciones[3]
t_prcs_ENTRADA_Interrupciones_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ENTRADA_Interrupciones(3) <= '0';
		WAIT FOR 240000 ps;
		ENTRADA_Interrupciones(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	ENTRADA_Interrupciones(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Interrupciones_3;
-- ENTRADA_Interrupciones[2]
t_prcs_ENTRADA_Interrupciones_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		ENTRADA_Interrupciones(2) <= '0';
		WAIT FOR 120000 ps;
		ENTRADA_Interrupciones(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	ENTRADA_Interrupciones(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Interrupciones_2;
-- ENTRADA_Interrupciones[1]
t_prcs_ENTRADA_Interrupciones_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		ENTRADA_Interrupciones(1) <= '0';
		WAIT FOR 60000 ps;
		ENTRADA_Interrupciones(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	ENTRADA_Interrupciones(1) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Interrupciones_1;
-- ENTRADA_Interrupciones[0]
t_prcs_ENTRADA_Interrupciones_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		ENTRADA_Interrupciones(0) <= '0';
		WAIT FOR 30000 ps;
		ENTRADA_Interrupciones(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	ENTRADA_Interrupciones(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_Interrupciones(0) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA_Interrupciones_0;
-- ENTRADA_Transformacion[3]
t_prcs_ENTRADA_Transformacion_3: PROCESS
BEGIN
	ENTRADA_Transformacion(3) <= '0';
	WAIT FOR 480000 ps;
	ENTRADA_Transformacion(3) <= '1';
	WAIT FOR 480000 ps;
	ENTRADA_Transformacion(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Transformacion_3;
-- ENTRADA_Transformacion[2]
t_prcs_ENTRADA_Transformacion_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ENTRADA_Transformacion(2) <= '0';
		WAIT FOR 240000 ps;
		ENTRADA_Transformacion(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	ENTRADA_Transformacion(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Transformacion_2;
-- ENTRADA_Transformacion[1]
t_prcs_ENTRADA_Transformacion_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		ENTRADA_Transformacion(1) <= '0';
		WAIT FOR 120000 ps;
		ENTRADA_Transformacion(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	ENTRADA_Transformacion(1) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Transformacion_1;
-- ENTRADA_Transformacion[0]
t_prcs_ENTRADA_Transformacion_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		ENTRADA_Transformacion(0) <= '0';
		WAIT FOR 60000 ps;
		ENTRADA_Transformacion(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	ENTRADA_Transformacion(0) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_Transformacion_0;
END practica6_arch;
