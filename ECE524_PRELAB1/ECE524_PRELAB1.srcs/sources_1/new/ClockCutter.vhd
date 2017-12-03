----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2017 09:53:57 PM
-- Design Name: 
-- Module Name: ClockCutter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ClockCutter is
    Port ( I_CLK : in STD_LOGIC;
           O_CLK : out STD_LOGIC);
end ClockCutter;

architecture Behavioral of ClockCutter is

begin

    process (I_CLK)
    variable counter : integer := 0;
    variable CLK : STD_LOGIC := '0';
    begin
        if (I_CLK'event and I_CLK = '1') then
            if (counter < 50000000) then
                counter := counter + 1;
            else
                CLK := not CLK;
                counter := 1;
            end if;
        end if;
        O_CLK <= CLK;
    end process;

end Behavioral;
