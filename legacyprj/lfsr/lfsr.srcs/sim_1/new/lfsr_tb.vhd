-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 21.3.2025 08:19:23 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_lfsr is
end tb_lfsr;

architecture tb of tb_lfsr is
    
    component lfsr
    generic (
       N_BITS : positive 
    );
        port (clk      : in std_logic;
              rst      : in std_logic;
              en       : in std_logic;
              load     : in std_logic;
              lfsr_in  : in std_logic_vector (N_BITS-1 downto 0);
              done     : out std_logic;
              lfsr_out : out std_logic_vector (N_BITS-1 downto 0));
    end component;
    constant C_NBITS : positive := 4;
    signal clk      : std_logic;
    signal rst      : std_logic;
    signal en       : std_logic;
    signal load     : std_logic;
    signal lfsr_in  : std_logic_vector (C_NBITS-1 downto 0);
    signal done     : std_logic;
    signal lfsr_out : std_logic_vector (C_NBITS-1 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

dut : component lfsr
    generic map (
        N_BITS => C_NBITS
    )
    port map (clk      => clk,
              rst      => rst,
              en       => en,
              load     => load,
              lfsr_in  => lfsr_in,
              done     => done,
              lfsr_out => lfsr_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
       -- Initial state
        en <= '0';
        load <= '0';
        lfsr_in <= (others => '0'); -- Initial value for lfsr_in

        -- Reset generation
        rst <= '1';
        wait for 100 ns;
        rst <= '0';
        wait for 100 ns;

        -- Enable the LFSR and start generating values
        en <= '1';
        wait for 10 * TbPeriod;

        -- Apply input to match the LFSR output and test 'done' pulse
        lfsr_in <= "1001"; -- Change this value based on the expected LFSR output
        wait for 10 * TbPeriod;
        rst <= '1';
        wait for 100 ns;
        rst <= '0';
        wait for 100 ns;
        en <= '1';
        wait for 10 * TbPeriod;

        -- Test if done pulse is generated when sig_reg matches lfsr_in
        assert done = '1'
        report "Expected done pulse, but it was not generated"
        severity error;

        -- Test different value for lfsr_in to ensure done is low
        lfsr_in <= "1100"; -- Change this to a value that won't match sig_reg
        wait for 10 * TbPeriod;

        assert done = '0'
        report "Done pulse was unexpectedly high"
        severity error;

        -- Stop the clock and terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_lfsr of tb_lfsr is
    for tb
    end for;
end cfg_tb_lfsr;