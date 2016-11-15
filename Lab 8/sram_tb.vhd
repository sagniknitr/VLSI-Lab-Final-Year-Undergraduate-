--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:03:34 10/19/2016
-- Design Name:   
-- Module Name:   C:/Users/user12/Documents/113ec0223/Lab 7/RAM_ROM/sram_tb.vhd
-- Project Name:  RAM_ROM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRAM
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
 
ENTITY sram_tb IS
END sram_tb;
 
ARCHITECTURE behavior OF sram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRAM
    PORT(
         Clock : IN  std_logic;
         Enable : IN  std_logic;
         Read1 : IN  std_logic;
         Write1 : IN  std_logic;
         Read_Addr : IN  std_logic_vector(1 downto 0);
         Write_Addr : IN  std_logic_vector(1 downto 0);
         Data_in : IN  std_logic_vector(3 downto 0);
         Data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Read1 : std_logic := '0';
   signal Write1 : std_logic := '0';
   signal Read_Addr : std_logic_vector(1 downto 0) := (others => '0');
   signal Write_Addr : std_logic_vector(1 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_p : time := 10 ns;
 



BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRAM PORT MAP (
          Clock => Clock,
          Enable => Enable,
          Read1 => Read1,
          Write1 => Write1,
          Read_Addr => Read_Addr,
          Write_Addr => Write_Addr,
          Data_in => Data_in,
          Data_out => Data_out
        );

  

  -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_p/2;
		Clock <= '1';
		wait for Clock_p/2;
   end process;
 

   
	
	
	-- Stimulus process
   stim_proc: process
   begin		
		
		Enable<='1';
		Read1<='1';
		Write1<='0';
		Read_Addr<="00";
		wait for Clock_p;
		Read_Addr<="01";
		wait for Clock_p;
		Read_Addr<="10";
		wait for Clock_p;
		Read_Addr<="11";
		wait for Clock_p;
		Read_Addr<="01";
		wait for Clock_p*4;
		
		Write1<='1';
		Read1<='0';
		Data_in<="1100";
		Write_Addr<="00";
		wait for Clock_p;
		Write_Addr<="01";
		wait for Clock_p;
		Write_Addr<="10";
		wait for Clock_p;
		Write_Addr<="11";
		wait for Clock_p*4;
		
		Read1<='1';
		Write1<='0';
		Read_Addr<="00";
		wait for Clock_p;
		Read_Addr<="01";
		wait for Clock_p;
		Read_Addr<="10";
		wait for Clock_p;
		Read_Addr<="11";
		wait for Clock_p;
		Read_Addr<="01";
		wait for Clock_p*4;
		
		
		Write1<='1';
		Read1<='0';
		Data_in<="1111";
		Write_Addr<="00";
		wait for Clock_p;
		Write_Addr<="01";
		wait for Clock_p;
		Write_Addr<="10";
		wait for Clock_p;
		Write_Addr<="11";
		wait for Clock_p*4;
		
		
		Read1<='1';
		Write1<='0';
		Read_Addr<="00";
		wait for Clock_p;
		Read_Addr<="01";
		wait for Clock_p;
		Read_Addr<="10";
		wait for Clock_p;
		Read_Addr<="11";
		wait for Clock_p;
		Read_Addr<="01";
		wait for Clock_p;
      wait;
   end process;

END;
