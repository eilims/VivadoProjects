library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator_1_tb is
end Comparator_1_tb;

architecture testbench of Comparator_1_tb is

--Components
component Comparator_1 
    Port ( I_X : in STD_LOGIC;
           I_Y : in STD_LOGIC;
           I_EQ : in STD_LOGIC;
           O_EQ : out STD_LOGIC);

end component;

--Signals
signal I_X, I_Y, I_EQ, O_EQ : STD_LOGIC := '1';


begin

    UUT : Comparator_1 port map (   I_X => I_X,
                                    I_Y => I_Y,
                                    I_EQ => I_EQ,
                                    O_EQ => O_EQ);

    test : process
    
    begin
    
        I_X <= '0';
        I_Y <= '0';
        I_EQ <= '1';
        wait for 20 ns;
        I_X <= '0';
        I_Y <= '1';
        I_EQ <= '1';
        wait for 20 ns;
        I_X <= '1';
        I_Y <= '0';
        I_EQ <= '1';
        wait for 20 ns;
        I_X <= '1';
        I_Y <= '1';
        I_EQ <= '1';
        wait for 20 ns;
    
    end process;

end testbench;