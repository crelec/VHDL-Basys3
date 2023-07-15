library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopMuxDisplay is
    Port ( EntA : in STD_LOGIC_VECTOR (3 downto 0);
           EntB : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           segmento : out STD_LOGIC_VECTOR (6 downto 0);
           anodos : out STD_LOGIC_VECTOR (3 downto 0));
end TopMuxDisplay;

architecture Behavioral of TopMuxDisplay is
component Mux4a1 is
    Port ( DatoInA : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInB : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           Fout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Display is
    Port ( digito : in STD_LOGIC_VECTOR (3 downto 0);
           segmento : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component negacion is
    Port ( Btn : in STD_LOGIC;
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_dato: STD_LOGIC_VECTOR(3 downto 0);

begin
u0:mux4a1 Port map(DatoInA=>EntA,DatoInB=>EntB,sel=>sel,fout=>sg_dato);
u1:negacion Port map(btn=>sel,anodo=>Anodos);
u2:display Port map(digito=>sg_dato,segmento=>segmento);			 

end Behavioral;
