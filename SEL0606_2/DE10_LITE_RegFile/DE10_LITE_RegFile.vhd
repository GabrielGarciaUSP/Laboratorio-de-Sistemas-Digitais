entity DE10_LITE_RegFile is
	port
		(
			KEY	: in bit_vector(1 downto 0);
			SW		: in bit_vector(9 downto 0);
			
			HEX0 : out bit_vector(7 downto 0);
			HEX1 : out bit_vector(7 downto 0);
			HEX2 : out bit_vector(7 downto 0);
			HEX3 : out bit_vector(7 downto 0);
			HEX4 : out bit_vector(7 downto 0);
			HEX5 : out bit_vector(7 downto 0);
			
			LEDR	: out	bit_vector(9 downto 0)
		);
end DE10_LITE_RegFile;

architecture top of DE10_LITE_RegFile is

	signal Address1, Address2, Address3 : bit_vector(1 downto 0);
	signal ReadData1, ReadData2			: bit_vector(3 downto 0);
	signal WriteData3							: bit_vector(3 downto 0);
	

begin

	regfile0: work.regfile
					generic map (
						N => 4,
						M => 2
					)
					port map (
						clk => KEY(0),
						WE3 => not KEY(1),
						A1 => Address1,
						A2 => Address2,
						A3 => Address3,
						WD3 => WriteData3,
						RD1 => ReadData1,
						RD2 => ReadData2
					);

	-- Solicitacao de componente de decodificacao de hexa para 7 segs
	hexa0 : work.hex27seg port map (hexa => ReadData1, segments => HEX0(6 downto 0));
	hexa1 : work.hex27seg port map (hexa => "00"&Address1, segments => HEX1(6 downto 0));
	hexa2 : work.hex27seg port map (hexa => ReadData2, segments => HEX2(6 downto 0));
	hexa3 : work.hex27seg port map (hexa => "00"&Address2, segments => HEX3(6 downto 0));
	hexa4 : work.hex27seg port map (hexa => WriteData3, segments => HEX4(6 downto 0));
	hexa5 : work.hex27seg port map (hexa => "00"&Address3, segments => HEX5(6 downto 0));
	-- Decimal point desligado
	HEX0(7) <= '1';
	HEX1(7) <= '1';
	HEX2(7) <= '1';
	HEX3(7) <= '1';
	HEX4(7) <= '1';
	HEX5(7) <= '1';

	Address1 <= SW(1 downto 0);		--2 bits -> 4 posicoes
	LEDR(3 downto 0) <= ReadData1;
	Address2 <= SW(3 downto 2);		--2 bits -> 4 posicoes
	LEDR(7 downto 4) <= ReadData2;
	Address3 <= SW(5 downto 4);		--2 bits -> 4 posicoes
	WriteData3 <= SW(9 downto 6);
	
end top;
						