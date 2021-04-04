"Filed out from Dolphin Smalltalk 7"!

Carga subclass: #SeresVivos
	instanceVariableNames: 'cantOxiPH'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SeresVivos guid: (GUID fromString: '{DDA64526-0B81-45A3-A092-6AAFD71254E6}')!
SeresVivos comment: ''!
!SeresVivos categoriesForClass!Kernel-Objects! !
!SeresVivos methodsFor!

calcSeguro
valSeg:=valor*2*espacio.!

cargaDatos
super cargaDatos.
self iCantO: ((Prompter prompt:'Ingrese la cantidad de oxigeno')asNumber).
self calcSeguro.!

iCantO:val
"Se le asigna el valor al atributo del objeto cantOxiPH"
cantOxiPH:=val.!

oCantO
"Se muestra el valor del atributo cantOxiPH"
^cantOxiPH.! !
!SeresVivos categoriesFor: #calcSeguro!public! !
!SeresVivos categoriesFor: #cargaDatos!public! !
!SeresVivos categoriesFor: #iCantO:!public! !
!SeresVivos categoriesFor: #oCantO!public! !

