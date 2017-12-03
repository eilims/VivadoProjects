library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package Memory_3 is
    subtype byte is STD_LOGIC_VECTOR (7 downto 0);
    type FIFO_mem is array (0 to 63) of byte;
    type partial_prod_mem is array (0 to 3) of STD_LOGIC_VECTOR (7 downto 0);
    type RAM_16x8 is array (0 to 15) of byte;
end Memory_3;