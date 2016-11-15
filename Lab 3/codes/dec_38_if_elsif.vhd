----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:14:44 08/17/2016 
-- Design Name: 
-- Module Name:    dec_38_if_elsif - Behavioral 
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

entity dec_38_if_elsif is
    Port (  e: in  STD_LOGIC  ;
	    i : in  STD_LOGIC_VECTOR (2 downto 0);
            y : out  STD_LOGIC_VECTOR (7 downto 0));
end dec_38_if_elsif;

architecture Behavioral of dec_38_if_elsif is

begin
process(i)
	begin
	if e = '1' then
		if (i<="000") then y<= "00000001";
		elsif  (i<="001") then y<= "00000010";
		elsif  (i<="010") then y<= "00000100";
		elsif  (i<="011") then y<= "00001000";
		elsif  (i<="100") then y<= "00010000";
		elsif  (i<="101") then y<= "00100000";
		elsif  (i<="110") then y<= "01000000";
		elsif  (i<="111") then y<= "10000000";
	else  y<= "00000000";
		end if;
	end if;
end process;

end Behavioral;

