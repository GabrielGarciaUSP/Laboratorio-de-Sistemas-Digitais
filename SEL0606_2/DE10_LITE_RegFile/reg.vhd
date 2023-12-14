entity reg is
	generic
		(
			n	: integer := 32
		);
	port
		(
			clk, clr,en	: in bit;
			d				: in bit_vector(n-1 downto 0);
			q				: out bit_vector(n-1 downto 0)
		);
end reg;

architecture rtl of reg is

begin

	-- Implementacao com GENERATE
	--abc: for i in d'range generate
	--	dffi: work.d_ff(clk, clr, en, d(i), q(i));
	--end abc;
	
	-- Implementacao direta
	abc: process (clk, clr)	-- regiao de codigo sequencial
	begin
		if (clr = '1') then
			-- q recebe "000...000"
			def: for i in q'range loop	-- utilizando loop generate
				q(i) <= '0';
			end loop;
			-- ou
			-- q <= (others => '0');	-- utilizando agregados
		elsif (clk'event and clk = '1') then	-- borda de subida
			if (en = '1') then
				q <= d;
			end if;
		end if;
	end process;

end rtl;










