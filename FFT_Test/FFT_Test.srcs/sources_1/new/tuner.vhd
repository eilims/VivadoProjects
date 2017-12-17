library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tuner is
    --uncomment and delte semicolons to synthesis
    Generic (   Data_Length : integer := 8; -- := 8;
                Index_Length : integer := 13; -- := 13;
                Threshold : integer := 10); -- := 10);
    Port ( clk : in STD_LOGIC;
            -- The fft module appends the appropriate amount of zeros to make it work
            --Only pass in the real part of the signal
           i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
           o_led : out STD_LOGIC_VECTOR (7 downto 0));
end tuner;

architecture Behavioral of tuner is

    component validator
        Generic (   Data_Length : Integer;
                    Index_Length : Integer;
                    Threshold : Integer);
    
        Port (  clk : in STD_LOGIC;
                i_valid : in std_logic;
                i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
                i_index : in STD_LOGIC_VECTOR ((Index_Length - 1) downto 0);
                o_valid : out STD_LOGIC;
                o_data : out STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
                o_index : out STD_LOGIC_VECTOR ((Index_Length - 1) downto 0));
    end component;
    
    component led_controller
        Generic (   Index_Length : Integer);
        Port (  clk : in STD_LOGIC;
                i_valid : in STD_LOGIC;
                i_index : in STD_LOGIC_VECTOR ((Index_Length - 1) downto 0);
                o_led : out STD_LOGIC_VECTOR (7 downto 0) := "00000000");
    end component;
    
    component fft_module
        Generic (   Data_Length : integer;
                    Index_Length : integer);
        Port ( clk : in STD_LOGIC;
               i_data : in STD_LOGIC_VECTOR ((Data_Length - 1) downto 0);
               o_valid : out std_logic;
               o_data : out STD_LOGIC_VECTOR (((Data_Length) - 1) downto 0);
               o_index : out STD_LOGIC_VECTOR ((Index_Length - 1) downto 0));
    end component;
    
    --Output of fft modules
    signal  fft_data : STD_LOGIC_VECTOR ((Data_Length - 1) downto 0) := (others => '0');
    signal  fft_index : STD_LOGIC_VECTOR ((Index_Length - 1) downto 0) := (others => '0');
    signal fft_valid : std_logic := '0';
    
    --output of validator module
    signal  validator_data : STD_LOGIC_VECTOR ((Data_Length - 1) downto 0) := (others => '0');
    signal  validator_index : STD_LOGIC_VECTOR ((Index_Length - 1) downto 0) := (others => '0');
    signal  validator_valid : std_logic := '0';
    
begin

      fft: fft_module generic map ( Data_Length  => Data_Length,
                                Index_Length =>  Index_Length)
                     port map ( clk          => clk,
                                i_data       => i_data,
                                o_valid      => fft_valid,
                                o_data       => fft_data,
                                o_index      => fft_index );

    validate: validator
        generic map (   Data_Length => Data_Length,
                        Index_Length => Index_Length,
                        Threshold => Threshold
                        )
        port map    (   clk => clk,
                        i_valid => fft_valid,
                        i_data => fft_data,
                        i_index => fft_index,
                        o_valid => validator_valid,
                        o_data => validator_data,
                        o_index => validator_index
                        );
                        
    led: led_controller 
        generic map ( Index_Length =>  Index_Length)
        port map ( clk          => clk,
                  i_valid      => validator_valid,
                  i_index      => validator_index,
                  o_led        => o_led );


end Behavioral;
