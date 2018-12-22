; 2) Fa�a um programa que realize a opera��o apresentada na figura � (transferir vetor de $100C
; para outro local (para endere�os maiores ou menores). Os elementos s�o vari�veis. O programa
; deve ser c�clico. Fa�a as designa��es e aloca��es necess�rias. Assemblar, analisar e simular o
; programa. Obrigat�rio: usar 1 ponteiro, offset de 5 bits e instru��es de compara��o. Na leitura e
; armazenagem usar endere�. indexado. In�cio do programa: $4000.

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