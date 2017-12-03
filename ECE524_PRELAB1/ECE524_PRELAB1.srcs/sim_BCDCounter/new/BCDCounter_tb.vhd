library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BCDCounter_tb is
end;

architecture bench of BCDCounter_tb is

  component BCDCounter
      Port ( CLK : in STD_LOGIC;
             COUNT : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal CLK: STD_LOGIC := '0';
  signal COUNT: STD_LOGIC_VECTOR (7 downto 0);

  constant half_clock_period: time := 10 ns;

begin

  uut: BCDCounter port map ( CLK   => CLK,
                             COUNT => COUNT );

  stimulus: process
  begin
    for i in 0 to 100 loop
         wait for half_clock_period;
    end loop;
  end process;

  clocking: process
  begin
    CLK <= not CLK;
    wait for half_clock_period;
  end process;

end;