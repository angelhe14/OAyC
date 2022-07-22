library ieee;
use ieee.std_logic_1164.all;

entity mux1X2X1_3  is 
	port( seleccion: in std_logic;
			E0: in std_logic_vector(2 downto 0);
			E1: in std_logic_vector(2 downto 0);
			salida: out std_logic_vector(2 downto 0));
end mux1X2X1_3;

architecture behavioral of mux1X2X1_3 is
begin
	process(seleccion,E0,E1)
	begin
		if seleccion = '0' then
			salida <= E0;
		elsif seleccion = '1' then
			salida <= E1;
		end if;
	end process;
end behavioral;
			