"Filed out from Dolphin Smalltalk 7"!

Carga subclass: #Inerte
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Inerte guid: (GUID fromString: '{12B09B0D-B26F-4EA0-81A0-F74229FA161C}')!
Inerte comment: ''!
!Inerte categoriesForClass!Kernel-Objects! !
!Inerte methodsFor!

calcSeguro
valSeg:=valor*(1+0.05).!

cargaDatos
super cargaDatos.
self calcSeguro!

oTipo
^self yourself! !
!Inerte categoriesFor: #calcSeguro!public! !
!Inerte categoriesFor: #cargaDatos!public! !
!Inerte categoriesFor: #oTipo!public! !

