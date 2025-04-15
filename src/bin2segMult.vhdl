library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


 entity bin2segMult is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        ones_1 : in STD_LOGIC_VECTOR(3 downto 0);
        tens_1: in STD_LOGIC_VECTOR(3 downto 0);
        hundreds_1 : in STD_LOGIC_VECTOR(3 downto 0);
        ones_2 : in STD_LOGIC_VECTOR(3 downto 0);
        tens_2: in STD_LOGIC_VECTOR(3 downto 0);
        hundreds_2 : in STD_LOGIC_VECTOR(3 downto 0);
        seg : out std_logic_vector(6 downto 0);
        POS_OUT   : out std_logic_vector(7 downto 0)
        --common anode for 7-segment display
    );

end entity bin2segMult;

architecture behavioral of bin2segMult is
    signal Pos_register : integer := 0;

    function Bin2Seg(bin: std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case bin is
            when "0000" => return "0000001"; -- 0
            when "0001" => return "1001111"; -- 1
            when "0010" => return "0010010"; -- 2
            when "0011" => return "0000110"; -- 3
            when "0100" => return "1001100"; -- 4
            when "0101" => return "0100100"; -- 5
            when "0110" => return "0100000"; -- 6
            when "0111" => return "0001111"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0001100"; -- 9
            when others => return "1111111"; -- Default case (all segments off)
        end case;  
    end function Bin2Seg;

begin


    
process (Pos_register, ones_1, tens_1, clk, reset, ones_2, tens_2, hundreds_1, hundreds_2)
    begin
        --nevim proc ale prirzeni digitu je takto potreba
        if rising_edge(clk) then
            
            case Pos_register is
                when 0 => 
                    POS_OUT <= b"1111_1110"; -- 1st position
                    seg <= Bin2Seg(ones_1); -- Convert binary to 7-segment display
                    Pos_register <= 1; -- Move to the next position

                when 1 => 
                    POS_OUT <= b"1111_1101"; -- 2nd position
                    seg <= Bin2Seg(tens_1); -- Convert binary to 7-segment display
                    Pos_register <= 2; -- Move to the next position
                when 2 =>
                    POS_OUT <= b"1111_1011"; -- 2nd position
                    seg <= Bin2Seg(hundreds_1); -- Convert binary to 7-segment display
                    Pos_register <= 4; -- Move to the next position
                when 4 =>
                    POS_OUT <= b"1110_1111"; -- 2nd position
                    seg <= Bin2Seg(ones_2); -- Convert binary to 7-segment display
                    Pos_register <= 5; -- Move to the next position
                when 5 => 
                    POS_OUT <= b"1101_1111"; -- 2nd position
                    seg <= Bin2Seg(tens_2); -- Convert binary to 7-segment display
                    Pos_register <= 6; -- Move to the next position
                when 6 =>
                    POS_OUT <= b"1011_1111"; -- 2nd position
                    seg <= Bin2Seg(hundreds_2); -- Convert binary to 7-segment display
                    Pos_register <= 0; -- Move to the next position
                when others =>
                 POS_OUT <= b"1111_1111"; -- 3rd position
                
            end case;
            
        end if;
    end process;


    

end architecture;