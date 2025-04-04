----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2025 09:07:46 AM
-- Design Name: 
-- Module Name: uart_tx - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_tx is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           baud_en : in STD_LOGIC;
           tx_start : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           tx : out STD_LOGIC;
           tx_done : out STD_LOGIC);
end uart_tx;

architecture Behavioral of uart_tx is
-- FSM States
    type   state_type is (IDLE, START, DATA, STOP);
    signal state : state_type;

    -- Transmission Registers
    signal sig_count : integer range 0 to 7;
    signal sig_reg   : std_logic_vector(7 downto 0);
begin
-- UART Transmitter FSM
    p_uart_tx : process (clk) is
    begin

        if rising_edge(clk) then
            if (rst = '1') then
                -- Reset state to IDLE, set Tx to 1
                state <= IDLE;
                tx<='1';

                -- Reset sig_count to 0 and tx_done to 0
                sig_count <=0;
                tx_done<= '0';

            elsif (baud_en = '1') then  -- Use clock enable signal

                case state is

                    when IDLE =>
                        -- Keep Tx line to high
                        tx <='1';

                        -- Clear tx_done to 0
                        tx_done<='0';

                        if (tx_start = '1') then
                            state <= START;
                        end if;

                    when START =>
                        tx        <= '0';      -- Start bit (LOW)
                        sig_reg   <= data_in;  -- Load data
                        sig_count <= 0;
                        tx_done   <= '0';
                        state     <= DATA;

                    when DATA =>
                        tx      <=  sig_reg(0);-- Transmit LSB first
                        sig_reg <=  '0' & sig_reg(7 downto 1);-- Shift register to right
                        if (sig_count = 7) then
                            state <= STOP;
                        else
                            sig_count <= sig_count + 1;
                        end if;

                    when STOP =>
                        -- Set Tx stop bit (HIGH)
                        tx <='1';

                        -- Set tx_done to 1
                        tx_done<='1';

                        -- Set next state to IDLE
                        state     <=IDLE; 

                    when others =>
                        state <= IDLE;

                end case;

            end if;
        end if;

    end process p_uart_tx;



end Behavioral;
