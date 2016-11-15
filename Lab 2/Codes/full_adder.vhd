----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:03:17 08/10/2016 
-- Design Name: 
-- Module Name:    full_adder - Structural 
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

entity full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_adder;

architecture Structural of full_adder is

--Component declaration
component half_adder
Port(
		a_ha,b_ha:in std_logic;
		s_ha,c_ha:out std_logic );
end component;

--Signal declaration
signal t1,t2,t3:std_logic;

begin
h1:half_adder Port Map(
					a_ha => a,
					b_ha => b,
					s_ha => t1,
					c_ha =>  t2);

h2:half_adder Port Map(
					a_ha => t1,
					b_ha => c,
					s_ha => sum,
					c_ha => t3 );
				
carry <= t2 or t3;
end Structural;


