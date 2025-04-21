library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity top_level is
 port (
    CLK100MHZ : in    std_logic; -- 100 MHz clock input
    BTNU      : in    std_logic; -- Button to increase duty cycle
    BTND      : in    std_logic; -- Button to decrease duty cycle 
    BTNC      : in    std_logic; -- Reset button 
    LED16_B   : out   std_logic; -- PWM output for blue LED 
    LED16_R   : out   std_logic; -- PWM output for red LED                  
    CA        : out   std_logic; -- Cathode of segment A
    CB        : out   std_logic; -- Cathode of segment B
    CC        : out   std_logic; -- Cathode of segment C
    CD        : out   std_logic; -- Cathode of segment D
    CE        : out   std_logic; -- Cathode of segment E
    CF        : out   std_logic; -- Cathode of segment F
    CG        : out   std_logic; -- Cathode of segment G
    DP        : out   std_logic; -- Decimal point (DP) for 7-segment display
    SW        : in    STD_LOGIC; -- Switch to select between two PWM signals
    AN       : out   std_logic_vector(7 downto 0)  -- Common anodes of all on-board displays
  );
end top_level;

architecture Behavioral of top_level is
-- Component declarations for clock_enable, bin2segMult, and pwm, declared in their respective vhdl files
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
        ones_1 : in STD_LOGIC_VECTOR(3 downto 0);
        tens_1: in STD_LOGIC_VECTOR(3 downto 0);
        hundreds_1 : in STD_LOGIC_VECTOR(3 downto 0);
        ones_2 : in STD_LOGIC_VECTOR(3 downto 0);
        tens_2: in STD_LOGIC_VECTOR(3 downto 0);
        hundreds_2 : in STD_LOGIC_VECTOR(3 downto 0);
        seg : out std_logic_vector(6 downto 0);
        POS_OUT   : out std_logic_vector(7 downto 0)
    );
end component;
component pwm is
    generic (
        max_value :integer:=200_000; -- Max value for duty cycl
        pwm_bit_width : integer:=19 -- Bit width for duty cycle
    );
    Port(
        clk         : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        pwm_out     : out STD_LOGIC;
        tens_out   :out STD_LOGIC_VECTOR(3 downto 0); -- Output tens of percentage
        ones_out   :out STD_LOGIC_VECTOR(3 downto 0); -- Output ones of percentage
        hundreds_out : out STD_LOGIC_VECTOR(3 downto 0); -- Output hundreds of percentage
        btn_up     : in  STD_LOGIC; -- Button to increase duty cycle
        btn_down   : in  STD_LOGIC -- Button to decrease duty cycle
    );
end component;
-- Signal declarations
signal local_sig_en_500ms: std_logic;
signal ones_1: std_logic_vector(3 downto 0);
signal tens_1: std_logic_vector(3 downto 0);
signal ones_2 : std_logic_vector(3 downto 0);
signal tens_2 : std_logic_vector(3 downto 0);
signal hundreds_1 : std_logic_vector(3 downto 0);
signal hundreds_2 : std_logic_vector(3 downto 0);
signal btn_up_pwm1: std_logic;
signal btn_down_pwm1: std_logic;
signal btn_up_pwm2: std_logic;
signal btn_down_pwm2: std_logic;

begin
-- Clock enable module to generate a 500ms pulse
CLK_EN_100MS: component clock_enable
        generic map(
             N_PERIODS=>50_000_000
        )
        port map(
            clk => CLK100MHZ,
            rst => BTNC,
            pulse => local_sig_en_500ms          
        );

btn_down_pwm1 <= BTND when SW = '1' else '0';
btn_up_pwm1 <= BTNU when SW = '1' else '0';
PWM_in_1: component pwm
generic map(
        max_value =>200_000, -- Max value for duty cycle
        pwm_bit_width =>19 -- Bit width for duty cycle
    )
    Port map(
        clk         => CLK100MHZ, -- Clock signal
        rst       => BTNC, -- Reset signal
        pwm_out    => LED16_B, -- PWM output signal
        ones_out   => ones_1, -- Output ones of percentage
        tens_out   => tens_1, -- Output ones of percentage
        hundreds_out => hundreds_1, -- Output ones of percentage
        btn_up    => btn_up_pwm1, -- Button to increase duty cycle
        btn_down   =>btn_down_pwm1 -- Button to decrease duty cycle
    );
btn_down_pwm2 <= BTND when SW = '0' else '0';
btn_up_pwm2 <= BTNU when SW = '0' else '0';

PWM_IN_2: component pwm
    generic map(
        max_value =>200_000, -- Max value for duty cycle
        pwm_bit_width =>19 -- Bit width for duty cycle
    )
    Port map(
        clk         =>CLK100MHZ,
        rst       =>BTNC,
        pwm_out    =>LED16_R,
        ones_out   => ones_2, -- Output ones of percentage
        tens_out   => tens_2, -- Output ones of percentage
        hundreds_out => hundreds_2, -- Output ones of percentage
        btn_up    => btn_up_pwm2, -- Button to increase duty cycle
        btn_down   => btn_down_pwm2 -- Button to decrease duty cycle
    );
display: component bin2segMult
    port map(
        clk   => CLK100MHZ,
        reset => BTNC,
        ones_1  => ones_1,
        tens_1  => tens_1,
        hundreds_1 => hundreds_1,
        ones_2  => ones_2,
        tens_2  => tens_2,
        hundreds_2 => hundreds_2,
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