library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Q3_tb is
end;

architecture bench of Q3_tb is

  component Q3
      Port ( CLK : in STD_LOGIC;
             DATA : out STD_LOGIC);
  end component;

  signal CLK: STD_LOGIC := '0';
  signal DATA: STD_LOGIC;

begin

  uut: Q3 port map ( CLK  => CLK,
                     DATA => DATA );

  stimulus: process
  begin
    for i in 0 to 12 loop
        wait for 10 ns;
    end loop;
  end process;

    clocking : process
    begin
        clk <= not clk;
        wait for 10 ns;
    end process clocking;

end;