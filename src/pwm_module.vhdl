library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
    generic (
        max_value :integer:=200_000; -- Max value for duty cycl
        pwm_bit_width :integer:=19 -- Bit width for duty cycle
    );
    Port (
        clk         : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        pwm_out     : out STD_LOGIC;
        hundreds_out : out STD_LOGIC_VECTOR(3 downto 0); -- Output hundreds of percentage
        tens_out   :out STD_LOGIC_VECTOR(3 downto 0); -- Output tens of percentage
        ones_out   :out STD_LOGIC_VECTOR(3 downto 0); -- Output ones of percentage
        btn_up     : in  STD_LOGIC; -- Button to increase duty cycle
        btn_down   : in  STD_LOGIC -- Button to decrease duty cycle
    );
end pwm;

architecture Behavioral of pwm is
    signal counter : unsigned (pwm_bit_width-1 downto 0) := (others => '0');
    signal duty_cycle_internal : STD_LOGIC_VECTOR(pwm_bit_width-1 downto 0) := (others => '0');
    signal duty_cycle_int_precentage : INTEGER; -- Internal signal for duty cycle in percentage
    signal  temp_duty_precent : STD_LOGIC_VECTOR(pwm_bit_width-1 downto 0); -- Temporary signal for duty cycle in percentage

    constant DEBOUNCE_LIMIT : integer := 1_000; -- adjust depending on clk freq   /10ms rn
    signal btn_up_cnt, btn_down_cnt : integer range 0 to DEBOUNCE_LIMIT := 0;
    signal btn_up_db, btn_down_db : std_logic := '0';
    signal btn_up_prev, btn_down_prev : std_logic := '0';

    signal accelerating : STD_LOGIC:= '0';
    signal accelerating_counter: UNSIGNED(23 downto 0):=(others =>'0');
    constant TRESHOLD_ACCELERATION : UNSIGNED(23 downto 0) := TO_UNSIGNED(5_000, 24); -- adjust depending on clk freq   /50ms rn
    

    
begin
    temp_duty_precent <= std_logic_vector(resize(unsigned(duty_cycle_internal) * 100 / (max_value-1), pwm_bit_width));
    duty_cycle_int_precentage <= to_integer(unsigned(temp_duty_precent));
    hundreds_out <= std_logic_vector(to_unsigned((duty_cycle_int_precentage mod 1000) / 100, 4));
    tens_out <= std_logic_vector(to_unsigned((duty_cycle_int_precentage mod 100) / 10, 4));
    ones_out <= STD_LOGIC_VECTOR(to_unsigned(duty_cycle_int_precentage mod 10, 4));
-- Proces pro zpracování tlačítek

process(clk, rst)
begin
    if rst = '1' then
        btn_up_cnt <= 0;
        btn_down_cnt <= 0;
        btn_up_db <= '0';
        btn_down_db <= '0';
    elsif rising_edge(clk) then
        -- Debounce btn_up
        if btn_up = '1' then
            if btn_up_cnt < DEBOUNCE_LIMIT then
                btn_up_cnt <= btn_up_cnt + 1;
            end if;
        else
            btn_up_cnt <= 0;
        end if;
        
        if btn_up_cnt = DEBOUNCE_LIMIT then
            btn_up_db <= '1';
        else
            btn_up_db <= '0';
        end if;

        -- Debounce btn_down
        if btn_down = '1' then
            if btn_down_cnt < DEBOUNCE_LIMIT then
                btn_down_cnt <= btn_down_cnt + 1;
            end if;
        else
            btn_down_cnt <= 0;
        end if;

        if btn_down_cnt = DEBOUNCE_LIMIT then
            btn_down_db <= '1';
        else
            btn_down_db <= '0';
        end if;
    end if;
end process;

process(clk, rst)
begin
    if rst = '1' then
        duty_cycle_internal <= (others => '0');
        btn_up_prev <= '0';
        btn_down_prev <= '0';
        accelerating <= '0';
        accelerating_counter <= (others => '0');
    elsif rising_edge(clk) then
        if btn_up_db = '1' and btn_up_prev = '0' then
            if btn_up_db = '1' and unsigned(duty_cycle_internal) < (max_value - 1) then
                duty_cycle_internal <= std_logic_vector(unsigned(duty_cycle_internal) + max_value / 100);
            end if;
            
        end if;
        
        
        

        if btn_down_db = '1' and btn_down_prev = '0' then
            if btn_down_db = '1' and unsigned(duty_cycle_internal) > 0 then
                duty_cycle_internal <= std_logic_vector(unsigned(duty_cycle_internal) - max_value / 100);
            end if;   
        end if;


        if btn_down_db = '1' and unsigned(duty_cycle_internal) > 0 and btn_down_prev= '1'then
            accelerating <= '1';
            accelerating_counter <= accelerating_counter + 1;
            if accelerating_counter > TRESHOLD_ACCELERATION then
                duty_cycle_internal <= std_logic_vector(unsigned(duty_cycle_internal) - max_value / 100);
                if unsigned(duty_cycle_internal) < 0 or unsigned(duty_cycle_internal)>max_value then
                    duty_cycle_internal <= (others => '0');
                end if;
                    
            end if;
        elsif btn_up_db = '1' and unsigned(duty_cycle_internal) < (max_value - 1) and btn_up_prev= '1'then
            accelerating <= '1';
            accelerating_counter <= accelerating_counter + 1;
            if accelerating_counter > TRESHOLD_ACCELERATION then
                duty_cycle_internal <= std_logic_vector(unsigned(duty_cycle_internal) + max_value / 100);
                if  unsigned(duty_cycle_internal)>max_value then
                    duty_cycle_internal <= std_logic_vector(to_unsigned(max_value, pwm_bit_width));
                end if;
            end if;
        else
            accelerating <= '0';
            accelerating_counter <= (others => '0');
        end if;
        


      
        btn_up_prev <= btn_up_db;
        btn_down_prev <= btn_down_db;

    end if;
end process;


 COUNTER_PROCESS : process (clk)
 begin
    if rising_edge(clk) then
        if rst = '1' then
            counter <= (others => '0');
        else 
            if counter <(max_value-1) then
                counter <= counter + 1;
            else
                counter <= (others => '0');
            end if;
        end if;
    end if;
 end process COUNTER_PROCESS;

PWM_GENERATOR : process (counter, duty_cycle_internal)
    begin
        if unsigned(duty_cycle_internal) > counter then
            pwm_out <= '1';
        else
            pwm_out <= '0';
        end if;
    end process PWM_GENERATOR;
End Behavioral;