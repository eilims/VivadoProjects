library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use std.textio.all;

entity cic_tb is
end;

architecture bench of cic_tb is

  component cic
   generic(CI_SIZE : integer;
   CO_SIZE : integer;
   STAGES : integer);
   port (clk : in std_logic;
   ce : in std_logic;
   ce_r : in std_logic;
   rst : in std_logic;
   d : in std_logic_vector (CI_SIZE-1 downto 0);
   q : out std_logic_vector (CO_SIZE-1 downto 0));
  end component;

  constant CI_SIZE : integer := 18;
  constant CO_SIZE : integer := 30;
  constant STAGES : integer := 5;
  signal clk: std_logic := '1';
  signal ce: std_logic := '1';
  signal ce_r: std_logic := '0';
  signal rst: std_logic := '0';
  signal d: std_logic_vector (CI_SIZE-1 downto 0)  := std_logic_vector(to_signed(0, CI_SIZE));
  signal q: std_logic_vector (CO_SIZE-1 downto 0);

  file INFILE : text is in "D:\Documents\ECE524\LAB2\input.txt";

  constant clock_period: time := 10 ns;
  signal stop : boolean := true;

begin

  -- Insert values for generic parameters !!
  uut: cic generic map ( CI_SIZE => CI_SIZE,
                         CO_SIZE => CO_SIZE,
                         STAGES  =>  STAGES)
              port map ( clk     => clk,
                         ce      => ce,
                         ce_r    => ce_r,
                         rst     => rst,
                         d       => d,
                         q       => q );

  stimulus: process
  variable testLine : line;
  variable testInteger : integer;
  begin
    --Itll do something good assert = awesome
    rst <= '1';
    wait for 25 ns;
    stop <= false;
    rst <= '0';
    wait for 25 ns;
    file_close(INFILE);
    file_open(INFILE,  "D:\Documents\ECE524\LAB2\input.txt", READ_MODE);
    while ( not endfile(INFILE)) loop
        readline(INFILE, testLine);
        read(testLine, testInteger);
        d <= std_logic_vector(to_signed(testInteger, CI_SIZE));
        wait for 25 ns;
    end loop;
    assert false report "Simulation Finished" severity failure;

  end process;
  
  ce_r_loop: process(clk)
  variable count : integer := 0;
  begin
    if(clk'event and clk='1') then
        count := (count + 1) mod 5;
        if (count = 4) then
            ce_r <= '1';
        elsif (count = 0) then
            ce_r <= '0';
        end if;
    end if;
    if stop then
        count := 0;
    end if;
  end process;
  
  clocking: process
  begin  
        clk <= not clk;
        wait for 12.5 ns;
  end process;

end;