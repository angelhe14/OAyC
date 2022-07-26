library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is 
	port( dir: in std_logic_vector(6 downto 0);
			data: out std_logic_vector(6 downto 0));
end memory;

architecture behavioral of memory is
	type mem is array(0 to 11) of std_logic_vector(6 downto 0);
	signal internal_mem : mem;
	
	begin
		--Estado 0
		internal_mem(0) <= "001" & "0010";
		--Estado 1
		internal_mem(1) <= "000" & "0000";
		internal_mem(2) <= "010" & "0100";
		--Estado 2
		internal_mem(3) <= "011" & "1001";
		--Estado 3
		internal_mem(4) <= "010" & "0011";
		internal_mem(5) <= "011" & "0010";
		internal_mem(6) <= "100" & "0010";
		--Estado 4
		internal_mem(7) <= "100" & "0000";
		internal_mem(8) <= "101" & "0000";
		--Estado 5
		internal_mem(9) <= "001" & "0100";
		
		process(dir)
			begin
				data<=internal_mem(conv_integer(unsigned(dir)));
		end process;
end behavioral;		
