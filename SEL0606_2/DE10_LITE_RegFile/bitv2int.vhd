entity bitv2int is
	generic
		(
			n : integer
		);
	port
		(
			binario	: in bit_vector(n-1 downto 0);
			inteiro	: out integer
		);
end bitv2int;

architecture funcao of bitv2int is
begin
	process(binario)
	variable valor : integer;
	begin
		valor := 0;
		for i in n-1 downto 0 loop
			if (binario(i) = '1') then
				valor := valor + 2**i;
			end if;
		end loop;
	inteiro <= valor;
	end process;
end funcao;

			