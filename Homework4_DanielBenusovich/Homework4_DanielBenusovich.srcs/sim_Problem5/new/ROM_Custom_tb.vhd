library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROM_Custom_tb is
end ROM_Custom_tb;

architecture testbench of ROM_Custom_tb is

--Components
component ROM_Custom
    Port ( I_ADDR : in STD_LOGIC_VECTOR (3 downto 0);
           O_DATA : out STD_LOGIC_VECTOR (3 downto 0));
           
end component; 

--Signals
signal I_ADDR, O_DATA : STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin

    UUT: ROM_Custom port map (  I_ADDR => I_ADDR,
                                O_DATA => O_DATA);
    test : process
    
    begin
    
        for I in 0 to 15 loop
            I_ADDR <= std_logic_vector(to_unsigned(I, 4));
            wait for 20 ns;
        end loop;
    
    end process test; 

end testbench;