library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component SupReboteTemporizado is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton : in STD_LOGIC;
           Boton_out : out STD_LOGIC);
end component;

--Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Boton : std_logic := '0';

 	--Outputs
   signal Boton_Out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupReboteTemporizado PORT MAP (
          clk => clk,
          reset => reset,
          Boton => Boton,
          Boton_Out => Boton_Out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

-- Stimulus process
sig_reset:process
begin
reset<='1';
wait for 12 ns;
reset<='0';
wait;
end process;

sig_Boton:process --Caso Dos
begin
Boton<='0';
wait for 53 ns;
Boton<='1';
wait for 10 ns;
Boton<='0';
wait for 15 ns;
Boton<='1';
wait for 20 ns;
Boton<='0';
wait for 10 ns;
Boton<='1';
wait for 10 ns;
Boton<='0';
wait for 20 ns;
Boton<='1';
wait for 100 ns;
end process;

end Behavioral;
