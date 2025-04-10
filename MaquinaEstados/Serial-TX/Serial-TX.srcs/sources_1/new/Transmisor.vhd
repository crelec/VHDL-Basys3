library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Transmisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           data : in STD_LOGIC_VECTOR (7 downto 0);
           eot : out STD_LOGIC;
           tx : out STD_LOGIC);
end Transmisor;

architecture Behavioral of Transmisor is

component mod_tx is
    Port (clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
            tick: in STD_LOGIC;
           Start : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           EOT : out STD_LOGIC;
           TX : out STD_LOGIC);
end component;

component Baudios_tx is
    Port (clk : in STD_LOGIC;
           reset : in STD_LOGIC;
      fbaudio : out STD_LOGIC);
end component;

component SupReboteTemporizado is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton : in STD_LOGIC;
           Boton_out : out STD_LOGIC);
end component;

signal sg,sg1 : std_logic;

begin

uo:Baudios_tx port map(clk=>clk,reset=>reset,fbaudio=>sg);
u1:mod_tx Port map(clk=>clk,Reset=>reset,tick=>sg,Start=>sg1,Data=>Data,EOT=>EOT,TX=>TX);
u2:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>start,Boton_out=>sg1);
end Behavioral;
