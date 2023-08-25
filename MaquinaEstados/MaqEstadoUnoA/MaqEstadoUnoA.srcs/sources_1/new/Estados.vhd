library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Estados is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Foutq : out STD_LOGIC_VECTOR (2 downto 0));
end Estados;

architecture Behavioral of Estados is
Type estados is (s0,s1,s2,s3,s4,s5,s6,s7);
signal estadoActual,estadoSiguiente: estados;

begin

FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=s0;  --esdado de reset
   elsif(clk'event and clk='1') then
		estadoActual<=estadoSiguiente;
	end if;
end process;

siguiente:process(estadoActual)
begin
	case estadoActual is
		when s0=>
			estadoSiguiente<=s1;
		when s1=>
			estadoSiguiente<=s2;
		when s2=>
			estadoSiguiente<=s3;
		when s3=>
			estadoSiguiente<=s4;
		when s4=>
			estadoSiguiente<=s5;
		when s5=>
			estadoSiguiente<=s6;
		when s6=>
			estadoSiguiente<=s7;
		when s7=>
			estadoSiguiente<=s0;
	end case;		
end process;

salida:process(estadoActual)
begin
	case estadoActual Is
		when s0 => Foutq <= "111";
		when s1 => Foutq <= "100";
		when s2 => Foutq <= "001";
		when s3 => Foutq <= "100";
		when s4 => Foutq <= "011";
		when s5 => Foutq <= "000";
		when s6 => Foutq <= "100";
		when s7 => Foutq <= "101";	
	end case;
end process;
end Behavioral;
