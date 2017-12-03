----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM_STATE is
    Port ( I_CLK : in STD_LOGIC;
           I_IN : in STD_LOGIC;
           O_OUT : out STD_LOGIC);
end FSM_STATE;

architecture Behavioral of FSM_STATE is

type STATE is (S0, S1, S2, S3);
signal CURRENT_STATE : STATE := S0;
signal NEXT_STATE : STATE := S0;

begin

    -- The state changes on the falling edge to have the correct state on the rising edge
    state_update : process (I_CLK)
    
    begin
    
        if ( rising_edge(I_CLK) ) then
            CURRENT_STATE <= NEXT_STATE;
        
        end if;
    
    end process state_update;
    
    code : process (CURRENT_STATE, I_CLK)
    
    begin
    
        if ( rising_edge(I_CLK) ) then
            
            case CURRENT_STATE is
            
            
                when S0 =>
                
                    if ( I_IN = '0') then
                        O_OUT <= '1';
                        NEXT_STATE <= S1;
                        
                    else
                        O_OUT <= '0';
                        NEXT_STATE <= S3;                        
                    
                    end if;
                    
                    
                when S1 =>
                
                    if ( I_IN = '0') then
                        O_OUT <= '1';
                        NEXT_STATE <= S1;
                        
                    else
                        O_OUT <= '0';
                        NEXT_STATE <= S2;                        
                    
                    end if; 
                         
                    
                when S2 =>
                
                    if ( I_IN = '0') then
                        O_OUT <= '0';
                        NEXT_STATE <= S0;
                        
                    else
                        O_OUT <= '0';
                        NEXT_STATE <= S1;                        
                    
                    end if;    
                    
                    
                when S3 =>
                
                        if ( I_IN = '0') then
                            O_OUT <= '1';
                            NEXT_STATE <= S0;
                            
                        else
                            O_OUT <= '0';
                            NEXT_STATE <= S2;                        
                        
                        end if;                                                  
                    
            end case;        
            
        end if;
    
    end process code;

end Behavioral;
