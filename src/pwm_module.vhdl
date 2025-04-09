library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
    generic (
        pwm_bit_width : integer:=8; -- Bit width for duty cycle
        clk_cnt_len : POSITIVE:=1 -- Clock count length for PWM period
    );
    Port (
        clk         : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        duty_cycle  : in  STD_LOGIC_VECTOR(pwm_bit_width-1 downto 0); -- 16-bit duty cycle
        pwm_out     : out STD_LOGIC
    );
end pwm;

architecture Behavioral of pwm is
    signal pwm_cnt : unsigned(pwm_bit_width - 1 downto 0);
    signal clk_cnt : integer range 0 to clk_cnt_len - 1;
begin
    CLK_CNT_PROC : process(clk)
    begin
      if rising_edge(clk) then
        if rst = '1' then
          clk_cnt <= 0;
            
        else
          if clk_cnt < clk_cnt_len - 1 then
            clk_cnt <= clk_cnt + 1;
          else
            clk_cnt <= 0;
          end if;
            
        end if;
      end if;
    end process;
    PWM_PROC : process(clk)
begin
  if rising_edge(clk) then
    if rst = '1' then
      pwm_cnt <= (others => '0');
      pwm_out <= '0';
  
    else
      if clk_cnt_len = 1 or clk_cnt = 0 then
  
        pwm_cnt <= pwm_cnt + 1;
        pwm_out <= '0';
  
        if pwm_cnt = unsigned(to_signed(-2, pwm_cnt'length)) then
          pwm_cnt <= (others => '0');
        end if;
  
        if pwm_cnt < unsigned(duty_cycle) then
          pwm_out <= '1';
        else
          pwm_out <= '0';
        end if;
  
      end if;
    end if;
  end if;
end process; 
End Behavioral;