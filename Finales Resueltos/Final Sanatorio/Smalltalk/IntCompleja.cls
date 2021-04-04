"Filed out from Dolphin Smalltalk 7"!

Intervencion subclass: #IntCompleja
	instanceVariableNames: ''
	classVariableNames: 'Porc'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IntCompleja guid: (GUID fromString: '{71A44E45-05A9-4A6C-870C-0CDB4672C4EE}')!
IntCompleja comment: ''!
!IntCompleja categoriesForClass!Kernel-Objects! !
!IntCompleja methodsFor!

calcPrecio
precio:=precio*(1+Porc).!

cargaDatos
super cargaDatos.
self calcPrecio.!

oTipo
^self yourself.! !
!IntCompleja categoriesFor: #calcPrecio!public! !
!IntCompleja categoriesFor: #cargaDatos!public! !
!IntCompleja categoriesFor: #oTipo!public! !

!IntCompleja class methodsFor!

iPorc:val
Porc:=(val/100).! !
!IntCompleja class categoriesFor: #iPorc:!public! !

