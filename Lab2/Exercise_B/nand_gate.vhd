-- Exercise B: Construct and program a 3-input NAND-gate
--
-- My solution:

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nand_gate is
  port(
    i_a: in std_logic;
    i_b: in std_logic;
    i_c: in std_logic;

    o_f: out std_logic);
end nand_gate;

architecture nand_func of nand_gate is
  begin
    o_f <= not (i_a and i_b and i_c);
end nand_func;
