----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2017 12:32:58 PM
-- Design Name: 
-- Module Name: NOT_2_DB_tb - Behavioral
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

entity NOT_2_DB_tb is
end;

architecture bench of NOT_2_DB_tb is

  component NOT_2_DB
      Port ( A : in STD_LOGIC;
             OUT0 : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC;
  signal OUT0: STD_LOGIC;

begin

  uut: NOT_2_DB port map ( A => A,
                           OUT0 => OUT0 );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <= '0';
    wait for 10 ns;
    A <= '1';
    wait for 10 ns;
    A <= '0';
    -- Put test bench stimulus code here

    wait;
  end process;


end;
