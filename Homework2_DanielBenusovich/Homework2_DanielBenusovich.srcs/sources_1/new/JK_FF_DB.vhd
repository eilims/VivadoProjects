----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: JK Asyncronous single bit Flip Flop           
--
-- Revision History:
--    17 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FF_DB is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           PRE : in STD_LOGIC;
           CLR : in STD_LOGIC;
           CLK : in STD_LOGIC;
           E : in STD_LOGIC;
           Q : out STD_LOGIC;
           NOTQ : out STD_LOGIC);

end JK_FF_DB;

architecture Behavioral of JK_FF_DB is

begin
 process(CLK, CLR, PRE)
 -- temp is used to store 
 variable temp : STD_LOGIC;
  begin
   if (rising_edge(CLR) and E = '1') then
    temp := '0';
   elsif (rising_edge(PRE)) then
    temp := '1';
   elsif (not rising_edge(CLK) and CLR = '0' and PRE = '0') then
    -- JK cases
    if (J = '0' AND K = '0') THEN
     temp := temp;
    elsif (J = '0' AND K = '1') THEN
     temp := '0';
    elsif (J = '1' AND K = '0') THEN
     temp := '1';
    elsif (J = '1' AND K = '1') THEN
     temp := not temp; 
    end if;
   end if;
   --final output assignment
   Q <= temp;
   NOTQ <= NOT temp; 
 end process;

end Behavioral;
