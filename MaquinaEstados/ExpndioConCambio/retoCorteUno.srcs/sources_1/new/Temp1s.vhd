library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Temp1s is
    Port ( clk : in STD_LOGIC;
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           fin1s : out STD_LOGIC);
end Temp1s;

architecture Behavioral of Temp1s is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 1s/10ns= 100000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(100000000)/log(2)= 26.57 se aproxima a 27

signal cuenta : natural range 0 to 2**27-1:=0;  
constant fincuenta : natural := 100000000;    
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
fin1s <=unseg;
end Behavioral;