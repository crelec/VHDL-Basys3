library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity test is
--  Port ( );
end test;

architecture Behavioral of test is

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

signal clk : STD_LOGIC;
signal reset : STD_LOGIC;
signal Bt1 : STD_LOGIC;
signal Bt2 : STD_LOGIC;
signal Bt5 : STD_LOGIC;
signal LEDS : STD_LOGIC_VECTOR (3 downto 0);
signal MO : STD_LOGIC_VECTOR (15 downto 0);
signal In_fin1s : STD_LOGIC;
signal In_fin5s : STD_LOGIC;
signal Ce1s : STD_LOGIC;
signal Ce5s : STD_LOGIC;
 
begin
u0: MaqEstados port map(clk=>clk, reset=>reset, MO=>MO, Bt1=>Bt1, Bt2=>Bt2, Bt5=>Bt5, Ce1s=>Ce1s, Ce5s=>Ce5s, LEDS=>LEDS, In_fin1s=>In_fin1s, In_fin5s=>In_fin5s);

sg_clk:process
begin
clk<='0';
wait for 42ns;
clk<='1';
wait for 42ns;
end process;

sg_reset:process
begin
reset<='0';
wait for 40ns;
reset<='1';
wait for 42ns;
reset<='0';
wait;
end process;

sg_bt1:process
begin
bt1<='0';
wait for 200ns;
bt1<='1';
wait for 300ns;
bt1<='0';
wait for 100ns;
bt1<='1';
wait for 300ns;
bt1<='0';
--wait for 300ms;
--Inbt2<='1';
--wait for 300ns;
--Inbt2<='0';
wait; 
end process;

sg_bt2:process
begin
bt2<='0';
wait for 400ms;
bt2<='1';
wait for 300ns;
bt2<='0';
wait;
end process;

sg_bt5:process
begin
bt5<='0';
wait for 800ms;
bt5<='1';
wait for 300ns;
bt5<='0';
wait;
end process;

end Behavioral;
