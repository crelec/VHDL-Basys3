library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tes is
--  Port ( );
end tes;

architecture Behavioral of tes is

component modulo is
    Port ( DatoInA : in STD_LOGIC;
           DatoInB : in STD_LOGIC;
           Cin : in STD_LOGIC;
           suma : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

signal DatoInA : STD_LOGIC;
signal DatoInB : STD_LOGIC;
signal     Cin : STD_LOGIC;
signal    suma : STD_LOGIC;
signal    Cout : STD_LOGIC;

begin

uo:modulo Port map(DatoInA=>DatoInA,DatoInB=>DatoInB,Cin=>Cin,suma=>suma,Cout=>Cout);

sg_CIn:process
begin
Cin<='0';
wait for 1ns;
Cin<='1';
wait for 1ns;
end process;

sg_DatoInB:process
begin
DatoInB<='0';
wait for 2ns;
DatoInB<='1';
wait for 2ns;
end process;

sg_DatoInA:process
begin
DatoInA<='0';
wait for 4ns;
DatoInA<='1';
wait for 4ns;
end process;
           
end Behavioral;
