library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AdderEntity2 is
	port(
		i_clock: in std_logic;
		i_x: in integer range 0 to 1;
		i_y: in integer range 0 to 1;

		o_s: out std_logic;
		o_c: out std_logic
	);
end;

architecture Behaviour of AdderEntity2 is
begin
	EntityBehaviour: process (i_clock) is 
		variable tmp: unsigned(1 downto 0) := "00";
		variable carry: integer range 0 to 1 := 0;
	begin
		if (i_clock'event and i_clock = '1') then
			if o_c = '1' then
				carry := 1;
			else
				carry := 0;			
			end if;
			tmp := to_unsigned(i_x + i_y + carry, tmp'length);

			o_c <= tmp(1);
			o_s <= tmp(0);
		end if;	
	end process;
end Behaviour;
