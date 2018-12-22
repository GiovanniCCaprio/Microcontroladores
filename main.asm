	ABSENTRY  JORGE
	
	ORG	$1000
	
	
	ORG	$4000
 	
JORGE       LDS	#$1030
	LDD	#$01FF
	LDX	#22
	SWI
	BRA	JORGE
	
	
RETORNO     ins
	ins	
	puld
 	des
 	des
 	des
 	des
	RTI
	
	Org	$FFFE
	DC.W	JORGE