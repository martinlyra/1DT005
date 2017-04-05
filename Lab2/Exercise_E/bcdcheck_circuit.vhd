-- Exercise E: Design and program a circuit named 'BCDcheck' taking a 4-bit
-- integer (x) and implement these outputs as following:
-- * max = 1     if and only when x = 9
-- * min = 1     if and only when x = 0
-- * even = 1    if and only when x is an even integer
-- * lo3 = 1     if and only when x < 3
-- * noBCD = 1   if and only when x > 9
--
-- My solution:

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bcdcheck_circuit is
  port(
  i_x: in std_Logic_vector(3 downto 0); -- x3, x2, x1, x0

  o_max: out std_logic;
  o_min: out std_logic;
  o_even: out std_logic;
  o_lo3: out std_logic;
  o_noBCD: out std_logic
  );
end bcdcheck_circuit;

architecture main_func of bcdcheck_circuit is
  begin
    o_max <= '1' when i_x = 9 else '0';
    o_min <= '1' when i_x = 0 else '0';
    o_even <= '1' when i_x(0) = '0' else '0';
    o_lo3 <= '1' when i_x < 3 else '0';
    o_noBCD <= '1' when i_x > 9 else '0';
end main_func;
