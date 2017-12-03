library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Wallace_Tree_tb is
end;

architecture bench of Wallace_Tree_tb is

  component Wallace_Tree
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
             B : in STD_LOGIC_VECTOR (3 downto 0);
             Result : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (3 downto 0);
  signal B: STD_LOGIC_VECTOR (3 downto 0);
  signal Result: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: Wallace_Tree port map ( A      => A,
                               B      => B,
                               Result => Result );

  stimulus: process
  begin
  
    A <= "1011";
    B <= "1001";
    wait for 10 ns;

    wait;
  end process;


end;
  