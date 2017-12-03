library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.ZeroCounter.all;

entity ZeroCounter_tb is
end;

architecture bench of ZeroCounter_tb is



begin

  stimulus: process
  variable number9 : integer;
  begin
    number9 := ZERO_COUNT("0000111100001111");
    assert false report "Simulation Finished" severity failure;
  end process;



end;