library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador is
    generic(n:integer :=8);
    Port ( EntradaA : in STD_LOGIC_VECTOR (n-1 downto 0);
           EntradaB : in STD_LOGIC_VECTOR (n-1 downto 0);
           SalidaIgual : out STD_LOGIC;
           SalidaMayor : out STD_LOGIC;
           SalidaMenor : out STD_LOGIC);
end Comparador;

architecture Behavioral of Comparador is

begin
	process(EntradaA,EntradaB)
	begin
		salidaigual <='0';
        salidamayor <='0';
        salidamenor <='0';
		if (EntradaA = EntradaB) then 
			salidaigual <='1';
		elsif(EntradaA > EntradaB) then
			salidamayor <='1';
		elsif(EntradaA < EntradaB) then
			salidamenor <='1';
		end if;
	end process;
end Behavioral;
