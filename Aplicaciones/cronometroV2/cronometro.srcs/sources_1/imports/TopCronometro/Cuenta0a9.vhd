library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Cuenta0a23 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           f0a23 : out  STD_LOGIC_VECTOR (4 downto 0));
end Cuenta0a23;

architecture Behavioral of Cuenta0a23 is
signal cuenta:std_logic_vector(4 downto 0);
begin
	process(clk,reset)
		begin
			if reset='1' then
				cuenta<=(others=>'0');
			elsif clk' event and clk='1' then
				if cuenta="10111" then --23(10)=10111(2)
						cuenta<=(others=>'0');
					else
						cuenta<=cuenta +1;
					end if;
				else
					cuenta<=cuenta;
				end if;
			end process;
f0a23<=cuenta;
end Behavioral;

