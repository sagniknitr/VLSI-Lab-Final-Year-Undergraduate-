--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:46:02 08/17/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Desktop/sweta113/lab_3_17/lab_3/dec_whenelse_test.vhd
-- Project Name:  lab_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec_38_when_else
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
 
ENTITY dec_whenelse_test IS
END dec_whenelse_test;
 
ARCHITECTURE behavior OF dec_whenelse_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec_38_when_else
    PORT(
         i : IN  std_logic_vector(2 downto 0);
         e : IN  std_logic;
         y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(2 downto 0) := (others => '0');
   signal e : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec_38_when_else PORT MAP (
          i => i,
          e => e,
          y => y
        );

   -- Stimulus process
   stim_proc: process 
   begin		
      e <= '1';
		i <= "000";
		wait for 100 ns;
		e <= '1';
		i <= "000";
		wait for 100 ns;
		e <= '0';
		i <= "000";
		wait for 100 ns;
		e <= '1';
		i <= "100";
		wait for 100 ns;
		e <= '1';
		i <= "111";
		wait for 100 ns;
		e <= '0';
		i <= "000";
		wait for 100 ns;
		e <= '1';
		i <= "110";
		wait for 100 ns;
      wait;
   end process;

END;
