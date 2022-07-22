LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY practica2_vhdl IS
	PORT
	(    
	 E2 : IN STD_LOGIC; --entrada 
	 E1 : IN STD_LOGIC; --entrada
	 CLK : IN STD_LOGIC; --entrada
	 S1 : OUT STD_LOGIC; --Salida
	 S0 : OUT STD_LOGIC; --Salida
	 EstPre : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END practica2_vhdl;

ARCHITECTURE practica2_vhdl of practica2_vhdl is
	--Codificacion de estados
	CONSTANT A : STD_LOGIC_VECTOR(1 DOWNTO 0) := B"00";
	CONSTANT B : STD_LOGIC_VECTOR(1 DOWNTO 0) := B"01";
	CONSTANT C : STD_LOGIC_VECTOR(1 DOWNTO 0) := B"10"; 
	CONSTANT D : STD_LOGIC_VECTOR(1 DOWNTO 0) := B"11";
	--Señal de estado
	SIGNAL EST : STD_LOGIC_VECTOR(1 DOWNTO 0) := A;

	BEGIN
	PROCESS(E2, E1, CLK)
		BEGIN
		IF (rising_edge(CLK)) THEN
			EstPre <= EST;
			CASE EST IS
				WHEN A =>
					S1 <= '1';
					S0 <= '1';
					EST <= B;
				WHEN B =>
					S1 <= '1';
					S0 <= '0';
					IF E1 = '1' THEN
						EST <= B;
					ELSIF E2 = '1' THEN
						EST <= A;
					ELSE
						EST <= C;
					END IF;
				WHEN C =>
					S1 <= '0';
					S0 <= '1';
					EST <= D;
				WHEN D =>
					S1 <= '0';
					S0 <= '0';
					IF E2 = '0' THEN
						EST <= D;
					ELSIF E1 = '0' THEN
						EST <= C;
					ELSE
						EST <= A;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
END practica2_vhdl;