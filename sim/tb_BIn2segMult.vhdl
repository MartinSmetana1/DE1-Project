library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_bin2segMult is
end tb_bin2segMult;

architecture Behavioral of tb_bin2segMult is

    -- Component declaration
    component bin2segMult
        Port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            ones_1 : in STD_LOGIC_VECTOR(3 downto 0);
            tens_1 : in STD_LOGIC_VECTOR(3 downto 0);
            hundreds_1 : in STD_LOGIC_VECTOR(3 downto 0);
            ones_2 : in STD_LOGIC_VECTOR(3 downto 0);
            tens_2 : in STD_LOGIC_VECTOR(3 downto 0);
            hundreds_2 : in STD_LOGIC_VECTOR(3 downto 0);
            seg : out STD_LOGIC_VECTOR(6 downto 0);
            POS_OUT: out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Signals to connect
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal bin_in_ones1 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_tens1 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_hundreds1 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_ones2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_tens2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_hundreds2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal seg_out : STD_LOGIC_VECTOR(6 downto 0);
    signal POS_OUT : STD_LOGIC_VECTOR(7 downto 0);

    constant clk_period : time := 1 ms; -- 50MHz clock

begin

    -- Instantiate UUT
    uut: bin2segMult
        Port map (
            clk => clk,
            reset => reset,
            ones_1 => bin_in_ones1,
            tens_1 => bin_in_tens1,
            hundreds_1 => bin_in_hundreds1,
            ones_2 => bin_in_ones2,
            tens_2 => bin_in_tens2,
            hundreds_2 => bin_in_hundreds2,
            seg => seg_out,
            POS_OUT => POS_OUT
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
        variable tens : integer;
        variable ones : integer;
    begin
        -- Apply reset
        reset <= '1';
        wait for 5 * clk_period;
        reset <= '0';

        -- Iterate values for ones_1 and tens_1
        for tens in 0 to 9 loop
            for ones in 0 to 9 loop
                bin_in_tens1 <= std_logic_vector(to_unsigned(tens, 4));
                bin_in_ones1 <= std_logic_vector(to_unsigned(ones, 4));
                bin_in_hundreds1 <= "0000";

                bin_in_tens2 <= std_logic_vector(to_unsigned(9 - tens, 4)); -- Just to have a different value
                bin_in_ones2 <= std_logic_vector(to_unsigned(9 - ones, 4));
                bin_in_hundreds2 <= "0000";

                wait for 20 ms; -- longer wait because of slower refresh clock
            end loop;
        end loop;


        bin_in_hundreds1 <= "0001"; -- 1


        bin_in_hundreds2 <= "0010"; -- 2

        wait for 10 ms;

        -- Clear everything
        bin_in_ones1 <= (others => '0');
        bin_in_tens1 <= (others => '0');
        bin_in_hundreds1 <= (others => '0');
        bin_in_ones2 <= (others => '0');
        bin_in_tens2 <= (others => '0');
        bin_in_hundreds2 <= (others => '0');

        wait for 5 ms;

        wait; -- End simulation
    end process;

end Behavioral;
