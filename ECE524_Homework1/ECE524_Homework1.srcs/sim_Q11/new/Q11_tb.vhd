library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Q11_tb is
end;

architecture bench of Q11_tb is

  component Q11
      Port ( clk : in STD_LOGIC;
             clk4_5 : out STD_LOGIC);
  end component;

  signal clk: STD_LOGIC := '0';
  signal clk4_5: STD_LOGIC;


begin

  uut: Q11 port map ( clk    => clk,
                      clk4_5 => clk4_5 );

  stimulus: process
  begin
    for i in 0 to 100 loop
        wait for 10 ns;
    end loop;
    
  end process;

  clocking: process
  begin
    clk <= not clk;
    wait for 10 ns; 
  end process;

end;