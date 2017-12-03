library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BinaryCounter_tb is
end;

architecture bench of BinaryCounter_tb is

  component BinaryCounter
      GENERIC (LENGTH : integer);
      Port ( I_CLK : in STD_LOGIC;
             O_COUNT : out STD_LOGIC_VECTOR (4 downto 0));
  end component;

  signal I_CLK: STD_LOGIC := '0';
  signal O_COUNT: STD_LOGIC_VECTOR (4 downto 0);

begin

  uut: BinaryCounter    generic map (LENGTH => 5)
                        port map ( I_CLK   => I_CLK,
                                O_COUNT => O_COUNT );
                     

  stimulus: process
  begin
    for i in 0 to 100 loop
        wait for 10 ns;
    end loop;
    assert false report "Simulation Finished" severity failure;
  end process;
  
  clocking: process
   begin
    I_CLK <= NOT I_CLK;
    wait for 10 ns;
   end process clocking;


end;