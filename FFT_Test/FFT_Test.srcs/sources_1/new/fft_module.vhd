library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fft_module is
    Generic (   Data_Length : integer;
                Index_Length : integer);
    Port ( clk : in STD_LOGIC;
           i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
           o_valid : out STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (((Data_Length) - 1) downto 0);
           o_index : out STD_LOGIC_VECTOR ((Index_Length - 1) downto 0));
end fft_module;

architecture Behavioral of fft_module is

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

  signal process_state : std_logic := '0';
  

    COMPONENT xfft_0
      PORT (
        aclk : IN STD_LOGIC;
        s_axis_config_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_config_tvalid : IN STD_LOGIC;
        s_axis_config_tready : OUT STD_LOGIC;
        s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        s_axis_data_tvalid : IN STD_LOGIC;
        s_axis_data_tready : OUT STD_LOGIC;
        s_axis_data_tlast : IN STD_LOGIC;
        m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        m_axis_data_tuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tready : IN STD_LOGIC;
        m_axis_data_tlast : OUT STD_LOGIC;
        event_frame_started : OUT STD_LOGIC;
        event_tlast_unexpected : OUT STD_LOGIC;
        event_tlast_missing : OUT STD_LOGIC;
        event_status_channel_halt : OUT STD_LOGIC;
        event_data_in_channel_halt : OUT STD_LOGIC;
        event_data_out_channel_halt : OUT STD_LOGIC
      );
    END COMPONENT;

begin


    fft : xfft_0
      PORT MAP (
        aclk => clk,
        s_axis_config_tdata => s_axis_config_tdata,
        s_axis_config_tvalid => s_axis_config_tvalid,
        s_axis_config_tready => s_axis_config_tready,
        s_axis_data_tdata => s_axis_data_tdata,
        s_axis_data_tvalid => s_axis_data_tvalid,
        s_axis_data_tready => s_axis_data_tready,
        s_axis_data_tlast => s_axis_data_tlast,
        m_axis_data_tdata => m_axis_data_tdata,
        m_axis_data_tuser => m_axis_data_tuser,
        m_axis_data_tvalid => m_axis_data_tvalid,
        m_axis_data_tready => m_axis_data_tready,
        m_axis_data_tlast => m_axis_data_tlast,
        event_frame_started => event_frame_started,
        event_tlast_unexpected => event_tlast_unexpected,
        event_tlast_missing => event_tlast_missing,
        event_status_channel_halt => event_status_channel_halt,
        event_data_in_channel_halt => event_data_in_channel_halt,
        event_data_out_channel_halt => event_data_out_channel_halt
      );
      
      fft_control : process (clk)
        variable count : integer := 0;
        variable begin_sampling : std_logic := '0';
      begin
        if (rising_edge(clk)) then
            if (process_state = '0' and s_axis_data_tready = '1') then
                count := count + 1;
                if (count = 8196) then --8198 8199 causes event spikes
                    s_axis_data_tlast <= '1';
                    
                elsif (count = 8197) then
                    count := 0;
                    s_axis_data_tlast <= '0';
                    --s_axis_data_tvalid <= '0'; -- edited by Jonathan per Figure 3-44 / xfft/v9_0
                    process_state <= '1';
                else
                    s_axis_data_tlast <= '0';
                    s_axis_data_tvalid <= '1';
                end if;
            else
                if (m_axis_data_tlast = '1') then
                    process_state <= '0';
                end if;
            end if;
        end if;
      end process;
      
      o_valid <= m_axis_data_tvalid;
      o_data <= m_axis_data_tdata(7 downto 0);
      o_index <= m_axis_data_tuser((Index_Length - 1) downto 0);
      s_axis_data_tdata <= i_data & std_logic_vector(to_unsigned(0,Data_Length));
  
end Behavioral;
