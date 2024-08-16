library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Simulacion is
--  Port ( );
end Simulacion;

architecture Behavioral of Simulacion is

Component Combinacional is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton1 : in STD_LOGIC;
           Boton2 : in STD_LOGIC;
           R: out STD_LOGIC;
           G: out STD_LOGIC;
           B: out STD_LOGIC);
end Component;

signal reset: STD_LOGIC;
signal clk: STD_LOGIC;
signal Boton1 : STD_LOGIC;
signal Boton2: STD_LOGIC;
signal R: STD_LOGIC;
signal G: STD_LOGIC;
signal B: STD_LOGIC;

begin

u0: Combinacional port map (reset=>reset, clk=>clk, Boton1=>Boton1, Boton2=>Boton2, R=>R, G=>G, B=>B);

sig_clk: process
    begin
        clk<='0';
        wait for 41.666666666666666666666666666666666666ns;
        clk<='1';
        wait for 41.666666666666666666666666666666666666ns;
end process;

sig_Reset: process
    begin
        Reset<='1';
        wait for 1ns;
        Reset<='0';
        wait;
end process;

sig_Boton1: process
    begin
        Boton1<='0';
        wait for 100ns;
        Boton1<='1';
        wait for 100ns;
end process;

sig_Boton2: process
    begin
        Boton2<='0';
        wait for 1000ns;
        Boton2<='1';
        wait for 100ns;
end process;

end Behavioral;
