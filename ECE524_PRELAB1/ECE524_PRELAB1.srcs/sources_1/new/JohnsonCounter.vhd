----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2017 12:26:49 AM
-- Design Name: 
-- Module Name: JohnsonCounter - Behavioral
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

entity JohnsonCounter is
    Generic (Length : integer);
    Port ( CLK : in STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (Length - 1 downto 0));
end JohnsonCounter;

architecture Behavioral of JohnsonCounter is

begin

    process (CLK)
    variable next_bit : STD_LOGIC := '1';
    variable curr_count : STD_LOGIC_VECTOR (LENGTH - 1 downto 0) := std_logic_vector(to_unsigned(0, DATA'length));
    begin
        if (CLK'event and CLK = '1') then
            DATA <= curr_count;
            curr_count := next_bit & curr_count(DATA'length - 1 downto 1);
            if (curr_count(0) = '1') then
                next_bit := '0';
            else
                next_bit := '1';
            end if;
        end if; 
end process;

end Behavioral;
