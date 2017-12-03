----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A 4x1 multiplexor 

-- Revision History
--   11 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4_DB is
    Port ( in0 : in STD_LOGIC_VECTOR (0 to 3);
           S1: in STD_LOGIC;
           S2: in STD_LOGIC;
           OUT0 : out STD_LOGIC);
end MUX_4_DB;

architecture Structural of MUX_4_DB is
--Declare Components
component AND_DB is
 Port ( A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC);
end component;

component NOT_2_DB is
    Port ( A : in STD_LOGIC;
           OUT0 : out STD_LOGIC);
end component;

component OR_2_DB is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           OUT0 : out STD_LOGIC);
end component;

-- Declare Signals
signal t0, t01, t1, t2, t3, t4, t5, t6, t7, t8 : STD_LOGIC; 

 begin
  U0 : NOT_2_DB port map (s2, t0); 
  U01: NOT_2_DB port map (s1, t01);
  U1 : AND_DB port map (in0(0), t0, t1);
  U2 : AND_DB port map (in0(1), S2, t2);
  U3 : AND_DB port map (in0(2), t0, t3);
  U4 : AND_DB port map (in0(3), S2, t4);
  U5 : OR_2_DB port map (t1, t2, t5);
  U6 : OR_2_DB port map (t3, t4, t6);
  U7 : AND_DB port map (t5, t01, t7);
  U8 : AND_DB port map (t6, S1, t8);
  U9 : OR_2_DB port map (t7, t8, out0);

end Structural;

--architecture Dataflow of MUX_4_DB is
-- begin
--  out0 <= in0(0) when (S1 = '0') and (s2 = '0') 
--  else in0(1) when (S1 = '0') and (s2 = '1')
--  else in0(2) when (S1 = '1') and (s2 = '0')
--  else in0(3) when (S1 = '1') and (s2 = '1') else '0';
--end Dataflow;

--architecture Behavioral of MUX_4_DB is

--begin
-- process(in0,S1,S2)
--  begin
--   if (S1 = '0') and (S2 = '0') then
--    out0 <= in0(0);
--   elsif (S1 = '0') and (S2 = '1') then
--    out0 <= in0(1);
--   elsif (S1 = '1') and (S2 = '0') then
--    out0 <= in0(2); 
--   else
--    out0 <= in0(3);
--   end if;
--  end process;
--end Behavioral;




