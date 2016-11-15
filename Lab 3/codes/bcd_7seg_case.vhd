----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:16 08/17/2016 
-- Design Name: 
-- Module Name:    bcd_7seg_case - Behavioral 
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

entity bcd_7seg_case is
    Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd_7seg_case;

architecture Behavioral of bcd_7seg_case is

begin
process(bcd)
	begin
		case bcd is
			when  "0000"  => seg<= "1111110";
			when  "0001"  => seg<= "0110000";
			when  "0010"  => seg<= "1101101";
			when  "0011"  => seg<= "1111001";
			when  "0100"  => seg<= "0110011";
			when  "0101"  => seg<= "1011011";
			when  "0110"  => seg<= "1011111";
			when  "0111"  => seg<= "1110000";
			when  "1000"  => seg<= "1111111";
			when  "1001"  => seg<= "1110011";
			when others => seg<="ZZZZZZZ";
		
	end case;

end process;

end Behavioral;

