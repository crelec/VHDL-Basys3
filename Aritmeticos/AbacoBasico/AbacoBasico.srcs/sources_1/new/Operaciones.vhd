library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Operaciones is
    Port ( DatoInA : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInB : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Foutq_sig : out STD_LOGIC;
           Foutq : out STD_LOGIC_VECTOR (7 downto 0));
end Operaciones;

architecture Behavioral of Operaciones is

begin
process(DatoInA,DatoInB,sel)

	variable Va,Vb,Vsu: integer;
	
	begin
		va:=conv_integer(DatoInA);
		vb:=conv_integer(DatoInB);
		vsu:=0;
		Foutq_sig<='0';
	if(sel="01")then
	   vsu:=va+vb;
	   Foutq_sig<='0';
	elsif(sel="10")then
	   if(va<vb)then
	       vsu:=vb-va;
	       Foutq_sig<='1';
	   else
	       vsu:=va-vb;
	       Foutq_sig<='0';
	   end if;
	elsif(sel="11")then
	   vsu:=va*vb;
	else
	   vsu:=0;
	end if;
	   Foutq<=conv_std_logic_vector(Vsu,8);
	end process;
end Behavioral;
