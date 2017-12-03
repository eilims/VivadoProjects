library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FibonacciGenerator_tb is
end;

architecture bench of FibonacciGenerator_tb is

  component FibonacciGenerator
      Generic ( NUM_TERMS : integer);
      Port ( TERM : out integer);
  end component;

  signal TERM: integer;

begin

  -- Insert values for generic parameters !!
  uut: FibonacciGenerator generic map ( NUM_TERMS =>  50)
                             port map ( TERM      => TERM );

  stimulus: process
  begin
  
    for i in 0 to 49 loop
        wait for 10 ns;
    end loop;
    assert false report "Simulation Finished" severity failure;
    wait;
  end process;


end;