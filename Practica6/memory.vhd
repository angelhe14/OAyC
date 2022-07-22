library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is 
	port( dir: in std_logic_vector(3 downto 0);
			data: out std_logic_vector(14 downto 0));
end memory;

architecture behavioral of memory is
	type men is array(0 to 14) of std_logic_vector(14 downto 0);
	signal internal_mem : men;
	
	begin
		--Estado 0
		internal_mem(0) <= "0000" & "00" & "0" & "00" & "000001";
		--Estado 1
		internal_mem(1) <= "0111" & "01" & "1" & "01" & "001111";
		--Estado 2
		internal_mem(2) <= "0000" & "00" & "0" & "00" & "000011";
		--Estado 3
		internal_mem(3) <= "0000" & "00" & "0" & "00" & "001010";
		--Estado 4
		internal_mem(4) <= "0000" & "00" & "0" & "10" & "010000";
		--Estado 5
		internal_mem(5) <= "1010" & "10" & "1" & "01" & "010010";
		--Estado 6
		internal_mem(6) <= "0010" & "00" & "0" & "01" & "001001";
		--Estado 7
		internal_mem(7) <= "0000" & "11" & "0" & "11" & "010000";
		--Estado 8
		internal_mem(8) <= "0001" & "00" & "0" & "01" & "100000";
		--Estado 9
		internal_mem(9) <= "0000" & "11" & "0" & "11" & "001010";
		--Estado 10
		internal_mem(10) <= "0000" & "00" & "0" & "01" & "000000";
		--Estado 11
		internal_mem(11) <= "0000" & "00" & "0" & "10" & "000100";
		--Estado 12
		internal_mem(12) <= "0000" & "00" & "0" & "01" & "000100";
		--Estado 13
		internal_mem(13) <= "0000" & "00" & "0" & "01" & "101000";
		--Estado 14
		internal_mem(14) <= "0000" & "00" & "0" & "01" & "010011";
		
		process(dir)
			begin
				data<=internal_mem(conv_integer(unsigned(dir)));
		end process;
end behavioral;	