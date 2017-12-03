library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Part1_tb is
end;

architecture bench of Part1_tb is

  component Part1
      Port ( P0 : in signed(7 downto 0);
             P1 : in signed(7 downto 0);
             alpha : in signed(7 downto 0);
             Pout : out signed(15 downto 0));
  end component;

  signal P0: signed(7 downto 0);
  signal P1: signed(7 downto 0);
  signal alpha: signed(7 downto 0);
  signal Pout: signed(15 downto 0);
  
    constant test: time := 20 ns;

begin

  uut: Part1 port map ( P0    => P0,
                        P1    => P1,
                        alpha => alpha,
                        Pout  => Pout );

  stimulus: process
    variable count : integer := 0;
  begin
          P0 <= "00000000";
          P1 <= "00000000";
          
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
    assert false report "simuatlion end" severity failure;
  end process;


end;