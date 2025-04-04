-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 7.3.2025 08:27:37 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_alu_4bit is
end tb_alu_4bit;

architecture tb of tb_alu_4bit is

    component alu_4bit
        port (a      : in std_logic_vector (3 downto 0);
              b      : in std_logic_vector (3 downto 0);
              opcode : in std_logic_vector (2 downto 0);
              result : out std_logic_vector (3 downto 0);
              carry  : out std_logic;
              zero   : out std_logic);
    end component;

    signal a      : std_logic_vector (3 downto 0);
    signal b      : std_logic_vector (3 downto 0);
    signal opcode : std_logic_vector (2 downto 0);
    signal result : std_logic_vector (3 downto 0);
    signal carry  : std_logic;
    signal zero   : std_logic;

begin

    dut : alu_4bit
    port map (a      => a,
              b      => b,
              opcode => opcode,
              result => result,
              carry  => carry,
              zero   => zero);

    stimuli : process
    begin
        a <= x"9";
        b <= x"3";
        opcode <= "000"; wait for 100 ns;
        -- ADD
        opcode <= "001"; wait for 100 ns;
        -- SUB
        opcode <= "010"; wait for 100 ns;
        -- MUL 2
        opcode <= "011"; wait for 100 ns;
        -- DIV 2
        opcode <= "100"; wait for 100 ns;
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_alu_4bit of tb_alu_4bit is
    for tb
    end for;
end cfg_tb_alu_4bit;

