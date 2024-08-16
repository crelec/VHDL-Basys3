library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Combinacional is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton1 : in STD_LOGIC;
           Boton2 : in STD_LOGIC;
           R: out STD_LOGIC;
           G: out STD_LOGIC;
           B: out STD_LOGIC);
end Combinacional;

architecture Behavioral of Combinacional is

Component ContadorEstados is
    Port ( clk : in STD_LOGIC;
           Btn1: in STD_LOGIC;
           Btn2 : in STD_LOGIC;
           reset : in STD_LOGIC;
           R: out STD_LOGIC;
           G: out STD_LOGIC;
           B: out STD_LOGIC);
           
end Component;

Component Maq_estadoReb is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton : in STD_LOGIC;
           In_fin300ms : in STD_LOGIC;
           CE_Tempo : out STD_LOGIC;
           Boton_out : out STD_LOGIC);
end Component;

Component TempReb2 is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin300ms : out STD_LOGIC);
end Component;

Component TempReb is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin300ms : out STD_LOGIC);
end Component;

Component Maq_estadoReb2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton : in STD_LOGIC;
           In_fin300ms : in STD_LOGIC;
           CE_Tempo : out STD_LOGIC;
           Boton_out : out STD_LOGIC);
end Component;

signal sg1, sg2, sg3, sg4, sg5, sg6: STD_LOGIC;

begin

u0:ContadorEstados Port map (clk=>clk, reset=>reset, Btn1=>sg5, Btn2=>sg6, R=>R, G=>G, B=>B);
u1:TempReb Port map(ce=>sg2,clk=>clk,reset=>reset,fin300ms=>sg1);
u2:Maq_estadoReb Port map(clk=>clk,reset=>reset,Boton=>Boton1,In_Fin300ms=>sg1,CE_Tempo=>sg2,Boton_Out=>sg5);
u3:TempReb2 Port map(ce=>sg4,clk=>clk,reset=>reset,fin300ms=>sg3);
u4:Maq_estadoReb2 Port map(clk=>clk,reset=>reset,Boton=>Boton2,In_Fin300ms=>sg3,CE_Tempo=>sg4,Boton_Out=>sg6);

end Behavioral;
