
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;



--There is an issue with the clocks however the outputs are currently predictable when changing the sine dds
-- There is a problem when changing the frequency of the fft IP. It is not functioning as of 28 november 2017



entity fft_testing is
end fft_testing;

architecture tb of fft_testing is


  -----------------------------------------------------------------------
  -- Timing constants
  -----------------------------------------------------------------------
  constant CLOCK_PERIOD : time := 10 ns;
  constant CLOCK_PERIOD2 : time := 20.8 us;--100 ns;
  constant T_HOLD       : time := 10 ns;
  constant T_STROBE     : time := CLOCK_PERIOD - (1 ns);

  -----------------------------------------------------------------------
  -- DUT input signals
  -----------------------------------------------------------------------

  -- General inputs
  signal aclk                            : std_logic := '0';  -- the master clock
  signal aclk2                           : std_logic := '0';  -- the master clock

  -- Data master channel signals
  signal m_axis_data_tvalid_sine              : std_logic := '0';  -- payload is valid

  -- Phase master channel signals
  signal m_axis_phase_tvalid_sine             : std_logic := '0';  -- payload is valid
  signal m_axis_phase_tdata              : std_logic_vector(31 downto 0) := (others => '0');  -- data payload

  -----------------------------------------------------------------------
  -- Aliases for AXI channel TDATA and TUSER fields
  -- These are a convenience for viewing data in a simulator waveform viewer.
  -- If using ModelSim or Questa, add "-voptargs=+acc=n" to the vsim command
  -- to prevent the simulator optimizing away these signals.
  -----------------------------------------------------------------------

  -- Data master channel alias signals
  signal m_axis_data_tdata_sine        : std_logic_vector(7 downto 0) := (others => '0');
  signal m_axis_data_tdata_sine1        : std_logic_vector(15 downto 0) := (others => '0');

  -- Phase master channel alias signals
  signal m_axis_phase_tdata_phase      : std_logic_vector(27 downto 0) := (others => '0');
  
  
    -----------------------------------------------------------------------
  -- DUT signals
  -----------------------------------------------------------------------

  -- Config slave channel signals
  signal s_axis_config_tvalid        : std_logic := '0';  -- payload is valid
  signal s_axis_config_tready        : std_logic := '1';  -- slave is ready
  signal s_axis_config_tdata         : std_logic_vector(31 downto 0) := (others => '0');  -- data payload --15

  -- Data slave channel signals
  signal s_axis_data_tvalid          : std_logic := '0';  -- payload is valid
  signal s_axis_data_tready          : std_logic := '1';  -- slave is ready
  signal s_axis_data_tdata           : std_logic_vector(15 downto 0) := (others => '0');  -- data payload
  signal s_axis_data_tlast           : std_logic := '0';  -- indicates end of packet

  -- Data master channel signals
  signal m_axis_data_tvalid          : std_logic := '0';  -- payload is valid
  signal m_axis_data_tready          : std_logic := '1';  -- slave is ready
  signal m_axis_data_tdata           : std_logic_vector(15 downto 0) := (others => '0');  -- data payload
  signal m_axis_data_tuser           : std_logic_vector(15 downto 0) := (others => '0');  -- user-defined payload --15
  signal m_axis_data_tlast           : std_logic := '0';  -- indicates end of packet

  -- Event signals
  signal event_frame_started         : std_logic := '0';
  signal event_tlast_unexpected      : std_logic := '0';
  signal event_tlast_missing         : std_logic := '0';
  signal event_status_channel_halt   : std_logic := '0';
  signal event_data_in_channel_halt  : std_logic := '0';
  signal event_data_out_channel_halt : std_logic := '0';

  -----------------------------------------------------------------------
  -- Aliases for AXI channel TDATA and TUSER fields
  -- These are a convenience for viewing data in a simulator waveform viewer.
  -- If using ModelSim or Questa, add "-voptargs=+acc=n" to the vsim command
  -- to prevent the simulator optimizing away these signals.
  -----------------------------------------------------------------------

  -- Config slave channel alias signals
  signal s_axis_config_tdata_fwd_inv      : std_logic                    := '0';              -- forward or inverse
  signal s_axis_config_tdata_scale_sch    : std_logic_vector(25 downto 0) := (others => '0');  -- scaling schedule

  -- Data slave channel alias signals
  signal s_axis_data_tdata_re             : std_logic_vector(7 downto 0) := (others => '0');  -- real data
  signal s_axis_data_tdata_im             : std_logic_vector(7 downto 0) := (others => '0');  -- imaginary data

  -- Data master channel alias signals
  signal m_axis_data_tdata_re             : std_logic_vector(7 downto 0) := (others => '0');  -- real data
  signal m_axis_data_tdata_im             : std_logic_vector(7 downto 0) := (others => '0');  -- imaginary data
  signal m_axis_data_tuser_xk_index       : std_logic_vector(12 downto 0) := (others => '0');  -- sample index
  
  
    -----------------------------------------------------------------------
  -- Testbench signals
  -----------------------------------------------------------------------

  -- Communication between processes regarding DUT configuration
  type T_DO_CONFIG is (NONE, IMMEDIATE, AFTER_START, DONE);
  shared variable do_config : T_DO_CONFIG := NONE;  -- instruction for driving config slave channel
  type T_CFG_FWD_INV is (FWD, INV);
  signal cfg_fwd_inv : T_CFG_FWD_INV := FWD;
  type T_CFG_SCALE_SCH is (ZERO, DEFAULT);
  signal cfg_scale_sch : T_CFG_SCALE_SCH := DEFAULT;

  -- Recording output data, for reuse as input data
  signal ip_frame        : integer    := 0;    -- input / configuration frame number
  signal op_frame        : integer    := 0;    -- output frame number (incremented at end of frame output)
  
 
  
  begin
  
    dut_sine : entity work.dds_compiler_0
        port map (
          aclk                            => aclk
          ,m_axis_data_tvalid              => m_axis_data_tvalid_sine
          ,m_axis_data_tdata               => m_axis_data_tdata_sine
          ,m_axis_phase_tvalid             => m_axis_phase_tvalid_sine
          ,m_axis_phase_tdata              => m_axis_phase_tdata
          );
          
    dut_fft : entity work.xfft_0
        port map (
          aclk                        => aclk2,
          s_axis_config_tvalid        => s_axis_config_tvalid,
          s_axis_config_tready        => s_axis_config_tready,
          s_axis_config_tdata         => s_axis_config_tdata,
          s_axis_data_tvalid          => s_axis_data_tvalid,
          s_axis_data_tready          => s_axis_data_tready,
          s_axis_data_tdata           => m_axis_data_tdata_sine1,
          s_axis_data_tlast           => s_axis_data_tlast,
          m_axis_data_tvalid          => m_axis_data_tvalid,
          m_axis_data_tready          => m_axis_data_tready,
          m_axis_data_tdata           => m_axis_data_tdata,
          m_axis_data_tuser           => m_axis_data_tuser,
          m_axis_data_tlast           => m_axis_data_tlast,
          event_frame_started         => event_frame_started,
          event_tlast_unexpected      => event_tlast_unexpected,
          event_tlast_missing         => event_tlast_missing,
          event_status_channel_halt   => event_status_channel_halt,
          event_data_in_channel_halt  => event_data_in_channel_halt,
          event_data_out_channel_halt => event_data_out_channel_halt
          );
  
    clock_gen : process
      begin
        aclk <= '0';
          wait for CLOCK_PERIOD;
          loop
            aclk <= '0';
            wait for CLOCK_PERIOD/2;
            aclk <= '1';
            wait for CLOCK_PERIOD/2;
          end loop;
      end process clock_gen;
      
    clock_gen_fft : process
        begin
          aclk2 <= '0';
            wait for CLOCK_PERIOD2;
            loop
              aclk2 <= '0';
              wait for CLOCK_PERIOD2/2;
              aclk2 <= '1';
              wait for CLOCK_PERIOD2/2;
            end loop;
        end process clock_gen_fft;
  

  
    stimuli : process
        variable scale_sch : std_logic_vector(19 downto 0);
      begin
    
        -- Drive inputs T_HOLD time after rising edge of clock
        wait until rising_edge(aclk);
        wait for T_HOLD;
        s_axis_data_tvalid <= '1';
        while (event_frame_started = '0') loop
            wait for CLOCK_PERIOD;
        end loop;
        for i in 0 to 8190 loop
            wait for CLOCK_PERIOD2;
        end loop;
        -- The key is to send when the last sample is taken... IE 1024 samples later
        s_axis_data_tlast <= '1';
        wait for CLOCK_PERIOD2;
        s_axis_data_tlast <= '0';
        --s_axis_config_tvalid <= '0';
        s_axis_data_tvalid <= '0';
        -- Run for long enough to produce 5 periods of outputs
        wait;
        wait for CLOCK_PERIOD2 * 1001;
        wait for CLOCK_PERIOD2 * 1001;
        wait for CLOCK_PERIOD2 * 100000000;
        assert false report "end of simulation" severity failure; 
    
    end process stimuli;

    m_axis_data_tdata_sine1 <= m_axis_data_tdata_sine & "00000000";
    
      -- Config slave channel alias signals
    s_axis_config_tdata_fwd_inv    <= s_axis_config_tdata(0);
    s_axis_config_tdata_scale_sch  <= s_axis_config_tdata(26 downto 1);
  
    -- Data slave channel alias signals
    s_axis_data_tdata_re           <= s_axis_data_tdata(7 downto 0);
    s_axis_data_tdata_im           <= s_axis_data_tdata(15 downto 8);
  
    -- Data master channel alias signals
    m_axis_data_tdata_re           <= m_axis_data_tdata(7 downto 0);
    m_axis_data_tdata_im           <= m_axis_data_tdata(15 downto 8);
    m_axis_data_tuser_xk_index     <= m_axis_data_tuser(12 downto 0);
    
end tb;