----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use work.Memory_3;


entity RAM_16x8_FSM is
    Port ( CLK : in STD_LOGIC;
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           ADDR : in STD_LOGIC_VECTOR (3 downto 0);
           DATAIN : in STD_LOGIC_VECTOR (7 downto 0);
           DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
           EFSM : in STD_LOGIC;
           ERAM : in STD_LOGIC;
           DATA : buffer Memory_3.RAM_16x8);
           
end RAM_16x8_FSM;

architecture Behavioral of RAM_16x8_FSM is

type STATE is (HOLD, ADD, WRITE);

signal CURRENT_STATE, NEXT_STATE : STATE := HOLD;

signal sum ,carry : STD_LOGIC;

begin

    RAM : process(CLK)
    
    variable address : integer;
    
    
    begin
    
     if (rising_edge(RST)) then
        DATA <= (OTHERS => (OTHERS => '0'));
     
     
     elsif (rising_edge(CLK) and ERAM = '1' and RST = '0' and EFSM = '0') then
        
        -- Read = 0 Write = 1
        address := to_integer(unsigned(ADDR));
        if (RW = '1') then 
            DATA(address) <= DATAIN;
            DATAOUT <= x"00";
            
        else
            DATAOUT <= DATA(address);
            
        end if;
     
     end if;
    
    end process RAM;
    
    FSM_STATE : process(CLK, EFSM)
    
    begin
        if (EFSM = '0' or ERAM = '1') then
            CURRENT_STATE <= HOLD;
        
        elsif (rising_edge(CLK)) then
            CURRENT_STATE <= NEXT_STATE;
            
        end if;
    
    end process FSM_STATE;
    
    FSM : process(CURRENT_STATE, CLK)
    
    variable pointer : integer := 0;
    variable num1, num2 : integer;
    
    begin 
        
        case CURRENT_STATE is
        
            when ADD =>
                num1 := to_integer(unsigned(DATA(pointer)));
                num2 := to_integer(unsigned(DATA(pointer + 1)));
                NEXT_STATE <= WRITE;
                pointer := pointer + 2;
                
            when WRITE =>
                DATA(pointer) <= std_logic_vector(to_unsigned(num1 mod 255, 8));
                DATA(pointer) <= std_logic_vector(to_unsigned(num1 / 255, 8));
                
            when HOLD =>
            
        end case; 
    
    end process FSM; 

end Behavioral;
