----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: An AND gate with 2-inputs and 1-output. A practice problem for VHDL

-- Revision History
--   9 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_DB is

 Port ( A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC);
       
end AND_DB;

architecture Behavioral of AND_DB is
 begin
 process(A,B)
  begin
   if(A = '1') AND (B = '1') then
    Z <= '1';
   else
    Z <= '0';
   end if;
 end process;
end Behavioral;
