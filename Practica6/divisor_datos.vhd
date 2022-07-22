library ieee;
use ieee.std_logic_1164.all;

entity divisor_datos is
	PORT( entrada: in std_logic_vector(14 downto 0);
			prueba: out std_logic_vector(1 downto 0);
			valorF: out std_logic;
			MI: out std_logic_vector(1 downto 0);
			liga: out std_logic_vector(3 downto 0);
			salidas: out std_logic_vector(5 downto 0));
end divisor_datos;

architecture behavioral of divisor_datos is
begin
	process(entrada)
	begin
		liga <= entrada(14 downto 11);
		prueba <= entrada(10 downto 9);
		valorF <= entrada(8);
		MI <= entrada(7 downto 6);
		salidas <= entrada(5 downto 0);
	end process;
end behavioral;