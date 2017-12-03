----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2017 07:48:52 PM
-- Design Name: 
-- Module Name: Serial_Implementation_FIR - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.util_pkg.all;

entity Serial_Implementation_FIR is
    Generic (
        Filter_Length : integer := 20;
        Length : integer := 16
    );
    Port ( 
        CLK : in STD_LOGIC;
        X : in STD_LOGIC_VECTOR (Length - 1 downto 0);
        Y : out STD_LOGIC_VECTOR ((Length + 15 + log2c(Filter_Length)) downto 0)
        );
end Serial_Implementation_FIR;

architecture Behavioral of Serial_Implementation_FIR is

COMPONENT dist_mem_gen_0
    PORT (
        a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        spo : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END COMPONENT;

    type logic_array is array (0 to Filter_Length) of std_logic_vector (Length - 1 downto 0);
    signal registers : logic_array := (others => (others => '0'));
    signal coefficent : std_logic_vector (15 downto 0) := (others => '0');
    signal adder : signed ((Length + 15 + log2c(Filter_Length)) downto 0) := (others => '0');
    signal address : std_logic_vector (4 downto 0) := (others => '0');
    
begin

    ROM : dist_mem_gen_0
        PORT MAP (
            a => address,
            spo => coefficent
        );
    
    process(CLK)
        variable count : integer := 0;
    begin
        -- we must go through this 20 times before shifting the registers once
       
        
        
        --address setting for next cycle
        if (rising_edge(clk)) then
        
             --Setting adder reg value
            adder <= (signed(coefficent) * signed(registers(count))) + adder;
        
            if to_integer(unsigned(address)) = Filter_Length then
                adder <= (others => '0');
                address <= (others => '0');
                count := 0;
                
                --Loop to shift registers
                registers(0) <= X;
                for i in 1 to Length - 1 loop
                    registers(i) <= registers(i-1);
                end loop;
                --Set output only when applicable values are apparent
                Y <= std_logic_vector(adder);
            else
                address <= address + 1;
                count := count + 1;
            end if;
            
        --
        end if;
    end process;

end Behavioral;
