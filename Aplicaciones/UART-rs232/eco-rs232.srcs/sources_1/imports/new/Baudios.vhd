library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Baudios is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fbaudio : out STD_LOGIC);
end Baudios;

architecture Behavioral of Baudios is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  100MHZ => periodo 1/100MHZ =10ns
--velocidad de comunicación 1/115200 =8.68055us aprox a 8.681us

signal cuenta : natural range 0 to 2**6-1;
constant fincuenta : natural := 55;
signal unseg : std_logic:='0';


begin 

	Process (clk,reset)
  
begin
    if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
       
	if cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
            unseg  <= '0';
		end if;
	end if;
end process;
fbaudio <=unseg;
end Behavioral;
