library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SupRebote1 is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          botonIn : in STD_LOGIC;
          BotonOut : out STD_LOGIC);
end SupRebote1;

architecture Behavioral of SupRebote1 is

component TempReb1 is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin300ms : out STD_LOGIC);
end component;

component Maq_estadoReb1 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton1 : in STD_LOGIC;
           In_fin300ms : in STD_LOGIC;
           CE_Tempo : out STD_LOGIC;
           Boton_out : out STD_LOGIC);
end component;

signal sgce: STD_LOGIC;
signal sgfin: STD_LOGIC;

begin
u0: TempReb1 Port map(clk=>clk,reset=>reset,CE=>sgce,fin300ms=>sgfin);
u1: Maq_estadoReb1 Port map(clk=>clk,reset=>reset,Boton1=>botonIn,In_fin300ms=>sgfin,CE_Tempo=>sgce,Boton_out=>BotonOut);

end Behavioral;
