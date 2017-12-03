----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/04/2017 01:09:02 PM
-- Design Name: 4-bit Mealy machine
-- Module Name: MealyMachine - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Detects the sequence of 1011
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

entity MealyMachine is
    Port ( DATA, CLK : in STD_LOGIC;
           COMPLETE : out STD_LOGIC);
end MealyMachine;

architecture Behavioral of MealyMachine is

type STATE is (S0, S1, S2, S3);
signal CURRENT_STATE : STATE := S0;
signal NEXT_STATE : STATE := S0;

begin

    process (CLK)
    begin
        if (CLK'event and CLK = '1') then 
            case CURRENT_STATE is
                when S0 =>
                    if (DATA = '1') then
                        NEXT_STATE <= S1;
                    else
                        NEXT_STATE <= S0;
                    end if;
                    COMPLETE <= '0';
                when S1 =>
                    if (DATA = '0') then
                        NEXT_STATE <= S2;
                    else
                        NEXT_STATE <= S0;
                    end if;
                    COMPLETE <= '0';
                when S2 =>
                    if (DATA = '1') then
                        NEXT_STATE <= S3;
                    else
                        NEXT_STATE <= S1;
                    end if;
                    COMPLETE <= '0';
                when S3 =>
                    if (DATA = '1') then
                        NEXT_STATE <= S0;
                        COMPLETE <= '1';
                    else
                        NEXT_STATE <= S1;
                        COMPLETE <= '0';
                    end if;
            end case;
        end if;
    end process;
    
    process (CLK)
    begin
            CURRENT_STATE <= NEXT_STATE;
    end process;

end Behavioral;
