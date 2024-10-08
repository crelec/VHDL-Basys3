library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component Contador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           DatoIn: in STD_LOGIC_VECTOR (7 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal load : std_logic := '1';
signal DatoIn: STD_LOGIC_VECTOR (7 downto 0):= "00000000";

--Outputs
signal DatoOut : STD_LOGIC_VECTOR (7 downto 0);

-- Clock period definitions
constant clk_period : time := 10 ns;
   
begin

-- Instantiate the Unit Under Test (UUT)
   uut: Contador PORT MAP (
          clk => clk,
          reset => reset,
          load=>load,
          DatoIn => DatoIn,
          DatoOut =>DatoOut 
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

S_load:PROCESS
BEGIN
load<= '1';
WAIT FOR 40 ns;
load<= '0';
wait for 100 ns;
end process;

sig_DatoIn :process
begin
Datoin<="00011111";
wait for 172 ns;
Datoin<="11000000";
wait for 100 ns;
end process;

end Behavioral;
