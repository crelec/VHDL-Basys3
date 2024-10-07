library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end Divisor;

architecture Behavioral of Divisor is
constant DIVIDER_TIME : natural := 50000000; -- Divisor para 0.5 seg
constant COUNTER_WIDTH : natural := 26; -- Ancho suficiente para el contador
constant fincuenta : unsigned(COUNTER_WIDTH-1 downto 0) := to_unsigned(DIVIDER_TIME, COUNTER_WIDTH);

signal cuenta : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
signal aux : std_logic := '0';

begin 

	Process (reset,clk)
  
begin
	if reset = '1' then
		cuenta <= (others => '0');
	elsif clk'event and clk = '1' then
		if cuenta = fincuenta-1 then 
			cuenta <= (others => '0');
			aux <= not aux;
		else
			cuenta <= cuenta + 1;
		end if;
	end if;
end process;
Foutdivide <= aux;
end Behavioral;
