library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes_TX is
--  Port ( );
end Tes_TX;

architecture Behavioral of Tes_TX is

component Transmisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           data : in STD_LOGIC_VECTOR (7 downto 0);
           eot : out STD_LOGIC;
           tx : out STD_LOGIC);
end component;

signal clk: STD_LOGIC;
signal reset: STD_LOGIC;
signal start: STD_LOGIC;
signal data: STD_LOGIC_VECTOR (7 downto 0);
signal eot: STD_LOGIC;
signal tx: STD_LOGIC;

begin

u0:Transmisor Port map(clk=>clk,reset=>reset,start=>start,data=>data,eot=>eot,tx=>tx);
           
clk_process :process
begin
clk <= '0';
wait for 5ns;
clk <= '1';
wait for 5ns;
end process;
 
-- Stimulus process
sig_reset:process
begin
reset<='0';
wait for 6 ns;
reset<='1';
wait;
end process;

sig_start:process
begin
start<='0';
wait for 2 us;
start<='1';
wait for 10 ns;
start<='0';
wait;
end process;

data<="11011101";

end Behavioral;
