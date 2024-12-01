library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_RS232 is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           DatoSerial_In : in STD_LOGIC;
           eot: out STD_LOGIC;
           DatoSerial_Out : out STD_LOGIC);
end UART_RS232;

architecture Behavioral of UART_RS232 is

component Transmisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           data : in STD_LOGIC_VECTOR (7 downto 0);
           eot : out STD_LOGIC;
           tx : out STD_LOGIC);
end component;

component Receptor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           LineRD_in : in STD_LOGIC;
           store_out :out std_logic;
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component complemento is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           datoIn : in std_logic_vector(7 downto 0);
           datoOut : out std_logic_vector(7 downto 0);
           eot : out STD_LOGIC);
end component;

component BuferDato is
    Port ( DatoIn : in STD_LOGIC_VECTOR (7 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end component;

signal busDato1:STD_LOGIC_VECTOR (7 downto 0);
signal sg_store: STD_LOGIC;

begin

u0:Transmisor Port map(clk=>clk,reset=>reset,start=>sg_store,data=>busDato1,eot=>eot,tx=>DatoSerial_Out);
u1:Receptor Port map(clk=>clk,reset=>reset,LineRD_in=>DatoSerial_In,store_out=>sg_store,DatoOut=>busDato1);

end Behavioral;
