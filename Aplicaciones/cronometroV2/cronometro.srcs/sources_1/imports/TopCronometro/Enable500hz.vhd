library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Enable500hz is
    Port ( clk : in  STD_LOGIC;
           Fout500 : out  STD_LOGIC);
end Enable500hz;

architecture Behavioral of Enable500hz is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  1KHZ => periodo 1/1KHZ =1ms
-- fincuenta = tiempo del alto/200ns ejemplo fincuenta= 2ms/1ms=2
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(2)/log(2)= 1

signal cuenta : natural range 0 to 2:=0; --**17-1
constant fincuenta : natural := 2;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin 

	Process (clk)
  
begin
	if clk'event and clk = '1' then
	  if cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
			unseg <= '0';
		end if;
	end if;
end process;
Fout500 <= unseg;
end Behavioral;

