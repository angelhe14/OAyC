library ieee;
use ieee.std_logic_1164.all;

entity divisor_datos is
	PORT( entrada: in std_logic_vector(14 downto 0);
			prueba: out std_logic_vector(2 downto 0);
			valorF: out std_logic;
			liga: out std_logic_vector(2 downto 0);
			salidasF: out std_logic_vector(3 downto 0);
			salidasV: out std_logic_vector(3 downto 0));
end divisor_datos;

architecture behavioral of divisor_datos is
begin
	process(entrada)
	begin
		prueba <= entrada(14 downto 12);
		valorF <= entrada(11);
		liga <= entrada(10 downto 8);
		salidasF <= entrada(7 downto 4);
		salidasV <= entrada(3 downto 0);
	end process;
end behavioral;