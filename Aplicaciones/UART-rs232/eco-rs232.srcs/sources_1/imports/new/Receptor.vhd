library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Receptor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           LineRD_in : in STD_LOGIC;
           store_out :out std_logic;
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end Receptor;

architecture Behavioral of Receptor is

component Baudios is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fbaudio : out STD_LOGIC);
end component;

component mod_rx is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           tick : in STD_LOGIC;
           LineRD_in : in STD_LOGIC;
           Valid_out : out STD_LOGIC;
           code_out : out STD_LOGIC;
           store_out : out STD_LOGIC);
end component;

component Registro is
    Port ( InD : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           FoutQ : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sg1,sg2,sg3: std_logic;

begin

u0:Baudios Port map(clk=>clk,reset=>reset,fbaudio=>sg1);
u1:mod_rx Port map(clk=>clk,reset=>reset,tick=>sg1,LineRD_in=>LineRD_in,store_out=>store_out,Valid_out=>sg2,code_out=>sg3);--,store_out=>sg4);
u2:Registro Port map(InD=>sg3,clk=>clk,reset=>reset,ce=>sg2,FoutQ=>DatoOut);
 
end Behavioral;
