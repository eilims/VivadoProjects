----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A 2x4 decoder

-- Revision History
--   11 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEC_2_DB is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           OUT0 : out std_logic_vector (0 to 3));
end DEC_2_DB;

architecture Structural of DEC_2_DB is
 --Define components
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
 
 --Define Signals
 signal nota, notb : STD_LOGIC; 
 
 begin
  U0 : NOT_2_DB port map (A, nota);
  U1 : NOT_2_DB port map (B, notb);
  U2 : AND_DB port map (nota, notb, out0(0));
  U3 : AND_DB port map (nota, b, out0(1));
  U4 : AND_DB port map (a, notb, out0(2));
  U5 : AND_DB port map (a, b, out0(3));
  
end Structural;

--architecture Dataflow of DEC_2_DB is
-- begin 
--     out0(0) <= '1' when (A = '0') AND (B = '0') else '0';
--     out0(1) <= '1' when (A = '0') AND (B = '1') else '0';
--     out0(2) <= '1' when (A = '1') AND (B = '0') else '0';
--     out0(3) <= '1' when (A = '1') AND (B = '1') else '0';
--end Dataflow;

--architecture Behavioral of DEC_2_DB is

--begin
-- process(A,B)
--  begin
--   if (a ='0') and (b='0') then
--    out0(0) <= '1';
--    out0(1) <= '0';
--    out0(2) <= '0';
--    out0(3) <= '0';
--   elsif (a ='0') and (b='1') then
--    out0(0) <= '0';
--    out0(1) <= '1';
--    out0(2) <= '0';
--    out0(3) <= '0';
--   elsif (a ='1') and (b='0') then
--    out0(0) <= '0';
--    out0(1) <= '0';
--    out0(2) <= '1';
--    out0(3) <= '0';
--   else
--    out0(0) <= '0';
--    out0(1) <= '0';
--    out0(2) <= '0';
--    out0(3) <= '1';
--   end if;
--  end process;
--end Behavioral;
