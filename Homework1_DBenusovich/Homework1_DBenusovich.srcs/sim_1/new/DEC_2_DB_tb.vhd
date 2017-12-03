----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2017 12:47:29 PM
-- Design Name: 
-- Module Name: DEC_2_DB_tb - Behavioral
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

entity DEC_2_DB_tb is
end;

architecture bench of DEC_2_DB_tb is

  component DEC_2_DB
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             OUT0 : out STD_LOGIC_VECTOR(0 to 3));
  end component;

  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal OUT0 : STD_LOGIC_VECTOR(0 to 3);


begin

  uut: DEC_2_DB port map ( A    => A,
                           B    => B,
                           OUT0 => OUT0);

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
