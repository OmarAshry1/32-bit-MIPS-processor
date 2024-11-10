library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Aludec is
    port(
        funct: in STD_LOGIC_VECTOR(5 downto 0);
		  
        aluop: in STD_LOGIC_VECTOR (1 downto 0);
        alucontrol: out STD_LOGIC_VECTOR(3 downto 0)
    );
end Aludec;

architecture Behavioral of Aludec is
begin
process(aluop)  
begin
        case aluop is
            when "00"=> alucontrol <= "0010";
            when "01"=> alucontrol <= "0110";
            when others =>
            case funct is
            when "100000" => alucontrol <= "0010";
            when "100010" => alucontrol <= "0110"; 
            when "100100" => alucontrol <= "0000"; 
            when "100101" => alucontrol <= "0001"; 
            when "100110" => alucontrol <= "1100"; 
            when "101010" => alucontrol <= "0111"; 
            when others => alucontrol <= "----";
				end case;
           end case;
		end process;

end Behavioral;
