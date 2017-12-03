library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Prime_Counter_FSM_tb is
end Prime_Counter_FSM_tb; 

architecture testbench of Prime_Counter_FSM_tb is

--Components
component Prime_Counter_FSM 
         Port    ( I_CLK : in STD_LOGIC;
                   I_RST : in STD_LOGIC;
                   I_START : in STD_LOGIC;
                   O_COUNT : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--Signals
signal I_CLK, I_RST, I_START : STD_LOGIC := '0';
signal O_COUNT : STD_LOGIC_VECTOR (3 downto 0) := "0000";


begin


    UUT : Prime_Counter_FSM         
            port map    ( I_CLK => I_CLK,
                          I_RST => I_RST,
                          I_START => I_START,
                          O_COUNT => O_COUNT);
                                                      
    clocking : process
    
    begin
    
        I_CLK <= not I_CLK;
        wait for 10 ns; 
    
    end process clocking;
    
                                                      
    test : process
    

    begin
    
        I_RST <= '0';
        I_START <= '1';
        wait for 200 ns;
        I_START <= '0';
        wait for 200 ns;
        I_START <= '1';
        wait for 200 ns;
                                              
    end process test;



end testbench; 