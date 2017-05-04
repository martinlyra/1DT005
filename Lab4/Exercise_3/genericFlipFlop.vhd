library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FlipFlopEntity is
	port(
		i_signal: 	in std_logic;
		i_reset: 	in std_logic; 
		i_clock: 	in std_logic;
		i_mode:		in std_logic_vector(1 downto 0);

		o_output:	out std_logic;
		o_output_i:	out std_logic 
	);

	function generic_flipflop (tmp, s, r: std_logic) 
	return std_logic is begin
		if (s = '0' and r = '0') then
			return tmp;
		elsif (s = '1' and r = '1') then
			return 'Z';
		elsif (s = '0' and r = '1') then
			return '0';
		else
			return '1';
		end if;
	end generic_flipflop;
end;

architecture Behaviour of FlipFlopEntity is
	signal s_tmp: std_logic;
begin 
process (i_mode, i_clock) is
begin
	if rising_edge(i_clock) then
		if i_mode = "00" then
			s_tmp <= generic_flipflop(s_tmp, i_signal, i_reset);
		elsif i_mode = "01" then
			s_tmp <= generic_flipflop(s_tmp, i_signal, i_reset);
		elsif i_mode = "10" then
			s_tmp <= generic_flipflop(s_tmp, i_signal, not i_signal);
		end if;
	else
		s_tmp <= s_tmp;
	end if;
end process;
	o_output <= s_tmp;
	o_output_i <= not s_tmp;

end Behaviour;

