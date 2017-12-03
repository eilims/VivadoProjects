library	IEEE;
use	IEEE.STD_LOGIC_1164.ALL;
use	IEEE.NUMERIC_STD.ALL;
entity	DeBounce is
port(			Clock	:	in	std_logic;
button_in :	in	std_logic;
pulse_out :	out	std_logic
);
end	DeBounce;
architecture	behav of	DeBounce is
    constant	COUNT_MAX	:	integer	:=	10000;	--10 for 100ns clock with 1.2 us holds in testbench
    signal      push : std_logic := '0'; -- 0 means not pressed 1 means pressed;
    begin

    
process(Clock)
    variable count : integer := 0;
begin
        
    if(rising_edge(Clock))	then
    
        pulse_out <= '0';
        
        if (button_in = not push) then
            count := count + 1;
        else
            count := 0;
        end if;
               
       if (count = COUNT_MAX) then
            pulse_out <= not push;
            push <= not push;
            count := 0;
       end if;
       
       
        							
    end	if;
    								
    end	process;																		
end	architecture	behav;