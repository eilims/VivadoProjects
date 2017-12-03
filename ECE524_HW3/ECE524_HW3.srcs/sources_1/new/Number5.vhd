----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2017 01:46:39 AM
-- Design Name: 
-- Module Name: Number5 - Behavioral
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

entity Number5 is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           ld : in STD_LOGIC;
           ce : in STD_LOGIC;
           q : out STD_LOGIC);
end Number5;

architecture Behavioral of Number5 is
    signal q_int: std_logic;
    
begin
    
    process(clk)
    variable w : std_logic;
    begin
        if (clk'event and clk = '1') then
            if rst = '1' then
                q_int <= '1';
            elsif ld = '1' then
                if ce = '1' then
                    w := '1';
                    q_int <= not q_int;
                end if;
            end if;
        end if;
        q <= w;
    end process;
    
    --q <= q_int; 
    

end Behavioral;
