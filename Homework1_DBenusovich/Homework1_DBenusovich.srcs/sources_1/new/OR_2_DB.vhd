----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: An OR gate with 2-inputs and 1-output. A practice problem for VHDL

-- Revision History
--   9 June 2017 (GRP 1) Originated


----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_2_DB is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           OUT0 : out STD_LOGIC);
end OR_2_DB;

architecture Behavioral of OR_2_DB is
begin
 process(a,b)
  begin
   if (a = '1') OR (b = '1') then
    OUT0 <= '1';
   else
    OUT0 <= '0';
   end if;
  end process;
 end Behavioral;
