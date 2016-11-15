
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;



-- Uncomment the following library declaration if using

-- arithmetic functions with Signed or Unsigned values

--use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.

--library UNISIM;

--use UNISIM.VComponents.all;


entity Rom_8 is
    
Port ( clk,reset,en,read1 : in  STD_LOGIC;
         
address : in STD_LOGIC_VECTOR(4 downto 0);
            
           
data : out  STD_LOGIC_VECTOR(7 downto 0));

end Rom_8;


architecture Behavioral of Rom_8 is

       
type ROM_arr is array(0 to 31) of std_logic_vector(7 downto 0);

constant content:ROM_arr:=(
                                                                        
0=>"00000001",
                                                                        
1=>"00000011",
                                                                       
 2=>"00000111",
                                                                        
3=>"00001111",
                                                                        
4=>"00011111",
                                                                        
5=>"00111111",
                                                                        
6=>"01111111",
                                                                        
7=>"11111111",
                                                                        
others=>"00000000"
 );



begin

 process(clk,reset,en,read1,address)

begin
        
if reset='1' then 
data<="ZZZZZZZZ";
        
elsif clk'event and clk='1' then 
                
if en='1' then
                        
if read1='1' then 
                                
data<=content(conv_integer(address));
                        
else
                                
data<="ZZZZZZZZ";
                        
end if;
                
end if;
        
end if;

end process;


end Behavioral;