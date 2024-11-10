
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.Projpack.all;


entity MIPS is
port ( clk: in std_logic;
		RST: IN STD_LOGIC;
		instr: in STD_LOGIC_VECTOR(31 downto 0);
 pc,aluout,Seconddata: out STD_LOGIC_VECTOR(31 downto 0);
 datamem: in STD_LOGIC_VECTOR(31 downto 0);
 memwrite: OUT STD_LOGIC);
 
end MIPS;

architecture Behavioral of MIPS is

Signal	regwrite:  STD_LOGIC;
Signal	RegDst:  STD_LOGIC;
Signal   jump:  STD_LOGIC;
Signal   Branch:  STD_LOGIC;
Signal   mem2reg:  STD_LOGIC;
Signal   AluSrc:  STD_LOGIC;
Signal	alucontrol:  STD_LOGIC_VECTOR(3 downto 0);
Signal   memwritesig:  STD_LOGIC;
Signal   pcsrc:  STD_LOGIC;
Signal   zero:  STD_LOGIC;
Signal	temp1:  STD_LOGIC_VECTOR(5 downto 0);
Signal	temp2:  STD_LOGIC_VECTOR(5 downto 0);
Signal	temp3:  STD_LOGIC_VECTOR(31 downto 0);


Signal	pcsig:  STD_LOGIC_VECTOR(31 downto 0);
Signal	aluoutsig:  STD_LOGIC_VECTOR(31 downto 0);
Signal	Secdatasig:  STD_LOGIC_VECTOR(31 downto 0);

begin
memwrite<=memwritesig;
temp1<= instr(31 downto 26);
temp2<=instr(5 downto 0);
temp3<=instr(31 downto 0);

--pc<=pcsig;
aluout<=aluoutsig;
Seconddata<=Secdatasig;



MainDataPath: DataPath port map (clk,RST,temp3,zero,regwrite,
aluoutsig,pc,Secdatasig,RegDst,jump,mem2reg,AluSrc,datamem
,alucontrol,pcsrc);



MainController: Controller port map(temp1,
temp2,zero,mem2reg,memwritesig,pcsrc,AluSrc,RegDst,regwrite,
jump,alucontrol);



end Behavioral;

