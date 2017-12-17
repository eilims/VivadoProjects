----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Jonathan Midolo and Daniel Benusovich
-- 
-- Create Date: 11/22/2017 12:55:34 PM
-- Design Name: 
-- Module Name: adau1761_top - Behavioral
-- Project Name: Guitar Tuner
-- Target Devices: ZedBoard
-- Tool Versions: Vivado 2017.3
-- Description: Test that implements a Line In => I2S? => FPGA => I2S? => Headphones
--              using the ADAU1761 codec
-- 
-- Dependencies: Based on the work of Mike Field <hamster@snap.net.nz>
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL;	
use ieee.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library unisim;
use unisim.vcomponents.all;

entity audio_codec is
    Port ( clk_48      : in    STD_LOGIC;
           AC_ADR0      : out   STD_LOGIC;
           AC_ADR1      : out   STD_LOGIC;
           AC_GPIO0     : out   STD_LOGIC;  -- I2S MISO
           AC_GPIO1     : in    STD_LOGIC;  -- I2S MOSI
           AC_GPIO2     : in    STD_LOGIC;  -- I2S_bclk
           AC_GPIO3     : in    STD_LOGIC;  -- I2S_LR
           AC_MCLK      : out   STD_LOGIC;
           AC_SCK       : out   STD_LOGIC;
           AC_SDA       : inout STD_LOGIC;
           hphone_l   : in std_logic_vector(23 downto 0);
           o_audio      : out   std_logic_vector(23 downto 0)
           );
end audio_codec;

architecture Behavioral of audio_codec is

	COMPONENT adau1761_izedboard
	PORT(
		clk_48 : IN std_logic;
		AC_GPIO1 : IN std_logic;
		AC_GPIO2 : IN std_logic;
		AC_GPIO3 : IN std_logic;
		hphone_l : IN std_logic_vector(23 downto 0);
		hphone_r : IN std_logic_vector(23 downto 0);    
		AC_SDA : INOUT std_logic;      
		AC_ADR0 : OUT std_logic;
		AC_ADR1 : OUT std_logic;
		AC_GPIO0 : OUT std_logic;
		AC_MCLK : OUT std_logic;
		AC_SCK : OUT std_logic;
		line_in_l : OUT std_logic_vector(23 downto 0);
		line_in_r : OUT std_logic_vector(23 downto 0);
        new_sample: out   std_logic
		);
	END COMPONENT;

   signal new_sample : std_logic;
   signal line_in_l  : std_logic_vector(23 downto 0);
   signal line_in_r  : std_logic_vector(23 downto 0);
--   signal hphone_l   : std_logic_vector(23 downto 0);
   signal hphone_r   : std_logic_vector(23 downto 0);    

begin

      --hphone_l <= (others=>'0');--line_in_l;
      hphone_r <= (others=>'0');--line_in_r;
      
      o_audio <= line_in_l;

Inst_adau1761_izedboard: adau1761_izedboard PORT MAP(
		clk_48     => clk_48,
		AC_ADR0    => AC_ADR0,
		AC_ADR1    => AC_ADR1,
		AC_GPIO0   => AC_GPIO0,
		AC_GPIO1   => AC_GPIO1,
		AC_GPIO2   => AC_GPIO2,
		AC_GPIO3   => AC_GPIO3,
		AC_MCLK    => AC_MCLK,
		AC_SCK     => AC_SCK,
		AC_SDA     => AC_SDA,
		hphone_l   => hphone_l,
		hphone_r   => hphone_r,
		line_in_l  => line_in_l,
		line_in_r  => line_in_r,
        new_sample => new_sample
	);

end Behavioral;
