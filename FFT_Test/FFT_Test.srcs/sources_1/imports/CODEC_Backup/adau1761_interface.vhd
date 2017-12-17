----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Jonathan Midolo and Daniel Benusovich
-- 
-- Create Date: 11/22/2017 12:55:34 PM
-- Design Name: 
-- Module Name: adau1761_interface - Behavioral
-- Project Name: Guitar Tuner
-- Target Devices: ZedBoard
-- Tool Versions: Vivado 2017.3
-- Description: Was originally to do a lot more, but just creates a clock at 1/2
--              the projects 48MHz to send to the codec.
-- 
-- Dependencies: Based on the work of Mike Field <hamster@snap.net.nz>
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adau1761_interface is
    Port ( clk_48 : in  STD_LOGIC;
           codec_master_clk : out  STD_LOGIC);
end adau1761_interface;

architecture Behavioral of adau1761_interface is
   signal master_clk : std_logic := '0';
begin
   codec_master_clk <= master_clk;
   
process(clk_48)
   begin
      if rising_edge(clk_48) then
         master_clk <= not master_clk;
      end if;
   end process;
end Behavioral;
