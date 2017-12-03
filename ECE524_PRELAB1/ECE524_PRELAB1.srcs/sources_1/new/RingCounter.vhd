----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/04/2017 11:05:59 PM
-- Design Name: 
-- Module Name: RingCounter - Behavioral
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

entity RingCounter is
    Generic (LENGTH : integer);
    Port ( CLK : in STD_LOGIC;
           O_COUNT : out STD_LOGIC_VECTOR (LENGTH - 1 downto 0));
end RingCounter;

architecture Behavioral of RingCounter is

begin

    process (CLK)
    variable next_bit : STD_LOGIC := '0';
    variable curr_count : STD_LOGIC_VECTOR (LENGTH - 1 downto 0) := std_logic_vector(to_unsigned(2**(O_COUNT'length - 1), O_COUNT'length));
    begin
        if (CLK'event and CLK = '1') then
            O_COUNT <= curr_count;
            curr_count := curr_count(0) & curr_count(O_COUNT'length - 1 downto 1);
--            curr_count := next_bit & curr_count(O_COUNT'length - 1 downto 1);
--            if (curr_count(0) = '1') then
--                next_bit := '1';
--            else
--                next_bit := '0';
--            end if;
       end if; 
    end process;

end Behavioral;
