----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2017 01:35:32 PM
-- Design Name: 
-- Module Name: led_controller - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_controller is
    Generic (   Index_Length : Integer);
          
    Port (  clk : in STD_LOGIC;
            i_valid : in STD_LOGIC;
            i_index : in STD_LOGIC_VECTOR ((Index_Length - 1) downto 0);
            o_led : out STD_LOGIC_VECTOR (7 downto 0) := "00000000");
end led_controller;

architecture Behavioral of led_controller is

begin

    LED_CONTROL : process (clk)
        variable counter : integer := 0;
        variable index : integer := 0;
        variable current_led : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    begin
        if (rising_edge(clk)) then
            if (i_valid = '1') then
                index := to_integer(unsigned(i_index));
                case index is
                
                    --82.41Hz
                    when 10 =>
                        current_led := "10000000";
                    when 11 =>
                        current_led := "01000000";
                    when 12 =>
                        current_led := "00100000";
                    when 13 =>
                        current_led := "00011000";
                    when 14 =>
                        current_led := "00000100";
                    when 15 =>
                        current_led := "00000010";
                    when 16 =>
                        current_led := "00000001";
                        
                    --110.00Hz
                    --these go to the lower frequency
--                    when 15 =>
--                        current_led := "10000000";
--                    when 16 =>
--                        current_led := "01000000";
                    when 17 =>
                        current_led := "00100000";
                    when 18 =>
                        current_led := "00011000";
                    when 19 =>
                        current_led := "00000100";
                    when 20 =>
                        current_led := "00000010";
                    when 21 =>
                        current_led := "00000001";
                        
                    --146.83Hz
                    when 22 =>
                        current_led := "10000000";
                    when 23 =>
                        current_led := "01000000";
                    when 24 =>
                        current_led := "00100000";
                    when 25 =>
                        current_led := "00011000";
                    when 26 =>
                        current_led := "00000100";
                    when 27 =>
                        current_led := "00000010";
                    when 28 =>
                        current_led := "00000001";
                        
                    --196Hz
                    when 30 =>
                        current_led := "10000000";
                    when 31 =>
                        current_led := "01000000";
                    when 32 =>
                        current_led := "00100000";
                    when 33 =>
                        current_led := "00011000";
                    when 34 =>
                        current_led := "00000100";
                    when 35 =>
                        current_led := "00000010";
                    when 36 =>
                        current_led := "00000001";
                        
                    --246.94Hz
                    when 39 =>
                        current_led := "10000000";
                    when 40 =>
                        current_led := "01000000";
                    when 41 =>
                        current_led := "00100000";
                    when 42 =>
                        current_led := "00011000";
                    when 43 =>
                        current_led := "00000100";
                    when 44 =>
                        current_led := "00000010";
                    when 45 =>
                        current_led := "00000001";
                        
                    --329.63Hz
                    when 53 =>
                        current_led := "10000000";
                    when 54 =>
                        current_led := "01000000";
                    when 55 =>
                        current_led := "00100000";
                    when 56 =>
                        current_led := "00011000";
                    when 57 =>
                        current_led := "00000100";
                    when 58 =>
                        current_led := "00000010";
                    when 59 =>
                        current_led := "00000001";
                            
                   --Others is here have no fear 
                    when others =>
                        current_led := current_led;
                end case;
                
                o_led <= current_led;
            else
                o_led <= current_led;    
            end if;
        end if;
    end process;

end Behavioral;
