library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_pwm_module is
-- Testbench entity nemá žádné porty
end tb_pwm_module;

architecture behavior of tb_pwm_module is
    component pwm is
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
    end component pwm;
    -- Konfigurace generických parametrů
    constant pwm_bit_width : integer := 8;
    constant max_value     : integer := 256;

    -- Signály pro propojení s testovanou entitou
    signal clk         : STD_LOGIC := '0';
    signal rst         : STD_LOGIC := '0';
    signal duty_cycle  : STD_LOGIC_VECTOR(pwm_bit_width-1 downto 0) := (others => '0');
    signal pwm_out     : STD_LOGIC;

    -- Taktovací perioda
    constant clk_period : time := 10 ns;

begin

    -- Instance testovaného modulu
    uut: pwm
        generic map (
            max_value => max_value,
            pwm_bit_width => pwm_bit_width
        )
        port map (
            clk => clk,
            rst => rst,
            duty_cycle => duty_cycle,
            pwm_out => pwm_out
        );

    -- Generátor hodinového signálu
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimuly
    stim_proc: process
    begin
        -- Reset
        rst <= '1';
        wait for 20 ns;
        rst <= '0';

        -- Nastavení duty cycle a pozorování výstupu
        duty_cycle <= std_logic_vector(to_unsigned(64, pwm_bit_width)); -- 25%
        wait for 3 ms;

        duty_cycle <= std_logic_vector(to_unsigned(128, pwm_bit_width)); -- 50%
        wait for 3 ms;

        duty_cycle <= std_logic_vector(to_unsigned(192, pwm_bit_width)); -- 75%
        wait for 3 ms;

        duty_cycle <= std_logic_vector(to_unsigned(255, pwm_bit_width)); -- ~100%
        wait for 3 ms;

        duty_cycle <= std_logic_vector(to_unsigned(0, pwm_bit_width)); -- 0%
        wait for 3 ms;

        -- Ukončení simulace
        wait;
    end process;

end behavior;
