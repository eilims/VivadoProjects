----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/25/2017 07:15:12 PM
-- Design Name: 
-- Module Name: Generic_Shift_Register - Behavioral
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
use ieee.numeric_std.ALL;


entity Generic_Shift_Register is
  Generic (Length : integer);
  Port (   CLK : in STD_LOGIC;
           S1, S0 : in STD_LOGIC;
           OE1, OE2 : in STD_LOGIC;
           SL : in STD_LOGIC;
           SR : in STD_LOGIC;
           CLR : in STD_LOGIC;
           DATAIN : in STD_LOGIC_VECTOR (Length downto 0);
           QA, QH : out STD_LOGIC);
end Generic_Shift_Register;

architecture Behavioral of Generic_Shift_Register is



begin



 process(CLK, CLR)
 
 
 variable data : STD_LOGIC_VECTOR (Length downto 0) := "00000000";
 
 begin
 if (OE1 = '1' and OE2 = '1') then
 
  if (falling_edge(CLR)) then 
   data := "00000000";
   QA <= '0';
   QH <= '0';
   
  elsif (rising_edge(CLK) and CLR = '1') then
   
   -- Shift right
   if (S1 = '0' and S0 = '1') then
    for i in 0 to Length - 1 loop
     data (i) := data (i + 1);
    end loop;
    data (Length) := SR; 
    QA <= data(Length);
    QH <= data(0);    

   elsif (S1 = '1' and S0 = '0') then
    for i in 0 to Length - 1 loop
     data (i+1) := data (i);
    end loop;
    data (0) := SL; 
    QA <= data(Length);
    QH <= data(0);      
    
   elsif (S1 = '1' and S0 = '1') then
     data := DATAIN; 
     QA <= data(Length);
     QH <= data(0);  
   end if;
  
  end if;
  
 end if;
 
 end process;

end Behavioral;
