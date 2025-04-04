----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2025 09:19:37 AM
-- Design Name: 
-- Module Name: gates - Behavioral
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

entity gates is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           and_out : out STD_LOGIC;
           or_out : out STD_LOGIC;
           xor_out : out STD_LOGIC);
end gates;

architecture Behavioral of gates is

begin
    and_out <= a and b;
    or_out <= a or b;
    xor_out <= a xor b;

end Behavioral;
