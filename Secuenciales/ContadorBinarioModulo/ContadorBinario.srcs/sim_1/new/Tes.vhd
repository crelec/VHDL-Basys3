library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component contadorupdow is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';

--Outputs
signal led : STD_LOGIC_VECTOR (3 downto 0);

-- Clock period definitions
constant clk_period : time := 10 ns;
   
begin

-- Instantiate the Unit Under Test (UUT)
uut: contadorupdow PORT MAP (
          clk => clk,
          reset => reset,
          led => led
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

end Behavioral;
