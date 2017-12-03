----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2017 12:58:17 PM
-- Design Name: 
-- Module Name: Q8 - Behavioral
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

entity Q8 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out integer range 0 to 2**9);
end Q8;

architecture Behavioral of Q8 is

    signal a, b, c : integer range 0 to 2**9;
    
begin

    process (clk, reset)
    begin
        if reset = '1' then
            b <= 1;
            c <= 0;
        elsif (clk'event and clk = '1') then
            c <= b;
            b <= a;
        end if;
        a <= b + c;
    end process;
    
    output <= c;
    
    
end Behavioral;
