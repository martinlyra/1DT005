-- Exercise C: Design and program a logic gate with 4 inputs, 3 for proper input
-- and one for controlling whichever logical function to be used (NAND or NOR)
--
-- My solution:

-- Explaination of some prefixes:
-- i_ = input
-- o_ = output
-- ... as per recommendation.

library ieee;
use ieee.std_logic_1164.all;

entity XOR_NAND_mode_gate is
  port(
    i_a: in std_logic;
    i_b: in std_logic;
    i_c: in std_logic;
    i_mode: in std_logic;

    o_f: out std_logic
  );
end entity XOR_NAND_mode_gate;

architecture main_func of XOR_NAND_mode_gate is
  begin
    with i_mode select
      o_f <=  (not (i_a and i_b and i_c)) when '0',
            (not (i_a or i_b or i_c)) when others;
end architecture main_func;
