-- Exercise F: Compare two 2-bit binary numbers, the output should be a digit,
-- showing which of the numbers is bigger than the other. An unqiue value for
-- when the two numbers are equal.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity komp_grp_x is
  port(
    i_a: in std_logic_vector(1 downto 0); -- a2, a1
    i_b: in std_logic_vector(1 downto 0); -- b2, b1

    o_u: out std_logic_vector(3 downto 0) -- u4, u3, u2, u1
  );
end entity komp_grp_x;

architecture main_func of komp_grp_x is
  begin
    process (i_a, i_b) begin
      if (i_a = i_b) then
        o_u <= "0000";
      elsif (i_a > i_b) then
        o_u <= "0001";
      else
        o_u <= "0010";
      end if;
end architecture main_func;
