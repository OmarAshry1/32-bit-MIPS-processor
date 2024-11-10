
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Projpack.all;


entity DataPath is
PORT (
	clk, reset: in STD_LOGIC;
	instr: in STD_LOGIC_VECTOR(31 downto 0);
	aluoperation: in STD_LOGIC_VECTOR(3 downto 0);
	zero: out STD_LOGIC;
	regwrite: in STD_LOGIC;
	aluout : buffer STD_LOGIC_VECTOR(31 downto 0)

);
end DataPath;

architecture Behavioral of DataPath is
Signal readReg1: STD_LOGIC_VECTOR(4 downto 0);
Signal readReg2: STD_LOGIC_VECTOR(4 downto 0);
Signal writeReg: STD_LOGIC_VECTOR(4 downto 0);

Signal Firstdata: STD_LOGIC_VECTOR(31 downto 0);
Signal Seconddata: STD_LOGIC_VECTOR(31 downto 0);
begin
readReg1<= instr(25 downto 21);
readReg2<= instr(20 downto 16);
writeReg<= instr(15 downto 11);

RegFile: RegisterFile PORT MAP (readReg1,readReg2,writeReg,regwrite,clk,aluout,Firstdata,Seconddata);
AluFile: alu PORT MAP (Firstdata,Seconddata,aluoperation,aluout,zero);

end Behavioral;

