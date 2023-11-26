library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tes is
--  Port ( );
end tes;

architecture Behavioral of tes is

component DecSecuencia is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           DatoIn : in STD_LOGIC;
           Foutq : out STD_LOGIC);
end component;

signal clk : STD_LOGIC;
signal reset : STD_LOGIC;
signal DatoIn : STD_LOGIC;
signal Foutq : STD_LOGIC;

constant clk_period : time := 10 ns;

begin

u0: DecSecuencia Port map(clk=>clk,reset=>reset,DatoIn=>DatoIn,Foutq=>Foutq);
           
clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        DatoIn <= '0';
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        
        reset <= '0'; -- release reset
        -- wait for sequences to be detected
        wait for clk_period*10;
        
        -- sequence: 1 0 1
        DatoIn <= '1'; wait for clk_period;
        DatoIn <= '0'; wait for clk_period;
        DatoIn <= '1'; wait for clk_period;
        
        -- sequence: 1 1 0
        DatoIn <= '1'; wait for clk_period;
        DatoIn <= '1'; wait for clk_period;
        DatoIn <= '0'; wait for clk_period;
        
        -- sequence: 0 1 0
        DatoIn <= '0'; wait for clk_period;
        DatoIn <= '1'; wait for clk_period;
        DatoIn <= '0'; wait for clk_period;
        
        -- sequence: 1 0 1
        DatoIn <= '1'; wait for clk_period;
        DatoIn <= '0'; wait for clk_period;
        DatoIn <= '1'; wait for clk_period;
        
        wait;
    end process;
end Behavioral;
