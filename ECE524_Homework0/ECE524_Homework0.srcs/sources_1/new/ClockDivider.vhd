----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/02/2017 07:12:49 PM
-- Design Name: Clock Divider
-- Module Name: ClockDivider - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Divides the incoming clock frequency by two
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

entity ClockDivider is
    Port ( CLK : in STD_LOGIC;
           CLKHALF : out STD_LOGIC);
end ClockDivider;

architecture Behavioral of ClockDivider is

begin

    divider: process(CLK)
    
    variable output : STD_LOGIC := '0';
    
    
    begin
        if(CLK'event and CLK = '1') then
            output := not output;
        end if;
        CLKHALF <= output;
    end process divider;

end Behavioral;
