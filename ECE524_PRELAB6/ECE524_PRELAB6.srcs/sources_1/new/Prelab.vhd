----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2017 12:58:30 PM
-- Design Name: 
-- Module Name: Prelab - Behavioral
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

entity Prelab is
    Generic ( Length : integer := 4);
    Port ( A : in STD_LOGIC_VECTOR (Length - 1 downto 0);
           B : in STD_LOGIC_VECTOR (Length - 1 downto 0);
           Z : out STD_LOGIC_VECTOR ((2*Length - 1) downto 0));
end Prelab;

architecture Structural of Prelab is

    component Full_Adder
        Port ( A : in STD_LOGIC;
               B0 : in STD_LOGIC;
               B1 : in STD_LOGIC;
               C : in STD_LOGIC;
               Carry : out STD_LOGIC;
               Z : out STD_LOGIC);
    end component;
    
    component and_db
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Z : out STD_LOGIC);
    end component;
    
    type array_template is array (Length - 1 downto 0, Length - 1 downto 0) of std_logic;
    signal Sum, Carry : array_template;

begin

    loop1: for i in 0 to Length - 1 generate
        loop2:for o in 0 to Length - 1 generate
            and_row0:if i = 0 generate
                and_gate0: and_db port map (A=>A(i),B=>B(o),Z=>Sum(i,o));
            end generate;
            add_row1:if o = 0 and i > 0 generate
                adder_1: Full_Adder port map (A=>Sum(i-1,o + 1),B0=>A(o),B1=>B(i),C=>'0',Carry=>Carry(i,o),Z=>Sum(i,o));
            end generate;
            add_row1exec:if (i = 1 and o = Length - 1) generate
                adder_exec:Full_Adder port map (A=>'0',B0=>A(i),B1=>B(o),C=>carry(i,o-1),Carry=>Carry(i,o),Z=>Sum(i,o));
            end generate;
            add_middle:if (i > 0 and o > 0 and o < Length - 1) generate
                adder_middle:Full_Adder port map (A=>Sum(i - 1,o+1),B0=>A(o),B1=>B(i),C=>Carry(i,o-1),Carry=>Carry(i,o),Z=>Sum(i,o));
            end generate;
            add_end:if (i > 1 and o = Length - 1) generate
                adder_end:Full_Adder port map (A=>Carry(i-1,o),B0=>A(o),B1=>B(i),C=>Carry(i, o-1),Carry=>Carry(i,o),Z=>Sum(i,o));
            end generate;
        end generate;
    end generate;

    process(A,B,Sum,Carry)
    begin
        for i in 0 to Length - 1 loop
            Z(i) <= Sum(i,0);
        end loop;
        for i in 1 to Length - 1 loop
            Z(i + (Length - 1)) <= Sum(Length - 1, i);
        end loop;
        Z((Length+Length - 1)) <= Carry(Length - 1, Length - 1);
    end process;

end Structural;
