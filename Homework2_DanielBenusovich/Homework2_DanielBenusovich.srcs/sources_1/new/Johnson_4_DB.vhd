----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: 8x64 Sync. RAM module        
--
-- Revision History:
--    17 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity Johnson_4_DB is
    Port ( R : in STD_LOGIC;
           CLK, E : in STD_LOGIC;
           RCO : out STD_LOGIC;
           CNT : out STD_LOGIC_VECTOR (3 downto 0));
end Johnson_4_DB;

architecture Behavioral of Johnson_4_DB is

begin
 process(CLK)
 variable count : integer := 0;
 variable output : STD_LOGIC := '0';
  begin
   if (rising_edge(CLK) and E = '1') then
    if (R = '1') then
     CNT <= "0000";
    else
     if (count = 0) then
      CNT <= "1000";
      count := count + 1;
     elsif (count = 1) then
      CNT <= "0100";
      count := count + 1;
     elsif (count = 2) then
      CNT <= "0010";
      count := count + 1;
     elsif (count = 3) then
      CNT <= "0001";
      count := count + 1;
      output := output xor '1';
      RCO <= output;
     else
      CNT <= "0000";
      count := 0;
     end if;
    end if;
   end if;
 end process;

end Behavioral;
