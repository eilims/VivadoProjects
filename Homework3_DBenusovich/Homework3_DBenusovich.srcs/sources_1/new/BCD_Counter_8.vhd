----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: 8 bit BCD counter, each digit is its own 4 bits => 11 = 0001 0001 etc. 

-- Revision History
--   24 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


entity BCD_Counter_8 is
    Port ( E : in STD_LOGIC;
           CLK : in STD_LOGIC;
           ENP : in STD_LOGIC;
           ENT : in STD_LOGIC;
           RST : in STD_LOGIC;
           BCD : out STD_LOGIC_VECTOR (7 downto 0));
end BCD_Counter_8;

architecture Behavioral of BCD_Counter_8 is

 type STATE is (COUNT_MODE, RESET);
 signal CURRENT_STATE: STATE := RESET;
 signal NEXT_STATE : STATE := COUNT_MODE;
 
 begin
 
  clocking : process(CLK, RST)
  
  begin
   if (rising_edge(RST)) then
    CURRENT_STATE <= RESET;
   elsif (rising_edge(CLK) and RST = '0') then
    CURRENT_STATE <= NEXT_STATE;
   end if;
  end process clocking;
  
  machine : process (CLK, CURRENT_STATE)
  
  variable count : integer := 0;
  variable count_bin : STD_LOGIC_VECTOR (7 downto 0);
  variable upper_digit, lower_digit : integer;
  
  begin
  
   count_bin := std_logic_vector(to_unsigned(count, count_bin'LENGTH));
   if (ENT = '1' and ENP = '1') then
   
       case CURRENT_STATE is
       
        when COUNT_MODE => 
         
         lower_digit := count mod 10;
         upper_digit := count / 10;
         count_bin (3 downto 0) := std_logic_vector(to_unsigned(lower_digit, 4));
         count_bin (7 downto 4) := std_logic_vector(to_unsigned(upper_digit, 4));
         BCD <= count_bin;
         
         if (count < 99) then 
          count := count + 1;
          NEXT_STATE <= COUNT_MODE;
          
         else
          NEXT_STATE <= RESET;   
          
         end if;
        
        when RESET =>
         count := 0;
         BCD <= "00000000";
         NEXT_STATE <= COUNT_MODE;
         
       end case;
   
   end if;
  end process machine;

end Behavioral;
