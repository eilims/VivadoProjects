----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2017 09:40:06 PM
-- Design Name: 
-- Module Name: Part2 - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;


entity Part2 is
    Port ( clk1x : in std_logic;
           clk2x : in std_logic;
           P0 : in STD_LOGIC_VECTOR (7 downto 0);
           P1 : in STD_LOGIC_VECTOR (7 downto 0);
           alpha : in STD_LOGIC_VECTOR (7 downto 0);
           Pout : out STD_LOGIC_VECTOR (15 downto 0);
           locked : in std_logic);
end Part2;

architecture Behavioral of Part2 is

    

    signal alignSig1, alignSig2, alignAlpha1, alignAlpha2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal multiply, add1, add2, blend : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal A,B : std_logic := '0';
    
    attribute use_dsp48 :string;
    attribute use_dsp48 of add1 : signal is "yes";
    
begin
    oneTimes : process (clk1x)
    begin
        if (clk1x'event and clk1x = '1' and locked = '1') then
            Pout <= add1;
        end if;
    end process oneTimes;
    
    twoTimes: process (clk2x)
        variable c : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    begin
        if (clk2x'event and clk2x = '1' and locked = '1') then 
            A <= not A;
            if (A = '0') then
                alignSig1 <= P0; 
                alignAlpha1 <= alpha;
                c := add1;
                
            else 
                alignSig1 <= P1;
                alignAlpha1 <= '0' & (not alpha (6 downto 0));
                c := "0000000000000000";
            end if;
            alignSig2 <= alignSig1;
            alignAlpha2 <= alignAlpha1;
            multiply <= alignSig2 * alignAlpha2; 
            add1 <= c + multiply;
                
        end if;
    end process;

end Behavioral;
