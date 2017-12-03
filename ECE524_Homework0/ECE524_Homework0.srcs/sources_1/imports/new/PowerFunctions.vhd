----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Daniel Benusovich
-- 
-- Create Date: 09/04/2017 02:54:52 PM
-- Design Name: 
-- Module Name: PowerFunctions - Behavioral
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

package PowerFunction is

    function GENERIC_POWER (N : integer; EXP : integer) 
    return integer;
    
    function FOURTH_POWER (N : integer)
    return integer;
    
end PowerFunction;

package body PowerFunction is

    function GENERIC_POWER (N : integer; EXP : integer) 
    return integer is
    begin
        return N ** EXP;
    end GENERIC_POWER;
    
    function FOURTH_POWER (N : integer)
    return integer is
    begin
        return N **4;
    end FOURTH_POWER;
       
    
end PowerFunction;