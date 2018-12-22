          absentry  inicio
rom       equ       $4000
          org       rom
inicio    clrb          
          ldab      #47
          addb      #17
          addb      #78
fim       bra       fim
          end