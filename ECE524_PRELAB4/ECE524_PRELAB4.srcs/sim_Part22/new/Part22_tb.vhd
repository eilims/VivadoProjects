library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Part22_tb is
end;

architecture bench of Part22_tb is

  component Part2
      Port ( clk1x : in std_logic;
             clk2x : in std_logic;
             P0 : in STD_LOGIC_VECTOR (7 downto 0);
             P1 : in STD_LOGIC_VECTOR (7 downto 0);
             alpha : in STD_LOGIC_VECTOR (7 downto 0);
             Pout : out STD_LOGIC_VECTOR (15 downto 0);
             locked : in std_logic);
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

  signal clk, reset : std_logic := '0';
  signal clk1x: std_logic := '0';
  signal clk2x: std_logic := '0';
  signal P0: STD_LOGIC_VECTOR (7 downto 0);
  signal P1: STD_LOGIC_VECTOR (7 downto 0);
  signal alpha: STD_LOGIC_VECTOR (7 downto 0);
  signal Pout: STD_LOGIC_VECTOR (15 downto 0);
  signal locked: std_logic;

  constant clock_period: time := 10 ns;
  constant test: time := 20 ns;
  signal stop_the_clock: boolean := false;

begin

  uut: Part2 port map (
                        clk1x  => clk1x,
                        clk2x  => clk2x,
                        P0     => P0,
                        P1     => P1,
                        alpha  => alpha,
                        Pout   => Pout,
                        locked => locked 
                        );
    uut2 : clk_wiz_0 port map ( 
                      -- Clock out ports  
                       clk_out1 => clk1x,
                       clk_out2 => clk2x,
                      -- Status and control signals                
                       reset => reset,
                       locked => locked,
                       -- Clock in ports
                       clk_in1 => clk
                       );
    stimulus: process
        variable count : integer := 0;
    begin
        P0 <= "00000000";
        P1 <= "00000000";
        while locked = '0' loop
        wait for 10 ns;
        end loop;
        
        --test one
        alpha <= "00000000";
        while (count <= 4) loop
        -- start Positive Signal
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01111111";
        P1 <= "10000001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        --End positive Signal
        
        
        --start Negative Signal
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01111111";
        P0 <= "10000001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        -- end negative signal
        
        count := count + 1;
        end loop;
        
        --test two
        count := 0;
        alpha <= "00100000";
        
        
        while (count <= 4) loop
        -- start Positive Signal
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01111111";
        P1 <= "10000001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        --End positive Signal
        
        
        --start Negative Signal
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01111111";
        P0 <= "10000001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        -- end negative signal
        
        count := count + 1;
        end loop;
        
        --test three
        count := 0;
        alpha <= "01000000";
        
        
        while (count <= 4) loop
        -- start Positive Signal
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01111111";
        P1 <= "10000001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        --End positive Signal
        
        
        --start Negative Signal
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01111111";
        P0 <= "10000001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        -- end negative signal
        
        count := count + 1;
        end loop;
        
        --test 4
        count := 0;
        alpha <= "01100000";
        
        
        while (count <= 4) loop
        -- start Positive Signal
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01111111";
        P1 <= "10000001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        --End positive Signal
        
        
        --start Negative Signal
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01111111";
        P0 <= "10000001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        -- end negative signal
        
        count := count + 1;
        end loop;
        
        --test five
        count := 0;
        alpha <= "01111111";
        
        
        while (count <= 4) loop
        -- start Positive Signal
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01111111";
        P1 <= "10000001";
        wait for test;
        P0 <= "01111000";
        P1 <= "10001000";
        wait for test;
        P0 <= "01100110";
        P1 <= "10011001";
        wait for test;
        P0 <= "01001010";
        P1 <= "10110110";
        wait for test;
        P0 <= "00100111";
        P1 <= "11011001";
        wait for test;
        P0 <= "00000000";
        P1 <= "00000000";
        wait for test;
        --End positive Signal
        
        
        --start Negative Signal
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01111111";
        P0 <= "10000001";
        wait for test;
        P1 <= "01111000";
        P0 <= "10001000";
        wait for test;
        P1 <= "01100110";
        P0 <= "10011001";
        wait for test;
        P1 <= "01001010";
        P0 <= "10110110";
        wait for test;
        P1 <= "00100111";
        P0 <= "11011001";
        wait for test;
        P1 <= "00000000";
        P0 <= "00000000";
        wait for test;
        -- end negative signal
        
        count := count + 1;
        end loop;
          
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