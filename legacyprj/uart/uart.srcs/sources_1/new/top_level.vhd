library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    Port (
        CLK100MHZ    : in    STD_LOGIC;
        BTNC         : in    STD_LOGIC;
        BTNU         : in    STD_LOGIC;
        SW           : in    STD_LOGIC_VECTOR(7 downto 0);
        UART_RXD_OUT : out   STD_LOGIC;
        LED16_B      : out   STD_LOGIC
    );
end entity top_level;

architecture Behavioral of top_level is
signal sig_bau: std_logic;

component  clock_enable is
    generic (
        N_PERIODS : integer := 3 --! Default number of clk periodes to generate one pulse
    );
    port (
        clk   : in    std_logic; --! Main clock
        rst   : in    std_logic; --! High-active synchronous reset
        pulse : out   std_logic  --! Clock enable pulse signal
    );
end component clock_enable;
component uart_tx is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           baud_en : in STD_LOGIC;
           tx_start : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           tx : out STD_LOGIC;
           tx_done : out STD_LOGIC);
end component uart_tx;
begin
    rate : component clock_enable
        generic map(
        N_PERIODS =>10_417
        )
        port map(
        clk   => CLK100MHZ,
        rst    =>BTNC, 
        pulse =>sig_bau
        );
    uart: component uart_tx
        port map(
           clk => CLK100MHZ,
           rst =>BTNC,
           baud_en =>sig_bau,
           tx_start =>BTNU,
           data_in =>SW ,
           tx =>UART_RXD_OUT,
           tx_done => LED16_B 
        );
        

end architecture Behavioral;