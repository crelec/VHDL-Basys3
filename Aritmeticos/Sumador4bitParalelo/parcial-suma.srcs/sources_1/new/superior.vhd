library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity superior is
    Port ( DatoIna : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInb : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           suma : out STD_LOGIC_VECTOR (4 downto 0));
end superior;

architecture Behavioral of superior is

component modulo is
    Port ( DatoInA : in STD_LOGIC;
           DatoInB : in STD_LOGIC; 
           Cin : in STD_LOGIC;
           suma : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

signal sg1,sg2,sg3:std_logic;

begin

u0:modulo port map(DatoIna=>DatoInA(0),DatoInb=>DatoInB(0),cin=>cin,suma=>suma(0),cout=>sg1);
u1:modulo port map(DatoIna=>DatoInA(1),DatoInb=>DatoInB(1),cin=>sg1,suma=>suma(1),cout=>sg2);
u2:modulo port map(DatoIna=>DatoInA(2),DatoInb=>DatoInB(2),cin=>sg2,suma=>suma(2),cout=>sg3);
u3:modulo port map(DatoIna=>DatoInA(3),DatoInb=>DatoInB(3),cin=>sg3,suma=>suma(3),cout=>suma(4));

end Behavioral;
