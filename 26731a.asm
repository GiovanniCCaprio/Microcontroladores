; 2) Faça um programa que realize a operação apresentada na figura – (transferir vetor de $100C
; para outro local (para endereços maiores ou menores). Os elementos são variáveis. O programa
; deve ser cíclico. Faça as designações e alocações necessárias. Assemblar, analisar e simular o
; programa. Obrigatório: usar 1 ponteiro, offset de 5 bits e instruções de comparação. Na leitura e
; armazenagem usar endereç. indexado. Início do programa: $4000.

          absentry  inicio
ram       equ       $1000
rom       equ       $4000
nb        equ       8

          org       $100C
v1        ds.b      nb+(nb/2)
          org       $100C+nb+(nb/2)
v2        ds.b      nb+(nb/2)

          org       rom
inicio    ldx       #0
pk0       ldaa      v1,x
          staa      v2,x
          inx
          cpx       #v1+nb+(nb/2)
          bne       pk0
fim       bra       fim
          end