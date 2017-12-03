----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2017 03:06:52 PM
-- Design Name: 
-- Module Name: ParityFunction - Behavioral
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

package ParityFunction is
    function EVEN_PARITY ( data : STD_LOGIC_VECTOR(31 downto 0)) 
    return STD_LOGIC;
end ParityFunction;

package body ParityFunction is
    function EVEN_PARITY ( data : STD_LOGIC_VECTOR(31 downto 0)) 
    return STD_LOGIC is
    variable ones_count : integer := 0;
    begin
        for i in 0 to data'length - 1 loop
            if (data(i) = '1') then
                ones_count := ones_count + 1;
            end if;
        end loop;
        if (ones_count mod 2 = 0) then
            return '0';
        else 
            return '1';
        end if; 
    end EVEN_PARITY;
end ParityFunction;
