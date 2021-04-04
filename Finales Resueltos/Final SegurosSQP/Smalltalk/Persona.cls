"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre contacto'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{CF372DB9-8C94-484C-9BDE-955709025B1C}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

cargaDatos
self iNomb: (Prompter prompt:'Ingrese nombre ').
self iCont: (Prompter prompt:'Ingrese contacto').!

iCont:val
contacto:=val.!

iNomb:val
nombre:=val!

oCont
^contacto!

oNomb
^nombre! !
!Persona categoriesFor: #cargaDatos!public! !
!Persona categoriesFor: #iCont:!public! !
!Persona categoriesFor: #iNomb:!public! !
!Persona categoriesFor: #oCont!public! !
!Persona categoriesFor: #oNomb!public! !

