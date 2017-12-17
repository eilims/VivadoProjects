library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ClockCutter is
    Port ( I_CLK : in STD_LOGIC;
           O_CLK : out STD_LOGIC
          );
end ClockCutter;

architecture Behavioral of ClockCutter is
begin

    process (I_CLK)
    variable counter : integer := 0;

    variable CLK : STD_LOGIC := '0';
    begin
        if (I_CLK'event and I_CLK = '1') then
            if (counter < 500) then -- 500 for 48MHz input -> 48kHz output
                counter := counter + 1;
            else
                CLK := not CLK;
                counter := 1;
                
            end if;

        end if;

        O_CLK <= CLK;

    end process;

end Behavioral;
