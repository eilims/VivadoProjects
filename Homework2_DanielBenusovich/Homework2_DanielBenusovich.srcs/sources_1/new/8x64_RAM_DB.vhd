----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: 8x64 Sync. RAM module        
--
-- Revision History:
--    17 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.Memory;

entity DB_8x64_RAM is
    Port ( CLK : in STD_LOGIC;
           DATAIN : in STD_LOGIC_VECTOR (63 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (63 downto 0);
           ADR : in STD_LOGIC_VECTOR (0 to 2);
           RW : in STD_LOGIC;
           E : in STD_LOGIC;
           STORE : buffer Memory.mem_8x64);
end DB_8x64_RAM;

architecture Behavioral of DB_8x64_RAM is

begin
 process(CLK)
 variable temp : integer;
  begin
   if (rising_edge(CLK)) then 
    -- Read = 0, Write = 1
    if (RW = '1') then
     temp := to_integer(unsigned(ADR));
     STORE(temp) <= DATAIN;
     DATAOUT <= std_logic_vector(to_unsigned(0, 64));
    else
     temp := to_integer(unsigned(ADR));
     DATAOUT <= STORE(temp);
    end if;
   end if;
 end process;

end Behavioral;
