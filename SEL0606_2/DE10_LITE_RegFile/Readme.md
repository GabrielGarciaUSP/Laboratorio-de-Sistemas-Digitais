# Projeto Reg

Bem vindo ao projeto Reg!

Neste projeto daremos continuidade à construção do processador RISC-V, com a ULA já implementada, o
problema seguinte é voltado agora ao Contador de Programa, aos Registradores Auxiliares e ao Banco de
Registradores

Sob o ponto de vista de Sistema Digitais, os Registradores são circuitos sequenciais formados por
Flip-Flops (FF) que, sob o ponto de vista de Organização de Computadores, compõem o nível mais alto
da hierarquia de memória. São memórias voláteis (ou seja, seus dados são perdidos quando o circuito é
desligado), normalmente compostos por FF Tipo-D ligados em paralelo. Sua função é bastante simples:
armazenar um dado de N bits por certo período de tempo. Os registradores possuem os seguintes
terminais:
- Entrada de dados (N bits);
- Saída de dados (N bits);
2
- Clock;
- Set e/ou Reset, síncrono ou assíncrono;
- Habilitação para o clock.

Numa arquitetura podemos classificar os registradores em duas classes distintas: 
- Auxiliares
- Dados

Os registradores
auxiliares são utilizados para o perfeito funcionamento da arquitetura, mas não são visíveis ao
programador. Como exemplo temos os registradores A e B que são utilizados temporariamente pela ULA.
Além destes temos o IR (Instruction Register), que armazena o código da instrução que está sendo
executada. 

Os registradores de dados são aqueles utilizados pelo conjunto de instruções da arquitetura.
No caso de uma arquitetura RISC-V, eles formam o Banco de Registradores. Nosso Banco de
Registradores será formado pelos registradores de R0 a RM-1.

### Objetivo

Neste projeto apresentaremos a implementação de um registrador genérico de N bits, com entradas de CLK e EN, e
como este pode ser utilizado para implementar um Banco de Registradores, baseado na
arquitetura RISC-V, com barramento de dados de tamanho parametrizável, utilizando VHDL.

Como primeiro problema, nos tivemos que desenvolver um registrador de N bits contendo os sinais
de controle EN e CLK. O componente irá compor uma entidade independente e será
utilizado como todos os registradores independentes na organização da arquitetura. 

### Materiais Utilizados

• Kit DE10-Lite

• Aplicativo Quartus 

• Exemplo de Processador RISC-V multiciclo![](./imagens/Exemplos.png)

• Configuração de um banco de 8 registradores![](./imagens/Exemplos2.png)

### Resultados

A prática foi um sucesso, graças aos cógigos fornecidos e pesquisas feitas, nós implementamos um registrador genérico de N bits, com entradas de CLK e EN, baseado na
arquitetura RISC-V.

Utilizamos o registrador construído na etapa anterior, e construímos um banco de
registradores com M registradores, que tiveram:
- 1 Entrada de dados (WD3);
- 2 Saídas de dados (RD1, RD2);
- Seletor de registrador para escrita (A3);
- 2 Seletores de registrador para leitura (A1, A2);
- Clock (CLK);
- Habilitação de escrita (WE3).

Quando WE3 é
ativado (igual a ‘1’), o valor presente em WD3 é armazenado no registrador indicado por A3, após a
transição do sinal de CLK. O valor dos registradores indicados por A1 e A2 são apresentados nas saídas
RD1 e RD2, após a transição do sinal de CLK

### Imagens após o funcionamento do Kit

![Exemplo](./imagens/LogRegFile.png)
![Exemplo](./imagens/RTLRegFile.png)

