----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:26 09/07/2016 
-- Design Name: 
-- Module Name:    d_ff_async - Behavioral 
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

entity d_ff_async is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end d_ff_async;

architecture Behavioral of d_ff_async is

begin
process(clk,reset)
	begin
		if reset='1' then 
				Q <= '0';
		else
			if(clk'event and clk='1') then
				Q <= D;
			end if;
		end if;
end process;
end Behavioral;

