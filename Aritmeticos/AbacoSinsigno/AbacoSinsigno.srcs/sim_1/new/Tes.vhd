library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component SupAbaco is
    Port ( DatoIna : in STD_LOGIC_VECTOR (6 downto 0);
           DatoInb : in STD_LOGIC_VECTOR (6 downto 0);
           sel : in STD_LOGIC;
           signo : out STD_LOGIC;
           Foutq : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal DatoIna : STD_LOGIC_VECTOR (6 downto 0);
signal DatoInb : STD_LOGIC_VECTOR (6 downto 0);
signal sel : STD_LOGIC;
signal signo : STD_LOGIC;
signal Foutq : STD_LOGIC_VECTOR (7 downto 0);

begin

u0:SupAbaco Port map(DatoIna=>DatoIna,DatoInb=>DatoInb,sel=>sel,signo=>signo,Foutq=>Foutq);

S_DatoIna0:PROCESS
BEGIN
DatoIna(0)<= '0';
WAIT FOR 1ns;
DatoIna(0)<= '1';
wait for 1ns;
end process;  

S_DatoIna1:PROCESS
BEGIN
DatoIna(1)<= '0';
WAIT FOR 2ns;
DatoIna(1)<= '1';
wait for 2ns;
end process;

S_DatoIna2:PROCESS
BEGIN
DatoIna(2)<= '0';
WAIT FOR 4ns;
DatoIna(2)<= '1';
wait for 4ns;
end process;

S_DatoIna3:PROCESS
BEGIN
DatoIna(3)<= '0';
WAIT FOR 8ns;
DatoIna(3)<= '1';
wait for 8ns;
end process;

S_DatoIna4:PROCESS
BEGIN
DatoIna(4)<= '0';
WAIT FOR 16ns;
DatoIna(4)<= '1';
wait for 16ns;
end process;

S_DatoIna5:PROCESS
BEGIN
DatoIna(5)<= '0';
WAIT FOR 32ns;
DatoIna(5)<= '1';
wait for 32ns;
end process;

S_DatoIna6:PROCESS
BEGIN
DatoIna(6)<= '0';
WAIT FOR 64ns;
DatoIna(6)<= '1';
wait for 64ns;
end process;
---
S_DatoInb0:PROCESS
BEGIN
DatoInb(0)<= '0';
WAIT FOR 128ns;
DatoInb(0)<= '1';
wait for 128ns;
end process;

S_DatoInb1:PROCESS
BEGIN
DatoInb(1)<= '0';
WAIT FOR 256ns;
DatoInb(1)<= '1';
wait for 256ns;
end process;

S_DatoInb2:PROCESS
BEGIN
DatoInb(2)<= '0';
WAIT FOR 512ns;
DatoInb(2)<= '1';
wait for 512ns;
end process;

S_DatoInb3:PROCESS
BEGIN
DatoInb(3)<= '0';
WAIT FOR 1024ns;
DatoInb(3)<= '1';
wait for 1024ns;
end process;

S_DatoInb4:PROCESS
BEGIN
DatoInb(4)<= '0';
WAIT FOR 2048ns;
DatoInb(4)<= '1';
wait for 2048ns;
end process;

S_DatoInb5:PROCESS
BEGIN
DatoInb(5)<= '0';
WAIT FOR 4096ns;
DatoInb(5)<= '1';
wait for 4096ns;
end process;

S_DatoInb6:PROCESS
BEGIN
DatoInb(6)<= '0';
WAIT FOR 8192ns;
DatoInb(6)<= '1';
wait for 8192ns;
end process;

----
S_sel:PROCESS
BEGIN
sel<= '0';
WAIT FOR 16384ns;
sel<= '1';
wait for 16384ns;
end process; 

end Behavioral;
