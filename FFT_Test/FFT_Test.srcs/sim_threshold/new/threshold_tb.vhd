library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity threshold_tb is
end threshold_tb;


architecture behavioral of threshold_tb is

    constant CLOCK_PERIOD : time := 100 ns;

    constant Data_Length : integer := 12;
    constant Index_Length : integer := 13;
    constant Threshold : integer := 10;
    signal clk, i_valid, o_valid : std_logic := '0';
    signal i_data, o_data : std_logic_vector((Data_Length - 1) downto 0) := (others => '0');
    signal i_index, o_index : std_logic_vector((Index_Length - 1) downto 0) := (others => '0');
    
    
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
    
begin
    uut: validator
    generic map (   Data_Length => Data_Length,
                    Index_Length => Index_Length,
                    Threshold => Threshold
                    )
    port map    (   clk => clk,
                    i_valid => i_valid,
                    i_data => i_data,
                    i_index => i_index,
                    o_valid => o_valid,
                    o_data => o_data,
                    o_index => o_index
                    );   
                    
    clocking : process
    begin
        clk <= '0';
        clk <= '1' after CLOCK_PERIOD/2;
        wait for CLOCK_PERIOD;
    end process;
    
    stimulus : process
    begin
        i_valid <= '1';
        i_data <= "000000000010";
        i_index <= "0000000000000";
        wait for CLOCK_PERIOD;
        i_data <= "000000001000";
        i_index <= "0000000000001";
        wait for CLOCK_PERIOD;
        i_data <= "000000001010";
        i_index <= "0000000000010";
        wait for CLOCK_PERIOD;
        i_data <= "000000001011";
        i_index <= "0000000000011";
        wait for CLOCK_PERIOD;
        i_data <= "000001100000";
        i_index <= "0000000000100";
        wait for CLOCK_PERIOD;
        i_data <= "000000000011";
        i_index <= "0000000000101";
        wait for CLOCK_PERIOD;
        i_data <= "111111110110";
        i_index <= "0000000000110";
        wait for CLOCK_PERIOD;
        i_data <= "111111111110";
        i_index <= "0000000000111";
        wait for CLOCK_PERIOD;

        
    end process;
    

end behavioral;