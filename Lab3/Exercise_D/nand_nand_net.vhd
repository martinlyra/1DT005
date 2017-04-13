library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nand_nand_net is
	port(
	i_x: in std_logic_vector(3 downto 0);
	o_u: out std_logic_vector(3 downto 0)
);
end;

architecture main_func of nand_nand_net is
begin
	o_u(0) <= not i_x(0);
	o_u(1) <= i_x(1);
	o_u(2) <= (i_x(2) and (not i_x(1))) or ((not i_x(2)) and i_x(1));
	o_u(3) <= not (i_x(3) or i_x(2) or i_x(1));
end main_func;
