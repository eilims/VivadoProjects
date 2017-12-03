library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.PowerFunction.all;

entity PowerFunctions_tb is
end;

architecture bench of PowerFunctions_tb is



begin

  stimulus: process
  variable number8_a : integer;
  variable number8_b : integer;
  begin
    number8_a := GENERIC_POWER(2, 2);
    number8_b := FOURTH_POWER(2);
    assert false report "Simulation Finished" severity failure;
  end process;



end;