--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:27:07 08/10/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Desktop/sweta113/Lab 2/Structural_modelling/mux_4to1_test.vhd
-- Project Name:  Structural_modelling
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_4to1
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
 
ENTITY mux_4to1_test IS
END mux_4to1_test;
 
ARCHITECTURE behavior OF mux_4to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4to1
    PORT(
         I : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4to1 PORT MAP (
          I => I,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
		S(0)<='0';
		S(1)<='0';
		I(0)<='1';
      wait for 100 ns;	
		S(0)<='1';
		S(1)<='0';
		I(1)<='1';
      wait for 100 ns;
		
		S(0)<='0';
		S(1)<='1';
		I(2)<='1';
      wait for 100 ns;
		S(0)<='1';
		S(1)<='1';
		I(3)<='1';
      wait for 100 ns;

      wait;
   end process;

END;
