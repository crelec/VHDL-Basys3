library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is
component deco is
    Port ( DatoIn : in STD_LOGIC_VECTOR(3 downto 0);
           DatoOut : out STD_LOGIC_VECTOR(15 downto 0));
end component;


   --Inputs
   signal DatoIn : std_logic_vector(3 downto 0) := (others => '0'); 

 	--Outputs
   signal DatoOut : std_logic_vector(15 downto 0); 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: deco PORT MAP (
          DatoIn => DatoIn,
          DatoOut => DatoOut
        );

S_entrada0:PROCESS
BEGIN
DatoIn(0)<= '0';
WAIT FOR 1ns;
DatoIn(0)<= '1';
wait for 1ns;
end process;

S_entrada1:PROCESS
BEGIN
DatoIn(1)<= '0';
WAIT FOR 2ns;
DatoIn(1)<= '1';
wait for 2ns;
end process;

S_entrada2:PROCESS
BEGIN
DatoIn(2)<= '0';
WAIT FOR 4ns;
DatoIn(2)<= '1';
wait for 4ns;
end process;

S_entrada3:PROCESS
BEGIN
DatoIn(3)<= '0';
WAIT FOR 8ns;
DatoIn(3)<= '1';
wait for 8ns;
end process;

end Behavioral;
