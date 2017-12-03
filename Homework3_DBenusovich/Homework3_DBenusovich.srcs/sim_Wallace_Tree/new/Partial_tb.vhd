
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.Memory_3;

entity MULTIPLIER_AND_ARRAY_tb is
end;

architecture bench of MULTIPLIER_AND_ARRAY_tb is

  component MULTIPLIER_AND_ARRAY
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
             B : in STD_LOGIC_VECTOR (3 downto 0);
             DATA : out Memory_3.partial_prod_mem);
  end component;

  signal A: STD_LOGIC_VECTOR (3 downto 0);
  signal B: STD_LOGIC_VECTOR (3 downto 0);
  signal DATA: Memory_3.partial_prod_mem;

begin

  uut: MULTIPLIER_AND_ARRAY port map ( A    => A,
                                       B    => B,
                                       DATA => DATA );

  stimulus: process
  begin
  

    A <= "0101";
    B <= "1100";
    wait for 10 ns;



  end process;
  
end;