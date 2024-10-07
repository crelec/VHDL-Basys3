library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  

entity contadorupdow is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0));
end contadorupdow;

architecture Behavioral of contadorupdow is
signal contador : unsigned(3 downto 0) := (others => '0');  
begin
process(clk, reset)
begin
    if reset = '1' then
        contador <= (others => '0');  
    elsif rising_edge(clk) then
        if contador = 9 then
            contador <= (others => '0');  
        else
            contador <= contador + 1;  
        end if;
    end if;
end process;
led <= std_logic_vector(contador);  -- Convertimos el contador unsigned a std_logic_vector para la salida
end Behavioral;
