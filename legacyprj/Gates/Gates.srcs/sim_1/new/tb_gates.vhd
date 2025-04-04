-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 14.2.2025 08:31:39 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_gates is
end tb_gates;

architecture tb of tb_gates is

    component gates
        port (a       : in std_logic;
              b       : in std_logic;
              and_out : out std_logic;
              or_out  : out std_logic;
              xor_out : out std_logic);
    end component;

    signal a       : std_logic;
    signal b       : std_logic;
    signal and_out : std_logic;
    signal or_out  : std_logic;
    signal xor_out : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : gates
    port map (a       => a,
              b       => b,
              and_out => and_out,
              or_out  => or_out,
              xor_out => xor_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    --  EDIT: Replace YOURCLOCKSIGNAL below by the name of your clock as I haven't guessed it
    --  YOURCLOCKSIGNAL <= TbClock;

    stimuli : process
    begin
         -- EDIT Adapt initialization as needed
        b <= '0';
        a <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        a <= '1';
        wait for 100 ns;
        b <= '1';
        wait for 100 ns;
        a <= '0';
        wait for 100 ns;
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_gates of tb_gates is
    for tb
    end for;
end cfg_tb_gates;