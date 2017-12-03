----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2017 01:42:42 PM
-- Design Name: 
-- Module Name: rounder - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity rounder	is
generic(RI_SIZE	:	integer :=	37;	
RO_SIZE	:	integer :=	16);	
port (clk					:	in std_logic;
ce							:	in std_logic;
din					:	in std_logic_vector	(RI_SIZE-1	downto 0);
dout				:	out std_logic_vector	(RO_SIZE-1	downto 0));
end rounder;
architecture behavioral	of rounder	is
signal round		 :	signed	(RO_SIZE-1	downto 0):=(others =>	'0');
signal keepit	 :	signed	(RO_SIZE-1	downto 0):=(others =>	'0');
signal fraction						:	unsigned	(RI_SIZE-RO_SIZE-1	downto 0):=(others =>	'0');
signal lsb	 :	std_logic:='0';
begin
    keepit			<=	signed	(din(RI_SIZE-1	downto RI_SIZE-RO_SIZE));
    fraction	<=	unsigned	(din(RI_SIZE-RO_SIZE-1	downto 0));
    lsb	<=	keepit(0);
    process (clk,	ce)
    begin
        if (clk'event	and clk	=	'1'	and ce	=	'1')	then
        if (fraction	<	2**(RI_SIZE-RO_SIZE-1))	then -- truncate	if	fractional	part	is	less	than	0.5
        round	<=	keepit;
        elsif (fraction	>	2**(RI_SIZE-RO_SIZE-1))	then -- add	1	LSB	or	round	up	if	fractional	part	is	more	than	0.5
        round	<=	keepit	+	1;
        else -- must	be	equal	to	0.5	of	LSB
        if(	lsb	=	'0')	then -- truncate	positive	even	and	negative	odd
        round	<=	keepit;
        else -- add	1	LSB	for	positive	odd	and	negative	even
        round	<=	keepit	+	1;
        end if;
        end if;
        end if;
    end process;
    dout	<=	std_logic_vector	(round);
end behavioral;
