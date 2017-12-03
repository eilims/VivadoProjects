----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: Generic length loadable up counter with synchronous clear           
--
-- Revision History:
--    18 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity Up_Counter is
    Generic ( Length : integer);
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           LD : in STD_LOGIC;
           E : in STD_LOGIC;
           ENP, ENT : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (Length downto 0);
           RCO : out STD_LOGIC;
           CNT : out STD_LOGIC_VECTOR (Length downto 0));
           
end Up_Counter;

architecture Behavioral of Up_Counter is

begin
 process(CLK)
 
 variable count : integer := 0;
 variable carry : STD_LOGIC := '0';
 
 begin
 
  if (rising_edge(CLK) and E = '1' and ENP = '1' and ENT = '1') then
  
   -- Manual clear 
   if ( CLR = '1' ) then
    CNT <= std_logic_vector(to_unsigned(0, (Length + 1) ));
    count := 0;
    
   -- Load
   elsif (LD = '1') then
    CNT <= DATA;
    count := to_integer(unsigned(DATA));
    
   -- Counter auto reset
   elsif (count = ((2**(Length + 1)) -1)) then
    CNT <= std_logic_vector(to_unsigned(0, (Length + 1)));
    count := 0;
    RCO <= '0';
    
   -- Regular counting
   else
    count := count + 1;
    CNT <= std_logic_vector(to_unsigned(count, CNT'length));
    RCO <= '0';
    
    if (count = ((2**(Length + 1)) -1)) then
        RCO <= '1';
    
    end if;
    
   end if;
   
  end if; 
  
 end process;

end Behavioral;
