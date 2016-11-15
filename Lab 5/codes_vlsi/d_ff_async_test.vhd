--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:54:40 09/07/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Documents/113ec0223/Lab 5/Sequential_circuit_lab5/d_ff_async_test.vhd
-- Project Name:  Sequential_circuit_lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_ff_async
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
 
ENTITY d_ff_async_test IS
END d_ff_async_test;
 
ARCHITECTURE behavior OF d_ff_async_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_ff_async
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_ff_async PORT MAP (
          clk => clk,
          reset => reset,
          D => D,
          Q => Q
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
		
		
      reset <= '1';
      wait for 200 ns;	
		
		reset <= '0';
		D<='1';
		wait for 200 ns;
		D<='0';
		wait for 200 ns;
		D<='0';
		wait for 200 ns;
		D<='1';
		wait for 200 ns;
      wait;
   end process;

END;
