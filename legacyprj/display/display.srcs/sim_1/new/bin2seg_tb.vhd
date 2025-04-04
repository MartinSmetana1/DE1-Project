library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all; -- Definition of "to_unsigned"

-------------------------------------------------

entity bin2seg_tb is
-- Entity of testbench is always empty
end entity bin2seg_tb;

-------------------------------------------------

architecture testbench of bin2seg_tb is
  component bin2seg is
    port (
      clear : in    std_logic;
      bin   : in    std_logic_vector(3 downto 0);
      seg   : out   std_logic_vector(6 downto 0)
    );
  end component;

  -- Testbench local signals
  signal sig_clear : std_logic;
  signal sig_bin   : std_logic_vector(3 downto 0);
  signal sig_seg   : std_logic_vector(6 downto 0);
begin

  dut : component bin2seg
    port map (
      clear => sig_clear,
      bin   => sig_bin,
      seg   => sig_seg
    );

  -----------------------------------------------
  -- Data generation process
  -----------------------------------------------
  p_stimulus : process is
  begin

    report "Stimulus process started";

    -- Normal operation
    sig_clear <= '0';
    sig_bin   <= "0011";
    wait for 50 ns;

    -- Clear display
    sig_clear <= '1';
    wait for 115 ns;
    sig_clear <= '0';
    wait for 25 ns;

    -- Loop for all hex values
    for i in 0 to 15 loop

      -- Convert decimal value `i` to 4-bit wide binary
      sig_bin <= std_logic_vector(to_unsigned(i, 4));
      -- sig_bin <= std_logic_vector(to_unsigned(i, sig_bin'length));
      wait for 50 ns;

    end loop;

    report "Stimulus process finished";
    wait;

  end process p_stimulus;

end architecture testbench;
