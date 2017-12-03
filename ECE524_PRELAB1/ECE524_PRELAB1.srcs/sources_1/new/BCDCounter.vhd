----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2017 09:39:33 PM
-- Design Name: 
-- Module Name: BCDCounter - Behavioral
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

entity BCDCounter is
    Port ( CLK : in STD_LOGIC;
           COUNT : out STD_LOGIC_VECTOR (7 downto 0));
end BCDCounter;

architecture Behavioral of BCDCounter is

begin

    process (CLK)
    variable data : integer := 0;
    begin
        if (CLK'event and CLK = '1') then
            if ( data < 99 ) then
                COUNT(3 downto 0) <= std_logic_vector(to_unsigned((data mod 10), 4));
                COUNT(7 downto 4) <= std_logic_vector(to_unsigned(((data/10) mod 10), 4));
                data := data + 1;
            else
                data := 0;
            end if;
        end if;
    end process;

end Behavioral;
