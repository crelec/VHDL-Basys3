library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Complemento is
    Port (DatoIna : in STD_LOGIC_VECTOR (6 downto 0); 
          DatoInb : in STD_LOGIC_VECTOR (6 downto 0);
              sel : in STD_LOGIC;
          signo : out STD_LOGIC;
          C_Ina : out STD_LOGIC_VECTOR (6 downto 0);    
          C_Inb : out STD_LOGIC_VECTOR (6 downto 0));
end Complemento;

architecture Behavioral of Complemento is

begin
process(DatoIna,DatoInb,sel)
		begin
			if(sel='0')then
			 C_Ina<= DatoIna ;
			 C_Inb<= DatoInb ;
			 signo<='0';
			else
			 if(DatoIna > DatoInb) or (DatoIna = DatoInb)then
			     C_Ina<= DatoIna ;
				 C_Inb<= DatoInb ;
				 signo<='0';
			 else
				C_Ina<= DatoInb ;
				C_Inb<= DatoIna ;
				signo<='1';
			 end if;
		end if;
	end process;
	
end Behavioral;