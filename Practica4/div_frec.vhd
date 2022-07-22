library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity div_frec is 
	port( clk: in std_logic;
			div_clk:out std_logic);
end div_frec;
			
architecture behavioral of div_frec is
begin
	process(clk)
	variable cuenta:std_logic_vector(27 downto 0):= x"0000000";
	begin
	if rising_edge(clk) then
		if cuenta=x"3FFFFFF" then
			cuenta:= x"0000000";
		else 
		cuenta:= cuenta+1;
		end if;
	end if;
	div_clk <= cuenta(25);
	end process;
end behavioral;