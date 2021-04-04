"Filed out from Dolphin Smalltalk 7"!

Servicio subclass: #Traslado
	instanceVariableNames: 'cantKm'
	classVariableNames: 'ValorKm'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Traslado guid: (GUID fromString: '{72581E22-89B6-4453-9E45-23EDC6EB77BA}')!
Traslado comment: ''!
!Traslado categoriesForClass!Kernel-Objects! !
!Traslado methodsFor!

calcCosto
costo:=ValorKm*cantKm.!

cargaDatos
MessageBox notify:'Se cargaran los datos de los servicios de traslado'.
super cargaDatos.
self iCantKm: ((Prompter prompt:'Ingrese cantidad de kilometros')asNumber).
self calcCosto.!

iCantKm:val
cantKm:=val.!

oCantKm
^cantKm!

oTipo
^'Traslado'! !
!Traslado categoriesFor: #calcCosto!public! !
!Traslado categoriesFor: #cargaDatos!public! !
!Traslado categoriesFor: #iCantKm:!public! !
!Traslado categoriesFor: #oCantKm!public! !
!Traslado categoriesFor: #oTipo!public! !

!Traslado class methodsFor!

IValorKm:val
ValorKm:=val! !
!Traslado class categoriesFor: #IValorKm:!public! !

