library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ModuloDisplay is
    Port ( DatoIn : in STD_LOGIC_VECTOR (3 downto 0);
           segmento : out STD_LOGIC_VECTOR (6 downto 0));
end ModuloDisplay;

architecture Behavioral of ModuloDisplay is

begin
process(DatoIn)
	begin
		case DatoIn is
			when "0000" =>segmento<="1000000";
			when "0001" =>segmento<="1111001";
			when "0010" =>segmento<="0100100";
			when "0011" =>segmento<="0110000";
			when "0100" =>segmento<="0011001";
			when "0101" =>segmento<="0010010";
			when "0110" =>segmento<="0000010";
			when "0111" =>segmento<="1111000";
			when "1000" =>segmento<="0000000";
			when "1001" =>segmento<="0011000";
			when "1010" =>segmento<="1000110";  --letra C
			when others =>segmento<="1111111";  -- Display apagado
		end case;
	end process;
end Behavioral;