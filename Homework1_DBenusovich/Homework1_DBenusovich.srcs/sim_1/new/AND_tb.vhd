----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2017 09:58:55 PM
-- Design Name: 
-- Module Name: AND_tb - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity AND_DB_tb is
end;

architecture bench of AND_DB_tb is

  component AND_DB
   Port (A :in STD_LOGIC;
         B :in STD_LOGIC;
         Z :out STD_LOGIC);
  end component;

  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal Z: STD_LOGIC ;

begin

  uut: AND_DB port map ( A => A,
                         B => B,
                         Z => Z );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <= '0';
    B <= '0';
    wait for 10 ns;
    A <= '0';
    B <= '1';
    wait for 10 ns;
    A <= '1';
    B <= '0';
    wait for 10 ns;
    A <= '1';
    B <= '1';
    wait for 10 ns;  
    A <= '0';
    B <= '0';
    wait for 10 ns;
    -- Put test bench stimulus code here

    wait;
  end process;


end;