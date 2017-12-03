library IEEE;
use IEEE.Std_logic_1164.all;

entity Q1_tb is
end;

architecture bench of Q1_tb is

signal clk : std_logic;

begin

    clock : process
    
    begin
    
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 100 ns;
    
    end process clock;



end;