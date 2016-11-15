----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:31:42 09/14/2016 
-- Design Name: 
-- Module Name:    bit_ud_counter - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bit_ud_counter is
    Port ( clk,reset : in  STD_LOGIC;
           flag : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR (3 downto 0));
end bit_ud_counter;

architecture Behavioral of bit_ud_counter is
signal tmp: std_logic_vector(3 downto 0);
begin
process(clk,reset,flag)
	begin
		if reset='1' then 
			tmp <= "0000";
		elsif reset='0' then
			if clk'event and clk='1' then
				if flag='1' then
				tmp<=tmp + 1;
				elsif flag='0' then
				tmp<=tmp - 1;
				end if;
			end if;
		end if;	
count<=tmp;
end process;
end Behavioral;

