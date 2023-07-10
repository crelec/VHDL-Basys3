library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;

entity Codi is
    generic(n:integer :=4);
    Port ( DatoIn : in STD_LOGIC_VECTOR (2**n-1 downto 0);
           Valido : out STD_LOGIC;
           DatoOut : out STD_LOGIC_VECTOR (n-1 downto 0));
end Codi;

architecture Behavioral of Codi is

begin
process(DatoIn)
	begin
		DatoOut <= (others => '0');  
		valido <= '0';
		for i in 0 to 2**n-1 loop
			if(DatoIn(i)='1') then
				DatoOut <= conv_std_logic_vector(i,n);
				valido <='1';
			end if;
		end loop;
	end process;
end Behavioral;
