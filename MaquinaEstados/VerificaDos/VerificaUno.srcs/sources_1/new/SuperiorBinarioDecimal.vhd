library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity SuperiorBinarioDecimal is
    Port ( DatoEntrada : in  STD_LOGIC_VECTOR (13 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end SuperiorBinarioDecimal;

architecture Behavioral of SuperiorBinarioDecimal is

component BinarioBCD_V2 is
    Port ( DatoIn : in STD_LOGIC_VECTOR (13 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component cuenta1 is
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           FoutCuenta : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component mux4a1 is
    Port ( DatoInA : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInB : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInC : in STD_LOGIC_VECTOR (3 downto 0);
           DatoInD : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           FoutDato : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component negacion is
    Port ( btn : in  STD_LOGIC_VECTOR (2 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component display is
    Port ( digito : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component divide1 is
    Port ( clk : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end component;

signal sg1:STD_LOGIC_VECTOR (15 downto 0);
signal sg2:STD_LOGIC_VECTOR (2 downto 0);
signal sg3:STD_LOGIC_VECTOR (3 downto 0);
signal sg4:STD_LOGIC;

begin

u0:BinarioBCD_V2 port map(DatoIn=>DatoEntrada,DatoOut=>sg1);
u1:Mux4a1 port map(DatoInA=>sg1(3 downto 0),DatoInB=>sg1(7 downto 4),DatoInC=>sg1(11 downto 8),DatoInD=>sg1(15 downto 12),sel=>sg2,FoutDato=>sg3);
u2:display port map(digito=>sg3,segmento=>segmento);
u3:cuenta1 port map(clk=>sg4,clear=>reset,FoutCuenta=>sg2);
u4:negacion port map(btn=>sg2,anodo=>anodo);
u5:divide1 port map(clk=>clk,Foutdivide=>sg4);

end Behavioral;