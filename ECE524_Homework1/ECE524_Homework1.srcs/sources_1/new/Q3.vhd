----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2017 11:42:00 AM
-- Design Name: 
-- Module Name: Q3 - Behavioral
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

entity Q3 is
    Port ( CLK : in STD_LOGIC;
           DATA : out STD_LOGIC);
end Q3;

architecture Behavioral of Q3 is

begin

    process (CLK)
    variable count : integer := 3;
    begin
        if clk'event and clk = '1' then
            count := count + 1;
            DATA <= '0';
            if count mod 4 = 0 then
                DATA <= '1';
                DATA <= '0' after 10 ns;
                count := 0;
            end if;
        end if;
    end process;

end Behavioral;
