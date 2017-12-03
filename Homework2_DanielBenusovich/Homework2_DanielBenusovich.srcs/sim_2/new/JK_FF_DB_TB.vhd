library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity JK_FF_DB_tb is
end ;

architecture bench of JK_FF_DB_tb is

  component JK_FF_DB
      Port ( J : in STD_LOGIC;
             K : in STD_LOGIC;
             PRE : in STD_LOGIC;
             CLR : in STD_LOGIC;
             CLK : in STD_LOGIC;
             E : in STD_LOGIC;
             Q : out STD_LOGIC;
             NOTQ : out STD_LOGIC);
  end component;

  signal J, K, PRE, CLR, CLK, E, Q, NOTQ : STD_LOGIC := '0';


begin

  uut: JK_FF_DB port map ( CLK   => CLK,
                           J    => J,
                           K    => K,
                           PRE  => PRE,
                           CLR  => CLR,
                           E => E,
                           Q    => Q,
                           NOTQ => NOTQ );

  stimulus: process
  begin

    --Test J not K
    E <= '1';
    J <= '1';
    K <= '0';
    CLK <= '1';
    wait for 10 ns;
    ClK <= '0';
    wait for 10 ns;
    -- Test not j k
    J <= '0';
    K <= '1';
    CLK <= '1';
    wait for 10 ns;
    ClK <= '0';
    wait for 10 ns;
    --Test JK
    J <= '1';
    K <= '1';
    CLK <= '1';
    wait for 10 ns;
    ClK <= '0';
    wait for 10 ns;    
    --Test not j not k
    J <= '0';
    K <= '0';
    CLK <= '1';
    wait for 10 ns;
    ClK <= '0';
    wait for 10 ns;
    --Test Clear
    CLR <= '1';
    wait for 5 ns;
    CLK <= '1';
    wait for 10 ns;
    ClK <= '0';
    wait for 10 ns;   
    --Test Preset
    CLR <= '0';
    wait for 5 ns;
    PRE <= '1';
    wait for 5 ns;
    CLK <= '1';
    wait for 10 ns;
    ClK <= '0';
    wait for 10 ns;   
    assert false report "Sim Finished" severity failure;
    wait;
  end process;

end;