library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component Divisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           FoutDivide : out STD_LOGIC);
end component;

--Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ce: STD_LOGIC := '0';
 	
--Outputs
   signal Foutdivide : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divisor PORT MAP (
          clk => clk,
          reset => reset,
          ce=>ce,
          Foutdivide => Foutdivide
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
ce<= '1';
WAIT FOR 6ns;
ce<= '0';
wait;
end process;

end Behavioral;
