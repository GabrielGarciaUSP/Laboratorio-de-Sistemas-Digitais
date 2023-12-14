-- Projeto decodificador Haxadecimal para 7 Segmentos
-- Aula 06 - SEL0384/SEL0606
-- Professor: Maximiliam Luppe
-- Data: 04/10/2023

entity hex27seg is
	port (
		hexa : in bit_vector(3 downto 0);
		segments : out bit_vector(6 downto 0)
	);
end hex27seg;

architecture logica of hex27seg is

	-- Sinais auxiliares que receberão o valor e o complemento de hexa(3 downto 0)
	signal b, nb: bit_vector(3 downto 0);

	-- Inicio da declaracao da ARQUITETURA
begin
	with hexa select
		segments <=
					"1000000" when "0000",
					"1111001" when "0001",
					"0100100" when "0010",
					"0110000" when "0011",
					"0011001" when "0100",
					"0010010" when "0101",
					"0000010" when "0110",
					"1111000" when "0111",
					"0000000" when "1000",
					"0010000" when "1001",
					"0001000" when "1010",
					"0000011" when "1011",
					"1000110" when "1100",
					"0100001" when "1101",
					"0000110" when "1110",
					"0001110" when "1111";
end;
