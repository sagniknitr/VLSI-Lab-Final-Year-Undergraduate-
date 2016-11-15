LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

USE ieee.numeric_std.ALL;
 

ENTITY Rom_8_tb IS
END Rom_8_tb;
 

ARCHITECTURE behavior OF Rom_8_tb IS 
 
    
-- Component Declaration for the Unit Under Test (UUT)
 
    
COMPONENT Rom_8
    PORT(
         
clk : IN  std_logic;
         
reset : IN  std_logic;
         
en : IN  std_logic;
         
read1 : IN  std_logic;
         
address : IN  std_logic_vector(4 downto 0);
         
data : OUT  std_logic_vector(7 downto 0)
        );
    
END COMPONENT;
    

   
--Inputs
   
signal clk : std_logic := '0';
   
signal reset : std_logic := '0';
   
signal en : std_logic := '0';
   
signal read1 : std_logic := '0';
   
signal address : std_logic_vector(4 downto 0) := (others => '0');

         
--Outputs
   
signal data : std_logic_vector(7 downto 0);

   
-- Clock period definitions
   
constant clk_period : time := 10 ns;
 

BEGIN
 
        
-- Instantiate the Unit Under Test (UUT)
   
uut: Rom_8 PORT MAP (
          
clk => clk,
          
reset => reset,
          
en => en,
          
read1 => read1,
          
address => address,
          
data => data
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
                
read1 <= '0';
                
en <= '0';        
        
      
-- hold reset state for 100 ns.
      
wait for 100 ns;
       
reset <= '0';                
                
read1 <= '1';
                
en <= '1';
     
address <="00001";
      
wait for clk_period*10;
                
                 
       
address <="00010";
                 
wait for clk_period*10;
                  
                 
       
address <="00011";
                 
wait for clk_period*10;
                  
                 
       
address <="00100";
                 
wait for clk_period*10;
                 
                 
       
address <="00101";
                 
wait for clk_period*10;
                  
       
address <="00111";

    
    
wait;

  
end process;


END;