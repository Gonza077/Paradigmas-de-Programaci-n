"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Poliza
	instanceVariableNames: 'nroPoli vehiculo titular'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Poliza guid: (GUID fromString: '{8D73F198-E86A-47C8-93B5-EB4A38013D71}')!
Poliza comment: ''!
!Poliza categoriesForClass!Kernel-Objects! !
!Poliza methodsFor!

cargaDatos
MessageBox notify: 'Se cargaran los datos de la poliza'.
self iNroP: ((Prompter prompt:'Ingrese numero de poliza')).
titular:=Titular new.
titular cargaDatos.
vehiculo:=Vehiculo new.
vehiculo cargaDatos.
MessageBox notify: 'Datos de la poliza cargados con exito'.!

iNroP:val
nroPoli:=val.!

iTit:val
titular:=val.!

iVehi:val
vehiculo:=val.!

oNroP
^nroPoli.!

oTit
^titular.!

oVehi
^vehiculo! !
!Poliza categoriesFor: #cargaDatos!public! !
!Poliza categoriesFor: #iNroP:!public! !
!Poliza categoriesFor: #iTit:!public! !
!Poliza categoriesFor: #iVehi:!public! !
!Poliza categoriesFor: #oNroP!public! !
!Poliza categoriesFor: #oTit!public! !
!Poliza categoriesFor: #oVehi!public! !

