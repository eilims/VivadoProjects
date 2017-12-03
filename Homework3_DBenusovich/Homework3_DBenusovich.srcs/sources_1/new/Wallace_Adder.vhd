----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A wallace adder, the component that simplifies the results of the partial products
--         and outputs the addition results

-- Revision History
--   25 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Memory_3;

entity Wallace_Adder is
    Port ( A : in Memory_3.partial_prod_mem;
           RESULT : out STD_LOGIC_VECTOR (7 downto 0));
end Wallace_Adder;

architecture Structural of Wallace_Adder is

component FULL_ADDER_1 is 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           OUT0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component; 

signal holder : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin

  U1: Full_Adder_1 port map (   A => A(0), 
                                B => B(0),
                                Cin => '0',
                                OUT0 => Result(0),
                                Cout => carry(0));



end Structural;
