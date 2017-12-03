----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2017 01:27:40 PM
-- Design Name: 
-- Module Name: Part3 - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Part3 is
    Port ( P0 : in STD_LOGIC_VECTOR (7 downto 0);
           P1 : in STD_LOGIC_VECTOR (7 downto 0);
           alpha : in STD_LOGIC_VECTOR (7 downto 0);
           locked : in STD_LOGIC;
           clk1x : in STD_LOGIC;
           clk2x : in STD_LOGIC;
           Pout : out STD_LOGIC_VECTOR (15 downto 0);
           P1delay : out  STD_LOGIC_VECTOR (7 downto 0));
end Part3;

architecture Behavioral of Part3 is

    component Part2
        Port ( clk1x : in std_logic;
               clk2x : in std_logic;
               P0 : in STD_LOGIC_VECTOR (7 downto 0);
               P1 : in STD_LOGIC_VECTOR (7 downto 0);
               alpha : in STD_LOGIC_VECTOR (7 downto 0);
               Pout : out STD_LOGIC_VECTOR (15 downto 0);
               locked : in std_logic
               );
    end component;
    
    COMPONENT c_shift_ram_0
        PORT ( D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
               CLK : IN STD_LOGIC;
               Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
               );
    END COMPONENT;

    signal P0delay : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin

u2 : c_shift_ram_0 PORT MAP (   D => P0,
                                CLK => clk1x,
                                Q => P0delay
                                );
                                
u3 : c_shift_ram_0 PORT MAP (   D => P1,
                                CLK => clk1x,
                                Q => P1delay
                                );

u1 : Part2 port map (   clk1x => clk1x,
                        clk2x => clk2x,
                        P0 => P0delay,
                        P1 => P1,
                        alpha => alpha,
                        Pout => Pout,
                        locked => locked
                        );

end Behavioral;
