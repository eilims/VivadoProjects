library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity BCD_Counter_8_tb is 
end BCD_Counter_8_tb;

architecture testbench of BCD_Counter_8_tb is

--Components
component BCD_COUNTER_8
    Port ( E : in STD_LOGIC;
       CLK : in STD_LOGIC;
       ENP : in STD_LOGIC;
       ENT : in STD_LOGIC;
       RST : in STD_LOGIC;
       BCD : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--Signals
signal E, CLK, ENP, ENT, RST : STD_LOGIC := '0';
signal BCD : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin
    
    UUT: BCD_COUNTER_8 port map ( E => E,
                                  CLK => CLK,
                                  ENP => ENP,
                                  ENT => ENT,
                                  RST => RST,
                                  BCD => BCD);
    
    clocking : process
    
    begin
        
        CLK <= not CLK;
        wait for 10 ns;
        
    end process clocking;
    
    test : process
    
    begin
    
        E <= '1';
        ENT <= '1';
        ENP <= '1';
        for i in 0 to 100 loop
            wait for 10 ns;
        end loop;
    
    end process test;
    
end testbench;