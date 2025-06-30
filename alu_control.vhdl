
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_control is
    Port (
        funct7 : in  STD_LOGIC_VECTOR(6 downto 0);
        funct3 : in  STD_LOGIC_VECTOR(2 downto 0);
        alu_op : out STD_LOGIC_VECTOR(3 downto 0)
    );
end alu_control;

architecture Behavioral of alu_control is
begin
    process(funct7, funct3)
    begin
        case funct3 is
            when "000" => -- ADD
                alu_op <= "0000"; -- ADD
            when "<code for subtract>" => -- SUB
                alu_op <= "<code ALU needs for subtract>"; -- SUB
            when others =>
                alu_op <= (others => '0');
        end case;
    end process;
end Behavioral;
