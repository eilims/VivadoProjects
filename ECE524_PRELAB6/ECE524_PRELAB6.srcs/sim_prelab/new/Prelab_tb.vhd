library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Prelab_tb is
end;

architecture bench of Prelab_tb is

  component Prelab
      Generic ( Length : integer := 4);
      Port ( A : in STD_LOGIC_VECTOR (Length - 1 downto 0);
             B : in STD_LOGIC_VECTOR (Length - 1 downto 0);
             Z : out STD_LOGIC_VECTOR ((2*Length-1) downto 0));
  end component;

  constant Length :integer := 4;
  signal A: STD_LOGIC_VECTOR (Length - 1 downto 0);
  signal B: STD_LOGIC_VECTOR (Length - 1 downto 0);
  signal Z: STD_LOGIC_VECTOR ((2*Length-1) downto 0);

begin

  -- Insert values for generic parameters !!
  uut: Prelab generic map ( Length =>  Length)
                 port map ( A      => A,
                            B      => B,
                            Z      => Z );

  stimulus: process
  begin
    A <= "0101";
    B <= "0101";
    wait for 10 ns;
    A <= "1000";
    B <= "1000";
    wait for 20 ns;
    A <= "1001";
    B <= "1001";
    wait for 20 ns;
    A <= "0010";
    B <= "0010";
    wait for 20 ns;
    A <= "0001";
    B <= "0001";
    wait for 20 ns;
  end process;


end;