library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Memory;

entity stack_db_tb is
end stack_db_tb;

architecture testbench of stack_db_tb is
    --Components
    component Stack_DB 
        Port ( CLK : in STD_LOGIC;
               RW : in STD_LOGIC;
               CLR : in STD_LOGIC; 
               E : in STD_LOGIC;
               DATAIN : in STD_LOGIC_VECTOR (7 downto 0);
               DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
               DATA : buffer Memory.mem_16x8;
               FULL : out STD_LOGIC);
    end component;
    
    --Signals
    signal CLK, CLR ,RW, E, FULL : STD_LOGIC := '0';
    signal DATAIN, DATAOUT : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal DATA : Memory.mem_16x8;
    
    begin
        
        UUT: Stack_DB port map (CLK => CLK,
                                RW => RW,
                                CLR => CLR,
                                E => E,
                                DATAIN => DATAIN,
                                DATAOUT => DATAOUT,
                                DATA => DATA,
                                FULL => FULL);
                                
    stimulus: process
    variable count : integer := 0;
    begin
        E <= '1';
        if (count < 19) then
            RW <= '0';
            DATAIN <= "00001111";
            count := count + 1;
            wait for 20 ns;
        elsif (count = 19) then
            CLR <= '1';
            wait for 20 ns;
            CLR <= '0';
            count := count + 1;
            wait for 20 ns;
        elsif (count > 19 and count < 30) then
            RW <= '0';
            DATAIN <= "11111111";
            count := count + 1;
            wait for 20 ns;
        else
            RW <= '1';
            count := count + 1;
            wait for 20 ns;
        end if;
        
    end process stimulus;
                               
    clock: process
    begin
        CLK <= not CLK;
        wait for 10 ns;
    end process clock; 
       
    
        
end testbench;