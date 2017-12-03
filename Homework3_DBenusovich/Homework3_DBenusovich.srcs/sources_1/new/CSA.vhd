----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2017 10:28:39 PM
-- Design Name: 
-- Module Name: CSA - Behavioral
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


entity CSA is
    Generic (Length : integer);
    Port ( A : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           B : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           C : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           Carry : out STD_LOGIC_VECTOR ((Length) downto 0);
           Result : out STD_LOGIC_VECTOR ((Length - 1) downto 0));
end CSA;

architecture Structural of CSA is

    component Full_Adder_1 
       Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           OUT0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;

begin

    ADDERS: for i in 0 to (Length - 1) generate
            UADD: Full_Adder_1 port map (A => A(i),
                                   B => B(i),
                                   Cin => C(i),
                                   OUT0 => Result(i),
                                   Cout => Carry(i + 1));
        
        
        end generate;


end Structural;
