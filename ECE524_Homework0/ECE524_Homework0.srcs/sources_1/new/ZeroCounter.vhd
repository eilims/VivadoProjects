----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/04/2017 04:50:19 PM
-- Design Name: 
-- Module Name: ZeroCounter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package ZeroCounter is
    function ZERO_COUNT (N : STD_LOGIC_VECTOR (15 downto 0))
    return integer;
end ZeroCounter;

package body ZeroCounter is
    function ZERO_COUNT (N : STD_LOGIC_VECTOR (15 downto 0))
    return integer is
    variable count : integer := 0;
    begin
        for i in 0 to N'length - 1 loop
            if (N(i) = '0') then
                count := count + 1;
            end if;
        end loop;
        return count;
    end ZERO_COUNT;
end ZeroCounter;