library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity CPA_tb is
end;

architecture bench of CPA_tb is

  component CPA
      Generic ( Length : integer);
      Port ( A : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
             B : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
             Cout : out STD_LOGIC;
             Result : out STD_LOGIC_VECTOR ((Length - 1) downto 0));
  end component;

  constant Length : integer := 4;
  signal A: STD_LOGIC_VECTOR ((Length - 1) downto 0);
  signal B: STD_LOGIC_VECTOR ((Length - 1) downto 0);
  signal Cout: STD_LOGIC;
  signal Result: STD_LOGIC_VECTOR ((Length - 1) downto 0);

begin

  -- Insert values for generic parameters !!
  uut: CPA generic map ( Length =>  Length)
              port map ( A      => A,
                         B      => B,
                         Cout   => Cout,
                         Result => Result );

  stimulus: process
  begin
  
    A <= "0001";
    B <= "1111";
    wait for 20 ns;
    B <= "0001";

    wait;
  end process;


end;