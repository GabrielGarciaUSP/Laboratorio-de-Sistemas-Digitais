# Projeto FF

Bem-vindo ao Projeto FF! Este projeto de laboratório tem por objetivo a implementação de módulos de Flip-flop JK-MS,
Tipo-D e Tipo-T, com reset assíncrono e borda positiva de clock, baseados em Equação Característica,
no kit DE10-Lite (MAX 10 10M50DAF484C7G). Os Flip-flops (FF) são os elementos básicos dos Circuitos Sequenciais,
 assim como as portas lógicas AND, OR e NOT são dos Circuitos Combinacionais. A partir dos FF é possível implementar
Registradores (Seriais ou Paralelos), Contadores (Assíncronos ou Síncronos) e Máquinas de Estados
Finitos (tipo Mealy ou Moore), e, a partir destes, realizar diversas aplicações, como a implementação de
Contadores de Programas (PC - Program Counter), Banco de Registradores e Unidades de Controle, na
área de Arquitetura de Computadores, por exemplo. Temos os principais FF: JK-MS, Tipo-D e Tipo-T. Estes podem possuir diversos
sinais de controle, além, do Clock, como Reset (Clear ou Cr), que faz sua saída Q ser igual a ‘0’, Set (ou
Preset ou Pr), que faz sua saída Q ser igual ‘1’, Clock-Enable, que habilita o funcionamento do Clock,
Output-Enable, que habilita a saída do dado armazenado por meio de uma saída em Tri-state, sendo que
estes sinais podem ser ativos em ‘1’ ou ‘0’. Quanto ao Clock, este pode ser ativo em borda de subida
(positiva) ou borda de descida (negativa), e quanto ao Reset e o Set, estes podem ser Síncronos,
controlado pelo Clock, ou Assíncronos, sem controle pelo Clock. Destes, o mais simples de se implementar em VHDL é o FF Tipo-D. Os demais (JK-MS e
Tipo-T), podem ser implementados por meio de sua Equação Característica:
QJK = J∙/Q + /K∙Q (eq. 1)
QT = T∙/Q + /T∙Q (eq. 2)
 


### Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

- [Quartus](https://www.intel.com/content/www/us/en/software-kit/660907/intel-quartus-prime-lite-edition-design-software-version-20-1-1-for-windows.html) 

