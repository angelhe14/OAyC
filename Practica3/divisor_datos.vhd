library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is 
	port( entrada: in std_logic_vector(6 downto 0);
			liga: out std_logic_vector(2 downto 0);
			salidas: out std_logic_vector(3 downto 0));
end divisor_datos;

architecture behavioral of divisor_datos is
begin
	process(entrada)
	begin
		liga<= entrada(6 downto 4);
		salidas <= entrada (3 downto 0);
	end process;
end behavioral;