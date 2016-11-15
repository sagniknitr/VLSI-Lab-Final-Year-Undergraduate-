--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:38:44 08/17/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Desktop/sweta113/lab_3_17/lab_3/seg_case_test.vhd
-- Project Name:  lab_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_7seg_case
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY seg_case_test IS
END seg_case_test;
 
ARCHITECTURE behavior OF seg_case_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_7seg_case
    PORT(
         bcd : IN  std_logic_vector(3 downto 0);
         seg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bcd : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal seg : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_7seg_case PORT MAP (
          bcd => bcd,
          seg => seg
        );

   -- Stimulus process
   stim_proc: process
   begin		
		bcd <="0110";
		wait for 100 ns;
		bcd <="0111";
		wait for 100 ns;
		bcd <="0110";
		wait for 100 ns;
		bcd <="0001";
		wait for 100 ns;
		bcd <="1001";
		wait for 100 ns;
		bcd <="1111";
		wait for 100 ns;
      wait;
   end process;

END;
