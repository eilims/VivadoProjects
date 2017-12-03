library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity Johnson_4_DB_TB is
end Johnson_4_DB_TB;

architecture testbench of Johnson_4_DB_TB is
    --declare components
    component Johnson_4_DB
        Port ( R : in STD_LOGIC;
               CLK, E : in STD_LOGIC;
               RCO : out STD_LOGIC;
               CNT : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    --declare signals
    signal R, CLK, E, RCO : STD_LOGIC := '0';
    signal CNT : STD_LOGIC_VECTOR (3 downto 0);
    
    
    begin
    
        U1: Johnson_4_DB port map ( R => R,
                                    CLK => CLK,
                                    E => E,
                                    RCO => RCO,
                                    CNT =>CNT);
        stimulus: process
        begin
            E <= '1';
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            R <= '1';
            wait for 10 ns;
            for i in 0 to 50 loop
                CLK <= '0';
                wait for 10 ns;
                if ( i = 10) then
                    R <= '0';       
                end if;
                CLK <= '1';
                wait for 10 ns;
            end loop;
        end process;
    
end testbench;