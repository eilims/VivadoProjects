----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2017 01:32:28 AM
-- Design Name: 
-- Module Name: Number3 - Behavioral
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

entity Number3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s3 : in STD_LOGIC;
           s4 : in STD_LOGIC;
           z : out STD_LOGIC);
end Number3;

architecture Behavioral of Number3 is
signal sig1, sig2 : std_logic;
begin
process(a,b,c,d,s1,s2,s3,s4)
    begin
        z <= '0';
        if s1 = '1' then
            sig1 <= a;
        else
            sig1 <= b;
        end if;
        if s2 = '1' then
            sig2 <= c;
        else 
            sig2 <= d;
        end if;
        if (s3 = '1' or s4 = '1') then
            z <= sig1;
        else
            z <= sig2;
        end if;
       
    end process;

end Behavioral;
