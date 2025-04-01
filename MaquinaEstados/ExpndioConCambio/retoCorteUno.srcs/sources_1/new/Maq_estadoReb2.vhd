library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maq_estadoReb2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Boton2 : in STD_LOGIC;
           In_fin300ms : in STD_LOGIC;
           CE_Tempo : out STD_LOGIC;
           Boton_out : out STD_LOGIC);
end Maq_estadoReb2;

architecture Behavioral of Maq_estadoReb2 is

Type estados is (Idle,s0,s1,s2);
signal estadoActual,estadoSiguiente:estados;

begin
FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=Idle;  --esdado de reseto estado ocioso
	elsif(clk'event and clk='1') then
		EstadoActual<=estadoSiguiente;
	end if;
end process;

siguiente: process(In_Fin300ms,boton2,estadoActual)

begin
	case estadoActual Is
		when Idle=>
				if Boton2 ='0' then
					estadoSiguiente<=s0;
				else 
					estadoSiguiente<=Idle;
				end if;
		when s0 =>
			if Boton2 ='1' then
				estadoSiguiente<=s1;
			else 
				estadoSiguiente<=s0;
			end if;
		when s1 =>
				estadoSiguiente<=s2;
		when s2 =>
			if In_Fin300ms ='0' then
				estadoSiguiente<=s2;
			else
				estadoSiguiente<=Idle;
			end if;
	end case;		
end process;

salidas:process(estadoActual)
begin
	case estadoActual Is
		when Idle => 
			Boton_Out <='0' ;
			CE_Tempo <='0' ;
		when s0   => 
			Boton_Out <='0' ;
			CE_Tempo <='0' ;
		when s1   => 
			Boton_Out <='1' ;
			CE_Tempo <='0' ;
		when s2   => 
			Boton_Out <='0' ;
			CE_Tempo <='1' ;
	end case;
end process;
end Behavioral;