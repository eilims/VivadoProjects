library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Part3_tb is
end;

architecture bench of Part3_tb is

    component Part3
      Port ( P0 : in STD_LOGIC_VECTOR (7 downto 0);
             P1 : in STD_LOGIC_VECTOR (7 downto 0);
             alpha : in STD_LOGIC_VECTOR (7 downto 0);
             locked : in STD_LOGIC;
             clk1x : in STD_LOGIC;
             clk2x : in STD_LOGIC;
             Pout : out STD_LOGIC_VECTOR (15 downto 0);
             P1delay : out STD_LOGIC_VECTOR (7 downto 0));
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

    signal P0: STD_LOGIC_VECTOR (7 downto 0);
    signal P1: STD_LOGIC_VECTOR (7 downto 0);
    signal alpha, p1delay: STD_LOGIC_VECTOR (7 downto 0);
    signal locked: STD_LOGIC;
    signal clk1x: STD_LOGIC;
    signal clk2x: STD_LOGIC;
    signal clk, reset: std_logic := '0';
    signal Pout: STD_LOGIC_VECTOR (15 downto 0);
  
    constant clock_period: time := 10 ns;
    constant clock2_period: time := 20 ns;
    constant delay_time: time := 1280 ns;
    signal stop_the_clock: boolean := false;

begin

    uut: Part3 port map (   P0     => P0,
                            P1     => P1,
                            alpha  => alpha,
                            locked => locked,
                            clk1x  => clk1x,
                            clk2x  => clk2x,
                            Pout   => Pout,
                            P1Delay => P1Delay);
                        
    uut2 : clk_wiz_0 port map ( clk_out1 => clk1x,
                                clk_out2 => clk2x,
                                -- Status and control signals                
                                reset => reset,
                                locked => locked,
                                -- Clock in ports
                                clk_in1 => clk);
    
    stimulus: process
        variable count : integer := 0;
    begin
        P0 <= "00000000";
        P1 <= "00000000";
        alpha <= "01111111";
        while locked = '0' loop
            wait for 10 ns;
        end loop;
        
        alpha <= "00000000";
        count := 0;
        while (count <= 4) loop
            -- start Positive Signal
            P0 <= "00000000";
            P1 <= transport "00000000" after delay_time;
            wait for clock2_period;
            P0 <=  "00100111";
            P1 <= transport "11011001" after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110" after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111111" ;
            P1 <= transport"10000001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110"  after delay_time;
            wait for clock2_period;
            P0 <=  "00100111" ;
            P1 <= transport"11011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "00000000";
            P1 <= transport"00000000"  after delay_time;
            wait for clock2_period;
            --End positive Signal
            
            
            --start Negative Signal
            P1 <= transport"00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01111111" after delay_time;
            P0 <=  "10000001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after  delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001";
            wait for clock2_period;
            P1 <= transport "00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            -- end negative signal
            
            count := count + 1;
        end loop;
        
        alpha <= "00100000";
        count := 0;
        while (count <= 4) loop
            -- start Positive Signal
            P0 <= "00000000";
            P1 <= transport "00000000" after delay_time;
            wait for clock2_period;
            P0 <=  "00100111";
            P1 <= transport "11011001" after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110" after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111111" ;
            P1 <= transport"10000001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110"  after delay_time;
            wait for clock2_period;
            P0 <=  "00100111" ;
            P1 <= transport"11011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "00000000";
            P1 <= transport"00000000"  after delay_time;
            wait for clock2_period;
            --End positive Signal
            
            
            --start Negative Signal
            P1 <= transport"00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01111111" after delay_time;
            P0 <=  "10000001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after  delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001";
            wait for clock2_period;
            P1 <= transport "00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            -- end negative signal
            
            count := count + 1;
        end loop;
        
        alpha <= "01000000";
        count := 0;
        while (count <= 4) loop
            -- start Positive Signal
            P0 <= "00000000";
            P1 <= transport "00000000" after delay_time;
            wait for clock2_period;
            P0 <=  "00100111";
            P1 <= transport "11011001" after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110" after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111111" ;
            P1 <= transport"10000001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110"  after delay_time;
            wait for clock2_period;
            P0 <=  "00100111" ;
            P1 <= transport"11011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "00000000";
            P1 <= transport"00000000"  after delay_time;
            wait for clock2_period;
            --End positive Signal
            
            
            --start Negative Signal
            P1 <= transport"00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01111111" after delay_time;
            P0 <=  "10000001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after  delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001";
            wait for clock2_period;
            P1 <= transport "00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            -- end negative signal
            
            count := count + 1;
        end loop;
        
        alpha <= "01100000";
        count := 0;
        while (count <= 4) loop
            -- start Positive Signal
            P0 <= "00000000";
            P1 <= transport "00000000" after delay_time;
            wait for clock2_period;
            P0 <=  "00100111";
            P1 <= transport "11011001" after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110" after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111111" ;
            P1 <= transport"10000001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110"  after delay_time;
            wait for clock2_period;
            P0 <=  "00100111" ;
            P1 <= transport"11011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "00000000";
            P1 <= transport"00000000"  after delay_time;
            wait for clock2_period;
            --End positive Signal
            
            
            --start Negative Signal
            P1 <= transport"00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01111111" after delay_time;
            P0 <=  "10000001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after  delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001";
            wait for clock2_period;
            P1 <= transport "00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            -- end negative signal
            
            count := count + 1;
        end loop;
        
        alpha <= "01111111";
        count := 0;
        while (count <= 4) loop
            -- start Positive Signal
            P0 <= "00000000";
            P1 <= transport "00000000" after delay_time;
            wait for clock2_period;
            P0 <=  "00100111";
            P1 <= transport "11011001" after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110" after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111111" ;
            P1 <= transport"10000001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01111000" ;
            P1 <= transport"10001000"  after delay_time;
            wait for clock2_period;
            P0 <=  "01100110" ;
            P1 <= transport"10011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "01001010" ;
            P1 <= transport"10110110"  after delay_time;
            wait for clock2_period;
            P0 <=  "00100111" ;
            P1 <= transport"11011001"  after delay_time;
            wait for clock2_period;
            P0 <=  "00000000";
            P1 <= transport"00000000"  after delay_time;
            wait for clock2_period;
            --End positive Signal
            
            
            --start Negative Signal
            P1 <= transport"00000000" after delay_time;
            P0 <=  "00000000" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01111111" after delay_time;
            P0 <=  "10000001" ;
            wait for clock2_period;
            P1 <= transport"01111000" after delay_time;
            P0 <=  "10001000" ;
            wait for clock2_period;
            P1 <= transport"01100110" after delay_time;
            P0 <=  "10011001" ;
            wait for clock2_period;
            P1 <= transport"01001010" after  delay_time;
            P0 <=  "10110110" ;
            wait for clock2_period;
            P1 <= transport"00100111" after delay_time;
            P0 <=  "11011001";
            wait for clock2_period;
            P1 <= transport "00000000" after delay_time;
            P0 <=  "00000000" ;
        wait for clock2_period;
        -- end negative signal
        
        count := count + 1;
        end loop;
                
                
        
        
        wait for 4000ns; 
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