library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Serial_Adder_8_tb is
end;

architecture bench of Serial_Adder_8_tb is

  component Serial_Adder_8
      Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
             B : in STD_LOGIC_VECTOR (7 downto 0);
             Cout : out STD_LOGIC;
             Result : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (7 downto 0);
  signal B: STD_LOGIC_VECTOR (7 downto 0);
  signal Cout: STD_LOGIC;
  signal Result: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: Serial_Adder_8 port map ( A      => A,
                                 B      => B,
                                 Cout   => Cout,
                                 Result => Result );
  
  stimulus: process
  begin
  
    -- Put initialisation code here
    A <= "00010001";
    B <= "00010001";
    wait for 10 ns;
    A <= "00010001";
    B <= "11110001";
    wait for 10 ns;
    -- Put test bench stimulus code here

    wait;
  end process;


end;