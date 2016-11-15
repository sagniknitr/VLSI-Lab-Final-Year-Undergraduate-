----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:05 08/10/2016 
-- Design Name: 
-- Module Name:    ripple_adder_4bit - Structural 
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

entity ripple_adder_4bit is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end ripple_adder_4bit;

architecture Structural of ripple_adder_4bit is
component full_adder
Port( a,b,c:in std_logic;
		sum,carry:out std_logic);
end component;
signal t1,t2,t3:std_logic;
begin
m1:full_adder Port Map(P(3),Q(3),t3,sum(3),Cout);
m2:full_adder Port Map(P(2),Q(2),t2,sum(2),t3);
m3:full_adder Port Map(P(1),Q(1),t1,sum(1),t2);
m4:full_adder Port Map(P(0),Q(0),Cin,sum(0),t1);
end Structural;

