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


entity Shift_Register_DB is
    Port ( CLK, E : in STD_LOGIC;
           RST : in STD_LOGIC;
           PL : in STD_LOGIC;
           SL : in STD_LOGIC;
           RSL : in STD_LOGIC;
           LSL : in STD_LOGIC;
           DATAS : in STD_LOGIC;
           DATAP : in STD_LOGIC_VECTOR (3 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (3 downto 0));
end Shift_Register_DB;

architecture Behavioral of Shift_Register_DB is

shared variable data : STD_LOGIC_VECTOR (3 downto 0); 

begin

 normal:process(CLK, RST)
 begin    
  if (rising_edge(RST) and E = '1') then
       data := "0000";
  elsif (rising_edge(CLK) AND RST = '0' and E = '1') then 
   if (PL = '1') then
   --Parallel load
    data := DATAP;
   elsif (SL = '1') then
   -- Serial Load
    data(0) := data(1);
    data(1) := data(2);
    data(2) := data(3);
    data(3) := DATAS;
   elsif (RSL = '1') then
   --Right shift logical
    data(0) := data(1);
    data(1) := data(2);
    data(2) := data(3);
    data(3) := '0';
   elsif (LSL ='1') then
   --Left shift logical
    data(3) := data(2);
    data(2) := data(1);
    data(1) := data(0);
    data(0) := '0';
   end if;
  end if;
  DATAOUT <= data;
 end process normal;

end Behavioral;
