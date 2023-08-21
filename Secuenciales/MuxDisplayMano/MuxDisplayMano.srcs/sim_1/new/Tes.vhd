library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component TopMuxDisplay is
    Port ( EntA : in STD_LOGIC_VECTOR (3 downto 0);
           EntB : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           segmento : out STD_LOGIC_VECTOR (6 downto 0);
           anodos : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--Inputs
   signal EntA : STD_LOGIC_VECTOR (3 downto 0);
   signal EntB : STD_LOGIC_VECTOR (3 downto 0);
   signal sel : std_logic;
   
 	--Outputs
   signal segmento : STD_LOGIC_VECTOR (6 downto 0);
   signal anodos   : STD_LOGIC_VECTOR (3 downto 0);
   
begin

-- Instantiate the Unit Under Test (UUT)
   uut: TopMuxDisplay PORT MAP (
          EntA => EntA,
          EntB => EntB,
          sel => sel,
          segmento=>segmento,
          anodos => anodos
        );

EntA<="0110";
EntB<="1001";

S_sel:PROCESS
BEGIN
sel<= '1';
WAIT FOR 1ns;
sel<= '0';
wait for 1ns;
end process;


end Behavioral;
