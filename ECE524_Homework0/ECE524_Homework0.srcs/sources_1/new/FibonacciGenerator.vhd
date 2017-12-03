----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/03/2017 07:21:40 PM
-- Design Name: 
-- Module Name: FibonacciGenerator - Behavioral
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

entity FibonacciGenerator is
    Generic ( NUM_TERMS : integer);
    Port ( TERM : out integer);
end FibonacciGenerator;

architecture Behavioral of FibonacciGenerator is

begin

    process
    variable previous : integer := 1;
    variable current : integer := 1;
    variable temp : integer;
    begin
        TERM <= 1;
        wait for 10 ns;
        TERM <= 1;
        wait for 10 ns;
        for i in 0 to NUM_TERMS - 1 loop
            temp := previous;
            previous := current;
            current := temp + previous; 
            TERM <= current;
            wait for 10 ns;
        end loop;
    end process;

end Behavioral;
