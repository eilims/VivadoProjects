library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ShiftRegister_tb is
end;

architecture bench of ShiftRegister_tb is

  component ShiftRegister
      Port ( CLK : in STD_LOGIC;
             RST : in STD_LOGIC;
             LOAD : in STD_LOGIC;
             HOLD : in STD_LOGIC;
             DATA : in STD_LOGIC_VECTOR (7 downto 0);
             SERIAL : out STD_LOGIC);
  end component;

  signal CLK: STD_LOGIC := '0';
  signal RST: STD_LOGIC;
  signal LOAD: STD_LOGIC;
  signal HOLD: STD_LOGIC;
  signal DATA: STD_LOGIC_VECTOR (7 downto 0);
  signal SERIAL: STD_LOGIC;

  constant half_clock_period: time := 10 ns;

begin

  uut: ShiftRegister port map ( CLK    => CLK,
                                RST    => RST,
                                LOAD   => LOAD,
                                HOLD   => HOLD,
                                DATA   => DATA,
                                SERIAL => SERIAL );

  stimulus: process
  begin
    RST <= '0';
    LOAD <= '1';
    HOLD <= '1';
    DATA <= "00001111";
    wait for half_clock_period;
    HOLD <= '0';
    LOAD <= '0';
    for i in 0 to 20 loop
        wait for half_clock_period;
    end loop;
    assert false report "Simulation Finished" severity failure;
  end process;

  clocking: process
  begin
    CLK <= not CLK;
    wait for half_clock_period;
  end process;

end;