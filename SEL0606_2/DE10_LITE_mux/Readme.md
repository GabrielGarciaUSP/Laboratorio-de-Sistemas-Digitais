# Projeto Mux

Bem-vindo ao Projeto Mux! 

Este projeto de laboratório trabalharemos com comandos Concorrentes em
VHDL, seguida por uma demonstração da utilização das ferramentas computacionais para projeto de
sistemas digitais em dispositivos reconfiguráveis, finalizando com a implementação de um Multiplexador
no kit DE10-Lite (MAX 10 10M50DAF484C7G).

Um Circuito Multiplexador é um Circuito Combinacional com n entradas de seleção Sj, até 2n
entradas de dados Ik e uma saída de dados Z. 

Multiplexadores são formados exclusivamente por
portas lógicas, Em VHDL, além dos operadores lógicos, os Multiplexadores podem ser implementados
utilizando as construções concorrentes WHEN-ELSE e WITH-SELECT. As entradas Ik podem ser sinais
de 1 bit, ou barramentos, de 2 ou mais bits.

### Objetivo

Como primeiro objetivo nós tivemos que montar as equações booleanas de um Multiplexador de 2 para 1 e um Multiplexador de 3 para
1, assim como o diagrama esquemático dos referidos circuitos, fazendo assim a implementação de um Multiplexador 2 para 1 com
barramento de dados de 4 bits, utilizando o comando concorrente WHEN-ELSE.

### Materiais Utilizados

• Kit DE10-Lite

• Aplicativo Quartus 

• Exemplo de Mux:![Exemplo](./Imagens/Exemplos.png)  

### Resultados

Conseguimos implementar um MUX (Multiplexador)2 para 1 com
barramento de dados de 4 bits, utilizando os conceitos de WHEN-ELSE dentro da linguagem VDHL, tivemos alguns problemas de lógica no início porém com um pouco de pesquisa conseguimos resolver. 


Equação booleana de um mux 2 pra 1: 
-
| S | A | B | Y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |


 Equação Booleana 3 pra um:
 - 
| S1 | S0 | A | B | C | Y |
|----|----|---|---|---|---|
| 0  | 0  | 0 | 0 | 0 | 0 |
| 0  | 0  | 0 | 0 | 1 | 1 |
| 0  | 1  | 0 | 1 | 0 | 0 |
| 0  | 1  | 0 | 1 | 1 | 1 |
| 1  | 0  | 1 | 0 | 0 | 1 |
| 1  | 0  | 1 | 0 | 1 | 1 |
| 1  | 1  | 1 | 1 | 0 | 0 |
| 1  | 1  | 1 | 1 | 1 | 1 |

### Imagens do circuito após funcionamento

![Exemplo](./Imagens/LogMux.png)

![Exemplo](./Imagens/MuxRTL.png)
