library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is 
	port( dir: in std_logic_vector(2 downto 0);
			data: out std_logic_vector(17 downto 0));
end memory;

architecture behavioral of memory is
	type men is array(0 to 7) of std_logic_vector(17 downto 0);
	signal internal_mem : men;
	
	begin
		--Estado A
		internal_mem(0) <= "00" & "001" & "001" & "00011" & "00011";
		--Estado B
		internal_mem(1) <= "11" & "010" & "100" & "10001" & "10011";
		--Estado C
		internal_mem(2) <= "00" & "011" & "011" & "00011" & "00011";
		--Estado D
		internal_mem(3) <= "01" & "101" & "110" & "00101" & "00100";
		--Estado E
		internal_mem(4) <= "00" & "001" & "010" & "01000" & "01010";
		--Estado F
		internal_mem(5) <= "00" & "011" & "011" & "00010" & "00010";
		--Estado G
		internal_mem(6) <= "10" & "101" & "010" & "10011" & "11011";
		--Relleno
		internal_mem(7) <= "00" & "000" & "000" & "00011" & "00011";
		
		process(dir)
			begin
				data<=internal_mem(conv_integer(unsigned(dir)));
		end process;
end behavioral;		
