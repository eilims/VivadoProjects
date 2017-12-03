----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2017 01:23:08 PM
-- Design Name: 
-- Module Name: Serial_Adder_8 - Behavioral
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

entity Serial_Adder_8 is
    Port ( CLK : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Finished : out STD_LOGIC;
           Cout : out STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (7 downto 0));
end Serial_Adder_8;

architecture Behavioural of Serial_Adder_8 is

 
 --Signals

 signal carry : STD_LOGIC := '0';
 

 begin
     process (CLK)
     
     variable count : integer := 0;
     
     begin
     
        if (rising_edge(CLK)) then
            
            if (count < 8) then
                Result(count) <= A(count) XOR B(count) xor carry;
                carry <= A(count) or (B(count) and carry);
                count := count + 1;
                Finished <= '0';
                
            else
                Finished <= '1';
                count := 0;
                
            end if;
            
        end if;

      
    end process;
    
end Behavioural;
