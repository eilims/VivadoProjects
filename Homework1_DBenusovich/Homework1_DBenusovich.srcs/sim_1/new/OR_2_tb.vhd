----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2017 11:28:12 PM
-- Design Name: 
-- Module Name: OR_2_tb - Behavioral
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

entity OR_2_DB_tb is
end;

architecture bench of OR_2_DB_tb is

  component OR_2_DB
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             out0 : out STD_LOGIC);
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal out0: STD_LOGIC;

begin

  uut: OR_2_DB port map ( a => a,
                          b => b,
                          out0 => out0 );

  stimulus: process
  begin
  
    -- Put initialisation code here
    a<= '0';
    b<= '0';
    wait for 10 ns;
    a<= '0';
    b<= '1';
    wait for 10 ns;
    a<= '1';
    b<= '0';
    wait for 10 ns;
    a<= '1';
    b<= '1';
    wait for 10 ns;
    a<= '0';
    b<= '0';
    wait for 10 ns;


    -- Put test bench stimulus code here

    wait;
  end process;


end;