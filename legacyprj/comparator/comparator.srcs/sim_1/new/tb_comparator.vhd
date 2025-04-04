-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 21.2.2025 08:59:43 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_comparator is
end tb_comparator;

architecture tb of tb_comparator is

    component comparator
        port (a         : in std_logic_vector (1 downto 0);
              b         : in std_logic_vector (1 downto 0);
              b_greater : out std_logic;
              b_a_equal : out std_logic;
              a_greater : out std_logic);
    end component;

    signal a         : std_logic_vector (1 downto 0);
    signal b         : std_logic_vector (1 downto 0);
    signal b_greater : std_logic;
    signal b_a_equal : std_logic;
    signal a_greater : std_logic;

begin

    dut : comparator
    port map (a         => a,
              b         => b,
              b_greater => b_greater,
              b_a_equal => b_a_equal,
              a_greater => a_greater);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        a <= (others => '0');
        b <= (others => '0');

        -- Reset generation
        --  EDIT: Replace YOURRESETSIGNAL below by the name of your reset as I haven't guessed it
         -- Test case 1: a = 00, b = 00
        -- Test case 1: a = 00, b = 00
        a <= "00"; b <= "00";
        wait for 10 ns;
        assert (b_a_equal = '1' and b_greater = '0' and a_greater = '0') 
            report "Test failed: a=00, b=00" severity failure;

        -- Test case 2: a = 01, b = 00
        a <= "01"; b <= "00";
        wait for 10 ns;
        assert (b_a_equal = '0' and b_greater = '0' and a_greater = '1') 
            report "Test failed: a=01, b=00" severity failure;

        -- Test case 3: a = 01, b = 01
        a <= "01"; b <= "01";
        wait for 10 ns;
        assert (b_a_equal = '1' and b_greater = '0' and a_greater = '0') 
            report "Test failed: a=01, b=01" severity failure;

        -- Test case 4: a = 10, b = 01
        a <= "10"; b <= "01";
        wait for 10 ns;
        assert (b_a_equal = '0' and b_greater = '0' and a_greater = '1') 
            report "Test failed: a=10, b=01" severity failure;

        -- Test case 5: a = 10, b = 11
        a <= "10"; b <= "11";
        wait for 10 ns;
        assert (b_a_equal = '0' and b_greater = '1' and a_greater = '0') 
            report "Test failed: a=10, b=11" severity failure;

        -- Test case 6: a = 11, b = 10
        a <= "11"; b <= "10";
        wait for 10 ns;
        assert (b_a_equal = '0' and b_greater = '0' and a_greater = '1') 
            report "Test failed: a=11, b=10" severity failure;

        -- Test case 7: a = 00, b = 11
        a <= "00"; b <= "11";
        wait for 10 ns;
        assert (b_a_equal = '0' and b_greater = '1' and a_greater = '0') 
            report "Test failed: a=00, b=11" severity failure;

        -- Test case 8: a = 11, b = 11
        a <= "11"; b <= "11";
        wait for 10 ns;
        assert (b_a_equal = '1' and b_greater = '0' and a_greater = '0') 
            report "Test failed: a=11, b=11" severity failure;
             a <= "10"; b <= "10";
        wait for 10 ns;
        assert (b_a_equal = '1' and b_greater = '0' and a_greater = '0') 
            report "Test failed: a=10, b=10" severity failure;
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_comparator of tb_comparator is
    for tb
    end for;
end cfg_tb_comparator;