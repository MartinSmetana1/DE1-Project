----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2025 09:05:36 AM
-- Design Name: 
-- Module Name: alu_4bit - Behavioral
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
use ieee.numeric_std.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           opcode : in STD_LOGIC_VECTOR (2 downto 0);
           result : out STD_LOGIC_VECTOR (3 downto 0);
           carry : out STD_LOGIC;
           zero : out STD_LOGIC);
end alu_4bit;

architecture Behavioral of alu_4bit is
    signal sig_res : std_logic_vector(4 downto 0);  -- Extra bit for carry
begin

    p_alu : process (a, b, opcode) is
    begin
        case opcode is
            when "000" =>  -- NOT
                sig_res <= '0' & not a;

            when "001" =>  -- ADD
                sig_res <= std_logic_vector(
                    unsigned('0' & a) +
                    unsigned('0' & b));
            when "010" =>  -- ADD
                sig_res <= std_logic_vector(
                    unsigned('0' & a) -
                    unsigned('0' & b));
            when "011"=> 
                sig_res <= a(3 downto 0) & "0";
           when "100" =>
                sig_res <= "00"& a(3 downto 1);


            -- WRITE YOUR ALU OPERATIONS HERE


            when others =>
                sig_res <= (others => '0');  -- Default case
        end case;
    end process p_alu;

    -- Assign outputs
    result <= sig_res(3 downto 0);  -- Get 4-bit result only
    carry  <= sig_res(4);           -- Carry bit
    zero   <= '1' when sig_res(3 downto 0) = "0000" else
              '0';                  -- Zero flag

end architecture behavioral;