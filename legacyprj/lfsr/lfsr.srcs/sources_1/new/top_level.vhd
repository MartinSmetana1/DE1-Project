----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2025 09:33:31 AM
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
 port (
    CLK100MHZ : in    std_logic;                    --! Main clock
    BTNC      : in    std_logic;                    --! Synchronous reset
    BTND      : in    std_logic;                    --! Load default/seed value
    SW        : in    std_logic_vector(3 downto 0); --! Default/seed value
    LED       : out   std_logic_vector(7 downto 0); --! Show counter value
    LED16_B   : out   std_logic;                     --! Sequence completed
    CA        : out   std_logic;                     --! Cathode of segment A
    CB        : out   std_logic;                     --! Cathode of segment B
    CC        : out   std_logic;                     --! Cathode of segment C
    CD        : out   std_logic;                     --! Cathode of segment D
    CE        : out   std_logic;                     --! Cathode of segment E
    CF        : out   std_logic;                     --! Cathode of segment F
    CG        : out   std_logic;                     --! Cathode of segment G
    DP        : out   std_logic;                     --! Decimal point
    AN        : out   std_logic_vector(7 downto 0)  --! Common anodes of all on-board displays
  );
end top_level;

architecture Behavioral of top_level is
component clock_enable is
    generic(N_PERIODS:positive
    );
    port(
    clk: in std_logic;
    rst: in std_logic;
    pulse: out std_logic
    );
end component;
component lfsr is 
generic (
        N_BITS : positive
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           load : in STD_LOGIC;
           lfsr_in : in STD_LOGIC_VECTOR (N_BITS-1 downto 0);
           done : out STD_LOGIC;
           lfsr_out : out STD_LOGIC_VECTOR (N_BITS-1 downto 0));
     end component;
component bin2seg is
    Port ( clear : in STD_LOGIC;
           bin : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
   end component;
   
signal local_sig_en_500ms: std_logic;
signal count: std_logic_vector(3 downto 0);
begin
    CLK_EN_100MS: component clock_enable
        generic map(
             N_PERIODS=>50_000_000
        )
        port map(
            clk => CLK100MHZ,
            rst => BTNC,
            pulse => local_sig_en_500ms           
        );
        

     LFSR_4BIT : component lfsr
        generic map(
        N_BITS => 4
        )
    Port map( clk=>CLK100MHZ ,
           rst => BTNC,
           en => local_sig_en_500ms,
           load =>  BTND ,
           lfsr_in=>SW ,
           done =>LED16_B,
           lfsr_out =>count);
           
   display:component bin2seg
        Port map( clear => BTNC,
           bin => count,
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
       AN <= b"1111_1110";

end Behavioral;
