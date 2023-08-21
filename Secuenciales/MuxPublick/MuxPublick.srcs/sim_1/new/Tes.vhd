library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tes is
--  Port ( );
end Tes;

architecture Behavioral of Tes is

component SupMuxPublick is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sel_dato : in STD_LOGIC_VECTOR (2 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sel_dato: STD_LOGIC_VECTOR (2 downto 0);
    
 	--Outputs
   signal seg : STD_LOGIC_VECTOR (6 downto 0);
   signal  an : STD_LOGIC_VECTOR (3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   
begin

-- Instantiate the Unit Under Test (UUT)
   uut: SupMuxPublick PORT MAP (
          clk => clk,
          reset => reset,
          sel_dato => sel_dato,
          seg => seg,
          an=>an
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

s_dato:process
begin
sel_dato <="001";
wait for 19 ms;
sel_dato <="010";
wait;
end process;

end Behavioral;
