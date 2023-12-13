-- Declaracao da ENTIDADE (entity)
-- 	Ela estabelece a interface do sistema digital com o mundo, ou seja, os pinos (sinais) de entrada e saida.
-- 	O nome da ENTIDADE deve ter tamanho maximo de 32 caracteres, sem pontuacao ou caracteres especiais.
-- 	Deve comecar por letra e pode incluir algarismos numericos e 'underline' (_).
-- 	O VHDL nao distingue entre maiuscula e minuscula ('case insensitive')
-- 
entity alu is
	port
	(
		-- Portas
		-- A sintaxe eh: NOME_DA_PORTA : MODO (in, out, inout) TIPO (bit, boolean, character, integer, real, time, bit_vector, string);
		-- Entrada(s)
		A, B		: in  bit_vector(3 downto 0);	-- Signals A e B do MODO de entrada (in) e do TIPO bit_vector
		ALUControl	: in  bit_vector(2 downto 0);		-- Signal ALUControl do MODO de entrada (in) e do TIPO bit_vector

		-- Saida(s)
		Result		: out bit_vector(3 downto 0);	-- Signal Result do MODO de saida (out) e do TIPO bit_vector de tamanho 3
		Zero		: out bit 							-- Signal Zero de MODO de saída (out) e do tipo bit
						-- A ultima declaracao de porta nao tem ponto e virgula (;)
	);
end alu;

-- Declaracao da ARQUITETURA (architecture)
-- 	Ela estabelece a relacao entre os pinos de entrada e de saida, ou seja, o circuito a ser implementado.
-- 	O nome da ARQUITETURA deve ter tamanho maximo de 32 caracteres, sem pontuacao ou caracteres especiais.
-- 	Deve comecar por letra e pode incluir algarismos numericos e 'underline' (_).
-- 	Cada ENTIDADE pode ter mais de uma ARQUITETURA, assim e necessario distingui-las por meio de um nome.

architecture estrutural of alu is	-- ARQUITETURA 'estrutural' associada aa ENTIDADE 'alu'
	
	signal Sum : bit_vector(3 downto 0);
	signal OutMux : bit_vector(3 downto 0);
	signal ZeroExt : bit_vector(3 downto 0);
	signal ComplementoDeB: bit_vector (3 downto 0);
	signal Result_tmp : bit_vector (3 downto 0);
	-- Inicio da declaracao da ARQUITETURA
begin
	-- Para a implementacao da arquitetura da ALU, recomenda-se o uso da construção concorrente "Selected Signal Assignment":
	
	
	
	MUX : work.mux21 port map
	(
		I0 => B,
		I1 => not B,
		S			=> ALUControl(0),
		Z			=> OutMux
	);
	
	ADDERS : work.adder port map
		(
			A => A,
			B => OutMux,
			Cin		=> ALUControl(0),
			RESULT	=> Sum
		);
		
	ZeroExt <= "000" & Sum(3);
	
	with ALUControl select
	Result_tmp <= Sum when "000",
				 Sum when "001",
				 A and B when "010",
				 A or B when "011",
				 ZeroExt when "101",
				 "0000" when others;
				 
	Zero <= (not Result_tmp(0)) and (not Result_tmp(1)) and (not Result_tmp(2)) and (not Result_tmp(3));
	Result <= Result_tmp;

	-- Dicas:
	-- Como o resultado da operacao SLT e a saida ZERO depende de Result, recomenda-se criar um sinal intermediario (Result_tmp)
	--que armazena o valor das operacoes aritmetica e lógicas, ou zero para as operacoes nao definidas. Lembre-se de que para a
	--operacao SLT eh necessario calcular A-B para verificar se A eh menor do que B.
	-- Depois, utiliza-se Result_tmp para definir o valor final de Result e de Zero.
	-- O valor de ZeroExt pode ser obtido por "000" & Sum(3)
	
end estrutural; 