entity DE10_LITE_mux is
	port(
		sw : in bit_vector(9 downto 0);
		KEY : in bit_vector(1 downto 0);
		LEDR : out bit_vector(9 downto 0 )
		
	);
end DE10_LITE_mux; 
	
architecture concorrente of DE10_LITE_mux is 

begin	
	
mux0: work.mux21 port map (I0 => SW(3 downto 0),I1 => SW(7 downto 4),S => KEY(0),z => LEDR(3 downto 0)); 	
	
end concorrente; 