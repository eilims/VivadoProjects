----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2017 11:22:41 PM
-- Design Name: 
-- Module Name: validator - Behavioral
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

entity validator is
    Generic ( Data_Length : Integer;
              Index_Length : Integer;
              Threshold : Integer);
    
    Port ( clk : in STD_LOGIC;
           i_valid : in std_logic := '0';
           i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0) := (others => '0');
           i_index : in STD_LOGIC_VECTOR ((Index_Length - 1) downto 0) := (others => '0');
           o_valid : out STD_LOGIC := '0';
           o_data : out STD_LOGIC_VECTOR ((Data_Length - 1) downto 0) := (others => '0');
           o_index : out STD_LOGIC_VECTOR ((Index_Length - 1) downto 0) := (others => '0'));
end validator;

architecture Behavioral of validator is

begin

    validation: process (clk)
        variable data : signed((Data_Length - 1) downto 0) := (others => '0');
    begin
        if (rising_edge(clk)) then
            --convert input data to signed and take the absolute value
            --this is due to the fft outputting negative values every other output cycle
            data := signed(i_data);
            data := abs(data);
            --Check if the magnitude of the bin exceeds the threshold of 10
            if ((data >= to_signed(Threshold, Data_Length)) and i_valid = '1') then
                o_valid <= '1';
            else
                o_valid <= '0';
            end if;
            o_data <= i_data;
            o_index <= i_index;
        end if;
    end process validation;
    

end Behavioral;
