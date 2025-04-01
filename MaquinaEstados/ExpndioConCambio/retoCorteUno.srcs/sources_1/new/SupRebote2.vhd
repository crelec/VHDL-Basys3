library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SupRebote2 is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          botonIn : in STD_LOGIC;
          BotonOut : out STD_LOGIC);
end SupRebote2;

architecture Behavioral of SupRebote2 is

component TempReb2 is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin300ms : out STD_LOGIC);
end component;

component Maq_estadoReb2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton2 : in STD_LOGIC;
           In_fin300ms : in STD_LOGIC;
           CE_Tempo : out STD_LOGIC;
           Boton_out : out STD_LOGIC);
end component;

signal sgce: STD_LOGIC;
signal sgfin: STD_LOGIC;

begin
u0: TempReb2 Port map(clk=>clk,reset=>reset,CE=>sgce,fin300ms=>sgfin);
u1: Maq_estadoReb2 Port map(clk=>clk,reset=>reset,Boton2=>botonIn,In_fin300ms=>sgfin,CE_Tempo=>sgce,Boton_out=>BotonOut);

end Behavioral;
