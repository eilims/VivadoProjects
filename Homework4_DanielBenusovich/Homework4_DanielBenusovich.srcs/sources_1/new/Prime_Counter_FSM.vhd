----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Prime_Counter_FSM is
    Port ( I_CLK : in STD_LOGIC;
           I_RST : in STD_LOGIC;
           I_START : in STD_LOGIC;
           O_COUNT : out STD_LOGIC_VECTOR (3 downto 0));
           
end Prime_Counter_FSM;




architecture Behavioral of Prime_Counter_FSM is

    -- Types
    type STATE is (WORK, HOLD, RESET);
    
    -- Components
    
    -- Signals
    
    signal NEXT_STATE : STATE := WORK;
    shared variable CURRENT_STATE : STATE := WORK;
    
    begin
    
        state_update : process(I_CLK)
        
        
        
        begin
        
            if (I_RST = '1') then
                CURRENT_STATE := RESET;
                
            elsif (I_START = '0') then 
                CURRENT_STATE := HOLD;
            
            elsif (rising_edge(I_CLK)) then
                CURRENT_STATE := NEXT_STATE; 
                
            end if;
        
        end process state_update;
        
    
        counting : process(I_CLK)
        
        --Types
        type Primes_Array is array (0 to 7) of integer;
        
        --Variables
        variable primes : Primes_Array := (0,1,2,3,5,7,11,13);
        variable index : integer := 0;
        
        begin
            
            if (rising_edge(I_CLK)) then
                case CURRENT_STATE is
                    
                    when WORK =>
                        O_COUNT <= std_logic_vector(to_unsigned(primes(index), O_COUNT'length));
                        index := index + 1;    
                        
                        if (index >= 8) then
                            index := 0;
                            
                        end if;
                        NEXT_STATE <= WORK;
                    
                    when RESET =>
                        index := 0;
                        NEXT_STATE <= WORK;
                        
                    when HOLD =>
                        --Do nothing and wait, ensure no wierd noise interference
                        O_COUNT <= std_logic_vector(to_unsigned(primes(index), O_COUNT'length));
                        NEXT_STATE <= WORK;
                        
                        
                end case;
            
            end if;
            
    
        end process counting;
    
end Behavioral;
