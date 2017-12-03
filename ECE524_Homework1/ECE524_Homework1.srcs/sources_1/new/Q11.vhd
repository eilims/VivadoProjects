----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2017 01:53:25 PM
-- Design Name: 
-- Module Name: Q11 - Behavioral
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

entity Q11 is
    Port ( clk : in STD_LOGIC;
           clk4_5 : out STD_LOGIC);
end Q11;

architecture Behavioral of Q11 is

begin
    
    process (CLK)
    variable a0,a1,a2,a3,a4,a5 : integer := 0;
    begin
        if (clk'event and clk = '1') then 
            a0 := (a0 + 1) mod 9;
            a1 := (a1 + 1)  mod 9;
            a2 := (a2 + 1) mod 9;
            if (a0 = 7 or a1 = 3 or a2 = 2) then
                clk4_5 <= '1';
            else 
                clk4_5 <= '0';
            end if;
        end if; 
        if (clk'event and clk = '0') then
            a3 := (a3 + 1) mod 9;
            a4 := (a4 + 1) mod 9;
            a5 := (a5 + 1) mod 9;
            if (a3 = 2 or a4 = 6 or a5 = 7) then
                clk4_5 <= '1';
            else 
                clk4_5 <= '0';
            end if;
        end if;
        
        
    end process;

end Behavioral;
