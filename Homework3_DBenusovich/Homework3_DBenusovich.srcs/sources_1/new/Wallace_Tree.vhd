----------------------------------------------------------------------------------
-- Engineer: Daniel Benusovich
-- Student ID: 106278781
-- Professor: Ramin Roosta
-- Class: ECE 420 CSUN

-- Module: A wallace tree multiplier for 4 bits. Outputs 8 bits

-- Revision History
--   25 June 2017 (GRP 1) Originated
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use work.Memory_3;

entity Wallace_Tree is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Result : out STD_LOGIC_VECTOR (7 downto 0));
end Wallace_Tree;

architecture Structural of Wallace_Tree is

    component MULTIPLIER_AND_ARRAY
    
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               DATA : out Memory_3.partial_prod_mem);
           
    end component;
    
    
    component CSA
    
        Generic (Length : integer);
        Port ( A : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
               B : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
               C : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
               Carry : out STD_LOGIC_VECTOR ((Length) downto 0);
               Result : out STD_LOGIC_VECTOR ((Length - 1) downto 0));
               
    end component;
    
    component CPA 
        Generic ( ALength : integer;
                  BLength : integer);
        Port ( A : in STD_LOGIC_VECTOR (ALENGTH downto 0);
               B : in STD_LOGIC_VECTOR (BLength downto 0);
               Cout : buffer STD_LOGIC_VECTOR (ALENGTH downto 0);
               Result : out STD_LOGIC_VECTOR (ALENGTH downto 0));
    end component;

signal DATA : Memory_3.partial_prod_mem;
signal sum012, sum0123 : STD_LOGIC_VECTOR (3 downto 0);
signal carry012 : STD_LOGIC_VECTOR (4 downto 0);
signal carry0123 : STD_LOGIC_VECTOR (7 downto 0);
signal carrycpa : STD_LOGIC_VECTOR (carry0123'length downto 0);

begin

U1 : MULTIPLIER_AND_ARRAY port map (A => A,
                                    B => B,
                                    DATA => DATA);

U2: CSA generic map     (  Length => 4)
        port map         ( A => DATA(0),
                           B => DATA(1),
                           C => DATA(2),
                           Carry => carry012,
                           Result => sum012);    
                           
                            
U3: CSA generic map     ( Length => 5)
        port map        ( A => carry012,
                          B => sum012,
                          C => DATA(3),
                          Carry => carry0123,
                          Result => sum0123); 
                          
U4 : CPA generic map (  ALength => carry0123'length,
                        BLength => sum0123'length)
         port map    (  A => carry0123,
                        B => sum0123,
                        Cout => carrycpa,
                        result => result);


end Structural;
