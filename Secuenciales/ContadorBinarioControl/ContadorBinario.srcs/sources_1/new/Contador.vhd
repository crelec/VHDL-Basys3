library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  

entity contadorupdow is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0);
           up_dow : in  STD_LOGIC);
end contadorupdow;

architecture Behavioral of contadorupdow is
signal contador: unsigned(3 downto 0) := (others => '0');
begin
process(clk, reset)
    begin
        if reset = '1' then
            contador <= (others => '0');  -- Reset asíncrono
        elsif rising_edge(clk) then  -- Flanco ascendente del reloj
            if up_dow = '1' then  -- Modo de conteo ascendente
                if contador = 15 then
                    contador <= (others => '0');  -- Reiniciar el contador al alcanzar 15
                else
                    contador <= contador + 1;  -- Incremento normal
                end if;
        else  -- Modo de conteo descendente
                if contador = 0 then
                    contador <= to_unsigned(15, 4);  -- Reiniciar el contador al valor máximo (1111)
                else
                    contador <= contador - 1;  -- Decremento normal
                end if;
        end if;
      end if;
    end process;
    led <= std_logic_vector(contador);
end Behavioral;