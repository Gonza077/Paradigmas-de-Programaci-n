"Filed out from Dolphin Smalltalk 7"!

SeresVivos subclass: #Terrestre
	instanceVariableNames: 'cantLitrosAgua'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Terrestre guid: (GUID fromString: '{037084DC-0A05-4383-870E-CE666455C362}')!
Terrestre comment: ''!
!Terrestre categoriesForClass!Kernel-Objects! !
!Terrestre methodsFor!

calcSeguro
super calcSeguro.
valSeg:=valSeg*(1+1/3).
!

cargaDatos
super cargaDatos.
self iCantLitros: ((Prompter prompt:'Ingrese la cantidad de litros de agua')asNumber).
self calcSeguro.
!

iCantLitros:val
"Se le asigna el valor ala atributo cantLitrosAgua"
cantLitrosAgua:=val
!

oCantLitros
"Se muestra la cantidad de litros de agua "
^cantLitrosAgua
!

oTipo
^self yourself! !
!Terrestre categoriesFor: #calcSeguro!public! !
!Terrestre categoriesFor: #cargaDatos!public! !
!Terrestre categoriesFor: #iCantLitros:!public! !
!Terrestre categoriesFor: #oCantLitros!public! !
!Terrestre categoriesFor: #oTipo!public! !

