library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end Divisor;

architecture Behavioral of Divisor is
            -- Calculos Divisor 1khz-- 
-- Para calcular cuenta y fincuenta se parte de:
-- reloj de la basys 3  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 500useg/10ns=50000
-- cuenta = log(fincuenta)/log(2) ejemplo cuenta= log(50000)/log(2)= 15.609 se aproxima a 16

-- unsigned(COUNTER_WIDTH-1 downto 0): Especifica el tipo de dato de la constante fincuenta como es un vector de bits de tipo unsigned.
-- El rango de bits está definido por COUNTER_WIDTH-1 downto 0. Si COUNTER_WIDTH es 16, entonces será un vector de 16 bits con el índice superior en 15 y el índice inferior en 0.

-- to_unsigned(DIVIDER_TIME, COUNTER_WIDTH): La función to_unsigned convierte el valor de DIVIDER_TIME (que es un número entero de tipo natural) en un número binario sin signo (unsigned)
-- ajustando el número de bits de acuerdo al ancho especificado por COUNTER_WIDTH. COUNTER_WIDTH es la cantidad de bits que ocupará este número binario. Asegurando que el valor de 50000 
-- se represente con los 16 bits necesarios.

constant DIVIDER_TIME : natural := 50000; -- Divisor para 1khz o 1ms 
constant COUNTER_WIDTH : natural := 16; -- Ancho suficiente para el contador
constant fincuenta : unsigned(COUNTER_WIDTH-1 downto 0) := to_unsigned(DIVIDER_TIME, COUNTER_WIDTH);

signal cuenta : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
signal aux : std_logic := '0';

begin 

	Process (reset,clk)
  
begin
	if reset = '1' then
		cuenta <= (others => '0');
		aux <='0';
	elsif clk'event and clk = '1' then
		if cuenta = fincuenta-1 then 
			cuenta <= (others => '0');
			aux <= not aux;
		else
			cuenta <= cuenta + 1;
			aux<=aux;
		end if;
	end if;
end process;

Foutdivide <= aux;
end Behavioral;