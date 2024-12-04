library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopCronometro is
    Port ( clk : in  STD_LOGIC;
           ce_P : in  STD_LOGIC;
           btn_sg : in  STD_LOGIC;
           btn_hr : in  STD_LOGIC;
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
           Fout1s : out  STD_LOGIC);
end component;

component Enable1h is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout1h : out  STD_LOGIC);
end component;

component cuenta0a59 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           fin_59: out STD_LOGIC;
           f0a59 : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component Cuenta0a23 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
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
           FoutP : out  STD_LOGIC);
end component;

component Mux1 is
    Port ( Sel : in STD_LOGIC;
           InDatoA : in STD_LOGIC;
           InDatoB : in STD_LOGIC;
           OutDato : out STD_LOGIC);
end component;

component SupReboteTemporizado is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton : in STD_LOGIC;
           Boton_out : out STD_LOGIC);
end component;

signal sg_clk,sg_Fout1s,sg_Fout1h,sg_Fout500,sg_btnMin,sg_mux1,sg_btnHor,sg_mux11:STD_LOGIC; 
signal sg_f0a59:STD_LOGIC_VECTOR(5 DOWNTO 0);
signal sg_f0a23:STD_LOGIC_VECTOR(4 DOWNTO 0);
signal sg_fdisplay:STD_LOGIC_VECTOR(1 DOWNTO 0);

begin

u0:Master_1kHZ Port map(clk=>clk,f1khz =>sg_clk);
u1:Enable1s Port map(clk=>sg_clk,reset=>reset,Fout1s=>sg_Fout1s);
u2:cuenta0a59 Port map(clk=>sg_clk,reset=>reset,ce=>sg_mux1,f0a59=>sg_f0a59,fin_59=>sg_Fout1h);
u3:Cuenta0a23 Port map(clk=>sg_mux11,reset=>reset,f0a23=>sg_f0a23);
u4:Enable500hz Port map(clk=>sg_clk,Fout500=>sg_Fout500);
u5:CuentaDisplay Port map(ce =>sg_Fout500,clk=>sg_clk,fdisplay=>sg_fdisplay);
u6:TopDisplay Port map(a=>sg_f0a23,bc=>sg_f0a59,sel=>sg_fdisplay,anodos=>Anodos,seg=>seg);
u7:EnableP Port map(clk=>clk,FoutP=>punto);
u8:Mux1 Port map(Sel=>ce_P,InDatoA=>sg_btnMin,InDatoB=>sg_fout1s,OutDato=>sg_mux1);
u9:Mux1 Port map(Sel=>ce_P,InDatoA=>sg_btnHor,InDatoB=>sg_fout1h,OutDato=>sg_mux11);
u10:SupReboteTemporizado Port map(clk=>sg_clk,reset=>reset,Boton=>btn_sg,Boton_out=>sg_btnMin);
u11:SupReboteTemporizado Port map(clk=>sg_clk,reset=>reset,Boton=>btn_hr,Boton_out=>sg_btnHor);
end Behavioral;

