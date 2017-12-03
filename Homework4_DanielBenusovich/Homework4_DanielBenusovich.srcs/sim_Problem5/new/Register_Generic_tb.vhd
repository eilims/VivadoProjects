library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Register_Generic_tb is
end;

architecture bench of Register_Generic_tb is

  component Register_Generic
      Generic (Length : integer);
      Port ( I_CLK : in STD_LOGIC;
             I_RST : in STD_LOGIC;
             I_E : in STD_LOGIC;
             I_DATA : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
             O_DATA : out STD_LOGIC_VECTOR ((Length - 1) downto 0));
  end component;

  constant Length : integer := 8;
  signal I_CLK: STD_LOGIC := '1';
  signal I_RST: STD_LOGIC;
  signal I_E: STD_LOGIC;
  signal I_DATA: STD_LOGIC_VECTOR ((Length - 1) downto 0);
  signal O_DATA: STD_LOGIC_VECTOR ((Length - 1) downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin


  uut: Register_Generic generic map ( Length =>  Length)
                           port map ( I_CLK  => I_CLK,
                                      I_RST  => I_RST,
                                      I_E    => I_E,
                                      I_DATA => I_DATA,
                                      O_DATA => O_DATA );

  stimulus: process
  begin
    I_RST <= '0';
    I_E <= '1';
    I_DATA <= "10011001";
    wait for 20 ns;
    I_DATA <= "01100110";
    wait for 20 ns;
    I_RST <= '1';
    wait for 40 ns;

  end process;

  clocking: process
  begin
    I_CLK <= not I_CLK;
    wait for 10 ns;

  end process;

end;