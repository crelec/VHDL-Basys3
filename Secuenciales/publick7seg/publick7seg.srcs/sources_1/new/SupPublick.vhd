library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupPublick is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           segmento : out STD_LOGIC_VECTOR (6 downto 0);
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end SupPublick;

architecture Behavioral of SupPublick is

component cuenta is
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           FoutCuenta : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component divide is
    Port ( clk : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end component;

component Mux4a1 is
    Port ( sel : in STD_LOGIC_VECTOR (2 downto 0);
           FoutMux : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component negacion is
    Port ( btn : in STD_LOGIC_VECTOR (2 downto 0);
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg2:STD_LOGIC_VECTOR (2 downto 0);
signal sg3:STD_LOGIC;
  
begin

u1:negacion port map(btn=>sg2,anodo=>anodo);
u2:mux4a1 port map(sel=>sg2,foutMux=>segmento);
u3:cuenta port map(clk=>sg3,clear=>reset,FoutCuenta=>sg2);
u4:divide port map(clk=>clk,foutdivide=>sg3);

end Behavioral;
