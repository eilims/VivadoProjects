
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Memory_3;

entity FIFO_tb is
end;

architecture testbench of FIFO_tb is

  component FIFO
      Port ( CLK : in STD_LOGIC;
             RW : in STD_LOGIC;
             DATAIN : in STD_LOGIC_VECTOR (7 downto 0);
             FULL : out STD_LOGIC;
             DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
             DATA : buffer Memory_3.FIFO_mem);
  end component;

  signal CLK: STD_LOGIC := '0';
  signal RW: STD_LOGIC;
  signal DATAIN: STD_LOGIC_VECTOR (7 downto 0);
  signal FULL: STD_LOGIC;
  signal DATAOUT: STD_LOGIC_VECTOR (7 downto 0);
  signal DATA: Memory_3.FIFO_mem;


begin

  uut: FIFO port map ( CLK     => CLK,
                       RW      => RW,
                       DATAIN  => DATAIN,
                       FULL    => FULL,
                       DATAOUT => DATAOUT,
                       DATA    => DATA );

  stimulus: process
  begin
  
    -- Put initialisation code here
    for i in 0 to 20 loop
        DATAIN <= "00001111";
        RW <= '1';
        wait for 128 ns;
        RW <= '0';
        DATAIN <= "11111111";
        wait for 40 ns;
        RW <= '1';
        wait for 40 ns;
    end loop;
    -- Put test bench stimulus code here

  end process stimulus;

  clocking: process
  begin
    CLK <= not CLK;
    wait for 1 ns;
  end process clocking;

end testbench;