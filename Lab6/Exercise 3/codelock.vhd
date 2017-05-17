library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LockEntity is
	generic (
		CODE_A: std_logic_vector := "011";
		CODE_B: std_logic_vector := "100";
		CODE_C: std_logic_vector := "001"
	);
	port (
		i_x: 		in std_logic_vector(2 downto 0);
		i_reset:	in std_logic;
		i_clock:	in std_logic;
		
		o_led_locked:	out std_logic;
		o_led_unlocked:	out std_logic
	);
end;

architecture Behaviour of LockEntity is
	signal step: 	integer range 0 to 2;
	signal count:	std_logic_vector(2 downto 0);
begin

MainEntityBehaviour: process (i_clock, i_reset) is 
begin
if (i_reset = '0') then
	step 		<= 0;
	count 		<= "000";
elsif (i_clock'event and i_clock = '1') then
	if (step <= 2) then
		if step = 0 then
			if i_x = CODE_A then
				count(0) <= '1';
			else
				count(0) <= '0';
			end if;
		elsif step = 1 then
			if i_x = CODE_B then
				count(1) <= '1';
			else
				count(1) <= '0';
			end if;
		else
			if i_x = CODE_C then
				count(2) <= '1';
			else
				count(2) <= '0';
			end if;
		end if;

		step <= step + 1;
	end if; -- input check	
end if; -- clock
end process;

OutputLedBehaviour: process (step, count) is
begin
if (step > 2) then
	if (count = "111") then
		o_led_unlocked 	<= '1';
		o_led_locked	<= '0';
	else
		o_led_unlocked 	<= '0';
		o_led_locked	<= '1';
	end if;
else
	o_led_unlocked 	<= '0';
	o_led_locked	<= '0';
end if; -- unlock/led display
end process;

end Behaviour;
