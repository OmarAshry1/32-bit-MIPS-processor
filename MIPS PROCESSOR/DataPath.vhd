library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.Projpack.all;


entity DataPath is
PORT (
	clk, reset: in STD_LOGIC;
	instr: in STD_LOGIC_VECTOR(31 downto 0);
	zero: out STD_LOGIC;
	regwrite: in STD_LOGIC;
	aluout,pc,Seconddata : out STD_LOGIC_VECTOR(31 downto 0);
	RegDst: in STD_LOGIC;
   jump: in STD_LOGIC;
   mem2reg: in STD_LOGIC;
   AluSrc: in STD_LOGIC;
	datamem: in STD_LOGIC_VECTOR(31 downto 0);
	alucontrol: in STD_LOGIC_VECTOR(3 downto 0);
	pcsrc: in STD_LOGIC

);
end DataPath;

architecture Behavioral of DataPath is
Signal readReg1: STD_LOGIC_VECTOR(4 downto 0);
Signal readReg2: STD_LOGIC_VECTOR(4 downto 0);
Signal writeReg: STD_LOGIC_VECTOR(4 downto 0);

Signal Firstdata: STD_LOGIC_VECTOR(31 downto 0);


Signal SignExOut: STD_LOGIC_VECTOR(31 downto 0);
Signal slout1: STD_LOGIC_VECTOR(31 downto 0);
Signal Adder1out: STD_LOGIC_VECTOR(31 downto 0);

Signal pcplus4: STD_LOGIC_VECTOR(31 downto 0);

Signal Adder2out: STD_LOGIC_VECTOR(31 downto 0);

Signal Zerosig: STD_LOGIC;

Signal sl2out: STD_LOGIC_VECTOR(31 downto 0);
Signal jumpaddr: STD_LOGIC_VECTOR(31 downto 0);
Signal Mux3out: STD_LOGIC_VECTOR(31 downto 0);

Signal inst25: STD_LOGIC_VECTOR(31 downto 0);

Signal mux4out: STD_LOGIC_VECTOR(31 downto 0);
Signal instruction: STD_LOGIC_VECTOR(31 downto 0);


Signal mux2out: STD_LOGIC_VECTOR(31 downto 0);

Signal Writedata: STD_LOGIC_VECTOR(31 downto 0);

Signal	pcsig:  STD_LOGIC_VECTOR(31 downto 0);
Signal	aluoutsig:  STD_LOGIC_VECTOR(31 downto 0);
Signal	Secdatasig:  STD_LOGIC_VECTOR(31 downto 0);
Signal	plus4:  STD_LOGIC_VECTOR(31 downto 0);


begin
instruction<=instr;
readReg1<= instruction(25 downto 21);
readReg2<= instruction(20 downto 16);
jumpaddr<=pcplus4(31 downto 28)& instruction(25 downto 0) & "00";
inst25<="000000"& instr(25 downto 0);
zero<=Zerosig;
--sl2out(27 downto 0);




pc<=pcsig;
aluout<=aluoutsig;
Seconddata<=Secdatasig;


RegFile: RegisterFile PORT MAP (readReg1,readReg2,writeReg,regwrite,clk,writedata,Firstdata,Secdatasig);
AluFile: alu PORT MAP (Firstdata,mux2out,alucontrol,aluoutsig,Zerosig);

pcmux1: MuxWriteReg port map (instruction(20 downto 16),instruction(15 downto 11),RegDst,writeReg);
pcmux2: Mux2x1 port map (Secdatasig,SignExOut,Alusrc,mux2out);
pcmux3: Mux2x1 port map (pcplus4,Adder2out,pcsrc,Mux3out);
pcmux4: Mux2x1 port map (Mux3out,jumpaddr,jump,mux4out);
pcmux5: Mux2x1 port map (aluoutsig,datamem,mem2reg,writedata);


pcreg: flopreg port map(clk,reset,mux4out,pcsig);

firstsl: SL2 port map(SignExOut,slout1);
secs1: Sl2 port map(inst25,sl2out);

pcadd1: Adder4 port map(pcsig,X"00000004",pcplus4);
pcadd2: Adder4 port map(slout1,pcplus4,Adder2out);

pcsignex: SignExtend port map(instruction(15 downto 0),SignExOut);


end Behavioral;

