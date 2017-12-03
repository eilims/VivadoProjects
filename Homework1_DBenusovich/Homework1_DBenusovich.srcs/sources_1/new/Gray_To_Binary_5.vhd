----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: Gray Code to Binary 5-bit converter

-- Revision History
--  11 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gray_To_Binary_5 is
    Port ( IN0 : in STD_LOGIC_VECTOR (4 downto 0);
           OUT0 : out STD_LOGIC_VECTOR (4 downto 0));
end Gray_To_Binary_5;

architecture Behavioral of Gray_To_Binary_5 is

begin
process(in0)
 begin
  out0(0) <= in0(0) xor in0(1) xor in0(2) xor in0(3) xor in0(4);
  out0(1) <= in0(1) xor in0(2) xor in0(3) xor in0(4);
  OUT0(2) <= in0(2) xor in0(3) xor in0(4);
  out0(3) <= in0(3) xor in0(4);
  out0(4) <= in0(4);
  
 end process;
end Behavioral;
