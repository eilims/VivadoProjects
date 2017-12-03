----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/28/2017 07:57:01 PM
-- Design Name: 
-- Module Name: Part2DSP - Behavioral
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

entity Part2DSP is
    Port ( 
        clk1x, clk2x, locked : in STD_LOGIC;
        alpha : IN STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
        P0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
        P1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
        P : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
      );
end Part2DSP;

architecture Behavioral of Part2DSP is

COMPONENT xbip_dsp48_macro_0
  PORT (
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    C : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;
  
  signal value, percentage : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
  signal blend, X, y : STD_LOGIC_VECTOR(16 DOWNTO 0) := "00000000000000000";
  signal c : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
  signal selectLine, DSPLine : std_logic := '0';

begin

    u1 : xbip_dsp48_macro_0
  PORT MAP (
    CLK => clk2x,
    CE => locked,
    A => value,
    B => percentage,
    C => C,
    P => blend
  );
      
     multiplex: process (clk2x)
     begin
        if (clk2x'event and clk2x = '1' and locked = '1') then
            selectLine <= not selectLine;
            if (selectLine = '0') then 
                value <= P0;
                percentage <= alpha;
                C <= "0000000000000000";
            else
                value <= P1;
                percentage <=  '0' & (not alpha (6 downto 0));
                C <= blend(15 downto 0);
            end if;
        y <= blend;
        end if;
     end process multiplex;
     
     DSPCarry: process (clk1x)
     begin
        if (clk1x'event and clk1x = '1' and locked = '1') then
            p <= y;
        end if;
     end process;


end Behavioral;
