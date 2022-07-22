library ieee;
use ieee.std_logic_1164.all;

entity register2 is 
	port( clk: in std_logic;
			reset: in std_logic;
			data_in: in std_logic_vector(2 downto 0);
			data_out: out std_logic_vector(2 downto 0));
end register2;

architecture behavioral of register2 is
signal internal_value: std_logic_vector (2 downto 0):= B"000";
begin
	process (clk, reset, data_in)
	begin
		if reset = '0' then
			internal_value <= B"000";
		elsif rising_edge (clk) then
			internal_value <= data_in;
		end if;
	end process;
	
	process (internal_value)
	begin
		data_out <= internal_value;
	end process;
end behavioral;
