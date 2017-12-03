----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2017 04:16:29 PM
-- Design Name: 
-- Module Name: Gray_to_binary_5_tb - Behavioral
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

entity Gray_To_Binary_5_tb is
end;

architecture bench of Gray_To_Binary_5_tb is

  component Gray_To_Binary_5
      Port ( IN0 : in STD_LOGIC_VECTOR (4 downto 0);
             OUT0 : out STD_LOGIC_VECTOR (4 downto 0));
  end component;

  signal IN0: STD_LOGIC_VECTOR (4 downto 0);
  signal OUT0: STD_LOGIC_VECTOR (4 downto 0);
  signal number : STD_LOGIC_VECTOR (0 to 4) := "00000";

begin

  uut: Gray_To_Binary_5 port map ( IN0  => IN0,
                                   OUT0 => OUT0 );

  stimulus: process
  begin
  
    -- Put initialisation code here
    for i in 0 to 31 loop
        number <= std_logic_vector(to_unsigned(i, number'length));
        in0(0) <= number(4);
        in0(1) <= number(3);
        in0(2) <= number(2);
        in0(3) <= number(1);
        in0(4) <= number(0);
        wait for 10 ns;
    end loop;

    -- Put test bench stimulus code here

    wait;
  end process;


end;
