----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:29 08/17/2016 
-- Design Name: 
-- Module Name:    dec_38_when_else - Behavioral 
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

entity dec_38_when_else is
    Port ( i : in  STD_LOGIC_VECTOR (2 downto 0);
           e : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (7 downto 0));
end dec_38_when_else;

architecture Behavioral of dec_38_when_else is

begin
	y<=
		--"00000000" when e = '0' else
		--"00000000" when e = 'Z' else
		--for enable high
		"00000001" when i="000" and e='1' else
		"00000010" when i="001" and e='1' else
		"00000100" when i="010" and e='1' else
		"00001000" when i="011" and e='1' else
		"00010000" when i="100" and e='1' else
		"00100000" when i="101" and e='1' else
		"01000000" when i="110" and e='1' else
		"10000000" when i="111" and e='1' else
		"ZZZZZZZZ";

end Behavioral;

