library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Estados is
    Port ( clk : in STD_LOGIC;
           int_ext : in STD_LOGIC;
           reset : in STD_LOGIC;
           Foutq : out STD_LOGIC);
end Estados;

architecture Behavioral of Estados is

Type estados is (s0,s1);
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
			
siguiente:process(int_ext,estadoActual)
begin
	case estadoActual Is
		when s0=>
			if int_ext ='0' then
				estadoSiguiente<=s0;
			else
				estadoSiguiente<=s1;
			end if;
		when s1=>
			if int_ext ='1' then --mostrar cambio en simulacion cambiando estados siguientes.
				estadoSiguiente<=s1;--s1 ok
			else
				estadoSiguiente<=s0;--so ok
			end if;
		end case;		
end process;

salidas:process(estadoActual)
begin
	case estadoActual IS
		when s0=>Foutq<='0';
		when s1=>Foutq<='1';
	end case;
end process;
end Behavioral;
