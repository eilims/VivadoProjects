library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ClockDivider_tb is
end;

architecture bench of ClockDivider_tb is

  component ClockDivider
      Port ( CLK : in STD_LOGIC;
             CLKHALF : out STD_LOGIC);
  end component;

  signal CLK: STD_LOGIC := '0';
  signal CLKHALF: STD_LOGIC;

  constant half_clock_period: time := 10 ns;

begin

  uut: ClockDivider port map ( CLK     => CLK,
                               CLKHALF => CLKHALF );

  stimulus: process
  begin
    for i in 0 to 100 loop
        wait for half_clock_period;
    end loop;
    wait;
  end process;

  clocking: process
  begin
    CLK <= not CLK;
    wait for half_clock_period;
  end process;

end;