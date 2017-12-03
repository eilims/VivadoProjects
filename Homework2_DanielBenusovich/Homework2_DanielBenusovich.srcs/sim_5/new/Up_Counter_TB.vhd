library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity Up_Counter_TB is
end Up_Counter_TB;

architecture testbench of Up_Counter_TB is

    --components 
    component Up_Counter 
        Generic (Length : integer);
        Port (     CLK : in STD_LOGIC;
                   CLR : in STD_LOGIC;
                   LD : in STD_LOGIC;
                   E : in STD_LOGIC;
                   ENP, ENT : in STD_LOGIC;
                   DATA : in STD_LOGIC_VECTOR (Length downto 0);
                   RCO : out STD_LOGIC;
                   CNT : out STD_LOGIC_VECTOR (Length downto 0));
    end component;
   
    --signals
    shared variable Length : integer := 5;
    signal CLK : STD_LOGIC := '1';
    signal CLR : STD_LOGIC := '0';
    signal LD, E, ENP, ENT, RCO : STD_LOGIC;
    signal DATA : STD_LOGIC_VECTOR (Length downto 0) := "000000";
    signal CNT : STD_LOGIC_VECTOR (Length downto 0) := "000000";
    
    begin
        U1: Up_Counter generic map (Length => Length)
                       port map ( CLK => CLK,
                                  CLR => CLR,
                                  LD => LD,
                                  E => E,
                                  ENP => ENP,
                                  ENT => ENT,
                                  RCO => RCO,
                                  DATA => DATA,
                                  CNT => CNT);
                                  
    stimulus: process
    begin
        E <= '1';
        ENT <= '1';
        ENP <= '1';
        LD <= '0';
        wait for 2000 ns;

    end process;
    
    clocking : process
    
    begin
    
        CLK <= not CLK;
        wait for 10 ns;
    
    end process clocking;
    
end testbench;