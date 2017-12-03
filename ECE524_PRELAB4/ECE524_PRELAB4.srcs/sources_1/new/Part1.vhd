----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/26/2017 06:21:44 PM
-- Design Name: 
-- Module Name: Part1 - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

entity Part1 is
    Port ( P0 : in signed(7 downto 0);
           P1 : in signed(7 downto 0);
           alpha : in signed(7 downto 0);
           Pout : out signed(15 downto 0));
end Part1;

architecture Behavioral of Part1 is

signal P2, P3 : signed(15 downto 0);

begin
     P2 <= (P0 * alpha);
     P3 <= ((127-alpha) * P1);
     Pout <= P2 + P3; 

end Behavioral;
