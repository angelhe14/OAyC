library ieee;
use ieee.std_logic_1164.all;

entity logica_interna is
	port( instruccion: in std_logic_vector(1 downto 0);
			nCC: in std_logic;
			selector: out std_logic;
			nPL: out std_logic;
			nMAP: out std_logic;
			nVECT: out std_logic);
end logica_interna;

architecture behavioral of logica_interna is
begin
	process(instruccion, nCC)
	begin
		if instruccion = "00" then 
			selector <= '0';
			nPL <= '1';
			nMAP <= '1';
			nVECT <= '1';
		elsif instruccion = "01" then 
			if nCC = '0' then selector <= '1';
			else selector <= '0'; end if;
			nPL <= '0';
			nMAP <= '1';
			nVECT <= '1';
		elsif instruccion = "10" then
			selector <= '1';
			nPL <= '1';
			nMAP <= '0';
			nVECT <= '1';
		elsif instruccion = "11" then
			if nCC = '0' then selector <= '1';
			else selector <= '0'; end if;
			nPL <= '1';
			nMAP <= '1';
			nVECT <= '0';
		end if;
	end process;
end behavioral; 
			