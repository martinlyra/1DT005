library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity CounterEntity is
	port(
		i_clock: 	in std_logic;
		i_mode: 	in std_logic_vector(1 downto 0);
		o_count: 	out STD_LOGIC_VECTOR(2 downto 0)
	);
end;

architecture Behaviour of CounterEntity is
begin

	CounterBehaviour: process (i_clock, i_mode) is 
	begin
		if (i_clock'event and i_clock='1') then
			if i_mode = "00" then
				o_count <= o_count;
			elsif i_mode = "01" then
				o_count <= o_count + 1;
			elsif i_mode = "10" then
				o_count <= o_count - 1;
			elsif i_mode = "11" then
				o_count <= o_count + 2;
			end if;
		end if;
	end process;

end Behaviour;
