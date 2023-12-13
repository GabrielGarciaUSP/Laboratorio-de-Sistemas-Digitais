entity DE10_LITE_decod is

port
	(
		SW :in bit_vector(9 downto 0);
		HEX0 : out bit_vector(7 downto 0)
	);
	
end DE10_LITE_decod;

architecture logica of DE10_LITE_decod is
	
	component hex27seg
		port
			(
				hexa : in bit_vector (3 downto 0);
				segments : out bit_vector (6 downto 0)
			);
	end component;
	

begin

	hexa0 : hex27seg port map  (hexa => SW(3 downto 0), segments =>HEX0(6 downto 0));
	
	HEX0(7) <= '0';
	

end;

