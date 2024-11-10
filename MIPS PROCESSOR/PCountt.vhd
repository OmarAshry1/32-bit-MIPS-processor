library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PCountt is
PORT (

clk: in STD_LOGIC; --clk
clr: in STD_LOGIC; --r
din: in STD_LOGIC_VECTOR(31 DOWNTO 0); --d
dout: out STD_LOGIC_VECTOR(31 DOWNTO 0)); --q

end PCountt;

architecture Behavioral of PCountt is

begin
PROCESS (clr, clk)  BEGIN
  IF (clr='1') THEN dout <= x"00000000"; 
  ELSIF (clk'EVENT AND clk='1') THEN dout<=din; 
  END IF;                                      
END PROCESS;

end Behavioral;

