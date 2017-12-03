----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2017 08:43:40 PM
-- Design Name: 
-- Module Name: ShiftRegister - Behavioral
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

entity ShiftRegister is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           HOLD : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           SERIAL : out STD_LOGIC);
end ShiftRegister;

architecture Behavioral of ShiftRegister is

begin

    logic: process(CLK)
        variable int_reg : STD_LOGIC_VECTOR (7 downto 0);
    begin
        if (CLK'event and CLK = '1') then 
            if (RST = '1') then
                int_reg := "00000000";
            elsif (LOAD = '1') then
                int_reg := DATA;
            elsif (HOLD = '0') then
                SERIAL <= int_reg(0);
                int_reg := '0' & int_reg(7 downto 1);
            end if;
        end if; 
    end process logic;

end Behavioral;
