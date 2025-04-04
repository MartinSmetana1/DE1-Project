----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2025 10:05:32 AM
-- Design Name: 
-- Module Name: top_level - Behavioral
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

entity top_level is
    Port ( SW_A : in STD_LOGIC_VECTOR (3 downto 0);
           SW_B : in STD_LOGIC_VECTOR (3 downto 0);
           SW_OPCODE : in STD_LOGIC_VECTOR (2 downto 0);
           LED_RESULT : out STD_LOGIC_VECTOR (3 downto 0);
           LED_RED : out STD_LOGIC;
           LED_BLUE : out STD_LOGIC;
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           DP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end top_level;

architecture Behavioral of top_level is


    component alu_4bit is
        port (
            a      : in    std_logic_vector(3 downto 0);
            b      : in    std_logic_vector(3 downto 0);
            opcode : in    std_logic_vector(2 downto 0);
            result : out   std_logic_vector(3 downto 0);
            carry  : out   std_logic;
            zero   : out   std_logic
        );
    end component;
    component bin2seg is
        port (
            clear : in    std_logic;
            bin   : in    std_logic_vector(3 downto 0);
            seg   : out   std_logic_vector(6 downto 0)
        );
    end component;

    --! Local signal for alu result
    signal sig_tmp : std_logic_vector(3 downto 0);
begin

      -- Component instantiation of 4-bit alu
    adder : component alu_4bit
        port map (
            a      => SW_A,
            b      => SW_B,
            opcode => SW_OPCODE,
            result => sig_tmp,
            carry  => LED_RED,
            zero   => LED_BLUE
        );

    -- Component instantiation of bin2seg
    display : component bin2seg
        port map (
            clear  => '0',
            bin    => sig_tmp,
            seg(6) => CA,
            seg(5) => CB,
            seg(4) => CC,
            seg(3) => CD,
            seg(2) => CE,
            seg(1) => CF,
            seg(0) => CG
        );
    -- Turn off decimal point
    DP <= '1';


    -- Set display position
    LED_RESULT <= sig_tmp;

    -- Display output value on LEDs
    AN <= b"1111_1110";

end architecture behavioral;
