library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


 entity bin2segMult is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        ones : in STD_LOGIC_VECTOR(3 downto 0);
        tens : in STD_LOGIC_VECTOR(3 downto 0);
        seg : out std_logic_vector(6 downto 0);
        POS_OUT   : out std_logic_vector(5 downto 0)
        --common anode for 7-segment display
    );

end entity bin2segMult;

architecture behavioral of bin2segMult is
    signal digit : std_logic_vector(3 downto 0);
    signal Pos_register : integer := 0;
begin
Posisioncounter: process (clk, reset, Pos_register)
    begin
        if rising_edge(clk) then
            if Pos_register=1 then
                Pos_register <= 0;
            else
                Pos_register <= Pos_register + 1;
            end if;
        end if;
    end process;


    
process (Pos_register, ones, tens, clk, reset)
    begin
        --nevim proc ale prirzeni digitu je takto potreba
        if rising_edge(clk) then
            case Pos_register is
                when 0 => 
                    digit <= tens; -- 1st position
                    POS_OUT <= "111110"; -- 1st position
                when 1 => 
                    digit <= ones; -- 1st position
                    POS_OUT <= "111101"; -- 2nd position
                when others =>
                 POS_OUT <= "111111"; -- 3rd position
            end case;
        end if;
    end process;
Bin2Seg: process (clk)
begin
    if rising_edge(clk) then
        case digit is
            when "0000" => seg <= "0000001"; -- 0
            when "0001" => seg <= "1001111"; -- 1
            when "0010" => seg <= "0010010"; -- 2
            when "0011" => seg <= "0000110"; -- 3
            when "0100" => seg <= "1001100"; -- 4
            when "0101" => seg <= "0100100"; -- 5
            when "0110" => seg <= "0100000"; -- 6
            when "0111" => seg <= "0001111"; -- 7
            when "1000" => seg <= "0000000"; -- 8
            when "1001" => seg <= "0001100"; -- 9
            when others => seg <= "1111111"; -- off
        end case;
    end if;
end process;
    

end architecture;