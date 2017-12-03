library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Q8_tb is
end;

architecture bench of Q8_tb is

  component Q8
      Port ( clk : in STD_LOGIC;
             reset : in STD_LOGIC;
             output : out integer range 0 to 2**9);
  end component;

  signal clk: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal output: integer range 0 to 2**9;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Q8 port map ( clk    => clk,
                     reset  => reset,
                     output => output );

  stimulus: process
  begin
    clk <= '0';
    reset <= '0';
    wait for 10 ns;
    clk <= '1';
    reset <= '1';
    wait for 10 ns;
    clk <= '0';
    reset <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 10 ns;
  end process;


end;