# Projeto ALU

Bem-vindo ao Projeto ALU! Neste projeto de laboratório faremos uma ULA, a ULA é um circuito combinacional que realiza
operações aritméticas (principalmente soma e subtração) e operações lógicas (AND, OR, NOT) entre dois
valores de N bits, resultando em outro valor de N bits. Eventualmente a ULA pode gerar alguns sinais 3
adicionais, como flags de Zero (quando o resultado é igual a 0), de Negativo (quando o resultado é menor
do que 0, considerando complemento de 2), de Carry, de Overflow etc. Operações mais complexas, como
multiplicação, divisão, deslocamento, rotação e operações em ponto flutuante também são possíveis de
serem implementadas.
O desenvolvimento da ULA se dará em duas partes. Na primeira parte será feito um levantamento
da estrutura de uma ULA levando em consideração o uso de blocos lógicos básicos para a sua
implementação (portas lógicas, somadores completos, mux21, etc.), subindo até níveis hierárquicos mais
altos (circuito somador de N bits, comparador de N bits, multiplexador de N bits, etc.). Na segunda parte,
a mesma será implementada em Verilog, utilizando os componentes selecionados na etapa anterior.

### Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

- [Quartus](https://www.intel.com/content/www/us/en/software-kit/660907/intel-quartus-prime-lite-edition-design-software-version-20-1-1-for-windows.html) 

