library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component contadorupdow is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0);
           up_dow : in  STD_LOGIC);
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal up_dow : std_logic := '1';

--Outputs
signal led : STD_LOGIC_VECTOR (3 downto 0);

-- Clock period definitions
constant clk_period : time := 10 ns;
   
begin

uut: contadorupdow PORT MAP(clk =>clk,reset => reset,up_dow=>up_dow,led=>led);

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
WAIT FOR 6 ns;
reset<= '0';
wait;
end process;

S_up_dow:PROCESS
BEGIN
up_dow<= '1';
WAIT FOR 110 ns;
up_dow<= '0';
wait for 200 ns;
end process;

end Behavioral;
