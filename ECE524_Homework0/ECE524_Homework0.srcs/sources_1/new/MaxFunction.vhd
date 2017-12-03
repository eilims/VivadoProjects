----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2017 08:22:12 PM
-- Design Name: 
-- Module Name: MaxFunction - Behavioral
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


package MaxFunction is
    function MAX_VALUE(X :integer; Y : integer) 
    return integer; 
end MaxFunction;

package body MaxFunction is
    function MAX_VALUE(X :integer; Y : integer) 
    return integer is
    begin
        if (X >= Y) then
            return X;
            
        else
            return Y;
        end if;
    end MAX_VALUE; 
end MaxFunction;