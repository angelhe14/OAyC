library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY div_frec IS
PORT(CLK: IN STD_LOGIC;
		div_clk: out STD_LOGIC);
END div_frec;

architecture behavioral of div_frec is
begin
	process(CLK)
		variable cuenta : std_logic_vector (27 downto 0) := X"0000000";
		begin
			if rising_edge (clk) then 
				if cuenta=X"3FFFFFF" then
					cuenta:=X"0000000";
				else
					cuenta:=cuenta+1;
				end if;
			END IF;
		div_clk <= cuenta(20);
	end process;
end behavioral;
