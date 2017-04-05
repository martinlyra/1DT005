-- Exercise D: Design and program a combinatory circuit that squares a 2-bit
-- integer (x), and adds 1 to the product. Outputting a 4-bit integer (u).
--
-- My solution:

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ex_circuit is
  port(
  i_x: in unsigned(1 downto 0);
  o_u: out unsigned(3 downto 0)
  );
end ex_circuit;

architecture main_func of ex_circuit is
  begin
    o_u <= (i_x * i_x) + 1;
end main_func;
