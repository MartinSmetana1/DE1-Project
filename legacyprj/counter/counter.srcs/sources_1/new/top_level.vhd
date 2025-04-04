----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2025 09:57:32 AM
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
    Port ( CLK100MHZ : in STD_LOGIC;
            LED       : out   std_logic_vector(15 downto 0); --! Show 16-bit counter value
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           CP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           BTNC : in STD_LOGIC);
end top_level;
architecture behavioral of top_level is
component clock_enable is
        generic (
            N_PERIODS : integer
        );
        port (
            clk   : in    std_logic;
            rst   : in    std_logic;
            pulse : out   std_logic
        );
    end component;

    -- Component declaration for simple counter
    component simple_counter is
        generic (
            N_BITS : integer
        );
        port (
            clk   : in    std_logic;
            rst   : in    std_logic;
            en    : in    std_logic;
            count : out   std_logic_vector(N_BITS - 1 downto 0)
        );
    end component;

    -- Component declaration for bin2seg
    component bin2seg is
        port (
            clear : in    std_logic;
            bin   : in    std_logic_vector(3 downto 0);
            seg   : out   std_logic_vector(6 downto 0)
        );
    end component;

    -- Local signals for first counter: 4-bit @ 250 ms
    signal sig_en_250ms   : std_logic;                    --! Clock enable signal for 4-bit counter
    signal sig_count_4bit : std_logic_vector(3 downto 0); --! 4-bit counter value

    -- Local signal for second counter: 16-bit @ 2 ms
    signal sig_en_2ms : std_logic; --! Clock enable signal for 16-bit counter
begin

    -- Component instantiation of clock enable for 250 ms
    clk_en0 : component clock_enable
        generic map (
            N_PERIODS => 25_000_000
        )
        port map (
            clk   => CLK100MHZ,
            rst   => BTNC,
            pulse => sig_en_250ms
        );

    -- Component instantiation of 4-bit simple counter
    counter0 : component simple_counter
        generic map (
            N_BITS => 4
        )
        port map (
            clk   => CLK100MHZ,
            rst   => BTNC,
            en    => sig_en_250ms,
            count => sig_count_4bit
        );

    -- Component instantiation of bin2seg
    display : component bin2seg
        port map (
            clear  => BTNC,
            bin    => sig_count_4bit,
            seg(6) => CA,
            seg(5) => CB,
            seg(4) => CC,
            seg(3) => CD,
            seg(2) => CE,
            seg(1) => CF,
            seg(0) => CG
        );

    -- Turn off decimal point
    CP <= '1';

    -- Set display position
    AN <= b"1111_1110";

    -- Component instantiation of clock enable for 2 ms
   
end architecture behavioral;