library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SuperiorVerifica is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end SuperiorVerifica;

architecture Behavioral of SuperiorVerifica is

component SuperiorBinarioDecimal is
    Port ( DatoEntrada : in  STD_LOGIC_VECTOR (13 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component cuenta2 is
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           ce : in STD_LOGIC;
           salidacuenta : out STD_LOGIC_VECTOR (13 downto 0));
end component;

signal sg1:STD_LOGIC_VECTOR (13 downto 0);

begin

u0: cuenta2 Port map( clk=>clk,clear=>reset,ce=>ce,salidacuenta=>sg1);
u1: SuperiorBinarioDecimal Port map(DatoEntrada=>sg1,clk=>clk,reset=>reset,segmento=>segmento,anodo=>anodo); 

end Behavioral;