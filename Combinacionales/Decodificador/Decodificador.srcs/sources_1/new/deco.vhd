library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;   

entity deco is
    generic(n:integer :=4);
    Port ( DatoIn : in STD_LOGIC_VECTOR(n-1 downto 0);
           DatoOut : out STD_LOGIC_VECTOR(2**n-1 downto 0));
end deco;

architecture Behavioral of deco is

begin
process(DatoIn)  
	variable i : integer;
	begin
		 i := conv_integer(DatoIn);
		 for a in 0 to 2**n-1 loop
			if(a=i) then
				DatoOut(a)<='1';
			else
				DatoOut(a)<='0';
			end if;
		 end loop;
		 end process;

end Behavioral;
