library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes_Baudio is
--  Port ( );
end Tes_Baudio;

architecture Behavioral of Tes_Baudio is

component Baudios_tx is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fbaudio : out STD_LOGIC);
end component;

signal clk: STD_LOGIC;
signal reset: STD_LOGIC;
signal fbaudio:STD_LOGIC;

begin

u0:Baudios_tx Port map(clk=>clk,reset=>reset,fbaudio=>fbaudio);

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
end Behavioral;
