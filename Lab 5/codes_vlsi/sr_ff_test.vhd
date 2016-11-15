--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:47:46 09/07/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Documents/113ec0223/Lab 5/Sequential_circuit_lab5/sr_ff_test.vhd
-- Project Name:  Sequential_circuit_lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_ff
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
 
ENTITY sr_ff_test IS
END sr_ff_test;
 
ARCHITECTURE behavior OF sr_ff_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sr_ff
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         S : IN  std_logic;
         R : IN  std_logic;
         Q : INOUT  std_logic;
         Qn : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal S : std_logic := '0';
   signal R : std_logic := '0';

	--BiDirs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_ff PORT MAP (
          clk => clk,
          reset => reset,
          S => S,
          R => R,
          Q => Q,
          Qn => Qn
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      S<='0';R<='0';
      wait for 100 ns;
		S<='0';R<='1';
      wait for 100 ns;
		S<='1';R<='0';
      wait for 100 ns;
		S<='1';R<='1';
      wait for 100 ns;
		S<='0';R<='0';
      wait for 100 ns;
		S<='0';R<='1';
      wait for 100 ns;
		S<='1';R<='0';
      wait for 100 ns;
		S<='1';R<='1';
      wait for 100 ns;
      wait;
   end process;

END;
