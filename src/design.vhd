-------------------------------------------------
--! @brief 2-bit binary comparator.
--! @version 1.1
--! @copyright (c) 2020 Tomas Fryza, MIT license
--!
--! A digital or **binary comparator** compares
--! digital signals A, B presented at input terminal
--! and produce outputs depending upon the condition
--! of those inputs. Two-bit binary comparator use
--! `when/else` assignments to distinguish three
--! states: greater than, equal, and less than.
--!
--! Developed using TerosHDL, Vivado 2020.2, and
--! EDA Playground.
-------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;

-------------------------------------------------
-- Entity declaration for 2-bit binary comparator
-------------------------------------------------

entity compare_2bit is
  port (
    b         : in    std_logic_vector(1 downto 0);
    a         : in    std_logic_vector(1 downto 0);
    b_greater : out   std_logic;
    b_a_equal : out   std_logic;
    a_greater : out   std_logic
  );
end entity compare_2bit;

-------------------------------------------------
-- Architecture body for 2-bit binary comparator
-------------------------------------------------

architecture behavioral of compare_2bit is

begin

  -- MODIFY LOGIC FUNCTION FOR "B GREATER"
  b_greater <= b(1) and a(1);

  b_a_equal <= '1' when (b = a) else
               '0';

  -- MODIFY LOGIC FUNCTION FOR "A GREATER"
  a_greater <= b(0) or a(0);

end architecture behavioral;
