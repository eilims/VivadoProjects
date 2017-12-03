library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MealyMachine_tb is
end;

architecture bench of MealyMachine_tb is

  component MealyMachine
      Port ( DATA, CLK : in STD_LOGIC;
             COMPLETE : out STD_LOGIC);
  end component;

  signal CLK: STD_LOGIC := '1';
  signal DATA: STD_LOGIC;
  signal COMPLETE: STD_LOGIC;

  constant half_clock_period: time := 10 ns;
  constant clock_period: time := 20 ns;

begin

  uut: MealyMachine port map ( DATA     => DATA,
                               CLK      => CLK,
                               COMPLETE => COMPLETE );

  stimulus: process
  begin
    DATA <= '1';
    wait for clock_period;
    DATA <= '0';
    wait for clock_period;
    DATA <= '1';
    wait for clock_period;
    DATA <= '1';
    wait for clock_period;
    assert false report "Simulation Finished" severity failure;
  end process;

  clocking: process
  begin
    CLK <= not CLK;
    wait for half_clock_period;
  end process;

end;