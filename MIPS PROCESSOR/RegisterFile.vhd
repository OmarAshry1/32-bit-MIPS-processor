
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

use work.Projpack.all;

entity RegisterFile is
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
	
end RegisterFile;

architecture Behavioral of RegisterFile is

SIGNAL zero_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL zero_out : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL at_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL at_out : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL v0_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL v0_out : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL v1_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL v1_out : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL a0_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL a0_out : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL a1_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL a1_out : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL a2_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL a2_out : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL a3_in : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL a3_out : STD_LOGIC_VECTOR (31 downto 0);


SIGNAL t0_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t0_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t1_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t1_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t2_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t2_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t3_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t3_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t4_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t4_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t5_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t5_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t6_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t6_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t7_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t7_out :  STD_LOGIC_VECTOR (31 downto 0);


SIGNAL s0_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s0_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s1_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s1_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s2_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s2_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s3_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s3_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s4_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s4_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s5_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s5_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s6_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s6_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL s7_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL s7_out :  STD_LOGIC_VECTOR (31 downto 0);


SIGNAL t8_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t8_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL t9_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL t9_out :  STD_LOGIC_VECTOR (31 downto 0);


SIGNAL k0_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL k0_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL k1_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL k1_out :  STD_LOGIC_VECTOR (31 downto 0);


SIGNAL gp_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL gp_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL sp_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL sp_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL fp_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL fp_out :  STD_LOGIC_VECTOR (31 downto 0);

SIGNAL ra_in :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL ra_out :  STD_LOGIC_VECTOR (31 downto 0);





begin

zero: flopreg PORT MAP (clk,'0',zero_in,zero_out);

at: flopreg  PORT MAP (clk,'0',at_in,at_out);

v0: flopreg  PORT MAP (clk,'0',v0_in,v0_out);
v1: flopreg  PORT MAP (clk,'0',v1_in,v1_out);

a0:  flopreg  PORT MAP (clk,'0',a0_in,a0_out);
a1:  flopreg  PORT MAP (clk,'0',a1_in,a1_out);
a2:  flopreg  PORT MAP (clk,'0',a2_in,a2_out);
a3:  flopreg  PORT MAP (clk,'0',a3_in,a3_out);

t0:  flopreg  PORT MAP (clk,'0',t0_in,t0_out);
t1:  flopreg  PORT MAP (clk,'0',t1_in,t1_out);
t2:  flopreg  PORT MAP (clk,'0',t2_in,t2_out);
t3:  flopreg  PORT MAP (clk,'0',t3_in,t3_out);
t4:  flopreg  PORT MAP (clk,'0',t4_in,t4_out);
t5:  flopreg  PORT MAP (clk,'0',t5_in,t5_out);
t6:  flopreg  PORT MAP (clk,'0',t6_in,t6_out);
t7:  flopreg  PORT MAP (clk,'0',t7_in,t7_out);

s0:  flopreg  PORT MAP (clk,'0',s0_in,s0_out);
s1:  flopreg  PORT MAP (clk,'0',s1_in,s1_out);
s2:  flopreg  PORT MAP (clk,'0',s2_in,s2_out);
s3:  flopreg  PORT MAP (clk,'0',s3_in,s3_out);
s4:  flopreg  PORT MAP (clk,'0',s4_in,s4_out);
s5:  flopreg  PORT MAP (clk,'0',s5_in,s5_out);
s6:  flopreg  PORT MAP (clk,'0',s6_in,s6_out);
s7:  flopreg  PORT MAP (clk,'0',s7_in,s7_out);

t8:  flopreg  PORT MAP (clk,'0',t8_in,t8_out);
t9:  flopreg  PORT MAP (clk,'0',t9_in,t9_out);

k0:  flopreg  PORT MAP (clk,'0',k0_in,k0_out);
k1:  flopreg  PORT MAP (clk,'0',k1_in,k1_out);

gp:  flopreg  PORT MAP (clk,'0',gp_in,gp_out);
sp:  flopreg  PORT MAP (clk,'0',sp_in,sp_out);
fp:  flopreg  PORT MAP (clk,'0',fp_in,fp_out);
ra:  flopreg  PORT MAP (clk,'0',ra_in,ra_out);

----------------->MUX<----------------------------------

mux1: MUX32x1 PORT MAP (zero_out,at_out,v0_out,v1_out,a0_out,a1_out,a2_out,a3_out
,t0_out,t1_out,t2_out,t3_out,t4_out,t5_out,t6_out,t7_out,s0_out,s1_out,s2_out,s3_out
,s4_out,s5_out,s6_out,s7_out,t8_out,t9_out,k0_out,k1_out,gp_out,sp_out,fp_out,ra_out
,read_sel1,data1);


mux2: MUX32x1 PORT MAP (zero_out,at_out,v0_out,v1_out,a0_out,a1_out,a2_out,a3_out
,t0_out,t1_out,t2_out,t3_out,t4_out,t5_out,t6_out,t7_out,s0_out,s1_out,s2_out,s3_out
,s4_out,s5_out,s6_out,s7_out,t8_out,t9_out,k0_out,k1_out,gp_out,sp_out,fp_out,ra_out
,read_sel2,data2);

----------------->Decoder<-------------------------------
Write_Dec: Decoder5x32 PORT MAP (zero_in,at_in,v0_in,v1_in,a0_in,a1_in,a2_in,a3_in
,t0_in,t1_in,t2_in,t3_in,t4_in,t5_in,t6_in,t7_in,s0_in,s1_in,s2_in,s3_in
,s4_in,s5_in,s6_in,s7_in,t8_in,t9_in,k0_in,k1_in,gp_in,sp_in,fp_in,ra_in
,write_sel,write_ena,write_data);



end Behavioral;

