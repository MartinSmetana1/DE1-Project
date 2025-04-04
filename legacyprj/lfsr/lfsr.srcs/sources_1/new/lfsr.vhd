----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2025 09:01:06 AM
-- Design Name: 
-- Module Name: lfsr - Behavioral
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

entity lfsr is
    generic (
        N_BITS : positive := 4 
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           load : in STD_LOGIC;
           lfsr_in : in STD_LOGIC_VECTOR (N_BITS-1 downto 0);
           done : out STD_LOGIC;
           lfsr_out : out STD_LOGIC_VECTOR (N_BITS-1 downto 0));
end lfsr;

architecture Behavioral of lfsr is

signal sig_reg : std_logic_vector(N_BITS-1 downto 0);
 signal sig_fb : std_logic;
begin
process(clk)
begin
   if (rising_edge(clk)) then
      if (rst = '1') then
         sig_reg <= (others => '0');
      elsif  (load = '1') then
        sig_reg <= lfsr_in;
      elsif en='1' then
         sig_reg(3 downto 1) <= sig_reg(2 downto 0) ;
         sig_reg(0) <= sig_fb;
      end if;
   end if;
end process;
lfsr_out <= sig_reg;
done <= '1' when sig_reg = lfsr_in else '0';
sig_fb <= sig_reg(3) xnor sig_reg(2);
G_4BIT : if N_BITS = 4 generate
    -- Create feedback for 4-bit LFSR counter
    sig_fb <= sig_reg(3) xnor sig_reg(2);
end generate G_4BIT;
end Behavioral;

