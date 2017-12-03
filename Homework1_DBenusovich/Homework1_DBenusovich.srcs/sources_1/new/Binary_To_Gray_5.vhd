----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A binary to gray code 5-bit converter

-- Revision History
--   11 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Binary_To_Gray_5 is
    Port ( IN0 : in STD_LOGIC_VECTOR (4 downto 0);
           OUT0 : out STD_LOGIC_VECTOR (4 downto 0));
end Binary_To_Gray_5;

architecture Behavioral of Binary_To_Gray_5 is

begin
 process(in0)
  begin
   OUT0(0) <= IN0(0) xor IN0(1);
   OUT0(1) <= IN0(1) xor IN0(2);
   OUT0(2) <= IN0(2) xor IN0(3);
   OUT0(3) <= IN0(3) xor IN0(4);
   OUT0(4) <= IN0(4);
 end process;
end Behavioral;
