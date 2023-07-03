-- Elementos de Sistemas
-- FlipFlopT.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopT is
	port(
		clock:  in std_logic;
		t:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopT is
signal q_ant: std_logic:= '0';

begin

process(clock)
begin
	if rising_edge(clock) then
		q_ant <= q_ant xor t;
	end if;
end process;

q <= q_ant;
notq <= not q_ant;

end architecture;