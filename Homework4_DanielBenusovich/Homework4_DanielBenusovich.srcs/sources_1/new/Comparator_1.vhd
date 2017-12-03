----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Comparator_1 is
    Port ( I_X : in STD_LOGIC;
           I_Y : in STD_LOGIC;
           I_EQ : in STD_LOGIC;
           O_EQ : out STD_LOGIC);
end Comparator_1;

architecture Dataflow of Comparator_1 is

signal XY : STD_LOGIC;

begin

    XY <= I_X xnor I_Y;
    O_EQ <= XY and I_EQ;

end Dataflow;
