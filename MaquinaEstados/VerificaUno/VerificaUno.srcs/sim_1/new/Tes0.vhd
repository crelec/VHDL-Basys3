library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes0 is
--  Port ( );
end Tes0;

architecture Behavioral of Tes0 is

component SuperiorVerifica is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

--Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ce : std_logic := '0';
   
 	--Outputs
   signal segmento : STD_LOGIC_VECTOR (6 downto 0);
   signal anodo : STD_LOGIC_VECTOR (3 downto 0);
   
   -- Clock period definitions
   constant clk_period : time := 10 ns;
   
begin

-- Instantiate the Unit Under Test (UUT)
   uut: SuperiorVerifica PORT MAP (
          clk =>clk,
          reset=>reset,
          ce=>ce,
          segmento=>segmento,
          anodo=>anodo
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
S_reset:PROCESS
BEGIN
reset<= '1';
WAIT FOR 6ns;
reset<= '0';
wait;
end process;

S_ce:PROCESS
BEGIN
ce<= '0';
WAIT FOR 19ns;
ce<= '1';
wait FOR 1.5us;
ce<= '0';
WAIT FOR 1.5us;
ce<= '1';
wait;
end process;

end Behavioral;
