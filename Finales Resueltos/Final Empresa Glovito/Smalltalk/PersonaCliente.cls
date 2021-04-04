"Filed out from Dolphin Smalltalk XP"!

Persona subclass: #Cliente
	instanceVariableNames: 'nroTar nroTV'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{89220C5B-93A2-4600-AD95-D9FC1BD08739}')!
Cliente comment: ''!
!Cliente categoriesForClass!Unclassified! !
!Cliente methodsFor!

cargaDatos
super cargaDatos.
self iNroTar: (Prompter prompt:'Ingrese numero de tarjeta')asNumber.
self iNroTV:(Prompter prompt:'Ingrese numero de verificacion de la tarjeta')asNumber.!

iNroTar:val
nroTar:=val!

iNroTV:val
nroTV:=val!

oNroTar
^nroTar! !
!Cliente categoriesFor: #cargaDatos!public! !
!Cliente categoriesFor: #iNroTar:!public! !
!Cliente categoriesFor: #iNroTV:!public! !
!Cliente categoriesFor: #oNroTar!public! !

