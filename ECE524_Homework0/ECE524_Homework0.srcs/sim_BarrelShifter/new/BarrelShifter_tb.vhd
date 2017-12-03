library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BarrelShifter_tb is
end;

architecture bench of BarrelShifter_tb is

  component BarrelShifter
      Port ( Din : in STD_LOGIC_VECTOR (15 downto 0);
             SHIFT_AMT : in STD_LOGIC_VECTOR (3 downto 0);
             CLK : in STD_LOGIC;
             ENB : in STD_LOGIC;
             DOUT : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  signal Din: STD_LOGIC_VECTOR (15 downto 0);
  signal SHIFT_AMT: STD_LOGIC_VECTOR (3 downto 0);
  signal CLK: STD_LOGIC := '0';
  signal ENB: STD_LOGIC := '1';
  signal DOUT: STD_LOGIC_VECTOR (15 downto 0);

  constant clock_period: time := 10 ns;


begin

  uut: BarrelShifter port map ( Din       => Din,
                                SHIFT_AMT => SHIFT_AMT,
                                CLK       => CLK,
                                ENB       => ENB,
                                DOUT      => DOUT );
                                
  stimulus: process
  begin
    Din <= "1000000000000000";
    SHIFT_AMT <= "0000";
    for i in 0 to 16 loop
        wait for clock_period;
        Din <= Dout;
        wait for clock_period;
    end loop;
    Din <= "1000000000000000";
    SHIFT_AMT <= "0001";
    for i in 0 to 16 loop
            wait for clock_period;
            Din <= Dout;
            wait for clock_period;
    end loop;
    Din <= "1000000000000000";
    SHIFT_AMT <= "0010";
    for i in 0 to 16 loop
            wait for clock_period;
            Din <= Dout;
            wait for clock_period;
    end loop;
  end process stimulus;


  clocking: process
  begin
    CLK <= not CLK;
    wait for clock_period; 
  end process clocking;

end;