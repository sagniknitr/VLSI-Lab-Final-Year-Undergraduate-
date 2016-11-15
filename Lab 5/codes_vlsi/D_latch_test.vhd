--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:34:28 09/07/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Documents/113ec0223/Lab 5/Sequential_circuit_lab5/D_latch_test.vhd
-- Project Name:  Sequential_circuit_lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_latch
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
 
ENTITY D_latch_test IS
END D_latch_test;
 
ARCHITECTURE behavior OF D_latch_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_latch
    PORT(
         D : IN  std_logic;
         en : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_latch PORT MAP (
          D => D,
          en => en,
          Q => Q
        );

   -- Stimulus process
   stim_proc: process
   begin		
      en<='0'; D<='0';
      wait for 100 ns;
		en<='0'; D<='1';
      wait for 100 ns;
		en<='1'; D<='0';
      wait for 100 ns;
		en<='1'; D<='1';
      wait for 100 ns;
		
      wait;
   end process;

END;
