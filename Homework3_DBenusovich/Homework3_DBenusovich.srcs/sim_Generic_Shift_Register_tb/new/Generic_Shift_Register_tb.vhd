library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Generic_Shift_Register_tb is
end;

architecture bench of Generic_Shift_Register_tb is
  component Generic_Shift_Register
    Generic (Length : integer);
    Port (   CLK : in STD_LOGIC;
             S1, S0 : in STD_LOGIC;
             OE1, OE2 : in STD_LOGIC;
             SL : in STD_LOGIC;
             SR : in STD_LOGIC;
             CLR : in STD_LOGIC;
             DATAIN : in STD_LOGIC_VECTOR (Length downto 0);
             QA, QH : out STD_LOGIC);
  end component;
  signal Length : integer := 7;
  signal CLK: STD_LOGIC := '0';
  signal S1, S0: STD_LOGIC := '0';
  signal OE1, OE2: STD_LOGIC := '1';
  signal SL: STD_LOGIC := '0';
  signal SR: STD_LOGIC := '0';
  signal CLR: STD_LOGIC := '1';
  signal DATAIN: STD_LOGIC_VECTOR (Length downto 0);
  signal QA, QH: STD_LOGIC := '0';
  
  constant wait_time : time := 20 ns;


begin

  -- Insert values for generic parameters !!
  uut: Generic_Shift_Register generic map ( Length =>  Length)
                                 port map ( CLK    => CLK,
                                            S1     => S1,
                                            S0     => S0,
                                            OE1    => OE1,
                                            OE2    => OE2,
                                            SL     => SL,
                                            SR     => SR,
                                            CLR    => CLR,
                                            DATAIN => DATAIN,
                                            QA     => QA,
                                            QH     => QH );

  stimulus: process
  
  begin
  
    --Test load
    S1 <= '1';
    S0 <= '1';
    DATAIN <= x"0f";
    wait for wait_time;
    
    --Test shift right twice
    S1 <= '0';
    SR <= '1';
    wait for wait_time;
    SR <= '0';
    wait for wait_time;
    
    --TEst shift left twice
    S1 <= '1';
    S0 <= '0';
    SL <= '1';
    wait for wait_time;
    SL <= '0';
    wait for wait_time;    


  end process;
  
  

  clocking: process
  begin
    CLK <= not CLK;
    wait for 10 ns;
  end process;

end;