-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : Tue, 08 Apr 2025 16:59:10 GMT
-- Request id : cfwk-fed377c2-67f555de2cb5a

library ieee;
use ieee.std_logic_1164.all;

entity tb_pwm_module is
end tb_pwm_module;

architecture tb of tb_pwm_module is
    constant pwm_bit_width : integer := 8;

    component pwm
        port (clk        : in std_logic;
              rst        : in std_logic;
              duty_cycle : in std_logic_vector (pwm_bit_width-1 downto 0);
              pwm_out    : out std_logic);
    end component;

    signal clk        : std_logic;
    signal rst        : std_logic;
    signal duty_cycle : std_logic_vector (pwm_bit_width-1 downto 0);
    signal pwm_out    : std_logic;

    constant TbPeriod : time := 10 ns; -- ***EDIT*** Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : pwm
    port map (clk        => clk,
              rst        => rst,
              duty_cycle => duty_cycle,
              pwm_out    => pwm_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- ***EDIT*** Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        duty_cycle <= (others => '0');
        rst <= '1';
        wait for 100 ns;
        rst <= '0';
        wait for 100 ns;
    
        -- Změna duty cycle na 25%
        duty_cycle <= "01000000"; -- 64 z 256
        wait for 50 * TbPeriod;
    
        -- Změna duty cycle na 50%
        duty_cycle <= "10000000"; -- 128 z 256
        wait for 50 * TbPeriod;
    
        -- Změna duty cycle na 75%
        duty_cycle <= "11000000"; -- 192 z 256
        wait for 50 * TbPeriod;
    
        -- Ukončení simulace
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_pwm of tb_pwm_module is
    for tb
    end for;
end cfg_tb_pwm;