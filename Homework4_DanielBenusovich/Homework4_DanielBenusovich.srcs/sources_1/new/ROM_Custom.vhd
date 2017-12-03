----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ROM_Custom is
    Port ( I_ADDR : in STD_LOGIC_VECTOR (3 downto 0);
           O_DATA : out STD_LOGIC_VECTOR (3 downto 0) := std_logic_vector(to_unsigned(0, 4)));
end ROM_Custom;

architecture Behavioral of ROM_Custom is

--Types
type MEM is array (0 to 15) of std_logic_vector (3 downto 0);

--Components

--Signals
signal memory : MEM := (x"0",x"1",x"2",x"3",x"4",x"5",x"6",x"7",x"8",x"9",x"a",x"b",x"c",x"d",x"e",x"f");

begin

    O_DATA <= memory(to_integer(unsigned(I_ADDR)));

end Behavioral;
