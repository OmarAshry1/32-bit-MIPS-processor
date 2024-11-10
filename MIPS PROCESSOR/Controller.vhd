
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

use work.Projpack.all;


entity Controller is
port (op,funct: in STD_LOGIC_VECTOR (5 downto 0) ;
		zero: in STD_LOGIC; 
		memtoreg, memwrite: out STD_LOGIC;
		pcsrc, alusrc: out STD_LOGIC;
		regdst, regwrite: out STD_LOGIC;
		jump: out STD_LOGIC;
		alucontrol: out STD_LOGIC_VECTOR (3 downto 0)) ;
	
end Controller;

architecture Behavioral of Controller is

Signal Aluop: STD_LOGIC_VECTOR(1 downto 0);
signal branch:STD_LOGIC;



begin

Maindecoder: maindec PORT MAP(op,memtoreg,memwrite,alusrc,regdst,regwrite,jump,branch,Aluop);
Aludecoder: aludec PORT MAP (funct,Aluop,alucontrol);
pcsrc<=branch and zero;



end Behavioral;

