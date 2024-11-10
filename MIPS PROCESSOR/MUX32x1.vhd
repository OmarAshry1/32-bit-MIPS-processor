library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX32X1 is
    Port ( R0 : in  STD_LOGIC_VECTOR (31 downto 0);
           R1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R3 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R4 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R5 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R6 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R7 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R8 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R9 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R10 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R11 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R12 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R13 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R14 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R15 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R16 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R17 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R18 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R19 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R20 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R21 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R22 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R23 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R24 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R25 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R26 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R27 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R28 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R29 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R30 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R31 : in  STD_LOGIC_VECTOR (31 downto 0);
			  
			  s : in  STD_LOGIC_VECTOR (4 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
           
end MUX32X1;

architecture Behavioral of MUX32X1 is

begin

	y<=  R0 when s="00000" else 
		  R1 when s="00001" else
        R2 when s="00010" else
        R3 when s="00011" else
        R4 when s="00100" else
        R5 when s="00101" else
        R6 when s="00110" else
        R7 when s="00111" else
        R8 when s="01000" else
        R9 when s="01001" else
       R10 when s="01010" else
       R11 when s="01011" else
       R12 when s="01100" else
       R13 when s="01101" else
       R14 when s="01110" else
       R15 when s="01111" else
       R16 when s="10000" else
       R17 when s="10001" else
       R18 when s="10010" else
       R19 when s="10011" else
       R20 when s="10100" else
       R21 when s="10101" else
       R22 when s="10110" else
       R23 when s="10111" else
       R24 when s="11000" else
       R25 when s="11001" else
       R26 when s="11010" else
       R27 when s="11011" else
       R28 when s="11100" else
       R29 when s="11101" else
       R30 when s="11110" else R31;

end Behavioral;