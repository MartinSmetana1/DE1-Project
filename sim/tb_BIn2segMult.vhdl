library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity tb_bin2segMult is
end tb_bin2segMult;

architecture Behavioral of tb_bin2segMult is
    -- Component declaration for the Unit Under Test (UUT)
    component bin2segMult
        Port (
            -- inputs
            clk : in STD_LOGIC; -- Clock signal (not used in this testbench)
            reset : in STD_LOGIC; -- Reset signal (not used in this testbench)
            ones_1 : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit binary input for ones place (1st)
            tens_1 : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit binary input for tens place (1st)
            ones_2 : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit binary input for ones place (2nd)
            tens_2 : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit binary input for tens place (2nd)
            hundreds_1 : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit binary input for hundreds place (1st)
            hundreds_2 : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit binary input for hundreds place (2nd)
            -- outputs
            seg : out STD_LOGIC_VECTOR(6 downto 0); -- 7-segment display output
            POS_OUT: out STD_LOGIC_VECTOR(7 downto 0) -- 8-bit output for position (1st and 2nd)
        );
    end component;

    -- Signals to connect to the UUT
    signal bin_in_ones : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_tens : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bin_in_hundreds : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal seg_out : STD_LOGIC_VECTOR(6 downto 0);
    signal POS_OUT : STD_LOGIC_VECTOR(7 downto 0);
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    constant clk_period : time := 100 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: bin2segMult
        Port map (
            clk => clk,
            reset => reset, 
            ones_1 => bin_in_ones, 
            tens_1 =>  bin_in_tens, 
            hundreds_1 =>  bin_in_hundreds, 
            ones_2 => bin_in_ones, 
            tens_2 =>  bin_in_tens, 
            hundreds_2 =>  bin_in_hundreds, 
            seg => seg_out, 
            POS_OUT  => POS_OUT
        );
        
    -- Clock generation process
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
        --bin_in_hundreds <= "0001"; -- 0
        wait for 10 * clk_period; -- Wait for 10 clock cycles
        reset <= '0'; -- Disable reset
    
        -- Iterate through all values from 0 to 99

        for tens in 0 to 9 loop
            for ones in 0 to 9 loop
                bin_in_tens <= std_logic_vector(to_unsigned(tens, 4));
                bin_in_ones <= std_logic_vector(to_unsigned(ones, 4));
                wait for 100 * clk_period; -- Wait for 100 clock cycles
            end loop;
        end loop;
        
        bin_in_ones <= "0000"; -- Set 0 to ones
        bin_in_tens <= "0000"; -- Set 0 to tens
        wait for 100 * clk_period; -- Wait for 100 clock cycles  
        bin_in_hundreds <= std_logic_vector(to_unsigned(1, 4)); -- Set hundreds to 1
        wait for 100 * clk_period; -- Wait for 100 clock cycles

        
    
        -- Reset inputs
        bin_in_ones <= "0000"; -- 0
        bin_in_tens <= "0000"; -- 0
        bin_in_hundreds <= "0000"; -- 0
        wait for 10 * clk_period; -- Wait for 10 clock cycles
    
        wait; -- End simulation
    end process;
end Behavioral;