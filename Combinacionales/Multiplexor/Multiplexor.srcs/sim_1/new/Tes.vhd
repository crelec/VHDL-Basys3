library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
end Tes;

architecture Behavioral of Tes is

component ModuloMux is
    Port ( EntradaA : in STD_LOGIC_VECTOR (3 downto 0);
           EntradaB : in STD_LOGIC_VECTOR (3 downto 0);
           EntradaC : in STD_LOGIC_VECTOR (3 downto 0);
           EntradaD : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           DatoSalida : out STD_LOGIC_VECTOR (3 downto 0));
end component;

 --Inputs
   signal EntradaA : std_logic_vector(3 downto 0) := (others => '0');
   signal EntradaB : std_logic_vector(3 downto 0) := (others => '0');
   signal EntradaC : std_logic_vector(3 downto 0) := (others => '0');
   signal EntradaD : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DatoSalida : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ModuloMux PORT MAP (
          EntradaA => EntradaA,
          EntradaB => EntradaB,
          EntradaC => EntradaC,
          EntradaD => EntradaD,
          sel => sel,
          DatoSalida => DatoSalida
        );

EntradaA <= "1111";
EntradaB <= "0000";
EntradaC <= "0110";
EntradaD <= "1001";

S_selec0:PROCESS
BEGIN
sel(0)<= '0';
WAIT FOR 1ns;
sel(0)<= '1';
wait for 1ns;
end process;

S_selec1:PROCESS
BEGIN
sel(1)<= '0';
WAIT FOR 2ns;
sel(1)<= '1';
wait for 2ns;
end process;

end Behavioral;
