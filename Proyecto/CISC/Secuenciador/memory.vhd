library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
Port ( 
	dir : in STD_LOGIC_VECTOR (11 downto 0);
	data : out STD_LOGIC_VECTOR (97 downto 0));
end memory;

architecture Behavioral of memory is

begin
	process(dir)
	begin
	
		-- DATA FORMAT
		-- |    PRUEBA    |VF| Ins |                LIGA                 |
		--  P4 P3 P2 P1 P0 VF I1 I0 L11 L10 L9 L8 L7 L6 L5 L4 L3 L2 L1 L0 nCRI EB1 EB0 nWB EA1 EA0 nWA selbus UPA9 UPA8 UPA7 UPA6 UPA5 UPA4 UPA3 UPA2 UPA1 UPA0 nOEUPA nDUPA selmux nEX2 nEX1 nEX0 X2 X1 X0 EnaY nERA2 nERA1 nERA0 RA2 RA1 RA0 nEAP2 nEAP1 nEAP0 AP2 AP1 AP0 nEPC2 nEPC1 nEPC0 PC2 PC1 PC0 nCBD nAS nRW BD DINT HINT SET_IRQ SET_XIRQ B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 CC CN CV CZ CI CH CX CS nHB ACCSEC

		-- Cadena por default: "00000" & "0" & "00" & "000000000000" & "10010010000000000011011100001110001110001110001110000000000000000000000010"
		
		--if(dir=    X"000") then data <= "00000" & "0" & "00" & "000000000000" & "10010010000000000011011100001110001110001110001110000000000000000000000010";
		--elsif(dir= X"001") then data <= "00000" & "0" & "00" & "000000000000" & "00000000000000000000000000000000000000000000000000000000000000000000000000"; 
												  
												  
		if(dir=    X"000") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"001") then data <= "00000000000000000000000100100000000000110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"002") then data <= "00000010000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";

		--ABA
												  																					-- 4
		elsif(dir= X"A80") then data <= "00000000000000000000111111100000000001111111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"A81") then data <= "01111111000000000000100101000000000000000111000011100011100011100011111110000000000000001111010010";
		elsif(dir= X"A82") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--BRA
		elsif(dir= X"100") then data <= "00000000000000000000100100100000000000110111000011001111100001100001111110000000000000000000000000";
		elsif(dir= X"101") then data <= "00000000000000000000100100100000110111110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"102") then data <= "00000000000000000000100100100010000110111111000011100011100011000011111110000000000000000000000010";
		elsif(dir= X"103") then data <= "00000101001000000101100100100000000000000111000011100011100011001111111110000000000000001000000010";
		elsif(dir= X"104") then data <= "11000001001000000110100100110000000111110111000011100011100010100011111110000000000000000000000010";
		elsif(dir= X"105") then data <= "00000000000000000000100100110000100111110111000011100011100010100011111110000000000000000000000010";
		elsif(dir= X"106") then data <= "00000000000000000000100100100000000000000111000011100011100010110011111110000000000000000000000010";
		elsif(dir= X"107") then data <= "01111111000000000000100100100000000000110111000011000011100011100011111110000000000000011000000010";
		elsif(dir= X"108") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--BNE
		elsif(dir= X"200") then data <= "10010001001000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"201") then data <= "01111111000000000000100100100000000000110111000011100011100011100111111110000000000000000000000010";
		elsif(dir= X"202") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--BEQ
		elsif(dir= X"210") then data <= "10010101001000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"211") then data <= "01111111000000000000100100100000000000110111000011100011100011100111111110000000000000000000000010";
		elsif(dir= X"212") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--JMP(EXT)
		elsif(dir= X"7E0") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"7E1") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111011000000000000000000000010";
		elsif(dir= X"7E2") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"7E3") then data <= "00000000000000000000100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"7E4") then data <= "01111111000000000000100100100000000000110111000010000011100010010111111110000000000000000000000010";
		elsif(dir= X"7E5") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--LDAA(imm)
		elsif(dir= X"860") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"861") then data <= "00000000000000000000100101000000000000110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"862") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000010011000111000010";
		elsif(dir= X"863") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		
		--LDAB(imm)
		elsif(dir= X"C60") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"C61") then data <= "00000000000000000000101000100000000000110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"C62") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000100101000111000010";
		elsif(dir= X"C63") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--LDAA(DIR)
		elsif(dir= X"B00") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"B01") then data <= "00000000000000000000100100100000000000110111000011001111100011100110111110000000000000000000000010";
		elsif(dir= X"B02") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"B03") then data <= "00000000000000000000100101000000000000110111000011100011100011100010111110000000000000000000000010";
		elsif(dir= X"B04") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000010011000111000010";
		elsif(dir= X"B05") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--LDAB(INH)
		elsif(dir= X"C00") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"C01") then data <= "00000000000000000000101000100000000000110111000011100011100011100110111110000000000000000000000010";
		elsif(dir= X"C02") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000100101000111000010";
		elsif(dir= X"C03") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--LDAB(DIR)
		elsif(dir= X"D00") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"D01") then data <= "00000000000000000000100100100000000000110111000011001111100011100110111110000000000000000000000010";
		elsif(dir= X"D02") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"D03") then data <= "00000000000000000000101000100000000000110111000011100011100011100010111110000000000000000000000010";
		elsif(dir= X"D04") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000100101000111000010";
		elsif(dir= X"D05") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--STAA
		elsif(dir= X"970") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"971") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111011000000000000000000000010";
		elsif(dir= X"972") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"973") then data <= "00000000000000000000100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"974") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"975") then data <= "00000000000000000000100101100000000000110111000011100011100011100011111000000000000000000000000010";
		elsif(dir= X"976") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000010011000111000010";
		elsif(dir= X"977") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
	
		--STAB
		elsif(dir= X"500") then data <= "00000000000000000000111100100001000011110111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"501") then data <= "00000000000000000000100100100000000000000111000010110011100011100011111110000000000000000000000010";
		elsif(dir= X"502") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"503") then data <= "00000000000000000000100100100000000000110111000011001111100011100110111110000000000000000000000010";
		elsif(dir= X"504") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"505") then data <= "00000000000000000000101100100000000000110111000011100011100011100010111100000000000000000000000010";
		elsif(dir= X"506") then data <= "00000111000000000000100100100000000000110111000011100011100011100011111110000000100101000111000010";
		elsif(dir= X"507") then data <= "11000001000000001001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"508") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		--ADDA
		elsif(dir= X"AA0") then data <= "00000000000000000000100100100000000000110111000011001111100011100110111110000000000000000000000010";
		elsif(dir= X"AA1") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"AA2") then data <= "00000000000000000000100111100010000101111111000011100011100011100010111110000000000000000000000011";
		elsif(dir= X"AA3") then data <= "00000111000000000000100101000000000000000111000011100011100011100011111110000000000000001111000010";
		elsif(dir= X"AA4") then data <= "00000111000000000000100101000000000000000111000011100011100011100011111110000000000000001111000010";
		--else data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000000000000000000010"; -- Default
		else 							data <= "00000000000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";


		end if;
	end process;
end Behavioral;