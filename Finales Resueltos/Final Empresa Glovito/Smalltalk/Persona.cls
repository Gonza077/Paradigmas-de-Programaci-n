"Filed out from Dolphin Smalltalk XP"!

Object subclass: #Persona
	instanceVariableNames: 'nombre dni apellido direccion'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{F3A8C541-3628-47B8-BDC9-81CE5C2F99F8}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

cargaDatos
self iDni: (Prompter prompt:'Ingrese DNI')asNumber.
self iNomb: (Prompter prompt:'Ingrese nombre').
self iApell: (Prompter prompt:'Ingrese apellido').
self iDirec: (Prompter prompt:'Ingrese direccion').!

iApell:val
apellido:=val.!

iDirec:val
direccion:=val!

iDni:val
dni:=val!

iNomb:val
nombre:= val.!

oApell
^apellido!

oDirec
^direccion!

oDni
^dni!

oNomb
^nombre!

oTipoPer
^self yorself! !
!Persona categoriesFor: #cargaDatos!public! !
!Persona categoriesFor: #iApell:!public! !
!Persona categoriesFor: #iDirec:!public! !
!Persona categoriesFor: #iDni:!public! !
!Persona categoriesFor: #iNomb:!public! !
!Persona categoriesFor: #oApell!public! !
!Persona categoriesFor: #oDirec!public! !
!Persona categoriesFor: #oDni!public! !
!Persona categoriesFor: #oNomb!public! !
!Persona categoriesFor: #oTipoPer!public! !

