library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Sequence_Detector_tb is
end;

architecture bench of Sequence_Detector_tb is

  component Sequence_Detector
      Port ( CLK : in STD_LOGIC;
             DATAIN : in STD_LOGIC;
             SEQ1 : out STD_LOGIC;
             SEQ2 : out STD_LOGIC);
  end component;

  signal CLK: STD_LOGIC := '0';
  signal DATAIN: STD_LOGIC := '0';
  signal SEQ1: STD_LOGIC := '0';
  signal SEQ2: STD_LOGIC := '0';


begin

  uut: Sequence_Detector port map ( CLK    => CLK,
                                    DATAIN => DATAIN,
                                    SEQ1   => SEQ1,
                                    SEQ2   => SEQ2 );

  stimulus: process
  
  begin
  
    DATAIN <= '0';
    wait for 20 ns;    
    DATAIN <= '0';
    wait for 20 ns;    
    DATAIN <= '0';
    wait for 20 ns;    
    DATAIN <= '1';
    wait for 20 ns;
    DATAIN <= '1';
    wait for 20 ns;
    DATAIN <= '1';
    wait for 20 ns;
    DATAIN <= '0';
    wait for 20 ns;
    DATAIN <= '0';
    wait for 20 ns;    
    DATAIN <= '1';
    wait for 20 ns;
    DATAIN <= '1';
    wait for 20 ns;
    DATAIN <= '0';
    wait for 20 ns;      
  end process;


  clocking: process
  
  begin
  
    CLK <= not CLK;
    wait for 10 ns;
    
  end process;

end;