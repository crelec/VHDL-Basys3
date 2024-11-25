library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Modulo_BinBcd2 is
    Port ( DatoIn : in STD_LOGIC_VECTOR (4 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end Modulo_BinBcd2;

architecture Behavioral of Modulo_BinBcd2 is

begin
process(DatoIN)
	variable z:STD_LOGIC_VECTOR(10 downto 0);
  begin
	for i in 0 to 10 loop
	  z(i):='0';
	end loop;
	z(7 downto 3):=DatoIN;
	for i in 0 to 1 loop
	  if z(8 downto 5) > 4 then
		z(8 downto 5):=z(8 downto 5)+3;
	  end if;
	z(10 downto 1):=z(9 downto 0);
	end loop;
  DatoOut<="00"&z(10 downto 5);
 end process;
end Behavioral;
