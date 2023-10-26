library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Cuenta1 is
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           FoutCuenta : out STD_LOGIC_VECTOR (2 downto 0));
end Cuenta1;

architecture Behavioral of Cuenta1 is

signal cuenta:STD_LOGIC_VECTOR (2 downto 0);

begin
	process(clk,clear)
		begin
		if clear = '1' then
		cuenta <= (others =>'0');
		elsif clk' event and clk ='1' then
		if cuenta = "100" then
			cuenta <="001"; --(others=>'0') ;
		else
			cuenta <= (cuenta + 1);
		end if;
		end if;
	end process;
	FoutCuenta<=cuenta;
end Behavioral;
