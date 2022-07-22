library ieee;
use ieee.std_logic_1164.all;

entity deco4 is
port(
a: in std_logic_vector(2 downto 0);
b: out std_logic_vector(6 downto 0));
end;

architecture arqdeco of deco4 is

begin
with a select
b<= "0000001" when "000",
	 "1111001" when "001",
	 "0010010" when "010",
	 "0000110" when "011",
	 "1001100" when "100",
	 "0100100" when "101",
	 "0100000" when "111",
	 "1111111" when others;
end;