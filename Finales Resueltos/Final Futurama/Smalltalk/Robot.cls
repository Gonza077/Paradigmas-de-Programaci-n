"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Robot
	instanceVariableNames: 'estado numero'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Robot guid: (GUID fromString: '{B9D7BE6D-25E5-40C6-99D2-B612579B0829}')!
Robot comment: ''!
!Robot categoriesForClass!Kernel-Objects! !
!Robot methodsFor!

cargaDatos
"Se cargan los datos de las instancias robot"
self iEstado: ('L').
self iNro: (Prompter prompt:'Ingrese numero de indentificacion del robot').!

iEstado:val
"Se le asigna el valor al atributo estado"
estado:=val.!

iNro:val
"Se le asigna el valor al atributo numero"
numero:=val.!

oEstado
"Se muestra el valor del atributo estado"
^estado!

oNro
"Se muestra el valor del atributo numero"
^numero! !
!Robot categoriesFor: #cargaDatos!public! !
!Robot categoriesFor: #iEstado:!public! !
!Robot categoriesFor: #iNro:!public! !
!Robot categoriesFor: #oEstado!public! !
!Robot categoriesFor: #oNro!public! !

