----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2017 02:17:18 PM
-- Design Name: 
-- Module Name: Top_Level - Behavioral
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

entity Top_Level is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (2 downto 0);
           oclk : out std_logic;
           LED : out STD_LOGIC_VECTOR (6 downto 0));
end Top_Level;

architecture Behavioral of Top_Level is

    signal db_rst : std_logic := '0';
    signal db_SW : std_logic_vector(2 downto 0) := "000";

    component FSM
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               SW : in STD_LOGIC_VECTOR (2 downto 0);
               LED : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    component DeBounce
        Port(   Clock	:	in	std_logic;
                button_in :    in    std_logic;
                pulse_out :    out    std_logic);
    end component; 
    
begin
    debouncers: for i in 0 to 2 generate
        debouncer: DeBounce port map (  Clock => clk,
                                        button_in => SW(i),
                                        pulse_out => db_SW(i)
                                        );
                                        
    end generate;

    debounceReset: DeBounce port map (  Clock => clk,
                                        button_in => rst,
                                        pulse_out => db_rst
                                        );
    
     uut: FSM port map (   clk => clk,
                           rst => db_rst,
                           sw => db_sw,
                           led => led
                           );
   oclk <= clk;

end Behavioral;
