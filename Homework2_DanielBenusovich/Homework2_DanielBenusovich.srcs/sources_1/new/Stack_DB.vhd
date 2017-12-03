----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: Stack Data Structure. 16x8 size. 16 words each word is 8 bits long.
-- Can pop or push depending on RW (0 => Write 1 => Read) one word per cycle
-- Full bit goes high when all memory slots are filled
--
-- Revision History:
--    20 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Memory;

entity Stack_DB is
    
    Port ( CLK : in STD_LOGIC;
           RW : in STD_LOGIC;
           CLR : in STD_LOGIC; 
           E : in STD_LOGIC;
           DATAIN : in STD_LOGIC_VECTOR (7 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
           DATA : buffer Memory.mem_16x8;
           FULL : out STD_LOGIC);
end Stack_DB;


architecture Behavioral of Stack_DB is


begin
 Stack: process(CLK, CLR)
 variable stack_pointer : integer := 0;
 begin
  if (rising_edge(CLR) and E = '1') then
   stack_pointer := 0;
   DATAOUT <= "00000000";
   DATA <= (others => (others => '0'));
   
  elsif (rising_edge(CLK) and CLR = '0' and E = '1') then
  
  --Write = 0
   if (RW = '0') then 
   
    --ensure no failure to access, cannot go beyond max length of array
    if (stack_pointer < DATA'length) then
     DATA(stack_pointer) <= DATAIN;
     stack_pointer := stack_pointer + 1;
    end if;
    
   -- Read = 1
   elsif (RW = '1') then
   
    -- ensure no failure to access, cannot go below 0 on array
    if (stack_pointer > 0) then
     stack_pointer := stack_pointer - 1;
     DATAOUT <= DATA(stack_pointer);
     DATA(stack_pointer) <= "00000000";
    end if;
    
   end if;
   
   --Set Full bit check at end
   --Prettier and more readable this way
   if (stack_pointer >= DATA'length) then
    FULL <= '1';
   else
    FULL <= '0';
   end if;
   
  end if;
 end process Stack;

end Behavioral;
