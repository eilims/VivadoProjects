----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: An AND gate with 2-inputs and 1-output. A practice problem for VHDL

-- Revision History
--   10 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_2_DB is
    Port ( A : in STD_LOGIC;
           OUT0 : out STD_LOGIC);
end NOT_2_DB;

architecture Behavioral of NOT_2_DB is

begin
 process(A)
  begin
   out0 <= NOT a;
  end process;
end Behavioral;
