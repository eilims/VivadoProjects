library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BinaryCounter_tb is
end;

architecture bench of BinaryCounter_tb is

  component BinaryCounter
      Generic (LENGTH :integer);
      Port ( CLK : in STD_LOGIC;
             RST : in STD_LOGIC;
             DIR : in STD_LOGIC;
             ENB : in STD_LOGIC;
             LOAD : in STD_LOGIC;
             DATA : in STD_LOGIC_VECTOR (LENGTH - 1 downto 0);
             COUNT : out STD_LOGIC_VECTOR (LENGTH - 1 downto 0));
  end component;

  constant LENGTH : integer := 4;
  
  signal CLK: STD_LOGIC := '0';
  signal RST: STD_LOGIC := '0';
  signal DIR: STD_LOGIC := '1';
  signal ENB: STD_LOGIC := '0';
  signal LOAD: STD_LOGIC := '0';
  signal DATA: STD_LOGIC_VECTOR (LENGTH - 1 downto 0);
  signal COUNT: STD_LOGIC_VECTOR (LENGTH - 1 downto 0);
  
  
  constant half_period : time := 10 ns;

begin

  -- Insert values for generic parameters !!
  uut: BinaryCounter generic map ( LENGTH =>  LENGTH)
                        port map ( CLK    => CLK,
                                   RST    => RST,
                                   DIR    => DIR,
                                   ENB    => ENB,
                                   LOAD   => LOAD,
                                   DATA   => DATA,
                                   COUNT  => COUNT );

  stimulus: process
  begin
    ENB <= '1';
    
    --Test forward for 10
    for i in 0 to 10 loop
        wait for half_period; 
    end loop;
    
    --Test backwards for ten
    DIR <= '0';
    for i in 0 to 10 loop
        wait for half_period; 
    end loop;
    
    --Test loading
    LOAD <= '1';
    DATA <= "1010";
    wait for 40 ns;
    
    --Resume counting up
    LOAD <= '0';
    DIR <= '1';
    for i in 0 to 10 loop
        wait for half_period; 
    end loop;
    
    --Test Reset
    RST <= '1';
    wait for 40 ns;
    
    --Resume counting up
    RST <= '0';
    DIR <= '1';
    for i in 0 to 10 loop
        wait for half_period; 
    end loop;
    
    --Finished
    assert false report "Simulation Finished" severity failure;
  end process;
  
  
  clocking : process
  begin
    CLK <= not CLK;
    wait for half_period;
  end process clocking;


end;