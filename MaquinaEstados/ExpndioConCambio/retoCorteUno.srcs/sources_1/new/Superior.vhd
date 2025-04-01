library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Superior is
  Port (clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        Inbt1 : in STD_LOGIC;
        Inbt2 : in STD_LOGIC;
        Inbt5 : in STD_LOGIC;
        LED : out STD_LOGIC_VECTOR (3 downto 0);
        Segmento : out STD_LOGIC_VECTOR (6 downto 0);
        anodos : out STD_LOGIC_VECTOR (3 downto 0));
end Superior;

architecture Behavioral of Superior is

component Presenta is
    Port ( DatoEntrada : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           segmento : out STD_LOGIC_VECTOR (6 downto 0);
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Temp1s is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin1s : out STD_LOGIC);
end component;

component Temp5s is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin5s : out STD_LOGIC);
end component;

component SupRebote1 is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          botonIn : in STD_LOGIC;
          BotonOut : out STD_LOGIC);
end component;

component SupRebote2 is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          botonIn : in STD_LOGIC;
          BotonOut : out STD_LOGIC);
end component;

component SupRebote5 is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          botonIn : in STD_LOGIC;
          BotonOut : out STD_LOGIC);
end component;

component MaqEstados is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           LEDS : out STD_LOGIC_VECTOR (3 downto 0);
           MO : out STD_LOGIC_VECTOR (15 downto 0);
           Bt1 : in STD_LOGIC;
           Bt2 : in STD_LOGIC;
           Bt5 : in STD_LOGIC;
           In_fin1s : in STD_LOGIC;
           In_fin5s : in STD_LOGIC;
           Ce1s : out STD_LOGIC;
           Ce5s : out STD_LOGIC);
end component;

signal sg1: std_logic_vector(15 downto 0);
signal sgCe1s: std_logic;
signal sgCe5s: std_logic;
signal sgFin1s: std_logic;
signal sgFin5s: std_logic;
signal sgboton1: std_logic;
signal sgboton2: std_logic;
signal sgboton5: std_logic;

begin
u0: Presenta port map(clk=>clk,reset=>reset,DatoEntrada=>sg1,segmento=>segmento,anodo=>anodos);
u1: Temp1s port map(clk=>clk,reset=>reset,CE=>sgCe1s,fin1s=>sgFin1s);
u2: Temp5s port map(clk=>clk,reset=>reset,CE=>sgCe5s,fin5s=>sgFin5s);
u3: SupRebote1 port map(clk=>clk,reset=>reset,botonIn=>Inbt1,BotonOut=>sgboton1);
u4: SupRebote2 port map(clk=>clk,reset=>reset,botonIn=>Inbt2,BotonOut=>sgboton2);
u5: SupRebote5 port map(clk=>clk,reset=>reset,botonIn=>Inbt5,BotonOut=>sgboton5);
u6: MaqEstados port map(clk=>clk,reset=>reset,LEDS=>LED,MO=>sg1,Bt1=>sgboton1,Bt2=>sgboton2,Bt5=>sgboton5,In_fin1s=>sgFin1s,In_fin5s=>sgFin5s,Ce1s=>sgCe1s,Ce5s=>sgCe5s);

end Behavioral;
