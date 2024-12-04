library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TempReb is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin300ms : out STD_LOGIC);
end TempReb;

architecture Behavioral of TempReb is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  1KHZ => periodo 1/1KHZ =1ms
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 300ms/1ms=300
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(300)/log(2)= 8.228 se aproxima a 9

signal cuenta : natural range 0 to 2**9-1:=0;  
constant fincuenta : natural := 300;    
signal unseg : std_logic:='0';

begin
	Process (clk,reset)
  
begin
    if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
		if ce = '0'then
          unseg <= '0';
			 cuenta <= 0;--ojo adicional
	elsif cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
			unseg <= '0';
		end if;
	end if;
end process;
fin300ms <=unseg;
end Behavioral;
