----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: SR Asyncronous single bit Flip Flop           
--
-- Revision History:
--    17 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SR_FF_DB is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           PRE : in STD_LOGIC;
           CLR : in STD_LOGIC;
           CLK : in STD_LOGIC;
           E : in STD_LOGIC;
           Q : out STD_LOGIC;
           NOTQ : out STD_LOGIC);
end SR_FF_DB;

architecture Behavioral of SR_FF_DB is

begin
 process(CLK)
  variable temp : STD_LOGIC; 
  begin
   if (rising_edge(PRE)) then
    temp := '1';
   elsif (rising_edge(CLR)) then
    temp := '0';
   elsif (not rising_edge(CLK) and E = '1' and PRE = '0' and CLR = '0') then
    -- SR COMBINATIONS
    if (S = '0' AND R = '1') then
     temp := '0';
    elsif (S = '1' AND R = '0') then
     temp := '1';
    elsif (S = '0' AND R = '0') then
     temp := temp;
    elsif (S = '1' AND R = '1') then
     temp := 'U';
    end if;
   end if;
   Q <= temp;
   NOTQ <= not temp; 
  end process; 


end Behavioral;
