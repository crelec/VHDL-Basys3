library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupContador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           FoutCuenta : out STD_LOGIC_VECTOR (15 downto 0));
end SupContador;

architecture Behavioral of SupContador is

component Divisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end component;

component Contador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           FoutCuenta : out STD_LOGIC_VECTOR (13 downto 0));
end component;

component BinarioBCD_V2 is
    Port ( DatoIn : in STD_LOGIC_VECTOR (13 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal sg_clk: Std_logic;
signal sg_cuenta:STD_LOGIC_VECTOR (13 downto 0);

begin

uo:Divisor Port map(clk=>clk,reset=>reset,Foutdivide=>sg_clk);
u1:contador Port map(clk=>sg_clk,reset=>reset,Foutcuenta=>sg_cuenta);
u2:BinarioBCD_V2 Port map(DatoIn=>sg_cuenta,DatoOut=>FoutCuenta);
end Behavioral;
