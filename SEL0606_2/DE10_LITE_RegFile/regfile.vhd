entity regfile is
	generic
		(
			N : integer := 32;
			M : integer := 5		-- Tamanho do barramento de enderecamento dos R
		);
	port
		(
			CLK, WE3		: in bit;
			A1, A2, A3	: in bit_vector(M-1 downto 0);
			WD3			: in bit_vector(N-1 downto 0);
			RD1, RD2		: out bit_vector(N-1 downto 0)
		);
end regfile;

architecture rtl of regfile is

	type RegBank_type is array (2**M-1 downto 0) of bit_vector(N-1 downto 0);
	signal Reg_Bank : RegBank_type;
	signal WEN3_vector : bit_vector(2**M-1 downto 0);
	signal Address1, Address2, Address3 : integer range 0 to 2**M-1;

begin

	Addr3: work.bitv2int
		generic map(
			n => M
			)
		port map(
			binario => A3,
			inteiro => Address3
		);
		
	decoder:for i in 2**M-1 downto 0 generate
		WEN3_vector(i) <= '1' when Address3 = i else '0';
	end generate;
		

	bank:for i in 2**M-1 downto 0 generate
		regi: work.reg
			generic map (
				n => N
			)
			port map (
				clk => CLK,
				clr => '0',
				EN => WEN3_vector(i) and WE3,
				d => WD3,
				q => Reg_Bank(i)
			);
	end generate;
	
	Addr1: work.bitv2int
		generic map(
			n => M
			)
		port map(
			binario => A1,
			inteiro => Address1
		);
		
	Addr2: work.bitv2int
		generic map(
			n => M
			)
		port map(
			binario => A2,
			inteiro => Address2
		);
		
	RD1 <= Reg_Bank(Address1);
	RD2 <= Reg_Bank(Address2);
	
end rtl;
						