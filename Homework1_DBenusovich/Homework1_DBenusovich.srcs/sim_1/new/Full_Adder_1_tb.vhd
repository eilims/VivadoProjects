----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2017 04:34:34 PM
-- Design Name: 
-- Module Name: Full_Adder_1_tb - Behavioral
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

entity Full_Adder_1_tb is
end;

architecture bench of Full_Adder_1_tb is

  component Full_Adder_1
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             Cin : in STD_LOGIC;
             OUT0 : out STD_LOGIC;
             Cout : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal Cin: STD_LOGIC;
  signal OUT0: STD_LOGIC;
  signal Cout: STD_LOGIC;

begin

  uut: Full_Adder_1 port map ( A    => A,
                               B    => B,
                               Cin  => Cin,
                               OUT0 => OUT0,
                               Cout => Cout );

  stimulus: process
  begin
  
    -- Put initialisation code here
    a<= '0';
    b<= '0';
    cin<= '0';
    wait for 10 ns;
    a<= '0';
    b<= '0';
    cin<= '1';
    wait for 10 ns;
    a<= '0';
    b<= '1';
    cin<= '0';
    wait for 10 ns;
    a<= '0';
    b<= '1';
    cin<= '1';
    wait for 10 ns;
    a<= '1';
    b<= '0';
    cin<= '0';
    wait for 10 ns;
    a<= '1';
    b<= '0';
    cin<= '1';
    wait for 10 ns;
    a<= '1';
    b<= '1';
    cin<= '0';
    wait for 10 ns;
    a<= '1';
    b<= '1';
    cin<= '1';
    wait for 10 ns;
    a<= '0';
    b<= '0';
    cin<= '0';
    wait for 10 ns;


    -- Put test bench stimulus code here

    wait;
  end process;


end;
