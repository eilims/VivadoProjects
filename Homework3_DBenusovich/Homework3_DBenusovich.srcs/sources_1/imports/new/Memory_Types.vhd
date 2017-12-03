library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package Memory is
    type mem_8x64 is array(0 to 7) of STD_LOGIC_VECTOR (0 to 63); 
    type mem_16x8 is array (0 to 16) of STD_LOGIC_VECTOR (7 downto 0);
end Memory;
