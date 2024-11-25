library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--habilitador para una Hora
entity Enable1h is
    Port ( CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout1h : out  STD_LOGIC);
end Enable1h;

architecture Behavioral of Enable1h is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  1KHZ => periodo 1/1KHZ =1ms
-- fincuenta = tiempo del alto/200ns ejemplo fincuenta= 1h/1ms=3600000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(3600000)/log(2)= 21.779 se aproxima a 22

signal cuenta : natural range 0 to 2**22-1:=0;
constant fincuenta : natural := 3600000;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin 

	Process (clk,reset)
  
begin
    if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
		if ce = '1'then
		  unseg <= '0';
	   elsif cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
			unseg <= '0';
		end if;
	end if;
end process;
Fout1h <=unseg;
end Behavioral;

