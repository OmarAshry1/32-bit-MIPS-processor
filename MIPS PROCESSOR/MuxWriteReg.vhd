
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MuxWriteReg is

	PORT( a,b: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		S: IN STD_LOGIC ;

		y: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
end MuxWriteReg;

architecture Behavioral of MuxWriteReg is

begin
	
		y<=a when s='0' 
		else b;
		
end Behavioral;

