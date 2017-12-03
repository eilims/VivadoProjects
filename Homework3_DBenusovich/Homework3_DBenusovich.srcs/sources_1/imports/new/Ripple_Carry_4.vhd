----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A 4 bit ripple carry adder

-- Revision History
--   11 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Ripple_Carry_4 is
    Port ( in0 : in STD_LOGIC_VECTOR (3 downto 0);
           in1 : in STD_LOGIC_VECTOR (3 downto 0);
           out0 : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end Ripple_Carry_4;

architecture Structural of Ripple_Carry_4 is

--Declare components
component Full_Adder_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           OUT0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

--Declare signals
signal c0, c1, c2 : STD_LOGIC;

begin
u0 : Full_Adder_1 port map (in0(0), in1(0), '0', out0(0), c0);
u1 : Full_Adder_1 port map (in0(1), in1(1), c0, out0(1), c1);
u2 : Full_Adder_1 port map (in0(2), in1(2), c1, out0(2), c2);
u3 : Full_Adder_1 port map (in0(3), in1(3), c2, out0(3), Cout);

end Structural;
