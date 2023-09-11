library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Baudios_tx is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fbaudio : out STD_LOGIC);
end Baudios_tx;

architecture Behavioral of Baudios_tx is
signal cuenta : natural range 0 to 2**6-1;
constant fincuenta : natural := 55;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin 

	Process (clk,reset)
  
begin
    if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
       
	if cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
            unseg  <= '0';
		end if;
	end if;
end process;
fbaudio <=unseg;
end Behavioral;
