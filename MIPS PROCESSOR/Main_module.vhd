library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.Projpack.all;



entity MainModule is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           dataadr : out  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC);
end MainModule;

architecture Behavioral of MainModule is

signal wd :STD_LOGIC_VECTOR (31 downto 0);
signal readdata :STD_LOGIC_VECTOR (31 downto 0);
signal Instruction:STD_LOGIC_VECTOR (31 downto 0);
signal pc:STD_LOGIC_VECTOR (31 downto 0);


signal datasig:STD_LOGIC_VECTOR (31 downto 0);
signal memwsig:STD_LOGIC;

begin

Writedata<=wd;
dataadr<=datasig;
memwrite<=memwsig;


data_memory: dmem port map (clk,memwsig,datasig,wd,readdata);

instruction_memory: imem port map(pc(7 downto 2),Instruction);

Mipss: MIPS port map(clk,rst,Instruction,pc,datasig,wd,readdata,memwsig);

end Behavioral;

