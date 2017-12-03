----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Problem3 is
    Port ( I_CLK : in STD_LOGIC;
           O_RESULT : out STD_LOGIC);
end Problem3;

architecture Behavioral of Problem3 is

begin

    process(I_CLK)
    
    variable count : integer := 0;
    
    begin
    
        if ( rising_edge(I_CLK) ) then
        
            if (count > 55) then
                count := 0;
                O_RESULT <= '0';
                
            elsif (count >= 5) then
                O_RESULT <= '1';
                
            else
                O_RESULT <= '0';
                
            end if;
            
            count := count + 1;
        
        end if;
    
    end process;


end Behavioral;
