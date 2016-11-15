----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:51 09/07/2016 
-- Design Name: 
-- Module Name:    sr_ff - Behavioral 
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

entity sr_ff is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           S,R : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           Qn : inout  STD_LOGIC);
end sr_ff;

architecture Behavioral of sr_ff is

begin
   process(clk)

   --variable tmp: std_logic;

	begin
	
		if(clk='1' and clk'event) then
		
			if(S='0' and R='0')then
			
				--tmp:=tmp;
				Q<=Q;
		
			elsif(S='1' and R='1')then
			
				--tmp:='Z';
				Q<='Z';
		
			elsif(S='0' and R='1')then
			
				--tmp:='0';
				Q<='0';
		
			else
			
				--tmp:='1';
				Q<='1';
		
			end if;
	
		end if;
		
--Q <= tmp;
--Qn <= not tmp;
		Qn<= not Q;

   end process;
end Behavioral;

