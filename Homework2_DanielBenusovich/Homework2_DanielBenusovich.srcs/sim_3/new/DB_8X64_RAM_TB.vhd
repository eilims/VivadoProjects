LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.Memory;

entity DB_8x64_RAM_TB is
end DB_8x64_RAM_TB;

architecture testbench of DB_8x64_RAM_TB is
    --declare components
    component DB_8x64_RAM
        Port ( CLK : in STD_LOGIC;
               DATAIN : in STD_LOGIC_VECTOR (63 downto 0);
               DATAOUT : out STD_LOGIC_VECTOR (63 downto 0);
               ADR : in STD_LOGIC_VECTOR (0 to 2);
               RW : in STD_LOGIC;
               E : in STD_LOGIC;
               STORE : buffer Memory.mem_8x64);
    end component;
    
    -- declare signals
    signal CLK, E : STD_LOGIC;
    signal ADR : STD_LOGIC_VECTOR (0 to 2);
    signal RW : STD_LOGIC;
    signal DATAIN : STD_LOGIC_VECTOR (63 downto 0);
    signal DATAOUT : STD_LOGIC_VECTOR (63 downto 0);
    signal TEST : STD_LOGIC_VECTOR (63 downto 0) := "1111110100000011100110100111011000010101111010101001110011010010"; 
    signal STORE : Memory.mem_8x64;

begin

    U1: DB_8x64_RAM port map ( CLK => CLK,
                               DATAIN => DATAIN,
                               DATAOUT => DATAOUT,
                               ADR => ADR,
                               RW => RW,
                               E => E,
                               STORE => STORE);
                               
     stimulus: process
     begin
         E <= '1';
         CLK <= '0';
         RW <= '1';
         ADR <= "000";
         DATAIN <= "1111110100000011100110100111011000010101111010101001110011010010";
         wait for 10 ns;
         CLK <= '1';
         wait for 10 ns;
         CLK <= '0';
         RW <= '0';
         wait for 10 ns;
         CLK <= '1';
         wait for 10 ns;
         assert DATAOUT = TEST report "Bad Write" severity note;
     end process;

end testbench;