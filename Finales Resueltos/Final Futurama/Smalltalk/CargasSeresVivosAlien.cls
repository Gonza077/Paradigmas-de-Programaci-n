"Filed out from Dolphin Smalltalk 7"!

SeresVivos subclass: #Alien
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Alien guid: (GUID fromString: '{C3E472E7-8D88-4A24-A956-8D0617CE5639}')!
Alien comment: ''!
!Alien categoriesForClass!Kernel-Objects! !
!Alien methodsFor!

calcSeguro
super calcSeguro.
valSeg:= (valSeg*1.2).!

cargaDatos
super cargaDatos.
self calcSeguro.!

oTipo
^self yourself! !
!Alien categoriesFor: #calcSeguro!public! !
!Alien categoriesFor: #cargaDatos!public! !
!Alien categoriesFor: #oTipo!public! !

