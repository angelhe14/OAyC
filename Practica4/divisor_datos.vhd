library ieee;
use ieee.std_logic_1164.all;

entity divisor_datos is
	PORT( entrada: in std_logic_vector(17 downto 0);
			prueba: out std_logic_vector(1 downto 0);
			ligaF: out std_logic_vector(2 downto 0);
			ligaV: out std_logic_vector(2 downto 0);
			salidasF: out std_logic_vector(4 downto 0);
			salidasV: out std_logic_vector(4 downto 0));
end divisor_datos;

architecture behavioral of divisor_datos is
begin
	process(entrada)
	begin
		prueba <= entrada(17 downto 16);
		ligaF <= entrada(15 downto 13);
		ligaV <= entrada(12 downto 10);
		salidasF <= entrada(9 downto 5);
		salidasV <= entrada(4 downto 0);
	end process;
end behavioral;