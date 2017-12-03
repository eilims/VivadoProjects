----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2017 04:10:48 PM
-- Design Name: 
-- Module Name: FSM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (2 downto 0);
           LED : out STD_LOGIC_VECTOR (6 downto 0));
end FSM;


--Note that SW is the array containing which button has been pressed
-- SW(0) => E;
-- SW(1) => S;
-- SW(2) => W;



architecture Behavioral of FSM is
    --State Declarations and definitions
    
    --TODO Alarm1, Alarm2, PreReset, external debounce
    
    type STATE is (State1, State2, State3, State4, Unlock, PreAlarm2, PreAlarm3, PreAlarm4, Alarm1, Alarm2, PreReset);
    signal currentState : STATE := State1;
    signal nextState : STATE := State1; 
    
begin

    CurrentStateLogic: process(clk, rst)
    begin
        if (rst = '1') then
            currentState <= State1;
        elsif (clk'event and clk = '1') then
            currentState <= nextState;
        end if;
    end process;


    NextStateLogic: process(currentState, SW)
        variable count : integer := 0;
        
    begin
    
        case currentState is
        
            when State1 =>
                LED <= "0000001";
                count := 1;
                if (SW = "100") then
                    nextState <= PreAlarm2;
                elsif (SW = "010") then
                    nextState <= State2;
                elsif (SW = "001") then
                    nextState <= PreReset;
                else
                    nextState <= State1;
                end if;
                
            when State2 =>
                count := 2;
                LED <= "0000010";
                if (SW = "100") then
                    nextState <= State3;
                elsif (SW = "010") then
                    nextState <= PreAlarm3;
                elsif (SW = "001") then
                    nextState <= PreReset;
                else
                    nextState <= State2;
                end if;
                
            when State3 =>
                count := 3;
                LED <= "0000100";
                if (SW = "100") then
                    nextState <= PreAlarm4;
                elsif (SW = "010") then
                    nextState <= PreAlarm4;
                elsif (SW = "001") then
                    nextState <= State4;
                else
                    nextState <= State3;
                end if;
                
            when State4 =>
                count := 4;
                LED <= "0001000";
                if (SW = "100") then
                    nextState <= Unlock;
                elsif (SW = "010") then
                    nextState <= Alarm1;
                elsif (SW = "001") then
                    nextState <= State1;
                else
                    nextState <= State4;
                end if;
                
            when Unlock => 
                LED <= "0010000";
                if (SW = "000") then
                    nextState <= Unlock;
                else
                    nextState <= State1;
                end if;
                
            when PreReset =>
                LED <= "0100000";
                if (SW = "001") then
                    nextState <= State1;
                elsif (SW = "000") then
                    nextState <= PreReset;
                else
                    nextState <= Alarm1;
                end if;
                
            when PreAlarm2 =>
                LED <= "1000010";
                if (SW = "000") then
                    nextState <= PreAlarm2;
                elsif (SW = "001") then
                    nextState <= PreReset;
                else
                    nextState <= PreAlarm3;
                end if;
                
            when PreAlarm3 =>
                LED <= "1000100";
                if (SW = "000") then
                    nextState <= PreAlarm3;
                elsif (SW = "001") then
                    nextState <= PreReset;
                else
                    nextState <= PreAlarm4;
                end if;
                
            when PreAlarm4 =>
                LED <= "1001000";
                if (SW = "000") then
                    nextState <= PreAlarm4;
                elsif (SW = "001") then
                    nextState <= PreReset;
                else
                    nextState <= Alarm1;
                end if;
                
            when Alarm1 =>
                LED <= "1111110";
                if (SW = "100") then
                    nextState <= Alarm2;
                else
                    nextState <= Alarm1;
                end if;
                
            when Alarm2 =>
                LED <= "1111100";
                if (SW = "001") then
                    nextState <= State1;
                elsif (SW = "000") then
                    nextState <= Alarm2;
                else
                    nextState <= Alarm1;
                end if;
            
                
                
                
                

            
            when others =>
                LED <= "0101010";
            end case;
            
--        if (SW = "100") then
--            LED <= "1111110";
--        elsif (SW = "010") then
--            LED <= "1111100";
--        elsif (SW = "001") then
--            LED <= "1111000";
--        elsif (SW = "000") then
--            LED <= "1111111";
--        else 
--            LED <= "0101010";
--        end if;


--        case currentState is
--            when State1 =>
--                LED <= "0000001";
--                -- W is pressed
--                if ( SW = "100") then
--                    count := 1;
--                    nextState <= PreAlarm;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    count := 1;
--                    nextState <= State2;
                    
--                --E is Pressed
--                elsif (SW = "001") then
--                    count := 1;
--                    nextState <= PreReset;
--                else
--                    count := 1;
--                    nextState <= PreAlarm;
--                end if;  
                  
--                --N is pressed
--                if (rst = '1') then
--                    nextState <= State1;
                        
--                end if;
                
--            when State2 =>
--                LED <= "0000010";
--                -- W is pressed
--                if ( SW = "100") then
--                    count := 2;
--                    nextState <= State3;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    count := 2;
--                    nextState <= PreAlarm;
                   
--                --E is Pressed
--                elsif (SW = "001") then
--                    count := 2;
--                    nextState <= PreReset;
--                else
--                    count := 2;
--                    nextState <= PreAlarm;
--                end if;
                
--                --N is pressed
--                if (rst = '1') then
--                    nextState <= State1;
--                    LED <= "0000001";
--                end if;
            
--            when State3 =>
--                 LED <= "0000100";
--                -- W is pressed
--                if ( SW = "100") then
--                    count := 3;
--                    nextState <= PreAlarm;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    count := 3;
--                    nextState <= PreAlarm;
                    
--                --E is Pressed
--                elsif (SW = "001") then
--                    count := 3;
--                    nextState <= State4;
--                else
--                    count := 3;
--                    nextState <= PreAlarm;      
--                end if;
--                --N is pressed
--                if (rst = '1') then
--                    nextState <= State1;
--                    LED <= "0000001";
--                end if;
                
--            when State4 =>
--                LED <= "0001000";
--                -- W is pressed
--                if ( SW = "100") then
--                    count := 4;
--                    nextState <= Unlock;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    count := 4;
--                    nextState <= Alarm1;
                    
--                --E is Pressed
--                elsif (SW = "001") then
--                    count := 4;
--                    nextState <= State1;
--                    LED <= "0000001";
                    
--                else
--                    count := 4;
--                    nextState <= Alarm1;
--                end if;
                
--                --N is pressed
--                if (rst = '1') then
--                    nextState <= State1;
--                    LED <= "0000001";
--                end if;
            
--            when Unlock =>
--                LED <= "0010000";
--                --W is pressed
--                if ( SW = "100") then
--                    nextState <= State1;
--                    LED <= "0000001";
--                -- S is pressed
--                elsif (SW = "010") then
--                    nextState <= State1;
--                    LED <= "0000001";
--                --E is Pressed
--                elsif (SW = "001") then
--                    nextState <= State1;
--                    LED <= "0000001";
--                --N is pressed
--                elsif (rst = '1') then
--                    nextState <= State1;
--                    LED <= "0000001";
--                else
--                    nextState <= State1;
--                    LED <= "0000001";
--                end if;
                
--            when PreAlarm =>
--                --Ensure that 4 buttons have been pressed in sequence
--                -- Set LED to ensure no cracking of the code is possible
--                if (SW(0) = '1' or SW(1) = '1' or SW(2) = '1') then
--                if (count < 4) then
--                    count := count + 1;
--                    case count is
--                        when 2 =>
--                            LED <= "0000010";
--                        when 3 =>
--                            LED <= "0000100";
--                        when 4 =>
--                            LED <= "0001000";
--                        when others =>
--                            LED <= "0101010";
                            
--                    end case;
                    
--                elsif (count >= 4) then
--                    --Alarm State begin
--                    LED <= "1111111";
--                    -- W is pressed
--                    if ( SW = "100") then
--                        nextState <= Alarm2;
                        
--                    -- S is pressed
--                    elsif (SW = "010") then
--                        nextState <= Alarm1;
                        
--                    --E is Pressed
--                    elsif (SW = "001") then
--                        nextState <= Alarm1;
--                    else 
--                        nextState <= Alarm1;
--                    end if;
                    
--                end if;
                
--                if (rst = '1') then
--                    nextState <= State1;
--                    LED <= "0000001";
--                end if;
                
--                end if;
                
                
--            when Alarm1 => 
--                -- W is pressed
--                if ( SW = "100") then
--                    nextState <= Alarm2;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    nextState <= Alarm1;
                    
--                --E is Pressed
--                elsif (SW = "001") then
--                    nextState <= Alarm1;
--                else
--                    nextState <= Alarm1;
--                end if;
                
--            when Alarm2 => 
--                -- W is pressed
--                if ( SW = "100") then
--                    nextState <= Alarm1;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    nextState <= Alarm1;
                    
--                --E is Pressed
--                elsif (SW = "001") then
--                    nextState <= State1;
--                    LED <= "0000001";
--                else
--                    nextState <= Alarm2;
--                end if;
                
--            when PreReset =>
--                --Display Reset State
--                LED <= "0100000";
--                -- W is pressed
--                if ( SW = "100") then
--                    count := count + 1;
--                    nextState <= PreAlarm;
                    
--                -- S is pressed
--                elsif (SW = "010") then
--                    count := count + 1;
--                    nextState <= PreAlarm;
                    
--                --E is Pressed
--                elsif (SW = "001") then
--                    nextState <= State1;
--                    LED <= "0000001";
--                else
--                    count := count + 1;
--                    nextState <= PreAlarm;
--                end if;
                    
--            end case;
    end process;
end Behavioral;
