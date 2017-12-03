----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Register_Generic is
    Generic (Length : integer);
    Port ( I_CLK : in STD_LOGIC;
           I_RST : in STD_LOGIC;
           I_E : in STD_LOGIC;
           I_DATA : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           O_DATA : out STD_LOGIC_VECTOR ((Length - 1) downto 0) := std_logic_vector(to_unsigned(0, Length)));
           
end Register_Generic;

architecture Behavioural of Register_Generic is


begin

    logic: process(I_CLK)
    
    variable DATA : STD_LOGIC_VECTOR ((Length - 1) downto 0) := std_logic_vector(to_unsigned(0, Length));
    
    begin
    
        if ( rising_edge(I_CLK) and I_E = '1') then
            
            --Manual reset
            if ( I_RST = '1') then
                DATA := std_logic_vector(to_unsigned(0, Length));
            
            --All other cases
            else
                DATA := I_DATA;

            end if;
            
            O_DATA <= DATA;

        end if;
    
    end process logic;

end Behavioural;
