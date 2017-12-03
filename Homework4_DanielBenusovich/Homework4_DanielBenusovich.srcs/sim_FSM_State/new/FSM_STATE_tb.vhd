library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FSM_STATE_tb is
end;

architecture bench of FSM_STATE_tb is

  component FSM_STATE
      Port ( I_CLK : in STD_LOGIC;
             I_IN : in STD_LOGIC;
             O_OUT : out STD_LOGIC);
  end component;

  signal I_CLK: STD_LOGIC := '1';
  signal I_IN: STD_LOGIC := '1';
  signal O_OUT: STD_LOGIC := '0';
  signal NUM_3: STD_LOGIC := '0';


begin

  uut: FSM_STATE port map ( I_CLK => I_CLK,
                            I_IN  => I_IN,
                            O_OUT => O_OUT );


  number_3: process(I_CLK)
  
  variable count : integer := 0;
  
  begin
        if (rising_edge(I_CLK)) then
            count := count + 1;
            
            if (count = 5) then
                NUM_3 <= '1';
                
            elsif (count = 55) then
                NUM_3 <= '0';
                count := 0;
            
            end if;
            
        end if;
  
  end process number_3;
  
  
  stimulus: process
  begin
  
    wait for 80 ns;
    I_IN <= '0';
    wait for 40 ns;
    I_IN <= '1';
    wait for 40 ns;    

  end process stimulus;


  clocking: process
  begin
  
    I_CLK <= not I_CLK;
    wait for 10 ns;
    
  end process clocking;

end;