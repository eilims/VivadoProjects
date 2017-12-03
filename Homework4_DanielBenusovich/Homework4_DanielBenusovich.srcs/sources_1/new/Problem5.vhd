----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Problem5 is
    Port ( I_CLK : in STD_LOGIC;
           I_RST : in STD_LOGIC;
           O_RESULT : out STD_LOGIC_VECTOR (7 downto 0));
end Problem5;

architecture Structural of Problem5 is

--Components
component Up_Counter
    Generic ( Length : integer);
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           LD : in STD_LOGIC;
           E : in STD_LOGIC;
           ENP, ENT : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           RCO : out STD_LOGIC;
           CNT : out STD_LOGIC_VECTOR ((Length - 1) downto 0));

end component;

component ROM_Custom
    Port ( I_ADDR : in STD_LOGIC_VECTOR (3 downto 0);
           O_DATA : out STD_LOGIC_VECTOR (3 downto 0));

end component;

component Register_Generic
    Generic (Length : integer);
    Port ( I_CLK : in STD_LOGIC;
           I_RST : in STD_LOGIC;
           I_E : in STD_LOGIC;
           I_DATA : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           O_DATA : out STD_LOGIC_VECTOR ((Length - 1) downto 0));

end component;

component CPA
    Generic ( Length : integer);
    Port ( A : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           B : in STD_LOGIC_VECTOR ((Length - 1) downto 0);
           Cout : out STD_LOGIC;
           Result : out STD_LOGIC_VECTOR ((Length - 1) downto 0));

end component; 

component NOT_2_DB
    Port ( A : in STD_LOGIC;
       OUT0 : out STD_LOGIC);

end component;

--Signals
constant Length : integer := 8;
signal COUNTEROUT: STD_LOGIC_VECTOR (3 downto 0) := std_logic_vector(to_unsigned(0, 4));
signal CPAOUT, FINAL, ROMOUT  : STD_LOGIC_VECTOR ((Length - 1) downto 0) := std_logic_vector(to_unsigned(0, (Length )));
signal RCO, LD, ADDERC : STD_LOGIC := '0';
signal Enable, ENP, ENT : STD_LOGIC := '1';


begin

U1: Up_Counter generic map (Length => 4)
                  port map (CLK => I_CLK,
                            CLR => I_RST,
                            LD => LD,
                            E => Enable,
                            ENP => ENP,
                            ENT => ENT,
                            DATA => COUNTEROUT,
                            RCO => RCO,
                            CNT => COUNTEROUT);
                            
U2: NOT_2_DB port map (     A => RCO,
                            OUT0 => Enable); 
                       
U3: ROM_Custom port map (   I_ADDR => COUNTEROUT,
                            O_DATA => ROMOUT (3 downto 0));
                            
U4: CPA generic map (       Length => Length)
           port map (       A => FINAL,
                            B => ROMOUT,
                            Cout => ADDERC,
                            Result => CPAOUT);     
                            
U5: Register_Generic generic map (  Length => Length)
                        port map (  I_CLK => I_CLK,
                                    I_RST => I_RST,
                                    I_E => Enable,
                                    I_DATA => CPAOUT,
                                    O_DATA => FINAL);         

O_RESULT <= FINAL;

end Structural;
