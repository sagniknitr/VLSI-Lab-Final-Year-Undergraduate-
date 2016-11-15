--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:44:24 09/14/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Documents/113ec0223/lab_14thsep/ud_counter_test.vhd
-- Project Name:  lab_14thsep
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bit_ud_counter
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
 
ENTITY ud_counter_test IS
END ud_counter_test;
 
ARCHITECTURE behavior OF ud_counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit_ud_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         flag : IN  std_logic;
         count : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal flag : std_logic := '0';

	--BiDirs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clkp : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit_ud_counter PORT MAP (
          clk => clk,
          reset => reset,
          flag => flag,
          count => count
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clkp/20;
		clk <= '1';
		wait for clkp/20;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset<='1';
		wait for 40 ns;
		reset<='0';
		flag<='1';
		wait for clkp*2;
		flag<='0';
		wait for clkp*2;
		flag<='1';
		wait for clkp*4;
		flag<='0';
		wait for clkp*3;
		
      wait;
   end process;

END;
