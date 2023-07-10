library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is
component Demux is
    Port ( DatoIn : in STD_LOGIC_VECTOR (3 downto 0);
           DatoOutA : out STD_LOGIC_VECTOR (3 downto 0);
           DatoOutB : out STD_LOGIC_VECTOR (3 downto 0);
           DatoOutC : out STD_LOGIC_VECTOR (3 downto 0);
           DatoOutD : out STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0));
end component;
--Inputs
   signal DatoIn : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DatoOutA : std_logic_vector(3 downto 0);
   signal DatoOutB : std_logic_vector(3 downto 0);
   signal DatoOutC : std_logic_vector(3 downto 0);
   signal DatoOutD : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Demux PORT MAP (
          DatoIn => DatoIn,
          Sel => Sel,
          DatoOutA => DatoOutA,
          DatoOutB => DatoOutB,
          DatoOutC => DatoOutC,
          DatoOutD => DatoOutD
        );

S_Sel0:PROCESS
BEGIN
sel(0)<= '0';
WAIT FOR 1ns;
sel(0)<= '1';
wait for 1ns;
end process;

S_Sel:PROCESS
BEGIN
Sel(1)<= '0';
WAIT FOR 2ns;
Sel(1)<= '1';
wait for 2ns;
end process;

DatoIn<="0110";

end Behavioral;
