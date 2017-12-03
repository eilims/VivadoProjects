library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Problem3_tb is
end;

architecture bench of Problem3_tb is

  component Problem3
      Port ( I_CLK : in STD_LOGIC;
             O_RESULT : out STD_LOGIC);
  end component;

  signal I_CLK: STD_LOGIC := '0';
  signal O_RESULT: STD_LOGIC;


begin

  uut: Problem3 port map ( I_CLK    => I_CLK,
                           O_RESULT => O_RESULT );

  stimulus: process
  begin
  
    
    wait for 200 ns;
    
    
  end process;

  clocking: process
  begin
    I_CLK <= not I_CLK;
    wait for 10 ns;
  end process;

end;