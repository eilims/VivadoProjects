library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FibonacciCounter_tb is
end;

architecture bench of FibonacciCounter_tb is

  component FibonacciCounter
      Generic (Length : integer);
      Port ( CLK : in STD_LOGIC;
             DATA : out STD_LOGIC_VECTOR (Length - 1 downto 0));
  end component;

  constant Length : integer := 8;
  signal CLK: STD_LOGIC := '1';
  signal DATA: STD_LOGIC_VECTOR (Length - 1 downto 0) := STD_LOGIC_VECTOR(to_unsigned(1, Length));

  constant half_clock_period: time := 10 ns;


begin


  uut: FibonacciCounter generic map ( Length =>  Length)
                           port map ( CLK    => CLK,
                                      DATA   => DATA );

  stimulus: process
  begin
    for i in 0 to 100 loop
        wait for half_clock_period;
    end loop;
    assert false report "Simulation Finished" severity failure;
  end process;

  clocking: process
  begin
    CLK <= not CLK;
    wait for half_clock_period;
  end process;

end;