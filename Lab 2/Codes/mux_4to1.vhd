----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:20 08/10/2016 
-- Design Name: 
-- Module Name:    mux_4to1 - Structural 
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

entity mux_4to1 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end mux_4to1;

architecture Structural of mux_4to1 is

component mux_2to1
Port( I:in std_logic_vector(1 downto 0);
		S:in std_logic;
		Y:out std_logic );
end component;

signal t1,t2:std_logic;

begin
m1:mux_2to1 Port Map( I(0)=>I(0),
							 I(1)=>I(1),
							 S=>S(0),
							 Y=>t1);
m2:mux_2to1 Port Map( I(0)=>I(2),
							 I(1)=>I(3),
							 S=>S(0),
							 Y=>t2);
m3:mux_2to1 Port Map( I(0)=>t1,
							 I(1)=>t2,
							 S=>S(1),
							 Y=>Y);
end Structural;

