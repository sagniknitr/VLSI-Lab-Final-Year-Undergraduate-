----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:37:41 08/17/2016 
-- Design Name: 
-- Module Name:    mux_41_if_else - Behavioral 
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

entity mux_41_if_else is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end mux_41_if_else;

architecture Behavioral of mux_41_if_else is

begin
process(i,s)
	begin
		if (s<="00") then y<=i(0);
		elsif  (s<="01") then y<=i(1);
		elsif  (s<="10") then y<=i(2);
		elsif  (s<="11") then y<=i(3);
		
	end if;
end process;
end Behavioral;

