library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ClockGenerator_tb is
end;

architecture bench of ClockGenerator_tb is

  component ClockGenerator
      Generic ( PERIOD : time;
                NUM_CYCLES : integer);  
      Port ( CLK : out STD_LOGIC;
             COMPLETE : out STD_LOGIC);
  end component;

  signal CLK : STD_LOGIC;
  signal COMPLETE: STD_LOGIC := '0';

begin

  uut: ClockGenerator generic map ( PERIOD     => 20 ns,
                                    NUM_CYCLES =>  5)
                         port map ( CLK        => CLK,
                                    COMPLETE   => COMPLETE);

  stimulus: process
  begin
    for i in 0 to 100 loop
        wait for 10 ns;
    end loop;
    assert false report "Simulation Finished" severity failure;
  end process;


end;