library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_tb is
end pwm_tb;

architecture behavior of pwm_tb is

    -- Component Declaration
    component pwm
        generic (
            max_value : integer := 255; -- Max value for duty cycle
            pwm_bit_width : integer := 8 -- Bit width for duty cycle
        );
        Port (
            clk         : in  STD_LOGIC;
            rst         : in  STD_LOGIC;
            pwm_out     : out STD_LOGIC;
            hundreds_out : out STD_LOGIC_VECTOR(3 downto 0);
            tens_out     : out STD_LOGIC_VECTOR(3 downto 0);
            ones_out     : out STD_LOGIC_VECTOR(3 downto 0);
            btn_up       : in  STD_LOGIC;
            btn_down     : in  STD_LOGIC
        );
    end component;

    -- Signal Declarations
    signal clk         : STD_LOGIC := '0';
    signal rst         : STD_LOGIC := '0';
    signal pwm_out     : STD_LOGIC;
    signal hundreds_out, tens_out, ones_out : STD_LOGIC_VECTOR(3 downto 0);
    signal btn_up      : STD_LOGIC := '0';
    signal btn_down    : STD_LOGIC := '0';

    constant clk_period : time := 1000 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: pwm
        port map (
            clk => clk,
            rst => rst,
            pwm_out => pwm_out,
            hundreds_out => hundreds_out,
            tens_out => tens_out,
            ones_out => ones_out,
            btn_up => btn_up,
            btn_down => btn_down
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
        -- Local procedure to press a button with debounce
        procedure press_button(signal btn : out std_logic) is
        begin
            btn <= '1';
            wait for 2 ms;  -- Must match debounce time
            btn <= '0';
            wait for 2 ms;
        end procedure;

    begin
        -- Initial reset
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 100 ns;


        for i in 0 to 3 loop
            -- Test btn_up - single press
            btn_up <= '1';
            wait for 1 ns;
            btn_up <= '0';
            wait for 1 ns;
        end loop;
        -- Test btn_up - single press


        press_button(btn_up);
        wait for 1 ms;

        -- Test btn_down - single press
        for i in 0 to 3 loop
            btn_down <= '1';
            wait for 1 ns;
            btn_down <= '0';
            wait for 1 ns;
        end loop;
        press_button(btn_down);
        wait for 1 ms;

        -- Test rapid multiple presses of btn_up
        for i in 0 to 3 loop
            press_button(btn_up);
            wait for 1 ms;
        end loop;

        -- Hold btn_up to trigger acceleration
        btn_up <= '1';
        wait for 60 ms; -- Exceeds TRESHOLD_ACCELERATION
        btn_up <= '0';
        wait for 10 ms;

        -- Hold btn_down to test accelerated decrease
        btn_down <= '1';
        wait for 60 ms;
        btn_down <= '0';
        wait for 10 ms;

        -- End of test
        wait for 50 ms;
        assert false report "Simulation Finished" severity failure;
    end process;

end behavior;
