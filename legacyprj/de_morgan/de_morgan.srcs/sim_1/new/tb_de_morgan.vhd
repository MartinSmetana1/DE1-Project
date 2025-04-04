-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 14.2.2025 09:05:57 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_de_morgan is
end tb_de_morgan;

architecture tb of tb_de_morgan is

    component de_morgan
        port (a     : in std_logic;
              b     : in std_logic;
              c     : in std_logic;
              f_org : out std_logic;
              f_and : out std_logic;
              f_or  : out std_logic);
    end component;

    signal a     : std_logic;
    signal b     : std_logic;
    signal c     : std_logic;
    signal f_org : std_logic;
    signal f_and : std_logic;
    signal f_or  : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : de_morgan
    port map (a     => a,
              b     => b,
              c     => c,
              f_org => f_org,
              f_and => f_and,
              f_or  => f_or);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    --  EDIT: Replace YOURCLOCKSIGNAL below by the name of your clock as I haven't guessed it
    --  YOURCLOCKSIGNAL <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        a <= '0';
        b <= '0';
        c <= '0';
        wait for 100ns;
        a <= '1';
        wait for 100ns;
        b <= '1';
        wait for 100ns;
        c <= '1';
        wait for 100ns;
        a <= '0';
        wait for 100ns;
        b <= '0';
        wait for 100ns;
        c <= '0';
        wait for 100ns;
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_de_morgan of tb_de_morgan is
    for tb
    end for;
end cfg_tb_de_morgan;