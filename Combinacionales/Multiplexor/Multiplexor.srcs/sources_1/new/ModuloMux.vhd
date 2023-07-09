library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ModuloMux is
    generic(n:integer :=4);
    Port ( EntradaA : in STD_LOGIC_VECTOR (n-1 downto 0);
           EntradaB : in STD_LOGIC_VECTOR (n-1 downto 0);
           EntradaC : in STD_LOGIC_VECTOR (n-1 downto 0);
           EntradaD : in STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           DatoSalida : out STD_LOGIC_VECTOR (n-1 downto 0));
end ModuloMux;

architecture Behavioral of ModuloMux is

begin
process(EntradaA,EntradaB,EntradaC,EntradaD,sel)
	begin
		case Sel is
			when "00" => DatoSalida <= EntradaA;
			when "01" => DatoSalida <= EntradaB;
			when "10" => DatoSalida <= EntradaC;
			when "11" => DatoSalida <= EntradaD;
			when others => DatoSalida <=(others => 'Z');
		end case;
		end process;
end Behavioral;
