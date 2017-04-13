library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sqr_BCD is
	port(
	i_number: in unsigned(2 downto 0);
	o_bcd: out unsigned(7 downto 0)
);
end;

architecture main_func of sqr_BCD is
begin    
	with i_number select o_bcd <=
		"00000000" when "000",
		"00000001" when "001",
		"00000100" when "010",
		"00001001" when "011",
		"00010100" when "100",
		"00100101" when "101",
		"00110110" when "110",
		"01001001" when "111";
end main_func;
