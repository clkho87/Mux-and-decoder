----------------------------------------------------------------------------------
--Name: Ethan Kho
--Design Overview: Hierachial design that implements a 3 bit mux
-- and a 3-8 decoder to light the LEDs.
-- Design name: Project 1
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project1 is
port(	slider_a:in std_logic_vector(2 downto 0);
		slider_b:in std_logic_vector(2 downto 0);
		sel: in std_logic;
		led: out std_logic_vector (7 downto 0));
end project1;

architecture Behavioral of project1 is
signal oswitch: std_logic_vector(2 downto 0);--input signal to the 3 to 8 decoder 
begin
--output from the switch
oswitch <= slider_a when sel= '1' else slider_b;
--3 to 8 decoder
led <= "00000001" when oswitch = "000" else
"00000010" when oswitch = "001" else
"00000100" when oswitch = "010" else
"00001000" when oswitch = "011" else
"00010000" when oswitch = "100" else
"00100000" when oswitch = "101" else
"01000000" when oswitch = "110" else
"10000000" ;



end Behavioral;

