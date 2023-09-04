library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ModuloDisplay is
    Port ( DatoIn : in STD_LOGIC_VECTOR(2 downto 0);
           anodos : out STD_LOGIC_VECTOR(3 downto 0);
           segmento : out STD_LOGIC_VECTOR(6 downto 0));
end ModuloDisplay;

architecture Behavioral of ModuloDisplay is
begin
anodos <="1110";
process(DatoIn)
	begin
		case DatoIn is
			when "000" =>segmento<="1000000";
			when "001" =>segmento<="1111001";
			when "010" =>segmento<="0100100";
			when "011" =>segmento<="0110000";
			when "100" =>segmento<="0011001";
			when "101" =>segmento<="0010010";
			when "110" =>segmento<="0000010";
			when "111" =>segmento<="1111000";
			when others =>segmento<="ZZZZZZZ";
		end case;
	end process;
end Behavioral;
