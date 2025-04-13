----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/11/2025 09:18:04 AM
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
    BTNU      : in    std_logic;                    --! up btn
    BTND      : in    std_logic;                    --! down btn
    BTNC      : in    std_logic;                    --! up btn
    LED16_B   : out   std_logic;                     --! Sequence completed
    CA        : out   std_logic;                     --! Cathode of segment A
    CB        : out   std_logic;                     --! Cathode of segment B
    CC        : out   std_logic;                     --! Cathode of segment C
    CD        : out   std_logic;                     --! Cathode of segment D
    CE        : out   std_logic;                     --! Cathode of segment E
    CF        : out   std_logic;                     --! Cathode of segment F
    CG        : out   std_logic;                     --! Cathode of segment G
    DP        : out   std_logic;                     --! Decimal point
    AN       : out   std_logic_vector(7 downto 0)  --! Common anodes of all on-board displays
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
component bin2segMult is
    port(
        clk   : in std_logic;
        reset : in std_logic;
        ones : in STD_LOGIC_VECTOR(3 downto 0);
        tens : in STD_LOGIC_VECTOR(3 downto 0);
        seg : out std_logic_vector(6 downto 0);
        POS_OUT   : out std_logic_vector(5 downto 0)
    );
end component;
component pwm is
    generic (
        max_value :integer:=256; -- Max value for duty cycl
        pwm_bit_width : integer:=8 -- Bit width for duty cycle
    );
    Port(
        clk         : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        pwm_out     : out STD_LOGIC;
        duty_cycle_out : out STD_LOGIC_VECTOR (pwm_bit_width-1 downto 0);
        duty_cycle_out_percent : out STD_LOGIC_VECTOR (pwm_bit_width-1 downto 0); -- Output duty cycle in percentage
        tens_out   :out STD_LOGIC_VECTOR(3 downto 0); -- Output tens of percentage
        ones_out   :out STD_LOGIC_VECTOR(3 downto 0); -- Output ones of percentage
        btn_up     : in  STD_LOGIC; -- Button to increase duty cycle
        btn_down   : in  STD_LOGIC -- Button to decrease duty cycle
    );
end component;
signal local_sig_en_500ms: std_logic;
signal ones: std_logic_vector(3 downto 0);
signal local_pwm: std_logic;
signal tens: std_logic_vector(3 downto 0);


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
PWM_in: component pwm
generic map(
        max_value =>256, -- Max value for duty cycl
        pwm_bit_width =>8 -- Bit width for duty cycle
    )
    Port map(
        clk         =>CLK100MHZ,
        rst       =>BTNC,
        pwm_out    =>LED16_B,
        ones_out   => ones, -- Output ones of percentage
        tens_out   => tens, -- Output ones of percentage
        btn_up    => BTNU, -- Button to increase duty cycle
        btn_down   =>BTND -- Button to decrease duty cycle
    );
display: component bin2segMult
    port map(
        clk   => CLK100MHZ,
        reset => BTNC,
        ones  => ones,
        tens  => tens,
        seg(6) => CA,
        seg(5) => CB,
        seg(4) => CC,
        seg(3) => CD,
        seg(2) => CE,
        seg(1) => CF,
        seg(0) => CG,
        POS_OUT   => AN
    );
DP <= '1'; -- Decimal point is always off
-- Set all anodes to high (off) by default


end Behavioral;