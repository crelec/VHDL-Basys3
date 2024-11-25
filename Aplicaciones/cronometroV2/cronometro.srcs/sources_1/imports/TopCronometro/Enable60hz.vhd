library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EnableP is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           FoutP : out  STD_LOGIC);
end EnableP;

architecture Behavioral of EnableP is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj de la nexys  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 500ms/10ns=50000000
-- cuenta = log(fincuenta)/log(2) ejemplo cuenta= log(50000000)/log(2)= 25.575 se aproxima a 26

signal cuenta : natural range 0 to 2**26-1;
constant fincuenta : natural := 50000000
;
signal unseg : std_logic:='0';
signal aux : std_logic:='0';

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

--flip flop
Process (clk)
begin
	if clk'event and clk='1' then
		if unseg = '1' then
			aux <= not aux;
		end if;
	end if;
end process;
FoutP <= aux;
end Behavioral;

