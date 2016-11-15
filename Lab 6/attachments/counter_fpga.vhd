----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:44 09/14/2016 
-- Design Name: 
-- Module Name:    counter_fpga - Behavioral 
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

entity counter_fpga is
    Port ( clk,reset,flag : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_fpga;

architecture Behavioral of counter_fpga is
signal tmp: std_logic_vector(3 downto 0);
signal clk_new: std_logic_vector(24 downto 0);
begin
P1:process(clk_new,reset,flag)
	begin
		if reset='1' then 
			tmp <= "0000";
		elsif reset='0' then
			if clk_new(24)'event and clk_new(24)='1' then
				if flag='1' then
				tmp<=tmp + 1;
				elsif flag='0' then
				tmp<=tmp - 1;
				end if;
			end if;
		end if;	
end process;
count <= tmp;
P2:process(clk)
	begin
		if clk'event and clk='1' then
				clk_new<=clk_new + 1;
		end if;	

end process;

end Behavioral;

