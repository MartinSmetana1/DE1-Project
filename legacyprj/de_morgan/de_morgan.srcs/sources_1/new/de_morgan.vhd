----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2025 09:56:09 AM
-- Design Name: 
-- Module Name: de_morgan - Behavioral
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

entity de_morgan is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f_org : out STD_LOGIC;
           f_and : out STD_LOGIC;
           f_or : out STD_LOGIC);
end de_morgan;

architecture Behavioral of de_morgan is

begin
    f_org <= (not(c and b)) or (((not b) and a));
    f_and <= (not((c and b) and not((not b) and a)));
    f_or <= ((not c) or (not b)) or not(b or (not a));
      
    

end Behavioral;
