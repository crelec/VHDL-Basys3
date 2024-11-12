library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Superior is
    Port ( EntDato : in  STD_LOGIC_VECTOR (3 downto 0);
           clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           intPulso : in  STD_LOGIC;
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end Superior;

architecture Behavioral of Superior is

component debounce IS
  Port(
    clk     : in  STD_LOGIC;  --input clock
    button  : in  STD_LOGIC;  --input signal to be debounced
    result  : out STD_LOGIC); --debounced signal
end component;

component contador is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component divfre is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           clk190 : out  STD_LOGIC);
end component;

component mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC_VECTOR (3 downto 0);
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  dato : in STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component ModuloBotones is
    Port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Modulodisplay is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal sg_result: STD_LOGIC;
signal sg_arreglo : STD_LOGIC_VECTOR (15 downto 0);
signal sg_mux: STD_LOGIC_VECTOR (3 downto 0);
signal sg_contador: STD_LOGIC_VECTOR (1 downto 0);
signal sg_divfrec: STD_LOGIC;

begin

u0: debounce Port map (clk=>clk, button=>intPulso, result=>sg_result);
u1: contador Port map (clear=>clear, clk=>sg_divfrec, salida=>sg_contador);
u2: divfre Port map (clear=>clear, clk=>clk, clk190=>sg_divfrec);
u3: mux4a1 Port map (a=>sg_arreglo(3 downto 0), b=>sg_arreglo(7 downto 4), c=>sg_arreglo(11 downto 8), d=>sg_arreglo(15 downto 12), sel=>sg_contador, salida=>sg_mux);
u4: arreglo_reg Port map (dato=>EntDato, clear=>clear, clk=>sg_result, salida=>sg_arreglo);
u5: ModuloBotones Port map(sel=>sg_contador, anodos=>Anodos);
u6: Modulodisplay Port map(A=>sg_mux, seg=>seg);


end Behavioral;
