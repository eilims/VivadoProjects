library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator_4_tb is
end Comparator_4_tb;

architecture testbench of Comparator_4_tb is

--Components
component Comparator_4
    Generic (   Length : integer);
    
    Port (      I_X : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
                I_Y : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
                O_EQ : out STD_LOGIC);
                
end component;

--Signals
constant Length : integer := 4;
constant wait_time : time := 20 ns;
signal I_X, I_Y : STD_LOGIC_VECTOR ((Length - 1) downto 0) := x"0";
signal O_EQ : STD_LOGIC := '0';

begin

UUT : Comparator_4 generic map  (   Length => Length)
                   port map     (   I_X => I_X,
                                    I_Y => I_Y,
                                    O_EQ => O_EQ);
                                    
    test : process
    
    begin
    
        I_X <= x"8";
        I_Y <= x"8";
        wait for wait_time;
        
        I_X <= x"f";
        I_Y <= x"6";
        wait for wait_time;       
        
        I_X <= x"4";
        I_Y <= x"c";
        wait for wait_time; 
      
        I_X <= x"4";
        I_Y <= x"4";
        wait for wait_time; 
    
    end process test;    

end testbench;