library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;



entity flopreg is

    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end flopreg;

architecture Behavioral of flopreg is

begin
	process(clk,rst)
	begin 
		if (rst='1') then q<="00000000000000000000000000000000";
		elsif rising_edge (clk) then
		q<= d;
		end if;
		end process;

end Behavioral;

