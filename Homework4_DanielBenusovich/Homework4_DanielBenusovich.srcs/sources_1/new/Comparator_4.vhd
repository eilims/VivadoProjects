----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: Generic Comparator. Only outputs whether or not the inputs are equal        
--
-- Revision History:
--    30 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Comparator_4 is
    Generic (Length : integer);
    Port ( I_X : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           I_Y : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           O_EQ : out STD_LOGIC);
end Comparator_4;

architecture Structural of Comparator_4 is

component Comparator_1
    Port ( I_X : in STD_LOGIC;
       I_Y : in STD_LOGIC;
       I_EQ : in STD_LOGIC;
       O_EQ : out STD_LOGIC);

end component;

--Concatanate 1 at the end to start the comparator process correctly
signal I_EQ : STD_LOGIC_VECTOR (Length downto 0) := (std_logic_vector(to_unsigned(0 , Length) & '1'));

begin

    -- Generates all needed comparators and assigns output to I_EQ
    Comparator_Array : for i in 0 to (Length - 1) generate
    
        UCOMP  : Comparator_1 port map (    I_X => I_X(i),
                                            I_Y => I_Y(i),
                                            I_EQ => I_EQ(i),
                                            O_EQ => I_EQ(i + 1));
                                            
          
        
    end generate;

    --Assign final value for output
    O_EQ <= I_EQ(Length);


end Structural;
