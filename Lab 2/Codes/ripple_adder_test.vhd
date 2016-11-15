--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:49:56 08/10/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Desktop/sweta113/Lab 2/Structural_modelling/ripple_adder_4bit_test.vhd
-- Project Name:  Structural_modelling
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripple_adder_4bit
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
 
ENTITY ripple_adder_4bit_test IS
END ripple_adder_4bit_test;
 
ARCHITECTURE behavior OF ripple_adder_4bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripple_adder_4bit
    PORT(
         P : IN  std_logic_vector(3 downto 0);
         Q : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P : std_logic_vector(3 downto 0) := (others => '0');
   signal Q : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_adder_4bit PORT MAP (
          P => P,
          Q => Q,
          Cin => Cin,
          sum => sum,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      P<="0000";
		Q<="0000";
		Cin<='0';
		wait for 100 ns;	
		
		P<="1111";
		Q<="0110";
		Cin<='0';
		wait for 100 ns;
		
		P<="1011";
		Q<="0111";
		Cin<='1';
		wait for 100 ns;
		
		P<="1010";
		Q<="0110";
		Cin<='0';
		wait for 100 ns;


      wait;
   end process;

END;
