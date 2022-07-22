library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity concatenador_datos is
	port( entradaA: in std_logic_vector (3 downto 0);
		  entradaB: in std_logic_vector (2 downto 0);
		  salida: out std_logic_vector(6 downto 0));
end concatenador_datos;

architecture behavioral of concatenador_datos is 
begin
	process(entradaA, entradaB)
	begin
		salida <= entradaB & entradaA;
	end process;
end behavioral;
	