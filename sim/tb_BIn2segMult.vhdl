library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity tb_bin2segMult is
end tb_bin2segMult;

architecture Behavioral of tb_bin2segMult is
    -- Component declaration for the Unit Under Test (UUT)
    component bin2segMult
        Port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            ones : in STD_LOGIC_VECTOR(3 downto 0);
            tens : in STD_LOGIC_VECTOR(3 downto 0);
            seg : out STD_LOGIC_VECTOR(6 downto 0);
            POS_OUT: out STD_LOGIC_VECTOR(5 downto 0)
        );
    end component;

    -- Signals to connect to the UUT
    signal bin_in_ones : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_tens : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal seg_out : STD_LOGIC_VECTOR(6 downto 0);
    signal POS_OUT : STD_LOGIC_VECTOR(5 downto 0);
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    constant clk_period : time := 100 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: bin2segMult
        Port map (
            clk => clk, -- Clock signal (not used in this testbench)
            reset => reset, -- Reset signal (not used in this testbench)
            ones => bin_in_ones, -- Connect input to the UUT
            tens => bin_in_tens, -- Connect input to the UUT
            seg => seg_out, -- Connect output to the UUT
            POS_OUT  => POS_OUT-- Connect output to the UUT
        );
    clk_process : process
        begin
            while true loop
                clk <= '0';
                wait for clk_period / 2;
                clk <= '1';
                wait for clk_period / 2;
            end loop;
        end process;
    
    -- Test process
    stim_proc: process
        variable tens : integer;
        variable ones : integer;
    begin
        -- Initialize inputs
        reset <= '1';
        bin_in_ones <= "0000"; -- 0
        bin_in_tens <= "0000"; -- 0
        wait for 10 * clk_period; -- Wait for 10 clock cycles
        reset <= '0'; -- Release reset
    
        -- Iterate through all values from 0 to 99
        for tens in 0 to 9 loop
            for ones in 0 to 9 loop
                bin_in_tens <= std_logic_vector(to_unsigned(tens, 4));
                bin_in_ones <= std_logic_vector(to_unsigned(ones, 4));
                wait for 10 * clk_period; -- Wait for 10 clock cycles
            end loop;
        end loop;
    
        -- Reset inputs
        bin_in_ones <= "0000"; -- 0
        bin_in_tens <= "0000"; -- 0
        wait for 10 * clk_period; -- Wait for 10 clock cycles
    
        wait; -- End simulation
    end process;
end Behavioral;