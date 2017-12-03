library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.util_pkg.all;

entity Serial_Implementation_FIR_tb is
end;

architecture bench of Serial_Implementation_FIR_tb is

  component Serial_Implementation_FIR
      Generic (
          Filter_Length : integer := 20;
          Length : integer := 16
      );
      Port ( 
          CLK : in STD_LOGIC;
          X : in STD_LOGIC_VECTOR (Length - 1 downto 0);
          Y : out STD_LOGIC_VECTOR ((Length + 15 + log2c(Filter_Length)) downto 0)
          );
  end component;
  
  COMPONENT dds_compiler_0
    PORT (
      aclk : IN STD_LOGIC;
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT;
  
  component rounder
  generic(RI_SIZE    :    integer :=    37;        
  RO_SIZE    :    integer :=    16);        
  port (clk :    in std_logic;
  ce :    in std_logic;
  din                    :    in std_logic_vector (RI_SIZE-1    downto 0);
  dout :    out std_logic_vector (RO_SIZE-1    downto 0));
  end component;
  
  constant Filter_Length : integer := 20;
  constant Length : integer := 16;
  signal CLK: STD_LOGIC;
  signal X, X1: STD_LOGIC_VECTOR (Length - 1 downto 0);
  signal Y: STD_LOGIC_VECTOR ((Length + 15 + log2c(Filter_Length)) downto 0) ;
  signal valid : std_logic := '0';
  constant clock_period: time := 200 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: Serial_Implementation_FIR generic map ( Filter_Length => Filter_Length,
                                               Length        =>  Length)
                                    port map ( CLK           => CLK,
                                               X             => X,
                                               Y             => Y );
                                               
   DDS : dds_compiler_0
                                                 PORT MAP (
                                                   aclk => clk,
                                                   m_axis_data_tvalid => valid,
                                                   m_axis_data_tdata => X
                                                 );
   u:	rounder
                                                 generic map(RI_SIZE    =>    37,
                                                 RO_SIZE    =>    16)
                                                 port map(clk =>    clk,
                                                 ce =>    '1',
                                                 din                =>    Y,
                                                 dout =>    X1);              

  stimulus: process
  begin
  ----Code for impulse response
----    X <= "0000000000000001";
--      X <= "0111111111111111";
--      wait for 13500 ns;
--      X <= (others => '0');
----    X <= (others => '0');
--    wait for 5000 ns; 


    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;