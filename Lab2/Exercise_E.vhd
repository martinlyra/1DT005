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

entity BCDcheck_ciruit is
  port(
  i_x: in unsigned(3 downto 0); -- x3, x2, x1, x0

  o_max: out std_logic;
  o_min: out std_logic;
  o_even: out std_logic;
  o_lo3: out std_logic;
  o_noBCD: out std_logic
  );
end entity BCDcheck_ciruit;

architecture main_func of BCDcheck_ciruit is
  begin
    -- max = 1 if x = 9
    if i_x = 9
      o_max <= '1';
    end if;
    -- min = 1 if x = 0
    if i_x = 0
      o_min <= '1';
    end if;
    -- even = 1 if x is even (x%2 = 0)
    if (i_x mod 2) = 0
      o_even <= '1';
    end if;
    -- lo3 = 1 if x < 3
    if i_x < 3
      o_lo3 <= '1';
    end if;
    -- noBCD = 1 if x > 9
    if i_x > 9
      o_noBCD <= '1';
    end if;
end architecture main_func;
