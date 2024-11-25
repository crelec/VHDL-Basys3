library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopCronometro is
    Port ( clk : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           punto : out STD_LOGIC;
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end TopCronometro;

architecture Behavioral of TopCronometro is

component Master_1kHZ is
    Port ( clk : in  STD_LOGIC;
			  f1khz : out  STD_LOGIC);
end component;

component Enable1s is 
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           Fout1s : out  STD_LOGIC);
end component;

component Enable1h is
    Port ( CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout1h : out  STD_LOGIC);
end component;

component cuenta0a59 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a59 : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component Cuenta0a23 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a23 : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component TopDisplay is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           bc : in  STD_LOGIC_VECTOR (5 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component CuentaDisplay is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           fdisplay : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component Enable500hz is
    Port ( clk : in  STD_LOGIC;
           Fout500 : out  STD_LOGIC);
end component;

component EnableP is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           FoutP : out  STD_LOGIC);
end component;

signal sg_clk,sg_Fout1s,sg_Fout1h,sg_Fout500:STD_LOGIC; --,Fout10hz,sg_Fout1hz,sg_Fout60hz
signal sg_f0a59:STD_LOGIC_VECTOR(5 DOWNTO 0);
signal sg_f0a23:STD_LOGIC_VECTOR(4 DOWNTO 0);
signal sg_fdisplay:STD_LOGIC_VECTOR(1 DOWNTO 0);

begin

u0:Master_1kHZ Port map(clk=>clk,f1khz =>sg_clk);
u1:Enable1s Port map(clk=>sg_clk,reset=>reset,ce=>ce,Fout1s=>sg_Fout1s);
u2:Enable1h Port map(CE=>ce,clk=>sg_clk,reset=>reset,Fout1h=>sg_Fout1h);
u3:cuenta0a59 Port map(clk=>sg_clk,reset=>reset,ce=>sg_Fout1s,f0a59=>sg_f0a59);
u4:Cuenta0a23 Port map(clk=>sg_clk,reset=>reset,ce=>sg_Fout1h,f0a23=>sg_f0a23);
u5:Enable500hz Port map(clk=>sg_clk,Fout500=>sg_Fout500);
u6:CuentaDisplay Port map(ce =>sg_Fout500,clk=>sg_clk,fdisplay=>sg_fdisplay);
u7:TopDisplay Port map(a=>sg_f0a23,bc=>sg_f0a59,sel=>sg_fdisplay,anodos=>Anodos,seg=>seg);
u8:EnableP Port map(clk=>clk,reset=>reset,FoutP=>punto);

end Behavioral;

