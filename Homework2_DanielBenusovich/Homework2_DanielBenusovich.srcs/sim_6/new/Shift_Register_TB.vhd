library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift_Register_TB is
end Shift_Register_TB;

architecture testbench of Shift_Register_TB is
    --Declare Components
    component Shift_Register_DB
        Port ( CLK, E : in STD_LOGIC;
               RST : in STD_LOGIC;
               PL : in STD_LOGIC;
               SL : in STD_LOGIC;
               RSL : in STD_LOGIC;
               LSL : in STD_LOGIC;
               DATAS : in STD_LOGIC;
               DATAP : in STD_LOGIC_VECTOR (3 downto 0);
               DATAOUT : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    --Declare signals
   signal CLK, E, RST, PL, SL, RSL, LSL, DATAS : STD_LOGIC := '0';
   signal DATAP, DATAOUT : STD_LOGIC_VECTOR (3 downto 0) := "0000";
   shared variable test : STD_LOGIC_VECTOR (3 downto 0) := "0000";
   
   begin 
    
        U1: Shift_Register_DB port map (   CLK => CLK,
                                           E => E,
                                           RST => RST,
                                           PL => PL,
                                           SL => SL,
                                           RSL => RSL,
                                           LSL => LSL,
                                           DATAS => DATAS,
                                           DATAP => DATAP,
                                           DATAOUT => DATAOUT);
                                           
    stimiulus:process                                   
    begin
        -- Parallel Load Test
        -- Result is 0110
        E <= '1';
        PL <= '1';
        DATAP <= "0110";
        CLK <= '1';
        wait for 10 ns;
        assert DATAOUT = DATAP report "Parallel Load Fail" severity note;
        CLK <= '0';
        wait for 10 ns;
        -- Reset Test
        -- Should override everything
        RST <= '1';
        wait for 5 ns;
        CLK <= '0';
        test := "0000";
        assert DATAOUT = test report "Reset Fail" severity note;
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        assert DATAOUT = test report "Reset Fail" severity note;
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        -- Serial Load test
        -- Result is 1111
        -- Run 4 cycles to load is 1111
        RST <= '0';
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
        PL <= '0';
        SL <= '1';
        DATAS <= '1'; 
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        test := "1111";
        assert DATAOUT = test report "Serial Load Fail" severity note;
        SL <= '0';
        CLK <= '0';
        wait for 10 ns;
        -- Left shift logical test
        LSL <= '1';
        CLK <= '1';
        wait for 10 ns;
        LSL <= '0';
        CLK <= '0';
        test := "1110";
        assert DATAOUT = test report "Left Shift Logical Fail" severity note;
        wait for 10 ns;
        -- Right Shift Logical test
        RSL <= '1';
        CLK <= '1';
        wait for 10 ns;
        RSL <= '0';
        CLK <= '0';
        test := "0111";
        assert DATAOUT = test report "Right Shift Logical Fail" severity note;       
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
        
    end process;

end testbench;