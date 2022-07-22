library ieee;
use ieee.std_logic_1164.all;

entity registro_1 is
	port( reloj: in std_logic;
			reset: in std_logic;
			ena: in std_logic;
			entrada: in std_logic_vector(3 downto 0);
			salida: out std_logic_vector(3 downto 0));
end registro_1;

architecture behavioral of registro_1 is
--signal valor_interno: std_logic:= '0';
signal valor_interno: std_logic_vector (3 downto 0):= B"0000";
constant alta_impedancia: std_logic_vector (3 downto 0):="ZZZZ";
constant zero: std_logic_vector (3 downto 0):= B"0000";

begin 
	process (reloj, reset, entrada)
	begin 
		if reset = '0' then
			valor_interno <= zero;
		elsif rising_edge (reloj) then 
			valor_interno <= entrada;
		end if;
	end process;
	
	process(valor_interno, ena)
	begin
		if ena= '1' then 
			salida <= alta_impedancia;
		else
			salida <= valor_interno;
		end if;
	end process;
end behavioral;	