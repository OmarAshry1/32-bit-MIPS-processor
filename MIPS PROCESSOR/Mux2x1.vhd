
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2x1 is

	PORT( a,b: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		S: IN STD_LOGIC ;
		y: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
	
	
		y<=a when s='0' 
		else b;
		
end Behavioral;

