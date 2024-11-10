


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Projpack is

	Component MUX32X1 is
    Port ( 
			  
           
			  R0 : in  STD_LOGIC_VECTOR (31 downto 0);
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
			  
           
end Component;

Component flopreg is

    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end Component;



Component Decoder5x32 is
    Port ( 
			  
           
			  R0 : out  STD_LOGIC_VECTOR (31 downto 0);
           R1 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R3 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R4 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R5 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R6 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R7 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R8 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R9 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R10 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R11 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R12 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R13 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R14 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R15 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R16 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R17 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R18 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R19 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R20 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R21 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R22 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R23 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R24 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R25 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R26 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R27 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R28 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R29 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R30 : out  STD_LOGIC_VECTOR (31 downto 0);
			  R31 : out  STD_LOGIC_VECTOR (31 downto 0);
			  
			  sel : in  STD_LOGIC_VECTOR (4 downto 0);
           enable : in  STD_LOGIC ;
			  Regdata: in STD_LOGIC_VECTOR (31 downto 0)
			  
			  
			  );
end Component;

COMPONENT RegisterFile is
    Port ( 
	read_sel1 : in std_logic_vector(4 downto 0);
	read_sel2 : in std_logic_vector(4 downto 0);
	write_sel : in std_logic_vector(4 downto 0);
	write_ena : in std_logic;
	clk: in std_logic;
	write_data: in std_logic_vector(31 downto 0);
	data1: out std_logic_vector(31 downto 0);
	data2: out std_logic_vector(31 downto 0)
	);
	
end component;

Component alu is
    port(data1 : in STD_LOGIC_VECTOR(31 downto 0);
         data2 : in STD_LOGIC_VECTOR(31 downto 0);
         aluop : in STD_LOGIC_VECTOR(3 downto 0);
         dataout : out STD_LOGIC_VECTOR(31 downto 0);
         zflag : out STD_LOGIC );

end component;


Component Aludec is
    port(
        funct: in STD_LOGIC_VECTOR(5 downto 0);
        aluop: in STD_LOGIC_VECTOR (1 downto 0);
        alucontrol: out STD_LOGIC_VECTOR(3 downto 0)
    );
end component;




Component Maindec is
port(op: in STD_LOGIC_VECTOR (5downto 0);
memtoreg, memwrite:out STD_LOGIC ;
alusrc: out STD_LOGIC;
regdst, regwrite: out STD_LOGIC;
jump,branch: out STD_LOGIC;
aluop: out STD_LOGIC_VECTOR(1 downto 0));

end Component;



Component DataPath is
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
end Component;


Component Controller is
port (op,funct: in STD_LOGIC_VECTOR (5 downto 0) ;
		zero: in STD_LOGIC; 
		memtoreg, memwrite: out STD_LOGIC;
		 pcsrc, alusrc: out STD_LOGIC;
		regdst, regwrite: out STD_LOGIC;
		jump: out STD_LOGIC;
		alucontrol: out STD_LOGIC_VECTOR (3 downto 0)) ;
	
end Component;


Component Mux2x1 is

	PORT( a,b: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		S: IN STD_LOGIC ;
		y: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end Component;



Component SL2 is
PORT(a: IN STD_LOGIC_VECTOR(31 downto 0);
	y: OUT STD_LOGIC_VECTOR(31 downto 0));
end Component;
	
Component SignExtend is
PORT ( a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) );
		 
end Component;

Component Adder4 is
PORT (A: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
B: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
S: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
end Component;

Component imem is 

port(a: in STD_LOGIC_VECTOR(5 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end Component;

Component dmem is -- data memory
port(clk, we: in STD_LOGIC;
a, wd: in STD_LOGIC_VECTOR (31 downto 0);
rd: out STD_LOGIC_VECTOR (31 downto 0));
end Component;

Component MuxWriteReg is

	PORT( a,b: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		S: IN STD_LOGIC ;
		y: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
end Component;

Component MIPS is
port ( clk: in std_logic;
		RST: IN STD_LOGIC;
		instr: in STD_LOGIC_VECTOR(31 downto 0);
 pc,aluout,Seconddata: out STD_LOGIC_VECTOR(31 downto 0);
 datamem: in STD_LOGIC_VECTOR(31 downto 0);
 memwrite: OUT STD_LOGIC);
 
end Component;

end Projpack;

