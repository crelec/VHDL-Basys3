library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ContadorEstados is
    Port ( clk : in STD_LOGIC;
           Btn1: in STD_LOGIC;
           Btn2 : in STD_LOGIC;
           reset : in STD_LOGIC;
           R: out STD_LOGIC;
           G: out STD_LOGIC;
           B: out STD_LOGIC);
           
end ContadorEstados;

architecture Behavioral of ContadorEstados is

Type estados is (Ap,s0,s1,s2,s3);
signal estadoActual,estadoSiguiente: estados;

begin

process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=Ap;
	elsif clk'event and clk='1' then
          EstadoActual<=estadoSiguiente;
	end if;
end process;
            	
siguiente:process(estadoActual, Btn1, Btn2)
begin
	case estadoActual is
		when Ap=> 
		  if Btn1='1' then
		      estadoSiguiente<=s0;
		  elsif Btn2='1' then
		      estadoSiguiente<=s3;
		  else
		      estadoSiguiente<=Ap;
		  end if;
		  
		when s0=> 
		  if Btn1='1' then
		      estadoSiguiente<=s1;
		  elsif Btn2='1' then
		      estadoSiguiente<=Ap;
		  else
		      estadoSiguiente<=s0;
		  end if;
		  
		when s1=> 
		  if Btn1='1' then
		      estadoSiguiente<=s2;
		  elsif Btn2='1' then
		      estadoSiguiente<=s0;
		  else
		      estadoSiguiente<=s1;
		  end if;
		  
		when s2=> 
		  if Btn1='1' then
		      estadoSiguiente<=s3;
		  elsif Btn2='1' then
		      estadoSiguiente<=s1;
		  else
		      estadoSiguiente<=s2;
		  end if;
		when s3=> 
		  if Btn1='1' then
		      estadoSiguiente<=Ap;
		  elsif Btn2='1' then
		      estadoSiguiente<=s2;
		  else
		      estadoSiguiente<=s3;
		  end if;
	end case;
end process;

salida:process(EstadoActual)
begin
	case estadoActual IS
		when Ap => 
		  R<='1';
		  G<='1';
		  B<='1';
		when s0 => 
		  R<='0';
		  G<='1';
		  B<='1';
		when s1 => 
		  R<='1';
		  G<='0';
		  B<='1';
		when s2 => 
		  R<='1';
		  G<='1';
		  B<='0';
		when s3 => 
		  R<='0';
		  G<='0';
		  B<='0';  
	end case;
end process;
end Behavioral;