library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
    port(data1 : in STD_LOGIC_VECTOR(31 downto 0);
         data2 : in STD_LOGIC_VECTOR(31 downto 0);
         aluop : in STD_LOGIC_VECTOR(3 downto 0);
         dataout : out STD_LOGIC_VECTOR(31 downto 0);
         zflag : out STD_LOGIC );

end alu;

architecture Behavioral of alu is

signal S,A : STD_LOGIC_VECTOR (31 downto 0);

begin
S <= data1 - data2;

A <= data1 and data2 when aluop(3 downto 0) = "0000" else
data1 or data2 when aluop(3 downto 0) = "0001" else
data1 + data2 when aluop(3 downto 0) = "0010" else
S when aluop(3 downto 0) = "0110" else
data1 nor data2 when aluop(3 downto 0) = "1100" else
x"0000000"&"000"&S(31) when aluop(3 downto 0) = "0111" else
x"00000000";

dataout <= A(31 downto 0);

zflag <= '1' when A(31 downto 0) = x"00000000" else '0';

end Behavioral;