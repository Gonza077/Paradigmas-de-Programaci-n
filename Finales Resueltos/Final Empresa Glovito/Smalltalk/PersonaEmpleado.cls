"Filed out from Dolphin Smalltalk XP"!

Persona subclass: #Empleado
	instanceVariableNames: 'porc'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empleado guid: (GUID fromString: '{1E3E2F27-0870-4D9C-8A6B-A0FFAD46BDE6}')!
Empleado comment: ''!
!Empleado categoriesForClass!Unclassified! !
!Empleado methodsFor!

cargaDatos
super cargaDatos.
self iPorc:(Prompter prompt:'Ingrese porcentaje del empleado')asNumber.!

iPorc:val
porc:=(val/100)!

oPorc
^porc! !
!Empleado categoriesFor: #cargaDatos!public! !
!Empleado categoriesFor: #iPorc:!public! !
!Empleado categoriesFor: #oPorc!public! !

