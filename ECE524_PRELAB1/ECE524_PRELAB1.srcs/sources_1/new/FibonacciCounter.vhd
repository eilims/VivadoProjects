----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/04/2017 11:53:31 PM
-- Design Name: 
-- Module Name: FibonacciCounter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FibonacciCounter is
    Generic (Length : integer);
    Port ( CLK : in STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (Length - 1 downto 0));
end FibonacciCounter;

architecture Behavioral of FibonacciCounter is

begin

    process (CLK)
    variable previous : integer := 0;
    variable current : integer := 1;
    variable temp : integer;
    begin
        if (CLK'event and CLK = '1') then
            temp := current;
            current := current + previous;
            previous := temp;
            if ((current) < 2**DATA'length) then
                DATA <= STD_LOGIC_VECTOR(to_unsigned((current), DATA'length));
            else
                DATA <= STD_LOGIC_VECTOR(to_unsigned(1, DATA'length));
                previous := 0;
                current := 1;
            end if;
        end if; 
    end process;

end Behavioral;
