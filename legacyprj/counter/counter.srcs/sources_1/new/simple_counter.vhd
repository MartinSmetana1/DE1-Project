----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2025 08:58:44 AM
-- Design Name: 
-- Module Name: simple_counter - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;  -- Add this for arithmetic operations
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simple_counter is
    generic (
        N_BITS : integer := 4
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (N_BITS-1 downto 0));
end simple_counter;

architecture Behavioral of simple_counter is
    signal count_int : std_logic_vector(N_BITS-1 downto 0);

begin

    process (clk)
        begin
            if rising_edge(clk)then
                if rst='1' then
                    count_int <= (others => '0');
                elsif en='1' then
                count_int <= count_int + 1;
                end if;
            end if;
    end process; 

				
count <= count_int;


end Behavioral;
