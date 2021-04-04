"Filed out from Dolphin Smalltalk 7"!

Servicio subclass: #Insitu
	instanceVariableNames: 'horasT'
	classVariableNames: 'ValorH'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Insitu guid: (GUID fromString: '{E4732598-4B50-4604-96D5-C7E3CC630686}')!
Insitu comment: ''!
!Insitu categoriesForClass!Kernel-Objects! !
!Insitu methodsFor!

calcCosto
costo:=ValorH * horasT.!

cargaDatos
MessageBox notify:'Se cargaran los datos del servicio Insitu'.
super cargaDatos.
self iHoras: ((Prompter prompt:'Ingrese la cantidad de horas trabajadas')asNumber).
self calcCosto.!

iHoras:val
horasT:=val.!

oHoras
^horasT.!

oTipo
^'Insitu'! !
!Insitu categoriesFor: #calcCosto!public! !
!Insitu categoriesFor: #cargaDatos!public! !
!Insitu categoriesFor: #iHoras:!public! !
!Insitu categoriesFor: #oHoras!public! !
!Insitu categoriesFor: #oTipo!public! !

!Insitu class methodsFor!

IValorH:val
ValorH:=val! !
!Insitu class categoriesFor: #IValorH:!public! !

