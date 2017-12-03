----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2017 01:26:48 PM
-- Design Name: 
-- Module Name: FSM_tb - Behavioral
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

entity FSM_tb is
--  Port ( );
end FSM_tb;

architecture Behavioral of FSM_tb is

    component FSM
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               SW : in STD_LOGIC_VECTOR (2 downto 0);
               LED : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal clk,rst : std_logic := '0';
    signal sw : std_logic_vector (2 downto 0) := (others => '0');
    signal led : std_logic_vector (6 downto 0) := (others => '0');
    
    constant clock_period : time :=  10 ns;
    
begin
    uut: FSM port map ( clk => clk,
                        rst => rst,
                        sw => sw,
                        led => led
                        );

    test: process
    begin
        --Check unlock state
        wait for 40 ns;
        SW <= "010";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "100";
        wait for clock_period;
        SW <= "000";
        wait for 5*clock_period;
        SW <= "001";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "100";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        --Unlocked
        SW <= "010";
        wait for clock_period;
        --Relocked
        --Check alarm state
        SW <= "100";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "010";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "100";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "010";
        wait for clock_period;
        --Test wrong code in alarm state
        SW <= "000";
        wait for clock_period;
        SW <= "100";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "010";
        wait for clock_period;
        --Leave alarm state
        SW <= "000";
        wait for clock_period;
        SW <= "100";
        wait for clock_period;
        SW <= "000";
        wait for clock_period;
        SW <= "001";
        wait for clock_period;
        assert false report "Finished" severity failure;
    end process test;

    clock : process
    begin
        clk <= not clk;
        wait for clock_period / 2;
    end process clock;
    
end Behavioral;
