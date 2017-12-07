library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity tuner_tb is
end;

architecture bench of tuner_tb is

  component tuner
      Generic (   Data_Length : integer;
                  Index_Length : integer;
                  Threshold : integer);
      Port ( clk : in STD_LOGIC;
             i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
             o_led : out STD_LOGIC_VECTOR (7 downto 0));
  end component;
  
  
  
  --DDS Generator signals
  signal m_axis_data_tvalid              : std_logic := '0';  -- payload is valid
  signal m_axis_data_tdata               : std_logic_vector(7 downto 0) := (others => '0');  -- data payload

  signal m_axis_phase_tvalid             : std_logic := '0';  -- payload is valid
  signal m_axis_phase_tdata              : std_logic_vector(31 downto 0) := (others => '0');  -- data payload
  
  
  
  

  constant Data_Length : integer := 8;
  constant Index_Length : integer := 13;
  constant Threshold : integer := 10;

  signal clk: STD_LOGIC;
  signal i_data: STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
  signal o_led: STD_LOGIC_VECTOR (7 downto 0);
  
  constant clock_period : time := 10 ns;

begin

  dut_sine : entity work.dds_compiler_0
        port map (
          aclk                            => clk
          ,m_axis_data_tvalid              => m_axis_data_tvalid
          ,m_axis_data_tdata               => m_axis_data_tdata
          ,m_axis_phase_tvalid             => m_axis_phase_tvalid
          ,m_axis_phase_tdata              => m_axis_phase_tdata
          );

  -- Insert values for generic parameters !!
  uut: tuner generic map ( Data_Length  => Data_Length,
                           Index_Length => Index_Length,
                           Threshold    =>  Threshold)
                port map ( clk          => clk,
                           i_data       => m_axis_data_tdata,
                           o_led        => o_led );

  stimulus: process
  begin

    wait;
  end process;
  
  clocking: process
  begin
  clk <= '0';
  clk <= '1' after clock_period/2;
  wait for clock_period;
  end process;


end;