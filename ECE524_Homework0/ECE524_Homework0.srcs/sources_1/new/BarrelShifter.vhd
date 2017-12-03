----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: DAniel Benusovich
-- 
-- Create Date: 09/01/2017 11:08:01 PM
-- Design Name: 16 bit Barrel Shifter
-- Module Name: BarrelShifter - Behavioral
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

entity BarrelShifter is
    Port ( Din : in STD_LOGIC_VECTOR (15 downto 0);
           SHIFT_AMT : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           ENB : in STD_LOGIC;
           DOUT : out STD_LOGIC_VECTOR (15 downto 0));
end BarrelShifter;

architecture Behavioral of BarrelShifter is

begin
  
    process (CLK)
    
    variable data : STD_LOGIC_VECTOR (15 downto 0);
    variable temp : STD_LOGIC;
    
    begin
        if (ENB = '1' AND rising_edge(CLK)) then
            data := Din;
            for i in 0 to to_integer(unsigned(SHIFT_AMT) - 1) loop
                temp := data(0);
                data(14 downto 0) := data(15 downto 1);
                data(15) := temp;
                
            end loop;
            Dout <= data;
        end if; 
        
    end process;

end Behavioral;
