library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.all;

entity MUX_4_DB_tb is
end;

architecture bench of MUX_4_DB_tb is

  component MUX
      Port ( in0 : in STD_LOGIC_VECTOR (0 to 3);
             S1: in STD_LOGIC;
             S2: in STD_LOGIC;
             OUT0 : out STD_LOGIC);
  end component;
  
 

  signal in0 : STD_LOGIC_VECTOR (0 to 3);
  signal number : STD_LOGIC_VECTOR (0 to 5) := "000000";
  signal S1: STD_LOGIC;
  signal S2: STD_LOGIC;
  signal OUT0: STD_LOGIC;

   for uut : MUX use entity
                work.MUX_4_DB(Behavioral);
begin

  uut: MUX port map ( in0 => in0,
                           S1   => S1,
                           S2   => S2,
                           OUT0 => OUT0 );

  stimulus: process
  begin
    -- Put initialisation code here
    for i in 0 to 63 loop
        number <= std_logic_vector(to_unsigned(i, 6));
        in0(0) <= number(5);
        in0(1) <= number(4);
        in0(2) <= number(3);
        in0(3) <= number(2);
        s1 <= number(1);
        s2 <= number(0);
        wait for 10 ns;
    end loop;




    -- Put test bench stimulus code here

    wait;
  end process;


end;

--configuration MUX_CFG of MUX_4_DB_tb is

--    for bench
--        for uut: MUX_4_DB
--            use entity WORK.MUX_4_DB(Structural);
--        end for; 
--    end for;

--end MUX_CFG;
