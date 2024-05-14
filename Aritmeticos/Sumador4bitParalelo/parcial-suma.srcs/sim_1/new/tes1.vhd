library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tes1 is
--  Port ( );
end tes1;

architecture Behavioral of tes1 is

component superior is
    Port ( DatoIna : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInb : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           suma : out STD_LOGIC_VECTOR (4 downto 0));
end component;

signal DatoIna : STD_LOGIC_VECTOR (3 downto 0);
signal DatoInb : STD_LOGIC_VECTOR (3 downto 0);
signal     cin : STD_LOGIC;
signal    suma : STD_LOGIC_VECTOR (4 downto 0);
           
begin

u0:superior Port map(DatoIna=>DatoIna,DatoInb=>DatoInb,cin=>cin,suma=>suma);

Cin<='0';

sg_DatoInB0:process
begin
DatoInB(0)<='0';
wait for 1ns;
DatoInB(0)<='1';
wait for 1ns;
end process;

sg_DatoInB1:process
begin
DatoInB(1)<='0';
wait for 2ns;
DatoInB(1)<='1';
wait for 2ns;
end process;

sg_DatoInB2:process
begin
DatoInB(2)<='0';
wait for 4ns;
DatoInB(2)<='1';
wait for 4ns;
end process;

sg_DatoInB3:process
begin
DatoInB(3)<='0';
wait for 8ns;
DatoInB(3)<='1';
wait for 8ns;
end process;

sg_DatoInA0:process
begin
DatoInA(0)<='0';
wait for 16ns;
DatoInA(0)<='1';
wait for 16ns;
end process;

sg_DatoInA1:process
begin
DatoInA(1)<='0';
wait for 32ns;
DatoInA(1)<='1';
wait for 32ns;
end process;

sg_DatoInA2:process
begin
DatoInA(2)<='0';
wait for 64ns;
DatoInA(2)<='1';
wait for 64ns;
end process;

sg_DatoInA3:process
begin
DatoInA(3)<='0';
wait for 128ns;
DatoInA(3)<='1';
wait for 128ns;
end process;

end Behavioral;
