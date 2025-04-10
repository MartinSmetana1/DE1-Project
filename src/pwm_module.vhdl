library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
    generic (
        max_value :integer:=256; -- Max value for duty cycl
        pwm_bit_width : integer:=8 -- Bit width for duty cycle
    );
    Port (
        clk         : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        pwm_out     : out STD_LOGIC;
        duty_cycle_out : out STD_LOGIC_VECTOR (pwm_bit_width-1 downto 0);
        duty_cycle_out_percent : out STD_LOGIC_VECTOR (pwm_bit_width-1 downto 0); -- Output duty cycle in percentage
        hundreds_out:out INTEGER; -- Output hundreds of percentage
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
    
begin
-- Proces pro zpracování tlačítek
    process (clk, rst)
    begin
        if rst = '1' then
            duty_cycle_internal <= (others => '0');
        elsif rising_edge(clk) then
            if btn_up = '1' and unsigned(duty_cycle_internal) < (max_value-1) then
                duty_cycle_internal <= std_logic_vector(unsigned(duty_cycle_internal) + 25);
            elsif btn_down = '1' and unsigned(duty_cycle_internal) > 0 then
                duty_cycle_internal <= std_logic_vector(unsigned(duty_cycle_internal) - 25);
            end if;
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
            
            duty_cycle_out <= duty_cycle_internal;
            duty_cycle_out_percent <= std_logic_vector(resize(unsigned(duty_cycle_internal) * 100 / (max_value-1), pwm_bit_width));
            temp_duty_precent <= std_logic_vector(resize(unsigned(duty_cycle_internal) * 100 / (max_value-1), pwm_bit_width));
            duty_cycle_int_precentage <= to_integer(unsigned(temp_duty_precent));
            tens_out <= std_logic_vector(to_unsigned((duty_cycle_int_precentage mod 100) / 10, 4));
            ones_out <= STD_LOGIC_VECTOR(to_unsigned(duty_cycle_int_precentage mod 10, 4));

            pwm_out <= '1';
            
        else
            pwm_out <= '0';
        end if;
    end process PWM_GENERATOR;
End Behavioral;