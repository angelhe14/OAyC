library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
	port( sel: in std_logic_vector(2 downto 0);
			I0: in std_logic;
			I1: in std_logic;
			I2: in std_logic;
			I3: in std_logic;
			I4: in std_logic;
			O: out std_logic);
end mux4;

architecture behavioral of mux4 is
begin
	process(sel,I0,I1,I2,I3,I4)
	begin
		if sel ="000" then
			O<= I0;
		elsif sel = "001" then
			O<= I1;
		elsif sel = "010" then
			O<= I2;
		elsif sel = "011" then
			O<= I3;
		elsif sel = "100" then
			O<= I4;
		end if;
	end process;
end behavioral;