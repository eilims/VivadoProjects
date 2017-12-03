----------------------------------------------------------------------------------
-- Engineer : Daniel Benusovich
-- Professor: Ramin Roosta
-- Class: ECE420
--
-- Function: GGeneric size and length RAM           
--
-- Revision History:
--    30 June 2017 GRP Originated.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity RAM_Generic is

    Generic     (  height : integer;
                   width : integer);
                   
        Port    (  I_CLK : in STD_LOGIC;
                   I_CLR : in STD_LOGIC;
                   I_RW : in STD_LOGIC;
                   I_ADDR : in STD_LOGIC_VECTOR (0 downto 0);
                   I_DATA : in STD_LOGIC_VECTOR ((width - 1) downto 0);
                   O_DATA : out STD_LOGIC_VECTOR ((width - 1) downto 0));
end RAM_Generic;

architecture Behavioral of RAM_Generic is

--Types
type MEM is array (0 to (height - 1)) of std_logic_vector ((width - 1) downto 0);

--Components

--Signals
signal memory : MEM := (others => (others => '0'));

begin

    logic : process(I_CLK)
    
    variable address : integer := 0;
    
    begin
    
        if ( rising_edge(I_CLK) ) then
            
            --Convert ahead of time 
            address := to_integer(unsigned(I_ADDR));
            
            --Manual clear
            if ( I_CLR = '1') then
                memory <= (others => (others => '0'));
            
            -- I_RW = '1' => Write
            elsif (I_RW = '1') then 
                memory(address) <= I_DATA;
                 
            end if;
                
                O_DATA <= memory(address);
        
        
        end if;
    
    end process;


end Behavioral;
