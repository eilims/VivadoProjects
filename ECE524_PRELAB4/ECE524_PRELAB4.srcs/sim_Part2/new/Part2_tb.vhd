library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Part2_tb is
end;

architecture bench of Part2_tb is

  component Part2DSP
  Port ( 
          clk1x, clk2x, locked : in STD_LOGIC;
          alpha : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
          P0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
          P1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
          P : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
        );
  end component;
    

  component clk_wiz_0
  port
   (-- Clock in ports
    -- Clock out ports
    clk_out1          : out    std_logic;
    clk_out2          : out    std_logic;
    -- Status and control signals
    reset             : in     std_logic;
    locked            : out    std_logic;
    clk_in1           : in     std_logic
   );
  end component;

  signal clk : std_logic;
  signal clk1x: std_logic;
  signal clk2x: std_logic;
  signal P0: std_logic_vector (7 downto 0) := "00000000";
  signal P1: std_logic_vector (7 downto 0) := "00000000";
  signal alpha: std_logic_vector (7 downto 0) := "00000000";
  signal P: std_logic_vector (16 downto 0);
  signal reset, locked : std_logic := '0';

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean := false;

begin

    uut : Part2DSP
        port map ( 
            clk1x => clk1x,
            clk2x => clk2x,
            locked => locked,
            alpha => alpha,
            P0 => P0,
            P1 => P1,
            P => P);
          
    uut2 : clk_wiz_0
                           port map ( 
                          -- Clock out ports  
                           clk_out1 => clk1x,
                           clk_out2 => clk2x,
                          -- Status and control signals                
                           reset => reset,
                           locked => locked,
                           -- Clock in ports
                           clk_in1 => clk);

  stimulus: process
  begin
    P0 <= "00001111";
    P1 <= "01110000";
    alpha <= "01111111";
--    reset <= '1';
--    wait for 10 ns;
--    reset <= '0';
--    wait for 10 ns;
--    while (locked = '0') loop
--        wait for 10 ns;
--    end loop;
--    P0 <= "00001111";
--    P1 <= "01110000";
--    alpha <= "00000000";--1111111";
--    wait for 200 ns;
--    --alpha <= "00000000";
--    wait for 300 ns;
    wait for 1000ns; 
    stop_the_clock <= true;
    assert false report "Simulation Finished\n" severity failure;
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