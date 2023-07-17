library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupContador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           segmento : out STD_LOGIC_VECTOR (6 downto 0);
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
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

component ModuloDisplay is
    Port ( DatoIn : in STD_LOGIC_VECTOR (3 downto 0);
           segmento : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Mux4a1 is
    Port ( DatoInA : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInB : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInC : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInD : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           FoutDato : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component cuenta1 is
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           FoutCuenta : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component divide1 is
    Port ( clk : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end component;

component negacion is
    Port ( btn : in STD_LOGIC_VECTOR (2 downto 0);
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_clk,sg2,sg22: Std_logic;
signal sg_cuenta:STD_LOGIC_VECTOR (13 downto 0);
signal sg_BCD:STD_LOGIC_VECTOR (15 downto 0);
signal sg3:STD_LOGIC_VECTOR (3 downto 0);
signal sg4:STD_LOGIC_VECTOR (2 downto 0);

begin

uo:Divisor Port map(clk=>clk,reset=>reset,Foutdivide=>sg_clk);
u1:contador Port map(clk=>sg_clk,reset=>reset,Foutcuenta=>sg_cuenta);
u2:BinarioBCD_V2 Port map(DatoIn=>sg_cuenta,DatoOut=>sg_BCD);
u3:Mux4a1 port map(DatoInA=>sg_BCD(3 downto 0),DatoInB=>sg_BCD(7 downto 4),DatoInC=>sg_BCD(11 downto 8),DatoInD=>sg_BCD(15 downto 12),sel=>sg4,FoutDato=>sg3);
u4:cuenta1 port map(clk=>sg22,clear=>reset,FoutCuenta=>sg4);
u5:divide1 port map(clk=>clk,Foutdivide=>sg22);
u6:ModuloDisplay port map(DatoIn=>sg3,segmento=>segmento);
u7:negacion port map(btn=>sg4,anodo=>anodo);

end Behavioral;
