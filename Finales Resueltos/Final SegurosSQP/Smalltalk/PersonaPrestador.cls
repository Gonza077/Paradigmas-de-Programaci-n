"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Prestador
	instanceVariableNames: 'estado'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Prestador guid: (GUID fromString: '{2A109D8B-D123-4966-99E0-162F5CF683FB}')!
Prestador comment: ''!
!Prestador categoriesForClass!Kernel-Objects! !
!Prestador methodsFor!

cargaDatos
MessageBox notify: 'Se cargaran los datos del prestador'.
super cargaDatos.
self iEst: 'L'.!

iEst:val
estado:=val!

oEst
^estado.! !
!Prestador categoriesFor: #cargaDatos!public! !
!Prestador categoriesFor: #iEst:!public! !
!Prestador categoriesFor: #oEst!public! !

