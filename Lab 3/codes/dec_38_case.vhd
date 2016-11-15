----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:19 08/17/2016 
-- Design Name: 
-- Module Name:    dec_38_case - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dec_38_case is
    Port ( 	e : in  STD_LOGIC;
				i : in  STD_LOGIC_VECTOR (2 downto 0);
            y : out  STD_LOGIC_VECTOR (7 downto 0));
end dec_38_case;

architecture Behavioral of dec_38_case is

begin
process(i,e)
	begin
	case e is
	when '1' =>
		
		case i is
			when  "000"  => y<= "00000001";
			when  "001"  => y<= "00000010";
			when  "010"  => y<= "00000100";
			when  "011"  => y<= "00001000";
			when  "100"  => y<= "00010000";
			when  "101"  => y<= "00100000";
			when  "110"  => y<= "01000000";
			when  "111"  => y<= "10000000";
			when others => y<="ZZZZZZZZ";
		end case;
		
	when others => y<="00000000";
	end case;

end process;
end Behavioral;

