library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Decoder5x32 is
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
end Decoder5x32;

architecture Behavioral of Decoder5x32 is

SIGNAL RR0 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR1 : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL RR2 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR3 : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL RR4 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR5 : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR6 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR7 : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL RR8 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR9 : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR10 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR11 : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR12 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR13 : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR14 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR15 : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL RR16 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR17 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR18 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR19 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR20 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR21 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR22 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR23 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR24 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR25 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR26 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR27 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR28 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR29 :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL RR30 :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RR31 :  STD_LOGIC_VECTOR (31 downto 0);



begin
R0<=RR0;
R1<=RR1;
R2<=RR2;
R3<=RR3;
R4<=RR4;
R5<=RR5;
R6<=RR6;
R7<=RR7;
R8<=RR8;
R9<=RR9;
R10<=RR10;
R11<=RR11;
R12<=RR12;
R13<=RR13;
R14<=RR14;
R15<=RR15;
R16<=RR16;
R17<=RR17;
R18<=RR18;
R19<=RR19;
R20<=RR20;
R21<=RR21;
R22<=RR22;
R23<=RR23;
R24<=RR24;
R25<=RR25;
R26<=RR26;
R27<=RR27;
R28<=RR28;
R29<=RR29;
R30<=RR30;
R31<=RR31;









		RR0<= Regdata  when (sel="00000") and (enable='1'); 
		RR1<= Regdata  when (sel="00001") and (enable='1'); 
		RR2<= Regdata  when (sel="00010") and (enable='1'); 
		RR3<= Regdata  when (sel="00011") and (enable='1'); 
		RR4<= Regdata  when (sel="00100") and (enable='1');
		RR5<= Regdata  when (sel="00101") and (enable='1'); 
		RR6<= Regdata  when (sel="00110") and (enable='1');
		RR7<= Regdata  when (sel="00111") and (enable='1'); 
		RR8<= Regdata  when (sel="01000") and (enable='1') ;
		RR9<=  Regdata when (sel="01001") and (enable='1') ;
		RR10<= Regdata when (sel="01010") and (enable='1') ;
		RR11<= Regdata when (sel="01011") and (enable='1') ;
		RR12<= Regdata when (sel="01100") and (enable='1') ;
		RR13<= Regdata when (sel="01101") and (enable='1') ;
		RR14<= Regdata when (sel="01110") and (enable='1') ;
		RR15<= Regdata when (sel="01111") and (enable='1') ;

            RR16 <= Regdata when (sel="10000") and (enable='1') ;

            RR17 <= Regdata when (sel="10001") and (enable='1') ;

            RR18 <= Regdata when (sel="10010") and (enable='1') ; 

            RR19 <= Regdata when (sel="10011") and (enable='1') ;

            RR20 <= Regdata when (sel="10100") and (enable='1') ;

            RR21 <= Regdata when (sel="10101") and (enable='1') ;

            RR22 <= Regdata when (sel="10110") and (enable='1') ;

            RR23 <= Regdata when (sel="10111") and (enable='1') ;

            RR24 <= Regdata when (sel="11000") and (enable='1') ;

            RR25 <= Regdata when (sel="11001") and (enable='1') ;

            RR26 <= Regdata when (sel="11010") and (enable='1') ;

            RR27 <= Regdata when (sel="11011") and (enable='1') ;

            RR28 <= Regdata when (sel="11100") and (enable='1') ;

            RR29 <= Regdata when (sel="11101") and (enable='1') ;

            RR30 <= Regdata when (sel="11110") and (enable='1') ;

            RR31 <= Regdata when (sel="11111") and (enable='1');
				
		
				
			   
			




end Behavioral;

