library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is 
	port( dir: in std_logic_vector(2 downto 0);
			data: out std_logic_vector(14 downto 0));
end memory;

architecture behavioral of memory is
	type men is array(0 to 7) of std_logic_vector(14 downto 0);
	signal internal_mem : men;
	
	begin
		--Estado 0
		internal_mem(0) <= "000" & "1" & "110" & "0011" & "0101";
		--Estado 1
		internal_mem(1) <= "010" & "0" & "111" & "1011" & "1000";
		--Estado 2
		internal_mem(2) <= "011" & "0" & "101" & "1010" & "1111";
		--Estado 3
		internal_mem(3) <= "100" & "1" & "000" & "0101" & "0101";
		--Estado 4
		internal_mem(4) <= "001" & "1" & "010" & "1111" & "1111";
		--Estado 5
		internal_mem(5) <= "100" & "0" & "011" & "1011" & "1011";
		--Estado 6
		internal_mem(6) <= "100" & "0" & "100" & "0101" & "0101";
		--Estado 7
		internal_mem(7) <= "100" & "0" & "001" & "0000" & "0000";
		
		process(dir)
			begin
				data<=internal_mem(conv_integer(unsigned(dir)));
		end process;
end behavioral;	