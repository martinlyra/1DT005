-- Exercise D: Design and program a combinatory ciruit that squares a 2-bit
-- integer (x), and adds 1 to the product. Outputting a 4-bit integer (u).
--
-- My solution:

library ieee;
use ieee.std_logic_1164.all;

entity ex_C_circuit is
  port(
  i_x: in unsigned(1 downto 0);
  o_u: out unsigned(3 downto 0)
  );
end entity ex_C_circuit;

architecture main_func of ex_C_circuit is
  begin
    o_u <= (i_x ** 2) + 1;
end architecture main_func;
