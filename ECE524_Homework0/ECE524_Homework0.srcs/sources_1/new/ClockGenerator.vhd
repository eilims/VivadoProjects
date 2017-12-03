----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/03/2017 06:21:41 PM
-- Design Name: Generic Clock Generator
-- Module Name: ClockGenerator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Takes in a generic time period and a generic integer and produces the requested integer counts of clock cycles. 
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


entity ClockGenerator is
    Generic ( PERIOD : time;
              NUM_CYCLES : integer);  
    Port ( CLK, COMPLETE : out STD_LOGIC);
end ClockGenerator;

architecture Behavioral of ClockGenerator is

begin

    process
    begin
        COMPLETE <= '0'; 
        for i in 0 to (NUM_CYCLES - 1) loop
            CLK <= '0';
            wait for PERIOD / 2; 
            CLK <= '1';
            wait for PERIOD / 2;
        end loop;
        CLK <= '0';
        COMPLETE <= '1';
        wait for PERIOD;
    end process;

end Behavioral;
