----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/01/2017 01:43:07 PM
-- Design Name: 
-- Module Name: BinaryCounter - Behavioral
-- Project Name: Lab 1
-- Target Devices: Zynq-7000
-- Tool Versions: 2017.1
-- Description: A regular Binary Counter
-- 
-- Dependencies: -
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments: First Attempt
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BinaryCounter is
    Generic (LENGTH : integer);
    Port ( I_CLK : in STD_LOGIC;
           O_COUNT : out STD_LOGIC_VECTOR (LENGTH - 1 downto 0));
end BinaryCounter;


architecture Behavioral of BinaryCounter is
    signal X,Y : std_logic := '0';
begin

    main: process (I_CLK)
    
     --Declare variables
     variable count : integer := 0;
    
     --Begin code
     begin
     
         if (I_CLK'event and I_CLK = '1') then
              O_COUNT <= std_logic_vector(to_unsigned(count, O_COUNT'length));
              X <= '1';
              Y <= X;
              count := count + 1; 
         end if;
      
    end process main;

end Behavioral;
