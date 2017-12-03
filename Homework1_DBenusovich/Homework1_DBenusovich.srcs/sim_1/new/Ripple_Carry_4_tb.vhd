----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2017 04:49:49 PM
-- Design Name: 
-- Module Name: Ripple_Carry_4_tb - Behavioral
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

entity Ripple_Carry_4_tb is
end;

architecture bench of Ripple_Carry_4_tb is

  component Ripple_Carry_4
      Port ( in0 : in STD_LOGIC_VECTOR (3 downto 0);
             in1 : in STD_LOGIC_VECTOR (3 downto 0);
             out0 : out STD_LOGIC_VECTOR (3 downto 0);
             Cout : out STD_LOGIC);
  end component;

  signal in0: STD_LOGIC_VECTOR (3 downto 0);
  signal in1: STD_LOGIC_VECTOR (3 downto 0);
  signal out0: STD_LOGIC_VECTOR (3 downto 0);
  signal Cout: STD_LOGIC;
  signal number: STD_LOGIC_VECTOR (0 to 7) := "00000000";

begin

  uut: Ripple_Carry_4 port map ( in0  => in0,
                                 in1  => in1,
                                 out0 => out0,
                                 Cout => Cout );

  stimulus: process
  begin
  
    -- Put initialisation code here
    for i in 0 to 255 loop
        number <= std_logic_vector(to_unsigned(i, number'length));
        in0(0) <= number(7);
        in0(1) <= number(6);
        in0(2) <= number(5);
        in0(3) <= number(4);
        in1(0) <= number(3);
        in1(1) <= number(2);
        in1(2) <= number(1);
        in1(3) <= number(0);
        wait for 10 ns;
    end loop;  
 

    -- Put test bench stimulus code here

    wait;
  end process;


end;
