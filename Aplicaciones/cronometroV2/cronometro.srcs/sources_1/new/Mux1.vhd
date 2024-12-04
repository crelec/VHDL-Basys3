library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux1 is
    Port ( Sel : in STD_LOGIC;
           InDatoA : in STD_LOGIC;
           InDatoB : in STD_LOGIC;
           OutDato : out STD_LOGIC);
end Mux1;

architecture Behavioral of Mux1 is

begin
process(sel,InDatoA,InDatoB)
begin
    if sel='1' then
        OutDato<=InDatoA;
    else
        OutDato<=InDatoB;
    end if;
end process;
end Behavioral;
