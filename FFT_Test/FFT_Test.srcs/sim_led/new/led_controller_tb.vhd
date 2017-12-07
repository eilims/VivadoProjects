library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity led_controller_tb is
end;

architecture bench of led_controller_tb is

  component led_controller
      Generic (   Index_Length : Integer);
      Port (  clk : in STD_LOGIC;
              i_valid : in STD_LOGIC;
              i_index : in STD_LOGIC_VECTOR ((Index_Length - 1) downto 0);
              o_led : out STD_LOGIC_VECTOR (7 downto 0) := "00000000");
  end component;

  constant Index_Length : integer := 13;
  

  signal clk: STD_LOGIC;
  signal i_valid: STD_LOGIC := '0';
  signal i_index: STD_LOGIC_VECTOR ((Index_Length - 1) downto 0) := (others => '0');
  signal o_led: STD_LOGIC_VECTOR (7 downto 0) := "00000000";

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: led_controller generic map ( Index_Length =>  Index_Length)
                         port map ( clk          => clk,
                                    i_valid      => i_valid,
                                    i_index      => i_index,
                                    o_led        => o_led );

  stimulus: process
  begin
    wait for clock_period;
    i_valid <= '1';
    i_index <= std_logic_vector(to_unsigned(10, Index_Length));
    wait for clock_period;
    wait for 2.5 ns;
    i_valid <= '0';
    wait for clock_period;
    i_valid <= '0';
    i_index <= std_logic_vector(to_unsigned(11, Index_Length));
    wait for clock_period;
    i_valid <= '1';
    i_index <= std_logic_vector(to_unsigned(55, Index_Length));
    wait for clock_period;
    i_valid <= '1';
    i_index <= std_logic_vector(to_unsigned(33, Index_Length));
    wait for clock_period;
    i_valid <= '0';
    i_index <= std_logic_vector(to_unsigned(0, Index_Length));
    wait for clock_period;
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;