library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity Registro is
    Port ( InD : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           FoutQ : out STD_LOGIC_VECTOR (7 downto 0));
end Registro;

architecture Behavioral of Registro is
signal s_q : std_logic_vector(7 downto 0);

begin

process(reset,clk)
begin
if (reset = '0') then
    s_q <= "00000000";
elsif clk' event and clk ='1' then
  if (ce='1') then
    s_q(7 downto 0)<=Ind&s_q(7 downto 1);
  end if;
end if;
end process;
Foutq<=s_q;
end Behavioral;
