library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller_entity is
	port(
		i_x: in UNSIGNED(3 downto 0);
		o_rbo: out std_logic
);
end;

architecture main_func of controller_entity is
begin
	o_rbo <= '0' when (i_x > 9) else '1'; 
end main_func;
