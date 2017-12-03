----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/02/2017 08:05:40 PM
-- Design Name: Generic Binary Counter
-- Module Name: BinaryCounter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: A generic binary counter capable of asyncronous reset, external loading, up and down counting, and enable.
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

entity BinaryCounter is
    Generic (LENGTH :integer);
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           DIR : in STD_LOGIC;
           ENB : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (LENGTH - 1 downto 0);
           COUNT : out STD_LOGIC_VECTOR (LENGTH - 1 downto 0));
end BinaryCounter;

architecture Behavioral of BinaryCounter is

begin

    counting : process (CLK)
    variable currCount : integer := 0;
    begin
        --Check enable first
        if (ENB = '1') then
            --Check reset
            if (RST = '1') then
                currCount := 0;
                
            --Check load
            elsif (LOAD = '1') then
                currCount := to_integer(unsigned(DATA));
                
            --Regular counting                
            elsif (CLK'event and CLK = '1') then
                --DIR = '1' implies counting up
                if (DIR = '1') then
                    currCount := currCount + 1;
                    if (currCount = (2**LENGTH)) then
                        currCount := 0;
                    end if;
                    
                --DIR = '0' implies counting down
                else
                    currCount := currCount - 1;
                    if (currCount = -1) then
                        currCount := (2**LENGTH) - 1;
                    end if;
                
                end if;
            
            end if;
            COUNT <= std_logic_vector(to_unsigned(currCount, COUNT'length));
        end if;
    end process counting; 

end Behavioral;
