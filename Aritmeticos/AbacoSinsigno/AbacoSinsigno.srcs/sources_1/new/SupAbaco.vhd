library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupAbaco is
    Port ( DatoIna : in STD_LOGIC_VECTOR (6 downto 0);
           DatoInb : in STD_LOGIC_VECTOR (6 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sel : in STD_LOGIC;
           signo : out STD_LOGIC;
           anodo : out STD_LOGIC_VECTOR (3 downto 0);
           segmento : out STD_LOGIC_VECTOR (6 downto 0));
end SupAbaco;

architecture Behavioral of SupAbaco is

component SumaResta is
    Port ( DatoIna : in STD_LOGIC_VECTOR (6 downto 0);
           DatoInb : in STD_LOGIC_VECTOR (6 downto 0);
           sel : in STD_LOGIC;
           Foutq : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Complemento is
    Port (DatoIna : in STD_LOGIC_VECTOR (6 downto 0); 
          DatoInb : in STD_LOGIC_VECTOR (6 downto 0);
           sel : in STD_LOGIC;
          signo : out STD_LOGIC;
          C_Ina : out STD_LOGIC_VECTOR (6 downto 0);
          C_Inb : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component  Presenta is
    Port ( DatoEntrada : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           segmento : out STD_LOGIC_VECTOR (6 downto 0);
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_CIna,sg_CInb:STD_LOGIC_VECTOR (6 downto 0);
signal sg_presenta:STD_LOGIC_VECTOR (7 downto 0);

begin

u0:Complemento Port map(DatoIna=>DatoIna,DatoInb=>DatoInb,sel=>sel,C_Ina=>sg_CIna,C_Inb=>sg_CInb,signo=>signo);
u1:SumaResta Port map(DatoIna=>sg_CIna,DatoInb=>sg_CInb,sel=>sel,Foutq=>sg_presenta);
u2:Presenta Port map(DatoEntrada=>sg_presenta,clk=>clk,reset=>reset,segmento=>segmento,anodo=>anodo);

end Behavioral;
