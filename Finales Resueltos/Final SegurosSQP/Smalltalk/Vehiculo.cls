"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Vehiculo
	instanceVariableNames: 'nroPat marca modelo valor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Vehiculo guid: (GUID fromString: '{09E3B012-92CE-43DF-915B-19F45AD801A3}')!
Vehiculo comment: ''!
!Vehiculo categoriesForClass!Kernel-Objects! !
!Vehiculo methodsFor!

cargaDatos
MessageBox notify:'Se cargaran los datos del vehiculo'.
self iNroP: (Prompter prompt:'Ingrese numero de patente').
self iMar: (Prompter prompt:'Ingrese marca').
self iVal: ((Prompter prompt:'Ingrese valor')asNumber).
self iMod:((Prompter prompt:'Ingrese modelo')asNumber).
MessageBox notify: 'Vehiculo cargado con exito'.!

iMar:val
marca:=val.
!

iMod:val
modelo:=val.!

iNroP:val
nroPat:=val.!

iVal:val
valor:=val!

oMar
^marca!

oNroP
^nroPat.!

oVal
^valor.! !
!Vehiculo categoriesFor: #cargaDatos!public! !
!Vehiculo categoriesFor: #iMar:!public! !
!Vehiculo categoriesFor: #iMod:!public! !
!Vehiculo categoriesFor: #iNroP:!public! !
!Vehiculo categoriesFor: #iVal:!public! !
!Vehiculo categoriesFor: #oMar!public! !
!Vehiculo categoriesFor: #oNroP!public! !
!Vehiculo categoriesFor: #oVal!public! !

