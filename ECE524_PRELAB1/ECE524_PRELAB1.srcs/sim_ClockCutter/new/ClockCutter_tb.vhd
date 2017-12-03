library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ClockCutter_tb is
end;

architecture bench of ClockCutter_tb is

  component ClockCutter
      Port ( I_CLK : in STD_LOGIC;
             O_CLK : out STD_LOGIC);
  end component;

  signal I_CLK: STD_LOGIC := '0';
  signal O_CLK: STD_LOGIC;

  constant half_clock_period: time := 10 ns;

begin

  uut: ClockCutter port map ( I_CLK => I_CLK,
                              O_CLK => O_CLK );

  stimulus: process
  begin
    for i in 0 to 100 loop
        wait for half_clock_period;
    end loop;
  end process;

  clocking: process
  begin
    I_CLK <= not I_CLK;
    wait for half_clock_period;
  end process;

end;