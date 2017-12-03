----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2017 12:28:01 AM
-- Design Name: 
-- Module Name: Number2 - Behavioral
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

entity Number2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (3 downto 0);
           z : out STD_LOGIC);
end Number2;

architecture Behavioral of Number2 is

begin
    process(a,b,c,d,sel)
    begin
        z <= '0';
        if sel(0) = '1' then
            z <= a;
        end if;
        if sel(1) = '1' then
            z <= b;
        end if;
        if sel(2) = '1' then
            z <= c;
        end if;
        if sel(3) = '1' then
            z <= d;
        end if;
    end process;

end Behavioral;
