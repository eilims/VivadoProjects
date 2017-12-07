library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity fft_module_tb is
end;

architecture bench of fft_module_tb is

  component fft_module
      Generic (   Data_Length : integer;
                  Index_Length : integer);
      Port ( clk : in STD_LOGIC;
             i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
             o_valid : out STD_LOGIC;
             o_data : out STD_LOGIC_VECTOR (((Data_Length) - 1) downto 0);
             o_index : out STD_LOGIC_VECTOR ((Index_Length - 1) downto 0));
  end component;


  -----------------------------------------------------------------------
  -- DUT input signals
  -----------------------------------------------------------------------

  -- Data master channel signals
  signal m_axis_data_tvalid              : std_logic := '0';  -- payload is valid
  signal m_axis_data_tdata               : std_logic_vector(7 downto 0) := (others => '0');  -- data payload

  -- Phase master channel signals
  signal m_axis_phase_tvalid             : std_logic := '0';  -- payload is valid
  signal m_axis_phase_tdata              : std_logic_vector(31 downto 0) := (others => '0');  -- data payload

  -----------------------------------------------------------------------
  -- Aliases for AXI channel TDATA and TUSER fields
  -- These are a convenience for viewing data in a simulator waveform viewer.
  -- If using ModelSim or Questa, add "-voptargs=+acc=n" to the vsim command
  -- to prevent the simulator optimizing away these signals.
  -----------------------------------------------------------------------

  -- Data master channel alias signals
  signal m_axis_data_tdata_sine        : std_logic_vector(7 downto 0) := (others => '0');

  -- Phase master channel alias signals
  signal m_axis_phase_tdata_phase      : std_logic_vector(27 downto 0) := (others => '0');


  constant Data_Length : integer := 8;
  constant Index_Length : integer := 13;

  signal clk: STD_LOGIC;
  signal i_data: STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
  signal o_valid: STD_LOGIC;
  signal o_data: STD_LOGIC_VECTOR (((Data_Length) - 1) downto 0);
  signal o_index: STD_LOGIC_VECTOR ((Index_Length - 1) downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

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
  uut: fft_module generic map ( Data_Length  => Data_Length,
                                Index_Length =>  Index_Length)
                     port map ( clk          => clk,
                                i_data       => m_axis_data_tdata,
                                o_valid      => o_valid,
                                o_data       => o_data,
                                o_index      => o_index );

  stimulus: process
  begin
  
    -- Put initialisation code here
    i_data <= std_logic_vector(to_unsigned(0, Data_Length));
    wait;

    -- Put test bench stimulus code here

    stop_the_clock <= true;
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