----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: Partial product generator

-- Revision History
--   24 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std;
use work.Memory_3;


entity MULTIPLIER_AND_ARRAY is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           DATA : out Memory_3.partial_prod_mem);
end MULTIPLIER_AND_ARRAY;



architecture Behavioral of MULTIPLIER_AND_ARRAY is

begin

 process (A ,B)
 
 variable temp : STD_LOGIC_VECTOR (7 downto 0);
 
 begin
 
  for i in 0 to (DATA'length - 1) loop
   temp := "00000000";
   for o in 0 to (DATA'length - 1) loop
    temp(o + i) := A(o) and B(i);
    DATA(i) <= temp;
   end loop;
   
  
  end loop;
 
 end process;


end Behavioral;
