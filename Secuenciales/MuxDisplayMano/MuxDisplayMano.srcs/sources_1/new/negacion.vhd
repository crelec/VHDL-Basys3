library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity negacion is
    Port ( Btn : in STD_LOGIC;
           anodo : out STD_LOGIC_VECTOR (3 downto 0));
end negacion;

architecture Behavioral of negacion is

begin
process (btn)
begin
	case btn is
		when '0' =>anodo<="1110";
		when '1' =>anodo<="1101";
		when others =>anodo<="ZZZZ";
	end case;
end process;
end Behavioral;
