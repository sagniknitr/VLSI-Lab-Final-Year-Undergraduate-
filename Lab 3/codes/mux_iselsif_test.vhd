--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:42:43 08/17/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Desktop/sweta113/lab_3_17/lab_3/mux_iselsif_test.vhd
-- Project Name:  lab_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_41_if_else
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
 
ENTITY mux_iselsif_test IS
END mux_iselsif_test;
 
ARCHITECTURE behavior OF mux_iselsif_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_41_if_else
    PORT(
         i : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_41_if_else PORT MAP (
          i => i,
          s => s,
          y => y
        );


   -- Stimulus process
   stim_proc: process
   begin		
		s <= "00";
		i(0) <= '1';
		wait for 100 ns;
		s <= "01";
		i(1) <= '1';
		wait for 100 ns;
		s <= "10";
		i(2) <= '1';
		wait for 100 ns;
		s <= "11";
		i(3) <= '1';
		wait for 100 ns;
      wait;
   end process;

END;
