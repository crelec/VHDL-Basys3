library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TempReb1 is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin300ms : out STD_LOGIC);
end TempReb1;

architecture Behavioral of TempReb1 is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 150ms/10ns=15000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(15000000)/log(2)= 23,83 se aproxima a 24

signal cuenta : natural range 0 to 2**24-1:=0;  
constant fincuenta : natural := 15000000;    
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

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