----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2017 10:44:25 PM
-- Design Name: 
-- Module Name: Number1 - Behavioral
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

entity Number1 is
    Port ( clk : in STD_LOGIC;
           we : in STD_LOGIC;
           rdlsel : in STD_LOGIC_VECTOR (1 downto 0);
           wdlsel : in STD_LOGIC_VECTOR (1 downto 0);
           wdata : in STD_LOGIC_VECTOR (7 downto 0);
           rdlout : out STD_LOGIC_VECTOR (7 downto 0));
end Number1;

architecture Behavioral of Number1 is
    signal zero, one, two, three : std_logic_vector(7 downto 0);
begin
    clk_process: process(clk ,zero ,one, two, three, we, rdlsel, wdlsel, wdata)
    begin
        if rising_edge(clk) then
            if we = '1' then         
                if wdlsel = "00" then
                    zero <= wdata;
                elsif wdlsel = "01" then
                    one <= wdata;
                elsif wdlsel = "10" then
                    two <= wdata;
                else
                    three <= wdata;
                end if;
            end if;
        end if;
        case rdlsel is
            when "00" => rdlout <= zero;
            when "01" => rdlout <= one;
            when "10" => rdlout <= two;
            when "11" => rdlout <= three;
            when others => rdlout <= "00000000";
        end case;
    end process;
end Behavioral;
