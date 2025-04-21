library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
    generic (
        max_value : integer := 200_000; -- Max value for duty cycle
        pwm_bit_width : integer := 19 -- Bit width for duty cycle
    );
    Port (
        clk           : in  STD_LOGIC; -- Clock signal
        rst           : in  STD_LOGIC; -- Reset signal
        pwm_out       : out STD_LOGIC; -- PWM output signal
        hundreds_out  : out STD_LOGIC_VECTOR(3 downto 0); -- Output hundreds of percentage
        tens_out      : out STD_LOGIC_VECTOR(3 downto 0); -- Output tens of percentage
        ones_out      : out STD_LOGIC_VECTOR(3 downto 0); -- Output ones of percentage
        btn_up        : in  STD_LOGIC; -- Button to increase duty cycle
        btn_down      : in  STD_LOGIC -- Button to decrease duty cycle
    );
end pwm;

architecture Behavioral of pwm is
    signal counter : unsigned (pwm_bit_width-1 downto 0) := (others => '0'); -- Counter for PWM generation
    signal duty_cycle_internal : STD_LOGIC_VECTOR(pwm_bit_width-1 downto 0) := (others => '0'); -- Internal duty cycle value
    signal duty_percent : integer range 0 to 100 := 0;

    constant DEBOUNCE_LIMIT : integer := 1_000; -- Adjust based on clk freq (e.g., 10ms)
    signal btn_up_cnt, btn_down_cnt : integer range 0 to DEBOUNCE_LIMIT := 0;
    signal btn_up_db, btn_down_db : std_logic := '0';
    signal btn_up_prev, btn_down_prev : std_logic := '0';

    signal accelerating : STD_LOGIC := '0';
    signal accelerating_counter : UNSIGNED(23 downto 0) := (others => '0');
    constant TRESHOLD_ACCELERATION : UNSIGNED(23 downto 0) := TO_UNSIGNED(5_000, 24); -- e.g., 50ms
begin

    -- Update duty_cycle_internal based on duty_percent
    process(clk)
    begin
        if rising_edge(clk) then
            duty_cycle_internal <= std_logic_vector(to_unsigned((duty_percent * (max_value - 1)) / 100, pwm_bit_width));
        end if;
    end process;

    -- Output duty_percent as individual digits
    hundreds_out <= std_logic_vector(to_unsigned(duty_percent / 100, 4));
    tens_out     <= std_logic_vector(to_unsigned((duty_percent mod 100) / 10, 4));
    ones_out     <= std_logic_vector(to_unsigned(duty_percent mod 10, 4));

    -- Button debounce process
    process(clk, rst)
    begin
        if rst = '1' then
            btn_up_cnt <= 0;
            btn_down_cnt <= 0;
            btn_up_db <= '0';
            btn_down_db <= '0';
        elsif rising_edge(clk) then
            -- btn_up debounce
            if btn_up = '1' then
                if btn_up_cnt < DEBOUNCE_LIMIT then
                    btn_up_cnt <= btn_up_cnt + 1;
                end if;
            else
                btn_up_cnt <= 0;
            end if;
            -- Check if the button is pressed for the debounce limit
            if btn_up_cnt = DEBOUNCE_LIMIT then
                btn_up_db <= '1';
            else
                btn_up_db <= '0';
            end if;

            -- btn_down debounce
            if btn_down = '1' then
                if btn_down_cnt < DEBOUNCE_LIMIT then
                    btn_down_cnt <= btn_down_cnt + 1;
                end if;
            else
                btn_down_cnt <= 0;
            end if;
            -- Check if the button is pressed for the debounce limit
            if btn_down_cnt = DEBOUNCE_LIMIT then
                btn_down_db <= '1';
            else
                btn_down_db <= '0';
            end if;
        end if;
    end process;

    -- Button control and acceleration
    process(clk, rst)
    begin
        if rst = '1' then
            duty_percent <= 0;
            btn_up_prev <= '0';
            btn_down_prev <= '0';
            accelerating <= '0';
            accelerating_counter <= (others => '0');
        elsif rising_edge(clk) then
            -- Single step up
            if btn_up_db = '1' and btn_up_prev = '0' then
                if duty_percent < 100 then
                    duty_percent <= duty_percent + 1;
                end if;
            end if;

            -- Single step down
            if btn_down_db = '1' and btn_down_prev = '0' then
                if duty_percent > 0 then
                    duty_percent <= duty_percent - 1;
                end if;
            end if;
            
            -- Accelerated up
            if btn_up_db = '1' and btn_up_prev = '1' then
                accelerating <= '1';
                accelerating_counter <= accelerating_counter + 1;
                if accelerating_counter > TRESHOLD_ACCELERATION then
                    if duty_percent < 100 - 10 then
                        duty_percent <= duty_percent + 10;
                    else
                        duty_percent <= 100;
                    end if;
                    accelerating_counter <= (others => '0');
                end if;

            -- Accelerated down
            elsif btn_down_db = '1' and btn_down_prev = '1' then
                accelerating <= '1';
                accelerating_counter <= accelerating_counter + 1;
                if accelerating_counter > TRESHOLD_ACCELERATION then
                    if duty_percent > 10 then
                        duty_percent <= duty_percent - 10;
                    else
                        duty_percent <= 0;
                    end if;
                    accelerating_counter <= (others => '0');
                end if;
            else
                accelerating <= '0';
                accelerating_counter <= (others => '0');
            end if;

            btn_up_prev <= btn_up_db;
            btn_down_prev <= btn_down_db;
        end if;
    end process;

    -- PWM counter
    COUNTER_PROCESS : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                counter <= (others => '0');
            else
                if counter < (max_value - 1) then
                    counter <= counter + 1;
                else
                    counter <= (others => '0');
                end if;
            end if;
        end if;
    end process;

    -- PWM output generation
    PWM_GENERATOR : process(counter, duty_cycle_internal)
    begin
        if unsigned(duty_cycle_internal) > counter then
            pwm_out <= '1';
        else
            pwm_out <= '0';
        end if;
    end process;

end Behavioral;