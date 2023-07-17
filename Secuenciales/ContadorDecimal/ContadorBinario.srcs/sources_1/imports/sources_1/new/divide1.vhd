library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity divide1 is
    Port ( clk : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end divide1;

architecture Behavioral of divide1 is
--Para 250hz (mux 4 digitos)
--fincuenta: 2ms/10ns=200000
--cuenta = log(cuenta)/log(2) ejemplo cuenta= log(200000)/log(2)= 17.60 se aproxima a 18

signal cuenta : natural range 0 to 2**18-1:=0;
constant fincuenta : natural := 200000;
signal unseg : std_logic:='0';
signal aux : std_logic:='0';

begin 
	Process (clk)
begin
	if clk'event and clk = '1' then
		if cuenta = fincuenta-1 then -- aqui se pone la constante en vez de 49999999
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
Foutdivide <= aux;
end Behavioral;
