library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Problem5_tb is
end;

architecture bench of Problem5_tb is

  component Problem5
      Port ( I_CLK : in STD_LOGIC;
             I_RST : in STD_LOGIC;
             O_RESULT : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal I_CLK: STD_LOGIC := '1';
  signal I_RST: STD_LOGIC := '0';
  signal O_RESULT: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: Problem5 port map ( I_CLK    => I_CLK,
                           I_RST    => I_RST,
                           O_RESULT => O_RESULT );

  stimulus: process
  begin

    wait for 100 ns;

  end process;

    clocking: process
    
    begin
    
        I_CLK <= not I_CLK;
        wait for 10 ns;
    
    end process clocking;
end;