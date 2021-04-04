"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Humano
	instanceVariableNames: 'estado nombre'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Humano guid: (GUID fromString: '{0AA05F1D-0DB1-429D-A497-C1A475220E53}')!
Humano comment: ''!
!Humano categoriesForClass!Kernel-Objects! !
!Humano methodsFor!

cargaDatos
"Se cargan los datos del objeto humano"
self iNomb: (Prompter prompt:'Ingrese nombre de la persona').
self iEstado: ('L').!

iEstado:val
"Se le asigna el valor al atributo estado"
estado:=val!

iNomb:val
"Se le asigna el valor al atributo nombre"
nombre:=val.!

oEstado
"Se muestra el valor de estado del atributo estado"
^estado!

oNomb
"Se muestra el valor del atributo nombre"
^nombre! !
!Humano categoriesFor: #cargaDatos!public! !
!Humano categoriesFor: #iEstado:!public! !
!Humano categoriesFor: #iNomb:!public! !
!Humano categoriesFor: #oEstado!public! !
!Humano categoriesFor: #oNomb!public! !

