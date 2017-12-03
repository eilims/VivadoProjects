library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity RingCounter_tb is
end;

architecture bench of RingCounter_tb is

  component RingCounter
      Generic (LENGTH : integer);
      Port ( CLK : in STD_LOGIC;
             O_COUNT : out STD_LOGIC_VECTOR (LENGTH - 1 downto 0));
  end component;

  constant LENGTH : integer := 5;
  signal CLK: STD_LOGIC := '1';
  signal O_COUNT: STD_LOGIC_VECTOR (LENGTH - 1 downto 0);

  constant half_clock_period: time := 10 ns;
  constant clock_period: time := 20 ns;


begin

  -- Insert values for generic parameters !!
  uut: RingCounter generic map ( LENGTH  =>  LENGTH)
                      port map ( CLK     => CLK,
                                 O_COUNT => O_COUNT);

  stimulus: process
  begin
    for i in 0 to 20 loop
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