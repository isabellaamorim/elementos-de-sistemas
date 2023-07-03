library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor3 is
	port ( 
			a, b, c:   in  STD_LOGIC;
			q:   out STD_LOGIC);
end entity;

architecture arch of xor3 is

	component Mux8Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC);
	end component;

begin

	u : Mux8Way port map (
		sel(0) => a, 
		sel(1) => b, 
		sel(2) => c,
		q => q,
		a => '0',
		b => '1', 
		c => '1',
		d => '0',
		e => '1',
		f => '0',
		g => '0',
		h => '1'
		);

end architecture;