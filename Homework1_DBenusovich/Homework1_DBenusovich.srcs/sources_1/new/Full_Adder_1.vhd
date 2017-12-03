----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A one bit full adder

-- Revision History
--   11 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           OUT0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Full_Adder_1;

architecture Structural of Full_Adder_1 is

--Declare components
component MUX_4_DB is
    Port ( in0 : in STD_LOGIC_VECTOR (0 to 3);
           S1: in STD_LOGIC;
           S2: in STD_LOGIC;
           OUT0 : out STD_LOGIC);
end component;

--Declare signals
signal inCout, inOut0 : std_logic_vector (0 to 3);

begin
inCout(0) <= A;
inCout(1) <= Cin;
inCout(2) <= Cin;
inCout(3) <= A;
inout0(0) <= cin;
inout0(1) <= not Cin;
inout0(2) <= not Cin;
inout0(3) <= cin;

U0 : MUX_4_DB port map (inCout, A, B, Cout);
U1 : MUX_4_DB port map (inout0, A, B, out0);

end Structural;
