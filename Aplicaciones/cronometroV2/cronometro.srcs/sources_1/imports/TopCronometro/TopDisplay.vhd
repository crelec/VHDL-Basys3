library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopDisplay is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           bc : in  STD_LOGIC_VECTOR (5 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end TopDisplay;

architecture Behavioral of TopDisplay is

component Modulo_BinBcd is
    Port ( DatoIN : in  STD_LOGIC_VECTOR (5 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Modulo_BinBcd2 is
    Port ( DatoIn : in STD_LOGIC_VECTOR (4 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Mux4a1 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c : in STD_LOGIC_VECTOR (3 downto 0);
           d : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           fout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component lab151 is
    Port ( seg : out STD_LOGIC_VECTOR (6 downto 0);
           dato : in STD_LOGIC_VECTOR (3 downto 0));
end component;

component Habilito_Display is
    Port ( selec : in STD_LOGIC_VECTOR (1 downto 0);
           anodos : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg3,sg7,sg8,sg9,sg10:STD_LOGIC_VECTOR (3 downto 0);

begin

u0:Modulo_BinBcd Port map(DatoIN=>bc,DatoOut(3 downto 0)=>sg7,DatoOut(7 downto 4)=>sg8);
ui:Modulo_BinBcd2 Port map(DatoIn=>a,DatoOut(3 downto 0)=>sg9,DatoOut(7 downto 4)=>sg10);
u1:Mux4a1 Port map(a=>sg7,b=>sg8,c=>sg9,d=>sg10,sel=>sel,fout=>sg3);
u2:lab151 port map(seg=>seg,dato=>sg3);
u3:Habilito_Display Port map(selec=>sel,anodos=>anodos);

end Behavioral;

