library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component Operaciones is
    Port ( DatoInA : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInB : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Foutq_sig : out STD_LOGIC;
           Foutq : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal DatoInA : STD_LOGIC_VECTOR (3 downto 0);
signal DatoInB : STD_LOGIC_VECTOR (3 downto 0);
signal Sel : STD_LOGIC_VECTOR (1 downto 0);
signal Foutq_sig : STD_LOGIC;
signal Foutq : STD_LOGIC_VECTOR (7 downto 0);

begin

u0:Operaciones Port map(DatoInA=>DatoInA,DatoInB=>DatoInB,Sel=>Sel,Foutq_sig=>Foutq_sig,Foutq=>Foutq); 

sg_DatoInA0:process
begin
DatoInA(0)<='0';
wait for 1ns;
DatoInA(0)<='1';
wait for 1ns;
end process;

sg_DatoInA1:process
begin
DatoInA(1)<='0';
wait for 2ns;
DatoInA(1)<='1';
wait for 2ns;
end process;

sg_DatoInA2:process
begin
DatoInA(2)<='0';
wait for 4ns;
DatoInA(2)<='1';
wait for 4ns;
end process;

sg_DatoInA3:process
begin
DatoInA(3)<='0';
wait for 8ns;
DatoInA(3)<='1';
wait for 8ns;
end process;

sg_DatoInB0:process
begin
DatoInB(0)<='0';
wait for 16ns;
DatoInB(0)<='1';
wait for 16ns;
end process;

sg_DatoInB1:process
begin
DatoInB(1)<='0';
wait for 32ns;
DatoInB(1)<='1';
wait for 32ns;
end process;

sg_DatoInB2:process
begin
DatoInB(2)<='0';
wait for 64ns;
DatoInB(2)<='1';
wait for 64ns;
end process;

sg_DatoInB3:process
begin
DatoInB(3)<='0';
wait for 128ns;
DatoInB(3)<='1';
wait for 128ns;
end process;

sg_Sel0:process
begin
sel(0)<='0';
wait for 256ns;
sel(0)<='1';
wait for 256ns;
end process;

sg_Sel1:process
begin
sel(1)<='0';
wait for 512ns;
sel(1)<='1';
wait for 512ns;
end process;

end Behavioral;
