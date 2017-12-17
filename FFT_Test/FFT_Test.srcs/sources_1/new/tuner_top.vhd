----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2017 12:03:59 AM
-- Design Name: 
-- Module Name: tuner_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tuner_top is
    Port ( clk : in STD_LOGIC;
           AC_ADR0      : out   STD_LOGIC;
           AC_ADR1      : out   STD_LOGIC;
           AC_GPIO0     : out   STD_LOGIC;  -- I2S MISO
           AC_GPIO1     : in    STD_LOGIC;  -- I2S MOSI
           AC_GPIO2     : in    STD_LOGIC;  -- I2S_bclk
           AC_GPIO3     : in    STD_LOGIC;  -- I2S_LR
           AC_MCLK      : out   STD_LOGIC;
           AC_SCK       : out   STD_LOGIC;
           AC_SDA       : inout STD_LOGIC;
           sw : in std_logic_vector(7 downto 0) := (others => '0');
           o_led : out STD_LOGIC_VECTOR (7 downto 0));
end tuner_top;

architecture Behavioral of tuner_top is
component tuner is
    --uncomment and delte semicolons to synthesis
    Generic (   Data_Length : integer := 8; -- := 8;
                Index_Length : integer := 13; -- := 13;
                Threshold : integer := 10); -- := 10);
    Port ( clk : in STD_LOGIC;
            -- The fft module appends the appropriate amount of zeros to make it work
            --Only pass in the real part of the signal
           i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
           o_led : out STD_LOGIC_VECTOR (7 downto 0));
end component;
COMPONENT dds_compiler_1
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
COMPONENT dds_compiler_2
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
COMPONENT dds_compiler_3
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
COMPONENT dds_compiler_n1
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
COMPONENT dds_compiler_n2
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
COMPONENT dds_compiler_n3
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
component clk_wiz_0
    port(
        CLK           : in     std_logic;
        CLK_48            : out    std_logic;
        RESET             : in     std_logic;
        LOCKED            : out    std_logic
    );
end component;
component audio_codec is
    --Generic(Data_Length : integer);
    Port ( clk_48      : in    STD_LOGIC;
           AC_ADR0      : out   STD_LOGIC;
           AC_ADR1      : out   STD_LOGIC;
           AC_GPIO0     : out   STD_LOGIC;  -- I2S MISO
           AC_GPIO1     : in    STD_LOGIC;  -- I2S MOSI
           AC_GPIO2     : in    STD_LOGIC;  -- I2S_bclk
           AC_GPIO3     : in    STD_LOGIC;  -- I2S_LR
           AC_MCLK      : out   STD_LOGIC;
           AC_SCK       : out   STD_LOGIC;
           AC_SDA       : inout STD_LOGIC;
           hphone_l      : in   std_logic_vector(23 downto 0);
           o_audio      : out   std_logic_vector(23 downto 0)
           );
end component;

component ClockCutter is
    Port ( I_CLK : in STD_LOGIC;
           O_CLK : out STD_LOGIC);
end component;

signal input_ext : std_logic_vector(23 downto 0) := (others=>'0');
signal o_audio : std_logic_vector(23 downto 0) := (others=>'0');
signal input : std_logic_vector(7 downto 0);
signal input1 : std_logic_vector(7 downto 0) := (others=>'0');
signal input2 : std_logic_vector(7 downto 0) := (others=>'0');
signal input3 : std_logic_vector(7 downto 0) := (others=>'0');
signal input4 : std_logic_vector(7 downto 0) := (others=>'0');
signal input5 : std_logic_vector(7 downto 0) := (others=>'0');
signal input6 : std_logic_vector(7 downto 0) := (others=>'0');
--signal input7 : std_logic_vector(7 downto 0) := (others=>'0');
signal clk_48  : std_logic;
signal clk_48k : std_logic;

begin
--input_ext <= input&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7)&input(7);
input <= (others=>'0') when sw(0) = '1' or sw(1) = '1' else
     input1 when sw(7) = '1' else 
     input2 when sw(6) = '1' else 
     input3 when sw(5) = '1' else 
     input4 when sw(4) = '1' else 
     input5 when sw(3) = '1' else  
     input6 when sw(2) = '1' else          
     input;
input_ext <= (others=>'0') when sw(0) = '1' else
     o_audio when sw(1) = '1' else
     std_logic_vector(to_signed(to_integer(signed(input1))*(2**16),24)) when sw(7) = '1' else 
     std_logic_vector(to_signed(to_integer(signed(input2))*(2**16),24)) when sw(6) = '1' else 
     std_logic_vector(to_signed(to_integer(signed(input3))*(2**16),24)) when sw(5) = '1' else 
     std_logic_vector(to_signed(to_integer(signed(input4))*(2**16),24)) when sw(4) = '1' else 
     std_logic_vector(to_signed(to_integer(signed(input5))*(2**16),24)) when sw(3) = '1' else  
     std_logic_vector(to_signed(to_integer(signed(input6))*(2**16),24)) when sw(2) = '1' else          
     input_ext;
     
tuner_mod : tuner
  PORT MAP (
    clk => clk_48k,
    i_data => input,
    o_led => o_led
  );

dds_1 : dds_compiler_1
  PORT MAP (
    aclk => clk_48k,
    m_axis_data_tvalid => open,
    m_axis_data_tdata => input4
  );

dds_2 : dds_compiler_2
  PORT MAP (
    aclk => clk_48k,
    m_axis_data_tvalid => open,
    m_axis_data_tdata => input5
  );

dds_3 : dds_compiler_3
  PORT MAP (
    aclk => clk_48k,
    m_axis_data_tvalid => open,
    m_axis_data_tdata => input6
  );

dds_n1 : dds_compiler_n1
  PORT MAP (
    aclk => clk_48k,
    m_axis_data_tvalid => open,
    m_axis_data_tdata => input3
  );
  
dds_n2 : dds_compiler_n2
    PORT MAP (
      aclk => clk_48k,
      m_axis_data_tvalid => open,
      m_axis_data_tdata => input2
    );
    
dds_n3 : dds_compiler_n3
      PORT MAP (
        aclk => clk_48k,
        m_axis_data_tvalid => open,
        m_axis_data_tdata => input1
      );  
   clk_48_gen : clk_wiz_0
         port map ( 
        -- Clock out ports  
         clk_48 => clk_48,
        -- Status and control signals                
         reset => '0',
         locked => open,
         -- Clock in ports
         clk => clk
       );
   clk_48k_gen: ClockCutter port map(
         I_CLK => CLK_48,
         O_CLK => clk_48k
     );
   audio_mod : audio_codec
      port map(  clk_48 => clk_48     ,
                 AC_ADR0=>AC_ADR0    ,
                 AC_ADR1=>  AC_ADR1   ,
                 AC_GPIO0=> AC_GPIO0   ,
                 AC_GPIO1=> AC_GPIO1  , 
                 AC_GPIO2=> AC_GPIO2 ,  
                 AC_GPIO3=> AC_GPIO3,   
                 AC_MCLK=>AC_MCLK ,    
                 AC_SCK=>AC_SCK ,     
                 AC_SDA=>AC_SDA ,  
                 hphone_l=>input_ext,   
                 o_audio=>o_audio
        );
end Behavioral;