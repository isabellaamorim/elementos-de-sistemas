-- Elementos de Sistemas
-- FlipFlopJK.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
	port(
		clock:  in std_logic;
		J:      in std_logic;
		K:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopJK is

signal helper : std_logic:= '0';

begin
	
	process(clock)
		begin
			if (rising_edge(clock)) then
				helper <= (J and (not helper)) or ((not K) and helper);
			end if;	
	end process;

	q <= helper;
	notq <= not helper;	

	

end architecture;
