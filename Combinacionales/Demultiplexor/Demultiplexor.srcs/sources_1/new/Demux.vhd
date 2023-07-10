library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux is
    generic(n:integer :=4);
    Port ( DatoIn : in STD_LOGIC_VECTOR (n-1 downto 0);
           DatoOutA : out STD_LOGIC_VECTOR (n-1 downto 0);
           DatoOutB : out STD_LOGIC_VECTOR (n-1 downto 0);
           DatoOutC : out STD_LOGIC_VECTOR (n-1 downto 0);
           DatoOutD : out STD_LOGIC_VECTOR (n-1 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0));
end Demux;

architecture Behavioral of Demux is

begin
process(DatoIn,sel)
	begin
		DatoOutA <=(others=>'0');
		DatoOutB <=(others=>'0');
		DatoOutC <=(others=>'0');
		DatoOutD <=(others=>'0');
	if(sel="00")then
			DatoOutA <= DatoIn;
		elsif(sel="01")then
			DatoOutB <= DatoIn;
		elsif(sel="10")then
			DatoOutC <= DatoIn;
		else
			DatoOutD <= DatoIn;
		end if;
	end process;
end Behavioral;
