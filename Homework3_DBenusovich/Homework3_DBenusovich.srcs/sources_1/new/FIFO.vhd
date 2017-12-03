----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A Queue or FIFO data structure. Uses a circular pointer system that loops
-- around the array when placing in data. Will display full when the pointer and 
-- bottom point to the same location. Will not accept values once FULL can only 
-- dequeue at that point

-- Revision History
--   24 June 2017 (GRP 1) Originated-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Memory_3;

entity FIFO is
    Port ( CLK : in STD_LOGIC;
           RW : in STD_LOGIC;
           DATAIN : in STD_LOGIC_VECTOR (7 downto 0);
           FULL : out STD_LOGIC;
           DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
           DATA : buffer Memory_3.FIFO_mem);
end FIFO;

architecture Behavioral of FIFO is

signal check_full : STD_LOGIC := '0';

begin

 process (CLK)

 variable pointer, bottom : integer := 0;
 
 
 begin
 
  if (rising_edge(CLK)) then
  
   --RW = 0 read. RW = 1 write

    if (RW = '1' and check_full = '0') then
     DATAOUT <= "00000000";
     DATA(pointer) <= DATAIN;
     pointer := (pointer + 1) mod (DATA'length);
     
     if (bottom = pointer) then
      FULL <= '1';
      check_full <= '1';
     end if;
    
    elsif (RW = '0') then
    
     check_full <= '0';
     FULL <= '0';
     DATAOUT <= DATA(bottom);
     DATA(bottom) <= "00000000";
     bottom := (bottom + 1) mod (DATA'length); 
    
    end if;
  
   end if;
 
 end process;


end Behavioral;
