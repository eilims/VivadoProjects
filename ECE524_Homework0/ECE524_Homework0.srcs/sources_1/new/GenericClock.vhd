----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/06/2017 02:24:32 PM
-- Design Name: 
-- Module Name: GenericClock - Behavioral
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

entity GenericClock is
    Generic ( PERIOD : time;
              DUTY_CYCLE : integer);
    Port ( CLK : out STD_LOGIC);
end GenericClock;

architecture Behavioral of GenericClock is

begin

    process
    begin
        for i in 0 to DUTY_CYCLE - 1 loop
            CLK <= '0';
            wait for PERIOD / 2;
            CLK <= '1';
            wait for PERIOD / 2;
        end loop;
    end process;

end Behavioral;
