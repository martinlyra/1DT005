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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity xor_nand_mode_gate is
  port(
    i_a: in std_logic;
    i_b: in std_logic;
    i_c: in std_logic;
    i_mode: in std_logic;

    o_f: out std_logic
  );
end xor_nand_mode_gate;

architecture main_func of xor_nand_mode_gate is
  begin
    with i_mode select
      o_f <=  (not (i_a and i_b and i_c)) when '0',
            (not (i_a or i_b or i_c)) when others;
end main_func;
