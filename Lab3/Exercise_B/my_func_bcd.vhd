library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_func_bcd is
	port(
	i_number: in unsigned(3 downto 0);
	o_bcd: out unsigned(7 downto 0)
);
end;

architecture main_func of my_func_bcd is
begin    
	with i_number select o_bcd <=
		"00001000" when "0000",
		"00010001" when "0001",
		"00010100" when "0010",
		"00010111" when "0011",
		"00100000" when "0100",
		"00100011" when "0101",
		"00100110" when "0110",
		"00101001" when "0111",
		"00110010" when "1000",
		"00110101" when "1001",
		"11111111" when others;
end main_func;
