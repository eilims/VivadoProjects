----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A 8 bit "Serial Adder" Ripple Carry Adder. Structural format using full adders
--         Uses a FSM style to help ease into later FSM problems. 

-- Revision History
--   24 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sequence_Detector is
    Port ( CLK : in STD_LOGIC;
           DATAIN : in STD_LOGIC;
           SEQ1 : out STD_LOGIC;
           SEQ2 : out STD_LOGIC);
end Sequence_Detector;

architecture Behavioral of Sequence_Detector is

type STATE is (S00, S01, S02, S03);

signal CURRENT_STATE_1, CURRENT_STATE_2, NEXT_STATE_1, NEXT_STATE_2 : STATE := S00;

begin


    clocking: process(CLK)
    
    begin
    
     if(rising_edge(CLK)) then
      CURRENT_STATE_1 <= NEXT_STATE_1;
      CURRENT_STATE_2 <= NEXT_STATE_2;
    
     end if;
    
    end process clocking;
    
    
    state_change_1 : process (CURRENT_STATE_1, DATAIN)
    
    begin
    
     case CURRENT_STATE_1 is
      -- Detects sequence of 1110
      when S00 => 
      
       SEQ1 <= '0';
       
       if (DATAIN = '1') then
        NEXT_STATE_1 <= S01;
        
       end if;
       
      when S01 => 
      
        SEQ1 <= '0';
        
        if (DATAIN = '1') then
         NEXT_STATE_1 <= S02;
         
        else
         NEXT_STATE_1 <= S00;
         
        end if;      
 
      when S02 => 
      
         SEQ1 <= '0';
         
         if (DATAIN = '1') then
          NEXT_STATE_1 <= S03;
          
         else
           NEXT_STATE_1 <= S00;
           
         end if;
         
      when S03 => 
      
          if (DATAIN = '0') then
           SEQ1 <= '1';
           NEXT_STATE_1 <= S00;
           
          else
           SEQ1 <= '0';
          
          end if;         
             
     end case;
    
    end process state_change_1;
    
    
    state_change_2 : process (CURRENT_STATE_2, DATAIN)
        
     begin
        
     case CURRENT_STATE_2 is
         -- Detects sequence of 0110
         when S00 => 
         
          SEQ2 <= '0';
          
          if (DATAIN = '0') then
           NEXT_STATE_2 <= S01;
           
          end if;
          
         when S01 => 
         
           SEQ2 <= '0';
           
           if (DATAIN = '1') then
            NEXT_STATE_2 <= S02;
            
           end if;      
    
         when S02 => 
         
            SEQ2 <= '0';
            
            if (DATAIN = '1') then
             NEXT_STATE_2 <= S03;
             
            else
             NEXT_STATE_2 <= S00;
              
            end if;
            
         when S03 => 
         
             if (DATAIN = '0') then
              SEQ2 <= '1';
              NEXT_STATE_2 <= S00;
              
             else
              SEQ2 <= '0';
              NEXT_STATE_2 <= S00;
             
             end if;         
                
        end case;
        
        
        end process state_change_2;

end Behavioral;
