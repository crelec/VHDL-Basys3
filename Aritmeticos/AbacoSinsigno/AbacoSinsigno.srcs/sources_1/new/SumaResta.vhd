library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SumaResta is
    Port ( DatoIna : in STD_LOGIC_VECTOR (6 downto 0);
           DatoInb : in STD_LOGIC_VECTOR (6 downto 0);
           sel : in STD_LOGIC;
           Foutq : out STD_LOGIC_VECTOR (7 downto 0));
end SumaResta;

architecture Behavioral of SumaResta is

begin
    PROCESS(DatoIna,DatoInb,sel)
	   begin
	       case sel IS
		   when '0'=>Foutq<=('0'&DatoIna)+('0'&DatoInb);
		   when others=>Foutq<=('0'&DatoIna)-('0'&DatoInb);
		   end case;
	end process;

end Behavioral;
