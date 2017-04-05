
library ieee;
use ieee.std_logic_1164.all;

entity komp_grp_x is
  port(
    i_a: in std_logic_vector(1 downto 0); -- a2, a1
    i_b: in std_logic_vector(1 downto 0); -- b2, b1

    o_u: out std_logic_vector(3 downto 0) -- u4, u3, u2, u1
  );
end entity komp_grp_x;

architecture main_func of komp_grp_x is
  begin

end architecture main_func;
