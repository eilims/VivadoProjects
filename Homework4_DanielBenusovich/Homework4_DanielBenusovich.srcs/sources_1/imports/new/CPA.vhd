----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2017 11:02:04 PM
-- Design Name: 
-- Module Name: CPA - Behavioral
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


entity CPA is
    Generic ( Length : integer);
    Port ( A : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           B : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           Cout : out STD_LOGIC;
           Result : out STD_LOGIC_VECTOR ((Length - 1) downto 0) := std_logic_vector(to_unsigned(0, Length)));
end CPA;

architecture Structural of CPA is

component Full_Adder_1
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           OUT0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
       
end component; 


signal carry : STD_LOGIC_VECTOR ((Length) downto 0) := std_logic_vector(to_unsigned(0, (Length + 1)));
 
begin

    ADDER_ARRAY: for I in 0 to (Length - 2) generate
        UADD: FULL_ADDER_1 port map (   A => A(I),
                                        B => B(I),
                                        Cin => carry(I),
                                        OUT0 => Result(I),
                                        Cout => carry(I + 1));
    
    end generate ADDER_ARRAY;

    U1 : FULL_ADDER_1 port map (    A => A(Length - 1),
                                    B => B(Length - 1),
                                    Cin => carry(Length - 1),
                                    OUT0 => Result(Length - 1),
                                    Cout => Cout);
                  

end Structural;
