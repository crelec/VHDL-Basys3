library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MaqEstados is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           LEDS : out STD_LOGIC_VECTOR (3 downto 0);
           MO : out STD_LOGIC_VECTOR (15 downto 0);
           Bt1 : in STD_LOGIC;
           Bt2 : in STD_LOGIC;
           Bt5 : in STD_LOGIC;
           In_fin1s : in STD_LOGIC;
           In_fin5s : in STD_LOGIC;
           Ce1s : out STD_LOGIC;
           Ce5s : out STD_LOGIC);
end MaqEstados;

architecture Behavioral of MaqEstados is
Type estados is (idle,s100,s200,s300,s400,s500,s600,s700,s800,s900,s1000,s1100,s1200,s1300,s1400,s1500,s1600,s1700,s1800,s1900,v1600,v1700,v1800,v1900);
signal estadoActual,estadoSiguiente: estados;

begin

FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=idle;  --esdado de reset
   elsif(clk'event and clk='1') then
		estadoActual<=estadoSiguiente;
	end if;
end process;

siguiente:process(estadoActual,Bt1,Bt2,Bt5)
begin
	case estadoActual is
		when idle=>                           -- Estado IDLE
		  if Bt1 = '1' then
		      estadoSiguiente<=s100;
		  elsif Bt2 = '1' then
		      estadoSiguiente<=s200;
		  elsif Bt5 = '1' then
		      estadoSiguiente<=s500;
		  else
		      estadoSiguiente<=idle;
		  end if;
			
		when s100=>                             -- Estado s100
		  if Bt1 = '1' then
            estadoSiguiente<=s200;
          elsif Bt2 = '1' then
            estadoSiguiente<=s300;
          elsif Bt5 = '1' then
            estadoSiguiente<=s600;
          else
            estadoSiguiente<=s100;
          end if;
          	    
	    when s200=>                             -- Estado s200
          if Bt1 = '1' then
            estadoSiguiente<=s300;
          elsif Bt2 = '1' then
            estadoSiguiente<=s400;
          elsif Bt5 = '1' then
            estadoSiguiente<=s700;
          else
            estadoSiguiente<=s200;
          end if;
          
        when s300=>                             -- Estado s300
          if Bt1 = '1' then
            estadoSiguiente<=s400;
          elsif Bt2 = '1' then
            estadoSiguiente<=s500;
          elsif Bt5 = '1' then
            estadoSiguiente<=s800;
          else
            estadoSiguiente<=s300;
          end if;
          			
		when s400=>                             -- Estado s400
	      if Bt1 = '1' then
            estadoSiguiente<=s500;
          elsif Bt2 = '1' then
            estadoSiguiente<=s600;
          elsif Bt5 = '1' then
            estadoSiguiente<=s900;
          else
            estadoSiguiente<=s400;
          end if;
	      
		when s500=>                             -- Estado s500
          if Bt1 = '1' then
            estadoSiguiente<=s600;
          elsif Bt2 = '1' then
            estadoSiguiente<=s700;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1000;
          else
            estadoSiguiente<=s500;
          end if;
          
        when s600=>                             -- Estado s600
          if Bt1 = '1' then
            estadoSiguiente<=s700;
          elsif Bt2 = '1' then
            estadoSiguiente<=s800;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1100;
          else
            estadoSiguiente<=s600;
          end if;
          
        when s700=>                             -- Estado s700
          if Bt1 = '1' then
            estadoSiguiente<=s800;
          elsif Bt2 = '1' then
            estadoSiguiente<=s900;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1200;
          else
            estadoSiguiente<=s700;
          end if;
          
        when s800=>                             -- Estado s800
          if Bt1 = '1' then
            estadoSiguiente<=s900;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1000;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1300;
          else
            estadoSiguiente<=s800;
          end if;
          
        when s900=>                             -- Estado s900
          if Bt1 = '1' then
            estadoSiguiente<=s1000;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1100;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1400;
          else
            estadoSiguiente<=s900;
          end if;
          
        when s1000=>                             -- Estado s1000
          if Bt1 = '1' then
            estadoSiguiente<=s1100;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1200;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1500;
          else
            estadoSiguiente<=s1000;
          end if;
          
        when s1100=>                             -- Estado s1100
          if Bt1 = '1' then
            estadoSiguiente<=s1200;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1300;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1600;
          else
            estadoSiguiente<=s1100;
          end if;
          
        when s1200=>                             -- Estado s1200
          if Bt1 = '1' then
            estadoSiguiente<=s1300;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1400;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1700;
          else
            estadoSiguiente<=s1200;
          end if;
          
        when s1300=>                             -- Estado s1300
          if Bt1 = '1' then
            estadoSiguiente<=s1400;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1500;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1800;
          else
            estadoSiguiente<=s1300;
          end if;
          
        when s1400=>                             -- Estado s1400
          if Bt1 = '1' then
            estadoSiguiente<=s1500;
          elsif Bt2 = '1' then
            estadoSiguiente<=s1600;
          elsif Bt5 = '1' then
            estadoSiguiente<=s1900;
          else
            estadoSiguiente<=s1400;
          end if;
          
        when s1500=>                             -- Estado s1500
          if In_fin1s = '1' then
            estadoSiguiente<=idle;
          else
            estadoSiguiente<=s1500;
          end if;
          
        when s1600=>                             -- Estado s1600
          if In_fin1s = '1' then
            estadoSiguiente<=v1600;
          else
            estadoSiguiente<=s1600;
          end if;
       
		when s1700=>                             -- Estado s1700
          if In_fin1s = '1' then
            estadoSiguiente<=v1700;
          else
            estadoSiguiente<=s1700;
          end if;
          
        when s1800=>                             -- Estado s1800
          if In_fin1s = '1' then
            estadoSiguiente<=v1800;
          else
            estadoSiguiente<=s1800;
          end if;
          
        when s1900=>                             -- Estado s1900
          if In_fin1s = '1' then
            estadoSiguiente<=v1900;
          else
            estadoSiguiente<=s1900;
          end if;
         
        when v1600=>                             -- Estado v1600
          if In_fin5s = '1' then
            estadoSiguiente<=idle;
          else
            estadoSiguiente<=v1600;
          end if;
          
        when v1700=>                             -- Estado v1700
          if In_fin5s = '1' then
            estadoSiguiente<=idle;
          else
            estadoSiguiente<=v1700;
          end if;
          
        when v1800=>                             -- Estado v1800
          if In_fin5s = '1' then
            estadoSiguiente<=idle;
          else
            estadoSiguiente<=v1800;
          end if;
          
        when v1900=>                             -- Estado v1900
          if In_fin5s = '1' then
            estadoSiguiente<=idle;
          else
            estadoSiguiente<=v1900;
          end if;
                    
	end case;		
end process;

salida:process(estadoActual)
begin
	case estadoActual Is
		when idle => 
		  MO <= "1011000000000000";   --Salida IDLE
		  LEDS <= "0000";
		  
		when s100 => MO <= "1011101100010000";   --Salida s100 
		when s200 => MO <= "1011101100100000";
		when s300 => MO <= "1011101100110000";
		when s400 => MO <= "1011101101000000";
		when s500 => MO <= "1011101101010000";
		when s600 => MO <= "1011101101100000";
		when s700 => MO <= "1011101101110000";
		when s800 => MO <= "1011101110000000";
		when s900 => MO <= "1011101110010000";
		when s1000 => MO <="1011000100000000";
		when s1100 => MO <="1011000100010000";
		when s1200 => MO <="1011000100100000";
		when s1300 => MO <="1011000100110000";
		when s1400 => MO <="1011000101000000";
		
		when s1500 => 
		  MO <="1011000101010000";
		  LEDS <= "0001";
		  Ce1s <= '1';
		
		when s1600 => 
		  MO <="1011000101100000";
		  LEDS <= "0001";
          Ce1s <= '1';
		  
		when s1700 => 
		  MO <="1011000101110000";
		  LEDS <= "0001";
          Ce1s <= '1';
		
		when s1800 => 
		  MO <="1011000110000000";
		  LEDS <= "0001";
          Ce1s <= '1';
          
		when s1900 => 
		MO <="1011000110010000";
		LEDS <= "0001";
        Ce1s <= '1';
        
		when v1600 =>
		  MO <="1010101100010000"; 
		  LEDS <= "0010";
		  Ce5s <= '1';
		  
		when v1700 =>
		  MO <="1010101100100000";  
		  LEDS <= "0100";
		  Ce5s <= '1';
		  
		when v1800 =>
		  MO <="1010101100110000"; 
		  LEDS <= "0110";
		  Ce5s <= '1';
		
		when v1900 =>
		  MO <="1010101101000000";  
		  LEDS <= "1000";
		  Ce5s <= '1';
	end case;
end process;
end Behavioral;