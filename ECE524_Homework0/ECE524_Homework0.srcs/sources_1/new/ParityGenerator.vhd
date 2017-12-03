----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2017 02:38:29 PM
-- Design Name: 
-- Module Name: ParityGenerator - Behavioral
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

entity ParityGenerator is
    Port (  CLK : in STD_LOGIC;
            DATA : in STD_LOGIC_VECTOR (31 downto 0);
            PARITY : out STD_LOGIC);
end ParityGenerator;

architecture Behavioral of ParityGenerator is

begin
    process (CLK)
        
    begin
        
    end process;
end Behavioral;
