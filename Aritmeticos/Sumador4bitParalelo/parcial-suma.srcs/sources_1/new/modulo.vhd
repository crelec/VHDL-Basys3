library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulo is
    Port ( DatoInA : in STD_LOGIC;
           DatoInB : in STD_LOGIC;
           Cin : in STD_LOGIC;
           suma : out STD_LOGIC;
           Cout : out STD_LOGIC);
end modulo;

architecture Behavioral of modulo is

begin
    process(DatoInA,DatoInB,Cin)
    begin
        if(DatoInA='0' and DatoInB='1' and Cin='1')then
            suma<='0';
            Cout<='1';
        elsif(DatoInA='1' and DatoInB='0' and Cin='1')then
            suma<='0';
            Cout<='1';
        elsif(DatoInA='1' and DatoInB='1' and Cin='0')then
            suma<='0';
            Cout<='1';
        elsif(DatoInA='1' and DatoInB='1' and Cin='1')then
            suma<='1';
            Cout<='1';
        elsif(DatoInA='0' and DatoInB='0' and Cin='1')then
            suma<='1';
            Cout<='0';
        elsif(DatoInA='0' and DatoInB='1' and Cin='0')then
            suma<='1';
            Cout<='0';
       elsif(DatoInA='1' and DatoInB='0' and Cin='0')then
            suma<='1';
            Cout<='0';
       else
            suma<='0';
            Cout<='0';
      end if;
      end process;
end Behavioral;
