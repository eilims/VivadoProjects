library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity SR_FF_DB_TB is
end entity;

architecture testbench of SR_FF_DB_TB is

    component SR_FF_DB 
        Port ( S : in STD_LOGIC;
               R : in STD_LOGIC;
               PRE : in STD_LOGIC;
               CLR : in STD_LOGIC;
               CLK : in STD_LOGIC;
               E : in STD_LOGIC;
               Q : out STD_LOGIC;
               NOTQ : out STD_LOGIC);
    end component;
    
    signal E, Q, S, R, PRE, CLR, CLK : STD_LOGIC := '0';
    signal NOTQ: STD_LOGIC;
      
    begin
     
        U1: SR_FF_DB port map ( S => S,
                                R => R,
                                PRE => PRE,
                                CLR => CLR,
                                CLK => CLK,
                                E => E,
                                Q => Q,
                                NOTQ => NOTQ);
                            
    stimulus: process
      
       begin
       --test set sr 
       S <= '1';
       R <= '0';
       E <= '1';
       wait for 20 ns;
       --test clear sr
       S <= '0';
       R <= '1';
       wait for 20 ns;
       --test hold sr
       S <= '0';
       R <= '0';
       wait for 20 ns;
       -- test preset
       PRE <= '1';
       wait for 20 ns;
       --test clear
       PRE <= '0';
       CLR <= '1';
       wait for 20 ns;
          
    end process stimulus;
       
    clock: process
    
        begin
        CLK <= not CLK;
        wait for 10 ns;
        
    end process clock;
       
end testbench;