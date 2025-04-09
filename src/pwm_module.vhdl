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
        duty_cycle : in  STD_LOGIC_VECTOR (pwm_bit_width-1 downto 0);
        pwm_out     : out STD_LOGIC
    );
end pwm;

architecture Behavioral of pwm is
    signal counter : unsigned (pwm_bit_width-1 downto 0) := (others => '0');
begin
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
PWM_GENERATOR : process (counter, duty_cycle)
    begin
        if unsigned(duty_cycle) > counter then
            pwm_out <= '1';
        else
            pwm_out <= '0';
        end if;
    end process PWM_GENERATOR;
End Behavioral;