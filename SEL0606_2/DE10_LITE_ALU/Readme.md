# Projeto ALU

Bem-vindo ao Projeto ALU! Neste projeto de laboratório faremos uma ULA!

A ULA é um circuito combinacional que realiza
operações aritméticas (principalmente soma e subtração) e operações lógicas (AND, OR, NOT) entre dois
valores de N bits, resultando em outro valor de N bits.

Eventualmente a ULA pode gerar alguns sinais 3
adicionais:
- Flags de Zero (quando o resultado é igual a 0)
- Flags de Negativo (quando o resultado é menor
do que 0, considerando complemento de 2)
- Flags de Carry, de Overflow etc. 

Operações mais complexas, como
multiplicação, divisão, deslocamento, rotação e operações em ponto flutuante também são possíveis de
serem implementadas.

O desenvolvimento da ULA se dará em duas partes: 

- Na primeira parte será feito um levantamento
da estrutura de uma ULA levando em consideração o uso de blocos lógicos básicos para a sua
implementação (portas lógicas, somadores completos, mux21, etc.), subindo até níveis hierárquicos mais
altos (circuito somador de N bits, comparador de N bits, multiplexador de N bits, etc.).
- Na segunda parte,
a mesma será implementada em Verilog, utilizando os componentes selecionados na etapa anterior.

### Objetivo

Na primeira parte do projeto apresentaremos a implementação de uma ULA baseada na arquitetura RISC-V, com barramento de
dados N = 4, utilizando a linguagem de descrição de hardware VHDL.


### Materiais Utilizados

• Kit DE10-Lite

• Aplicativo Quartus 

• Tabela de operações da Ula ![Exemplo](./imagens/FuncAlu.png)

• Tabela Resultado da operação SLT para N = 4 ![Exemplo](./imagens/ResAlu.png)

### Conceitos utilizados

**Somador:**

- **Teoria:** Um somador é um circuito lógico que realiza a adição binária de dois números. Pode ser meio somador (para dois bits) ou somador completo (para dois bits e um bit de carry anterior).
- **Soma em Complemento de 2:** Para números em complemento de 2, o somador executa adição binária normal, considerando o bit de carry.
- **Equações Booleanas (para um somador completo de 1 bit):**
  ```plaintext
  S = A ⊕ B ⊕ Cin
  Cout = (A ⋅ B) + (Cin ⋅ (A ⊕ B))

- Estrutura Lógica: Um somador completo de 1 bit tem entradas (A, B, Cin), saídas (S, Cout).
- Implementação Hierárquica: Para um somador de N bits, conecte vários somadores de 1 bit em cascata, usando o carry de um estágio como entrada para o próximo.


**Multiplexador:**

- **Teoria:** Um multiplexador (mux) seleciona uma entre várias entradas de dados com base em sinais de controle. Um mux de N para 1 tem N entradas e log₂(N) entradas de controle.
- **Equações Booleanas (para um mux de 2 para 1):**
  ```plaintext
  Y = (A ⋅ ¬S) + (B ⋅ S)

- Estrutura Lógica: Um mux de 2 para 1 tem entradas (A, B), controle (S), e saída (Y).
- Implementação Hierárquica: Para um mux de N para 1, use muxes de 2 para 1 em cascata. A entrada de um mux pode ser a saída de outro.

### Resultados

O experimento deu sucesso, conseguimos implementar o projeto que foi basicamente  apresentar a implementação de uma ULA baseada na arquitetura RISC-V, com barramento de
dados N = 4, utilizando a linguagem de descrição de hardware VHDL.

### Imagens após funcionamento do Kit

![Exemplo](./Imagens/LogAlu.png)
![Exemplo](./Imagens/RTLAlu.png)




