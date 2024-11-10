library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;



entity Adder4 is
PORT (A: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
B: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
S: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
end Adder4;

architecture Behavioral of Adder4 is


BEGIN

	S<= A + B;
	


end Behavioral;

