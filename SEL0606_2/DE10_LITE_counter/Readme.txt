# Projeto Counter

Bem-vindo ao Projeto Counter! Este projeto de laboratório tem por objetivo a implementação de um módulo contador binário
síncrono com reset assíncrono e com barramento de dados de tamanho parametrizável no kit DE10-Lite
(MAX 10 10M50DAF484C7G). Em projetos de sistemas digitais, os contadores podem ser utilizados principalmente para realizar
a contagem de dados, possibilitando a implementação de diversos equipamentos, como relógios,
cronômetros, multímetros etc., assim como para a divisão de frequência de uma fonte de clock,
possibilitando a geração de diversas frequências de clock a partir de uma única fonte. Em arquiteturas de
computadores, o contador pode ser utilizado para implementar o PC – Program Counter. Os contadores binários podem ser 
classificados, quanto ao clock, em contadores assíncronos, quando apenas o primeiro estágio recebe o sinal de clock, enquanto
 que o clock dos demais estágios depende da saída dos estágios anteriores, e contadores síncronos, quando todos os estágios 
recebem o mesmo sinal de clock, ficando a lógica combinacional responsável pela definição do próximo valor. Entende-se por 
estágio o circuito formado por um FF (flip-flop), que pode ser tanto do Tipo-D, do Tipo-T ou JK-MS, e uma lógica combinacional
 associada, responsável por definir o próximo estado do FF.

### Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

- [Quartus](https://www.intel.com/content/www/us/en/software-kit/660907/intel-quartus-prime-lite-edition-design-software-version-20-1-1-for-windows.html) 

