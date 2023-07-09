library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
end Tes;

architecture Behavioral of Tes is
-- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparador
    PORT(
         EntradaA : IN  std_logic_vector(7 downto 0);
         EntradaB : IN  std_logic_vector(7 downto 0);
         salidaigual : OUT  std_logic;
         salidamayor : OUT  std_logic;
         salidamenor : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EntradaA : std_logic_vector(7 downto 0) := (others => '0');
   signal EntradaB : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal salidaigual : std_logic;
   signal salidamayor : std_logic;
   signal salidamenor : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparador PORT MAP (
          EntradaA => EntradaA,
          EntradaB => EntradaB,
          salidaigual => salidaigual,
          salidamayor => salidamayor,
          salidamenor => salidamenor
        );


s_entrada: process
begin
EntradaA <="00000000";
EntradaB <="00000000";
wait for 1 ns;  
EntradaA <="00000000";
EntradaB <="00000001";  
wait for 2 ns;  
EntradaA <="00000001";
EntradaB <="00000000";  
wait for 4 ns;
end process;

end Behavioral;
