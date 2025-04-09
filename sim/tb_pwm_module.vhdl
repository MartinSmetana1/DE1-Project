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
            pwm_out     : out STD_LOGIC;
            btn_up     : in  STD_LOGIC; -- Button to increase duty cycle
            btn_down   : in  STD_LOGIC -- Button to decrease duty cycle
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
    signal btn_up      : STD_LOGIC := '0'; -- Button to increase duty cycle
    signal btn_down    : STD_LOGIC := '0'; -- Button to decrease duty cycle

    -- Taktovací perioda
    constant clk_period : time := 100 ns;

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
            pwm_out => pwm_out,
            btn_up => btn_up,
            btn_down => btn_down
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

        wait for 200 ns;
        duty_cycle <= std_logic_vector(to_unsigned(255, pwm_bit_width));
        wait for 3 ms;
        -- Testování tlačítek pro změnu duty cycle
        btn_up <= '1'; -- Zmáčknout tlačítko pro zvýšení duty cycle
        wait for 200 ns; 
        btn_up <= '0'; -- Uvolnit tlačítko
        wait for 200 ns;
        btn_up <= '1'; -- Zmáčknout tlačítko pro zvýšení duty cycle
        wait for 200 ns; 
        btn_up <= '0'; 
        btn_down <= '1'; -- Zmáčknout tlačítko pro snížení duty cycle
        wait for 200 ns;   
        btn_down <= '0'; -- Uvolnit tlačítko
        wait for 200 ns;

        -- Nastavení duty cycle a pozorování výstupu
        wait for 200 ns;wait for 20 ns;wait for 20 ns;wait for 20 ns;wait for 20 ns;wait for 20 ns;
         btn_up <= '1'; -- Zmáčknout tlačítko pro zvýšení duty cycle
        wait for 200 ns; 
        btn_up <= '0'; -- Uvolnit tlačítko
        wait for 200 ns;
        btn_up <= '1'; -- Zmáčknout tlačítko pro zvýšení duty cycle
        wait for 200 ns; 
        btn_up <= '0';  btn_up <= '1'; -- Zmáčknout tlačítko pro zvýšení duty cycle
        wait for 200 ns; 
        btn_up <= '0'; -- Uvolnit tlačítko
        wait for 200 ns;
        btn_up <= '1'; -- Zmáčknout tlačítko pro zvýšení duty cycle
        wait for 200 ns; 
        btn_up <= '0'; 

        wait for 3 ms;

        duty_cycle <= std_logic_vector(to_unsigned(0, pwm_bit_width)); -- 0%
        wait for 3 ms;

        -- Ukončení simulace
        wait;
    end process;

end behavior;