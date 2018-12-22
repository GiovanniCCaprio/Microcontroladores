          absentry  inicio
rom       equ       $4000
ram       equ       $1000
          org       ram
v1        ds.b      1
v2        ds.b      1
          org       rom
inicio    ldaa      v1
          ldab      v2
          staa      $1002
          stab      $1003
          bne       inicio                
          end