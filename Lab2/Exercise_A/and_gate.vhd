-- Exercise A: Construct and program a 3-input AND-gate
--
-- My solution:

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity and_gate is
  port(
    i_a: in std_logic;
    i_b: in std_logic;
    i_c: in std_logic;

    o_f: out std_logic);
end and_gate;

architecture and_func of and_gate is
  begin
    o_f <= (i_a and i_b and i_c);
end and_func;
