library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
	port( sel: in std_logic_vector(1 downto 0);
			E0: in std_logic;
			E1: in std_logic;
			E2: in std_logic;
			E3: in std_logic;
			O: out std_logic);
end mux4;

architecture behavioral of mux4 is
begin
	process(sel,E0,E1,E2,E3)
	begin
		if sel ="00" then
			O<= E0;
		elsif sel = "01" then
			O<= E1;
		elsif sel = "10" then
			O<= E2;
		elsif sel = "11" then
			O<= E3;
		end if;
	end process;
end behavioral;

